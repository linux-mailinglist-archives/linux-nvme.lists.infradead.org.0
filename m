Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8155E6EB54
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 21:47:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8IV/4OA7sAfh0eIgwjvx5d9uKozVI4fwlH4eyaBBJS0=; b=MwhaJEDrWe3fWEDZEAdeYEXBlF
	AefsDF8uHv8bL4KCQ2Fzp5wUhO3iqRC944bHXQIMTQQHtIDTGcwp0LCnxUWdOMB4OztF5HXRGZz6D
	Cob3nYhN4agwo3xO49e2S1Ou2zRV2QDTfCohgVEF/DDmJ/Wb4CtbKCdojamCQ9TG1vhSrVJ53UrE8
	yU18wA+cNU9RcyqvlIhbztQlBWgNRLPIMjUTQf1BZlOC3LjvYKkf1uWKquukctK8v71vIyc6EAW0I
	YEbFWKYMBWb5Zu33gP6ZCB90+jSv2MvkF/itFXumfNjwqs9d1GEJncbeWOo+sF03OJP1KpwoxaX1F
	Ba/nkAug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYqK-0001Rl-0v; Fri, 19 Jul 2019 19:47:00 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYp9-0000XJ-Ty; Fri, 19 Jul 2019 19:45:47 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/4] nvme: don't pass cap to nvme_enable_ctrl
Date: Fri, 19 Jul 2019 12:45:46 -0700
Message-Id: <20190719194546.24229-5-sagi@grimberg.me>
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

All seem to call it with ctrl->cap so no need to pass it
at all.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c   | 7 ++++---
 drivers/nvme/host/fc.c     | 2 +-
 drivers/nvme/host/nvme.h   | 2 +-
 drivers/nvme/host/pci.c    | 2 +-
 drivers/nvme/host/rdma.c   | 2 +-
 drivers/nvme/host/tcp.c    | 2 +-
 drivers/nvme/target/loop.c | 2 +-
 7 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 60e924b0b510..93b7e362f0ac 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1967,14 +1967,15 @@ int nvme_disable_ctrl(struct nvme_ctrl *ctrl)
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
+	unsigned dev_page_min = NVME_CAP_MPSMIN(ctrl->cap) + 12;
+	unsigned page_shift = 12;
 	int ret;
 
 	if (page_shift < dev_page_min) {
@@ -1995,7 +1996,7 @@ int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
 	ret = ctrl->ops->reg_write32(ctrl, NVME_REG_CC, ctrl->ctrl_config);
 	if (ret)
 		return ret;
-	return nvme_wait_ready(ctrl, cap, true);
+	return nvme_wait_ready(ctrl, ctrl->cap, true);
 }
 EXPORT_SYMBOL_GPL(nvme_enable_ctrl);
 
diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 67d420bd79f6..e5c2a03a6c22 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2647,7 +2647,7 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 	 * prior connection values
 	 */
 
-	ret = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
+	ret = nvme_enable_ctrl(&ctrl->ctrl);
 	if (ret)
 		goto out_disconnect_admin_queue;
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index a7f8fccb1f35..740241e84d29 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -427,7 +427,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved);
 bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
 		enum nvme_ctrl_state new_state);
 int nvme_disable_ctrl(struct nvme_ctrl *ctrl);
-int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
+int nvme_enable_ctrl(struct nvme_ctrl *ctrl);
 int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl);
 int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
 		const struct nvme_ctrl_ops *ops, unsigned long quirks);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index f2e74043dc6b..4b508d5e45cf 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1695,7 +1695,7 @@ static int nvme_pci_configure_admin_queue(struct nvme_dev *dev)
 	lo_hi_writeq(nvmeq->sq_dma_addr, dev->bar + NVME_REG_ASQ);
 	lo_hi_writeq(nvmeq->cq_dma_addr, dev->bar + NVME_REG_ACQ);
 
-	result = nvme_enable_ctrl(&dev->ctrl, dev->ctrl.cap);
+	result = nvme_enable_ctrl(&dev->ctrl);
 	if (result)
 		return result;
 
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 8e2094fb5e7e..3fd44e1c279d 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -809,7 +809,7 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 	if (error)
 		goto out_cleanup_queue;
 
-	error = nvme_enable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
+	error = nvme_enable_ctrl(&ctrl->ctrl);
 	if (error)
 		goto out_stop_queue;
 
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 4a32d5350fc5..77c3d4d06d29 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1721,7 +1721,7 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
 	if (error)
 		goto out_cleanup_queue;
 
-	error = nvme_enable_ctrl(ctrl, ctrl->cap);
+	error = nvme_enable_ctrl(ctrl);
 	if (error)
 		goto out_stop_queue;
 
diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index d901a019e3a2..a53a0c0170f5 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -369,7 +369,7 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
 
 	set_bit(NVME_LOOP_Q_LIVE, &ctrl->queues[0].flags);
 
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
