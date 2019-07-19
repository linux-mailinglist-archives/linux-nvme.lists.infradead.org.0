Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 874B56EB51
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 21:46:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nl8eMEx4AKuLWQwC8uCPzx0pNrwCtSTigB4MGFbh2CU=; b=BXoUa2ivec5awbWPmWCOezSXcm
	DsDz68f/Mhyf/fwFIRdAJuY5HLEKLtx6j2NCLC5w6eTRS9cmyL69ZpFTXW3hHHu5Zn2Yk9+ioHs4R
	4OAw7lLIIXbZGeaCt6qFI+WJ5KFmOJPGTcu6UJrh0q3CnZ9CgFHHQ8yTR5DzIDMBZ4+wg1fUBPN6r
	cpt349st7jLaZ8w6RWnBpoVaBKnlFSRk/KSC3cSHND8ERqdEdEJtwEh5dYx1Ym2/Q+PyKZ8lFWD9z
	n6qxinFiw331DEPqhxwMc4uXTRQ3VzgNntqBO7Nfw+/HOk9hZruBmJ6gus/KZoCCwqdde3G5S1lKN
	3lv43lRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYpr-000125-4M; Fri, 19 Jul 2019 19:46:31 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYp9-0000XJ-Ib; Fri, 19 Jul 2019 19:45:47 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/4] nvme: move sqsize setting to the core
Date: Fri, 19 Jul 2019 12:45:44 -0700
Message-Id: <20190719194546.24229-3-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190719194546.24229-1-sagi@grimberg.me>
References: <20190719194546.24229-1-sagi@grimberg.me>
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

nvme_init_identify reads the cap register right after, so
no need to do that locally in the transport driver.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c   |  1 +
 drivers/nvme/host/fc.c     | 10 ----------
 drivers/nvme/host/pci.c    |  1 +
 drivers/nvme/host/rdma.c   | 11 -----------
 drivers/nvme/host/tcp.c    |  9 ---------
 drivers/nvme/target/loop.c | 10 ----------
 6 files changed, 2 insertions(+), 40 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 058e06e40df8..da4182aa16b0 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2579,6 +2579,7 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 		return ret;
 	}
 	page_shift = NVME_CAP_MPSMIN(ctrl->cap) + 12;
+	ctrl->sqsize = min_t(int, NVME_CAP_MQES(ctrl->cap), ctrl->sqsize);
 
 	if (ctrl->vs >= NVME_VS(1, 1, 0))
 		ctrl->subsystem = NVME_CAP_NSSRC(ctrl->cap);
diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 1a391aa1f7d5..67d420bd79f6 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2647,16 +2647,6 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 	 * prior connection values
 	 */
 
-	ret = nvmf_reg_read64(&ctrl->ctrl, NVME_REG_CAP, &ctrl->ctrl.cap);
-	if (ret) {
-		dev_err(ctrl->ctrl.device,
-			"prop_get NVME_REG_CAP failed\n");
-		goto out_disconnect_admin_queue;
-	}
-
-	ctrl->ctrl.sqsize =
-		min_t(int, NVME_CAP_MQES(ctrl->ctrl.cap), ctrl->ctrl.sqsize);
-
 	ret = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
 	if (ret)
 		goto out_disconnect_admin_queue;
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bb970ca82517..0f38c1d96d19 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2316,6 +2316,7 @@ static int nvme_pci_enable(struct nvme_dev *dev)
 
 	dev->q_depth = min_t(int, NVME_CAP_MQES(dev->ctrl.cap) + 1,
 				io_queue_depth);
+	dev->ctrl.sqsize = dev->q_depth - 1; /* 0's based queue depth */
 	dev->db_stride = 1 << NVME_CAP_STRIDE(dev->ctrl.cap);
 	dev->dbs = dev->bar + 4096;
 
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 7b074323bcdf..8e9f0fd5b01f 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -809,17 +809,6 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 	if (error)
 		goto out_cleanup_queue;
 
-	error = ctrl->ctrl.ops->reg_read64(&ctrl->ctrl, NVME_REG_CAP,
-			&ctrl->ctrl.cap);
-	if (error) {
-		dev_err(ctrl->ctrl.device,
-			"prop_get NVME_REG_CAP failed\n");
-		goto out_stop_queue;
-	}
-
-	ctrl->ctrl.sqsize =
-		min_t(int, NVME_CAP_MQES(ctrl->ctrl.cap), ctrl->ctrl.sqsize);
-
 	error = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
 	if (error)
 		goto out_stop_queue;
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 8d4965031399..fba80dc61ce1 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1721,15 +1721,6 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
 	if (error)
 		goto out_cleanup_queue;
 
-	error = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);
-	if (error) {
-		dev_err(ctrl->device,
-			"prop_get NVME_REG_CAP failed\n");
-		goto out_stop_queue;
-	}
-
-	ctrl->sqsize = min_t(int, NVME_CAP_MQES(ctrl->cap), ctrl->sqsize);
-
 	error = nvme_enable_ctrl(ctrl, ctrl->cap);
 	if (error)
 		goto out_stop_queue;
diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index 9e211ad6bdd3..d901a019e3a2 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -369,16 +369,6 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
 
 	set_bit(NVME_LOOP_Q_LIVE, &ctrl->queues[0].flags);
 
-	error = nvmf_reg_read64(&ctrl->ctrl, NVME_REG_CAP, &ctrl->ctrl.cap);
-	if (error) {
-		dev_err(ctrl->ctrl.device,
-			"prop_get NVME_REG_CAP failed\n");
-		goto out_cleanup_queue;
-	}
-
-	ctrl->ctrl.sqsize =
-		min_t(int, NVME_CAP_MQES(ctrl->ctrl.cap), ctrl->ctrl.sqsize);
-
 	error = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
 	if (error)
 		goto out_cleanup_queue;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
