Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A50071828F3
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Mar 2020 07:26:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=b8u5XzBS+R+Z9nWknb/rWI6u/rsByvt2HxWFfdfEyGs=; b=Hdl7CmgCjx7QuJ
	Iud1Wx2sl9DxyfUObAeOiwruEhtBtzaue2buemWXs73W7hR0rqm8wfFMoW7bo7MNiA2qtNyIzI6Pk
	zJut1/Ob6QgAulOLVothD65U9nctl4rJWwcXnLPOW6ITWtlwZVMLodzwXax2WG59yBLGXO7MnRlVD
	ztvtS9TdmE2HFPpwEVG+sjOQc/u5OecVT0ncz6B34wUgf5vsICQISA6HeeG0fcUiy9Ib13RJtZQAX
	MWMSPHToUUQpLYI+EFjQtTXLdlF1xoRfiMbE99X1JAm+Qr53uA/meaxS9jcpfBmTGj35insulYaEb
	2k3wSTXqCxLdmtGvQyzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCHIJ-0002dO-WC; Thu, 12 Mar 2020 06:26:12 +0000
Received: from [2601:647:4802:9070:c47a:8519:9343:83b8]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCHIC-0002be-J6; Thu, 12 Mar 2020 06:26:04 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvmet-tcp: set MSG_MORE only if we actually have more to
 send
Date: Wed, 11 Mar 2020 23:26:02 -0700
Message-Id: <20200312062603.2572-1-sagi@grimberg.me>
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
Cc: Keith Busch <kbusch@kernel.org>,
 Mark Wunderlich <mark.wunderlich@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When we send PDU data, we want to optimize the tcp stack
operation if we have more data to send. So when we set MSG_MORE
when:
- We have more fragments coming in the batch, or
- We have a more data to send in this PDU
- We don't have a data digest trailer
- We optimize with the SUCCESS flag and omit the NVMe completion
  (used if sq_head pointer update is disabled)

This addresses a regression in QD=1 with SUCCESS flag optimization
as we unconditionally set MSG_MORE when we didn't actually have
more data to send.

Fixes: 70583295388a ("nvmet-tcp: implement C2HData SUCCESS optimization")
Reported-by: Mark Wunderlich <mark.wunderlich@intel.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/tcp.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index 1f4322ee7dbe..e5d000f12059 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -525,7 +525,7 @@ static int nvmet_try_send_data_pdu(struct nvmet_tcp_cmd *cmd)
 	return 1;
 }
 
-static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
+static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd, bool last_in_batch)
 {
 	struct nvmet_tcp_queue *queue = cmd->queue;
 	int ret;
@@ -533,9 +533,15 @@ static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
 	while (cmd->cur_sg) {
 		struct page *page = sg_page(cmd->cur_sg);
 		u32 left = cmd->cur_sg->length - cmd->offset;
+		int flags = MSG_DONTWAIT;
+
+		if ((!last_in_batch && cmd->queue->send_list_len) ||
+		    cmd->wbytes_done + left < cmd->req.transfer_len ||
+		    queue->data_digest || !queue->nvme_sq.sqhd_disabled)
+			flags |= MSG_MORE;
 
 		ret = kernel_sendpage(cmd->queue->sock, page, cmd->offset,
-					left, MSG_DONTWAIT | MSG_MORE);
+					left, flags);
 		if (ret <= 0)
 			return ret;
 
@@ -666,7 +672,7 @@ static int nvmet_tcp_try_send_one(struct nvmet_tcp_queue *queue,
 	}
 
 	if (cmd->state == NVMET_TCP_SEND_DATA) {
-		ret = nvmet_try_send_data(cmd);
+		ret = nvmet_try_send_data(cmd, last_in_batch);
 		if (ret <= 0)
 			goto done_send;
 	}
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
