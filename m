Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CA4F915C4
	for <lists+linux-nvme@lfdr.de>; Sun, 18 Aug 2019 11:10:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n9IjeI7tonJksT6d817xJ8HF6SgEk93MqBUCcj9G96U=; b=UvdDGVmk7LzOvvF+XXaNz5Dkov
	xwhlLZywsVz46Vf0gZnq5kXp5G7AoTch1papP/277Sx7hudIn5xKjzdwy6q31mXcstL384VNMck2u
	U/R7fgTmJaGnruoOx9z/9m8db9zmUDs6kRMM0AE42zSTq0TPOvW8yMFrAQetpGzKlDFBka95DmyJc
	CDebGx5bsgEI4D0WFgMc66eduunqyKgkiyReyGlHdjLnEheVsFq1P2GTbP89snhVEJ8+AGizRQdO0
	S7uwt5AFV7uV4wOXkmw36HTKv1ClBB/lEOJfgky6r54k5tlaSQ2Wf5d2x9ZhNTwR3lWjyZAvgmYFG
	JMJtOjWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzHCs-0007XQ-MP; Sun, 18 Aug 2019 09:10:34 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzHBU-0005MX-BF
 for linux-nvme@lists.infradead.org; Sun, 18 Aug 2019 09:09:12 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 18 Aug 2019 12:08:57 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7I98vee013804;
 Sun, 18 Aug 2019 12:08:57 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 3/5] nvme-tcp: Use struct nvme_ctrl directly
Date: Sun, 18 Aug 2019 12:08:53 +0300
Message-Id: <1566119335-15058-5-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1566119335-15058-1-git-send-email-israelr@mellanox.com>
References: <1566119335-15058-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190818_020910_525233_0638755E 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Israel Rukshin <israelr@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch doesn't change any functionality.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 2de33c4..a534ec6 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1258,7 +1258,7 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	queue->queue_size = queue_size;
 
 	if (qid > 0)
-		queue->cmnd_capsule_len = ctrl->ctrl.ioccsz * 16;
+		queue->cmnd_capsule_len = nctrl->ioccsz * 16;
 	else
 		queue->cmnd_capsule_len = sizeof(struct nvme_command) +
 						NVME_TCP_ADMIN_CCSZ;
@@ -1266,7 +1266,7 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	ret = sock_create(ctrl->addr.ss_family, SOCK_STREAM,
 			IPPROTO_TCP, &queue->sock);
 	if (ret) {
-		dev_err(ctrl->ctrl.device,
+		dev_err(nctrl->device,
 			"failed to create socket: %d\n", ret);
 		return ret;
 	}
@@ -1276,7 +1276,7 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	ret = kernel_setsockopt(queue->sock, IPPROTO_TCP, TCP_SYNCNT,
 			(char *)&opt, sizeof(opt));
 	if (ret) {
-		dev_err(ctrl->ctrl.device,
+		dev_err(nctrl->device,
 			"failed to set TCP_SYNCNT sock opt %d\n", ret);
 		goto err_sock;
 	}
@@ -1286,7 +1286,7 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	ret = kernel_setsockopt(queue->sock, IPPROTO_TCP,
 			TCP_NODELAY, (char *)&opt, sizeof(opt));
 	if (ret) {
-		dev_err(ctrl->ctrl.device,
+		dev_err(nctrl->device,
 			"failed to set TCP_NODELAY sock opt %d\n", ret);
 		goto err_sock;
 	}
@@ -1299,7 +1299,7 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	ret = kernel_setsockopt(queue->sock, SOL_SOCKET, SO_LINGER,
 			(char *)&sol, sizeof(sol));
 	if (ret) {
-		dev_err(ctrl->ctrl.device,
+		dev_err(nctrl->device,
 			"failed to set SO_LINGER sock opt %d\n", ret);
 		goto err_sock;
 	}
@@ -1317,11 +1317,11 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	queue->pdu_offset = 0;
 	sk_set_memalloc(queue->sock->sk);
 
-	if (ctrl->ctrl.opts->mask & NVMF_OPT_HOST_TRADDR) {
+	if (nctrl->opts->mask & NVMF_OPT_HOST_TRADDR) {
 		ret = kernel_bind(queue->sock, (struct sockaddr *)&ctrl->src_addr,
 			sizeof(ctrl->src_addr));
 		if (ret) {
-			dev_err(ctrl->ctrl.device,
+			dev_err(nctrl->device,
 				"failed to bind queue %d socket %d\n",
 				qid, ret);
 			goto err_sock;
@@ -1333,7 +1333,7 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	if (queue->hdr_digest || queue->data_digest) {
 		ret = nvme_tcp_alloc_crypto(queue);
 		if (ret) {
-			dev_err(ctrl->ctrl.device,
+			dev_err(nctrl->device,
 				"failed to allocate queue %d crypto\n", qid);
 			goto err_sock;
 		}
@@ -1347,13 +1347,13 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 		goto err_crypto;
 	}
 
-	dev_dbg(ctrl->ctrl.device, "connecting queue %d\n",
+	dev_dbg(nctrl->device, "connecting queue %d\n",
 			nvme_tcp_queue_id(queue));
 
 	ret = kernel_connect(queue->sock, (struct sockaddr *)&ctrl->addr,
 		sizeof(ctrl->addr), 0);
 	if (ret) {
-		dev_err(ctrl->ctrl.device,
+		dev_err(nctrl->device,
 			"failed to connect socket: %d\n", ret);
 		goto err_rcv_pdu;
 	}
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
