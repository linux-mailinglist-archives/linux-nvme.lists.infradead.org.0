Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3BBF86BF8
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=zqc5pjSBoL5O1e5mERNXHesJh5P/hz/xE6ZEonHsEk4=; b=EPU
	AsG8/Y3qqvPcdKndiaRDYP3aMLR8XWUFvZ0mcOCySBuH/bsNaUenDVrUzfjgki61bKQ/jYsj06MOS
	UjjtYhUGHb2UyxHPWBOd0hYP+l96MseTEp9fBdRqqGdOSpLGM51lZKLR+0ihv5goWxEhgr+sP5r/K
	0ZMaEGtpHG52KS6aHpxRutUk8/dcon8jfqgKoyiIz6w2fwd2yJjrzV0WQXhnaxUugeVZg8IuVGN2g
	9q7JUeYYiKcSDeKX+QdYfqPZfu4HUQ3mc08d3ciPjAslGgTaG4WQCLU4aMUm0TIJzquo0mtPFMSoE
	R9r01ryEtCMgwuNpodRK6IzISIAlh6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpRc-0003nm-9U; Thu, 08 Aug 2019 20:55:32 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpRX-0003nX-4D; Thu, 08 Aug 2019 20:55:27 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvmet-tcp: fix possible NULL deref
Date: Thu,  8 Aug 2019 13:55:21 -0700
Message-Id: <20190808205522.24638-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We must only call sgl_free for sgl that we actually
allocated.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/tcp.c | 12 ++++++++----
 1 file changed, 8 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/target/tcp.c b/drivers/nvme/target/tcp.c
index 69b83fa0c76c..0d63f3da0117 100644
--- a/drivers/nvme/target/tcp.c
+++ b/drivers/nvme/target/tcp.c
@@ -348,7 +348,8 @@ static int nvmet_tcp_map_data(struct nvmet_tcp_cmd *cmd)
 
 	return 0;
 err:
-	sgl_free(cmd->req.sg);
+	if (cmd->req.sg_cnt)
+		sgl_free(cmd->req.sg);
 	return NVME_SC_INTERNAL;
 }
 
@@ -553,7 +554,8 @@ static int nvmet_try_send_data(struct nvmet_tcp_cmd *cmd)
 
 	if (queue->nvme_sq.sqhd_disabled) {
 		kfree(cmd->iov);
-		sgl_free(cmd->req.sg);
+		if (cmd->req.sg_cnt)
+			sgl_free(cmd->req.sg);
 	}
 
 	return 1;
@@ -584,7 +586,8 @@ static int nvmet_try_send_response(struct nvmet_tcp_cmd *cmd,
 		return -EAGAIN;
 
 	kfree(cmd->iov);
-	sgl_free(cmd->req.sg);
+	if (cmd->req.sg_cnt)
+		sgl_free(cmd->req.sg);
 	cmd->queue->snd_cmd = NULL;
 	nvmet_tcp_put_cmd(cmd);
 	return 1;
@@ -1306,7 +1309,8 @@ static void nvmet_tcp_finish_cmd(struct nvmet_tcp_cmd *cmd)
 {
 	nvmet_req_uninit(&cmd->req);
 	nvmet_tcp_unmap_pdu_iovec(cmd);
-	sgl_free(cmd->req.sg);
+	if (cmd->req.sg_cnt)
+		sgl_free(cmd->req.sg);
 }
 
 static void nvmet_tcp_uninit_data_in_cmds(struct nvmet_tcp_queue *queue)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
