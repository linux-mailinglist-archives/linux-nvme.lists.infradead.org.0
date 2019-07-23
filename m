Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9E0170DE4
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 02:07:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8lq0g4b9EFKCdxS+RMuaudnEpAod34EfLMQp4yc8Q0I=; b=ZKo2zFUkkBiMnMEX+KG0YFJRBu
	Uhy3FLz8kU8TtFy6Y1ffdZGCtj6AzITYIr7YS8QCutnmEZGAHwyeIl6erYr3Gi6zCevflsUjeLVfo
	/NFmIujlmSLZjqx8vdK000laj2TkvYT0gdhbGbZwSKvKbzf14obOcDO+amYBYMttuDO2aFsNDWaFW
	qyfDMk5QrImQMLuP4xn9YMLnlg3q0kZMKBJgMw1VJxA+xYMNwUHI909piTF7ytblkBkWoq8mTtHBg
	O4VE/F1nBl3YTpjcZpkVKUkSRwoTxabUGwlmSp9L7yvhwRi2QIWE1Z4FBZo37/fbhyp2Ph1PXS1zd
	DRClNLfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiL6-000455-Bw; Tue, 23 Jul 2019 00:07:32 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hpiKW-0003yb-Kt; Tue, 23 Jul 2019 00:06:56 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 2/3] nvme: move sqsize setting to the core
Date: Mon, 22 Jul 2019 17:06:53 -0700
Message-Id: <20190723000654.6448-3-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723000654.6448-1-sagi@grimberg.me>
References: <20190723000654.6448-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_enable_ctrl reads the cap register right after, so
no need to do that locally in the transport driver. Have
sqsize setting in nvme_init_identify.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c   | 20 +++++++++++---------
 drivers/nvme/host/fc.c     | 12 +-----------
 drivers/nvme/host/nvme.h   |  2 +-
 drivers/nvme/host/pci.c    |  3 ++-
 drivers/nvme/host/rdma.c   | 13 +------------
 drivers/nvme/host/tcp.c    | 11 +----------
 drivers/nvme/target/loop.c | 12 +-----------
 7 files changed, 18 insertions(+), 55 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 058e06e40df8..ad6a75ab9321 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1967,16 +1967,23 @@ int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
 }
 EXPORT_SYMBOL_GPL(nvme_disable_ctrl);
 
-int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
+int nvme_enable_ctrl(struct nvme_ctrl *ctrl)
 {
 	/*
 	 * Default to a 4K page size, with the intention to update this
 	 * path in the future to accomodate architectures with differing
 	 * kernel and IO page sizes.
 	 */
-	unsigned dev_page_min = NVME_CAP_MPSMIN(cap) + 12, page_shift = 12;
+	unsigned dev_page_min, page_shift = 12;
 	int ret;
 
+	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);
+	if (ret) {
+		dev_err(ctrl->device, "Reading CAP failed (%d)\n", ret);
+		return ret;
+	}
+	dev_page_min = NVME_CAP_MPSMIN(ctrl->cap) + 12;
+
 	if (page_shift < dev_page_min) {
 		dev_err(ctrl->device,
 			"Minimum device page size %u too large for host (%u)\n",
@@ -1995,7 +2002,7 @@ int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
 	ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC, ctrl->ctrl_config);
 	if (ret)
 		return ret;
-	return nvme_wait_ready(ctrl, cap, true);
+	return nvme_wait_ready(ctrl, ctrl->cap, true);
 }
 EXPORT_SYMBOL_GPL(nvme_enable_ctrl);
 
@@ -2572,13 +2579,8 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 		dev_err(ctrl->device, "Reading VS failed (%d)\n", ret);
 		return ret;
 	}
-
-	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);
-	if (ret) {
-		dev_err(ctrl->device, "Reading CAP failed (%d)\n", ret);
-		return ret;
-	}
 	page_shift = NVME_CAP_MPSMIN(ctrl->cap) + 12;
+	ctrl->sqsize = min_t(int, NVME_CAP_MQES(ctrl->cap), ctrl->sqsize);
 
 	if (ctrl->vs >= NVME_VS(1, 1, 0))
 		ctrl->subsystem = NVME_CAP_NSSRC(ctrl->cap);
diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 1a391aa1f7d5..e5c2a03a6c22 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2647,17 +2647,7 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
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
-	ret = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
+	ret = nvme_enable_ctrl(&ctrl->ctrl);
 	if (ret)
 		goto out_disconnect_admin_queue;
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 716a876119c8..2daccd19f99f 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -427,7 +427,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved);
 bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
 		enum nvme_ctrl_state new_state);
 int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
-int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
+int nvme_enable_ctrl(struct nvme_ctrl *ctrl);
 int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl);
 int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
 		const struct nvme_ctrl_ops *ops, unsigned long quirks);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bb970ca82517..e11d50599a51 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1695,7 +1695,7 @@ static int nvme_pci_configure_admin_queue(struct nvme_dev *dev)
 	lo_hi_writeq(nvmeq->sq_dma_addr, dev->bar + NVME_REG_ASQ);
 	lo_hi_writeq(nvmeq->cq_dma_addr, dev->bar + NVME_REG_ACQ);
 
-	result = nvme_enable_ctrl(&dev->ctrl, dev->ctrl.cap);
+	result = nvme_enable_ctrl(&dev->ctrl);
 	if (result)
 		return result;
 
@@ -2316,6 +2316,7 @@ static int nvme_pci_enable(struct nvme_dev *dev)
 
 	dev->q_depth = min_t(int, NVME_CAP_MQES(dev->ctrl.cap) + 1,
 				io_queue_depth);
+	dev->ctrl.sqsize = dev->q_depth - 1; /* 0's based queue depth */
 	dev->db_stride = 1 << NVME_CAP_STRIDE(dev->ctrl.cap);
 	dev->dbs = dev->bar + 4096;
 
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 7b074323bcdf..55849a6a439b 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -809,18 +809,7 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
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
-	error = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
+	error = nvme_enable_ctrl(&ctrl->ctrl);
 	if (error)
 		goto out_stop_queue;
 
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 8d4965031399..4f9ab0084587 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1721,16 +1721,7 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
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
-	error = nvme_enable_ctrl(ctrl, ctrl->cap);
+	error = nvme_enable_ctrl(ctrl);
 	if (error)
 		goto out_stop_queue;
 
diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index 9e211ad6bdd3..a53a0c0170f5 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -369,17 +369,7 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
 
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
-	error = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
+	error = nvme_enable_ctrl(&ctrl->ctrl);
 	if (error)
 		goto out_cleanup_queue;
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
