Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9122F1C4DA5
	for <lists+linux-nvme@lfdr.de>; Tue,  5 May 2020 07:20:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lz0DoYgt6X8MmG4YEeHh2F4Q7gGJVoAT7VmRzKR/BX8=; b=JIIEDEh/4853f/
	MCQZ6+lzRacHR2EnFYAFgbM+2VaxtrXkm4r6oE+PeWflJyW8GicN3CDBU6UWobOfBq1AIId3r3X1O
	EwNLSiKkIL2xQlhdoNEqvQyh1ThEhaOIJJJBm5guIxRhd+0sl8vFnqn9FRTFggnmiB/tTXai2txJa
	ICU4sql2lDJ4B1vE8si1DiQZgEpmhi22qKizY5qtKbm6QOgwGcQChaiKW1ql+PofVSCe5QXZ4E9Ar
	6iN0fiOblwlTXIZd8T65Op4hS0BotENaXyYFuIddf1kv8G45mCd0ZDzJf3la5Ckf5qUyheT8ILeVN
	UblEDjvU6v9VDsrai1fw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVq06-0001RI-3g; Tue, 05 May 2020 05:20:14 +0000
Received: from [2601:647:4802:9070:b8cc:5255:a224:4d8b]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVpzw-0000uV-En; Tue, 05 May 2020 05:20:04 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH 1/2] nvme-tcp: set MSG_SENDPAGE_NOTLAST with MSG_MORE when we
 have more to send
Date: Mon,  4 May 2020 22:20:01 -0700
Message-Id: <20200505052002.14924-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Anil Vasudevan <anil.vasudevan@intel.com>,
 Mark Wunderlich <mark.wunderlich@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We can signal the stack that this is not the last page coming and the
stack can build a larger tso segment, so go ahead and use it.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index c79e248b9f43..7c7c1886642f 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -885,7 +885,7 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 		if (last && !queue->data_digest)
 			flags |= MSG_EOR;
 		else
-			flags |= MSG_MORE;
+			flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
 
 		/* can't zcopy slab pages */
 		if (unlikely(PageSlab(page))) {
@@ -924,11 +924,16 @@ static int nvme_tcp_try_send_cmd_pdu(struct nvme_tcp_request *req)
 	struct nvme_tcp_queue *queue = req->queue;
 	struct nvme_tcp_cmd_pdu *pdu = req->pdu;
 	bool inline_data = nvme_tcp_has_inline_data(req);
-	int flags = MSG_DONTWAIT | (inline_data ? MSG_MORE : MSG_EOR);
 	u8 hdgst = nvme_tcp_hdgst_len(queue);
 	int len = sizeof(*pdu) + hdgst - req->offset;
+	int flags = MSG_DONTWAIT;
 	int ret;
 
+	if (inline_data)
+		flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
+	else
+		flags |= MSG_EOR;
+
 	if (queue->hdr_digest && !req->offset)
 		nvme_tcp_hdgst(queue->snd_hash, pdu, sizeof(*pdu));
 
@@ -967,7 +972,7 @@ static int nvme_tcp_try_send_data_pdu(struct nvme_tcp_request *req)
 
 	ret = kernel_sendpage(queue->sock, virt_to_page(pdu),
 			offset_in_page(pdu) + req->offset, len,
-			MSG_DONTWAIT | MSG_MORE);
+			MSG_DONTWAIT | MSG_MORE | MSG_SENDPAGE_NOTLAST);
 	if (unlikely(ret <= 0))
 		return ret;
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
