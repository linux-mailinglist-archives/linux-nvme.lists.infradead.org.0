Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8869D5F696
	for <lists+linux-nvme@lfdr.de>; Thu,  4 Jul 2019 12:26:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:
	In-Reply-To:Subject:To:From:References:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NnMfoPV5HC4OnS2BRY8a9ASRGBpNupuG2qkhd5aO7ng=; b=eWBj7f5Gj2GIms3XsK07yk0lcd
	vcOUyEX8ceIXhvLm/Fu8QSGxddsq4gojyGNULE0vSMrNh+l+QDKRaDUcPadHmEBof+duuF2ESuRXV
	1/UJupDhiqQ23DZ8axEorXk02LFqQIkztbbsLCQq36+F9mKhNKxpP54sEGEffmHbNGUIwzLI0t89s
	ixaHjU88OVexvI+zHpW8ditdtthssQn+ITe52NXxubWQGNeb/aOWMSqaO7RybkOsQakl4AquSrn1f
	IfegOD3hiCxpjl1fm4h0N+oWhhm21wgjuEjmfmiyB9lvTuWk8yUhtOob/eClVEf1z1nfRyIc6OOSB
	IkXcSWEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiywG-0004WB-0G; Thu, 04 Jul 2019 10:26:04 +0000
Received: from dispatch1-us1.ppe-hosted.com ([148.163.129.52])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiyvY-00049y-HK
 for linux-nvme@lists.infradead.org; Thu, 04 Jul 2019 10:25:22 +0000
X-Virus-Scanned: Proofpoint Essentials engine
Received: from webmail.solarflare.com (uk.solarflare.com [193.34.186.16])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
 (No client certificate requested)
 by mx1-us5.ppe-hosted.com (PPE Hosted ESMTP Server) with ESMTPS id 55A4080067; 
 Thu,  4 Jul 2019 10:25:19 +0000 (UTC)
Received: from linux-m89u (62.102.148.158) by ukex01.SolarFlarecom.com
 (10.17.10.4) with Microsoft SMTP Server (TLS) id 15.0.1395.4; Thu, 4 Jul 2019
 11:25:14 +0100
References: <cover.1562234605.git.mskorzhinskiy@solarflare.com>
From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
To: <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 3/3] nvme-tcp: replace sendpage calls with sendmsg calls for
 SLAB chunks
In-Reply-To: <cover.1562234605.git.mskorzhinskiy@solarflare.com>
Date: Wed, 3 Jul 2019 12:47:09 +0200
Message-ID: <cdce4bc7cedc11a80c01e457a4b18933b73017e2.1562234605.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
X-Originating-IP: [62.102.148.158]
X-ClientProxiedBy: ocex03.SolarFlarecom.com (10.20.40.36) To
 ukex01.SolarFlarecom.com (10.17.10.4)
X-TM-AS-Product-Ver: SMEX-12.5.0.1300-8.5.1010-24738.003
X-TM-AS-Result: No-7.675700-8.000000-10
X-TMASE-MatchedRID: vTA8sE7Lw5aqLzGGxbeS5oboZ15KqReTOxjb9QQbt+SgDWpkqTKvoWxb
 gRPguoUXUYxfl/uCXqMNpKIKK7OPwS/33TWoSUH6wrUhv0kAAvG8LBwKTqOcT8L3uJbi2EX22yT
 G00/Sv02t2gtuWr1Lmtr+D80ZNbcy4yB02OeSDEnJ1E/nrJFED2f6wD367VgtqO65IutD8fNZzl
 8EYQ5IaAWWKSu+OdhDGQW7BlZ51u3jTE3Llr8edt+G9ND+fWcZfS0Ip2eEHnz3IzXlXlpamPoLR
 4+zsDTtIAmDJ33Ctzxy8jA0CfMYpgKmEVqo8j5CFvW0B2FH9OPdIAMYF5S2Pe7c+XIHtzli
X-TM-AS-User-Approved-Sender: Yes
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--7.675700-8.000000
X-TMASE-Version: SMEX-12.5.0.1300-8.5.1010-24738.003
X-MDID: 1562235920-FHnpKfoPTO5h
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_032520_710460_381C8BAB 
X-CRM114-Status: GOOD (  11.46  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [148.163.129.52 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.8 DATE_IN_PAST_12_24     Date: is 12 to 24 hours before Received: date
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

According to commit a10674bf2406 ("tcp: detecting the misuse of .sendpage
for Slab objects") and previous discussion[1][2], tcp_sendpage should not
be used for pages that is managed by SLAB, as SLAB is not taking page
reference counters into consideration.

This change prevents sendpage calls for payload sending too, although this
is true only for admin commands, so actual data transfer performance
should be untouched.

[1] https://www.spinics.net/lists/netdev/msg553616.html
[2] https://www.spinics.net/lists/netdev/msg553285.html

Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
---
 drivers/nvme/host/tcp.c | 40 ++++++++++++++++++++++++++++++++++------
 1 file changed, 34 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 08a2501b9357..8cca9967d909 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -844,6 +844,24 @@ static void nvme_tcp_fail_request(struct nvme_tcp_request *req)
 	nvme_tcp_end_request(blk_mq_rq_from_pdu(req), NVME_SC_DATA_XFER_ERROR);
 }
 
+static int nvme_tcp_sendpage(struct nvme_tcp_request *req, struct page *page,
+			      size_t offset, size_t len, int flags)
+{
+	struct nvme_tcp_queue *queue = req->queue;
+
+	if (PageSlab(page)) {
+		struct msghdr msg = { .msg_flags = flags };
+		struct kvec iov =  {
+				    .iov_base = page_to_virt(page) + offset,
+				    .iov_len = len
+		};
+
+		return kernel_sendmsg(queue->sock, &msg, &iov, 1, iov.iov_len);
+	} else {
+		return kernel_sendpage(queue->sock, page, offset, len, flags);
+	}
+}
+
 static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 {
 	struct nvme_tcp_queue *queue = req->queue;
@@ -860,7 +878,7 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 		else
 			flags |= MSG_MORE;
 
-		ret = kernel_sendpage(queue->sock, page, offset, len, flags);
+		ret = nvme_tcp_sendpage(req, page, offset, len, flags);
 		if (ret <= 0)
 			return ret;
 
@@ -885,6 +903,19 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 	return -EAGAIN;
 }
 
+static inline int nvme_tcp_try_send_pdu(struct nvme_tcp_request *req,
+					int len, int flags)
+{
+	struct nvme_tcp_queue *queue = req->queue;
+	struct msghdr msg = { .msg_flags = flags };
+	struct kvec iov = {
+			   .iov_base = req->pdu + req->offset,
+			   .iov_len = len,
+	};
+
+	return kernel_sendmsg(queue->sock, &msg, &iov, 1, iov.iov_len);
+}
+
 static int nvme_tcp_try_send_cmd_pdu(struct nvme_tcp_request *req)
 {
 	struct nvme_tcp_queue *queue = req->queue;
@@ -898,8 +929,7 @@ static int nvme_tcp_try_send_cmd_pdu(struct nvme_tcp_request *req)
 	if (queue->hdr_digest && !req->offset)
 		nvme_tcp_hdgst(queue->snd_hash, pdu, sizeof(*pdu));
 
-	ret = kernel_sendpage(queue->sock, virt_to_page(pdu),
-			offset_in_page(pdu) + req->offset, len,  flags);
+	ret = nvme_tcp_try_send_pdu(req, len, flags);
 	if (unlikely(ret <= 0))
 		return ret;
 
@@ -931,9 +961,7 @@ static int nvme_tcp_try_send_data_pdu(struct nvme_tcp_request *req)
 	if (queue->hdr_digest && !req->offset)
 		nvme_tcp_hdgst(queue->snd_hash, pdu, sizeof(*pdu));
 
-	ret = kernel_sendpage(queue->sock, virt_to_page(pdu),
-			offset_in_page(pdu) + req->offset, len,
-			MSG_DONTWAIT | MSG_MORE);
+	ret = nvme_tcp_try_send_pdu(req, len, MSG_DONTWAIT | MSG_MORE);
 	if (unlikely(ret <= 0))
 		return ret;
 
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
