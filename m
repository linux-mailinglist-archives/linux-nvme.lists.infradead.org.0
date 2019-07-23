Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D8E070DE7
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 02:08:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gK+MFN8PUmmCW0dKtvnC4sPMKEtEQ+f4ttat4c9vcbY=; b=k5DM5823zuhN7NhgVzUaygS4fg
	uoPFsXFSeQ8GXmLQ/PTAkBGlZTA+XPMC0An0lbdt1HiKiGVF3wtkzLEtPQ5IO1IKkk4XzEizWwjJb
	GrpW47cnX0jorVofurwBIJLoLdkWt7AxI+4QRaGL33cCCr5RV+PV5qwq4TGWiA59NIg0BqeLu7dS6
	ZSYk15p+Gj+ZrQm0CQmsc3iFvkUlI7UO4xpcH55hlzuqqzhwL9mvQqVFQPArMbddDjQTzFfy6Yg75
	vAP/Cs2znJGDLMaqAlzYD1u+pgOhPAJ9YoWBuwoSa+Xd6kSKzo2XRoS+LRxTR3U5eah/wMEqlIicK
	yOBV90Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiLf-0004Wc-LB; Tue, 23 Jul 2019 00:08:07 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hpiKW-0003yb-Rj; Tue, 23 Jul 2019 00:06:56 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 3/3] nvme: don't pass cap to nvme_disable_ctrl
Date: Mon, 22 Jul 2019 17:06:54 -0700
Message-Id: <20190723000654.6448-4-sagi@grimberg.me>
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

All seem to call it with ctrl->cap so no need to pass it
at all.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 4 ++--
 drivers/nvme/host/nvme.h | 2 +-
 drivers/nvme/host/pci.c  | 4 ++--
 drivers/nvme/host/rdma.c | 2 +-
 drivers/nvme/host/tcp.c  | 2 +-
 5 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ad6a75ab9321..1c2863216082 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1949,7 +1949,7 @@ static int nvme_wait_ready(struct nvme_ctrl *ctrl, u64 cap, bool enabled)
  * bits', but doing so may cause the device to complete commands to the
  * admin queue ... and we don't know what memory that might be pointing at!
  */
-int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
+int nvme_disable_ctrl(struct nvme_ctrl *ctrl)
 {
 	int ret;
 
@@ -1963,7 +1963,7 @@ int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
 	if (ctrl->quirks & NVME_QUIRK_DELAY_BEFORE_CHK_RDY)
 		msleep(NVME_QUIRK_DELAY_AMOUNT);
 
-	return nvme_wait_ready(ctrl, cap, false);
+	return nvme_wait_ready(ctrl, ctrl->cap, false);
 }
 EXPORT_SYMBOL_GPL(nvme_disable_ctrl);
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 2daccd19f99f..740241e84d29 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -426,7 +426,7 @@ void nvme_complete_rq(struct request *req);
 bool nvme_cancel_request(struct request *req, void *data, bool reserved);
 bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
 		enum nvme_ctrl_state new_state);
-int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
+int nvme_disable_ctrl(struct nvme_ctrl *ctrl);
 int nvme_enable_ctrl(struct nvme_ctrl *ctrl);
 int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl);
 int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index e11d50599a51..4b508d5e45cf 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1403,7 +1403,7 @@ static void nvme_disable_admin_queue(struct nvme_dev *dev, bool shutdown)
 	if (shutdown)
 		nvme_shutdown_ctrl(&dev->ctrl);
 	else
-		nvme_disable_ctrl(&dev->ctrl, dev->ctrl.cap);
+		nvme_disable_ctrl(&dev->ctrl);
 
 	nvme_poll_irqdisable(nvmeq, -1);
 }
@@ -1679,7 +1679,7 @@ static int nvme_pci_configure_admin_queue(struct nvme_dev *dev)
 	    (readl(dev->bar + NVME_REG_CSTS) & NVME_CSTS_NSSRO))
 		writel(NVME_CSTS_NSSRO, dev->bar + NVME_REG_CSTS);
 
-	result = nvme_disable_ctrl(&dev->ctrl, dev->ctrl.cap);
+	result = nvme_disable_ctrl(&dev->ctrl);
 	if (result < 0)
 		return result;
 
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 55849a6a439b..3fd44e1c279d 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1860,7 +1860,7 @@ static void nvme_rdma_shutdown_ctrl(struct nvme_rdma_ctrl *ctrl, bool shutdown)
 	if (shutdown)
 		nvme_shutdown_ctrl(&ctrl->ctrl);
 	else
-		nvme_disable_ctrl(&ctrl->ctrl, ctrl->ctrl.cap);
+		nvme_disable_ctrl(&ctrl->ctrl);
 	nvme_rdma_teardown_admin_queue(ctrl, shutdown);
 }
 
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 4f9ab0084587..77c3d4d06d29 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1896,7 +1896,7 @@ static void nvme_tcp_teardown_ctrl(struct nvme_ctrl *ctrl, bool shutdown)
 	if (shutdown)
 		nvme_shutdown_ctrl(ctrl);
 	else
-		nvme_disable_ctrl(ctrl, ctrl->cap);
+		nvme_disable_ctrl(ctrl);
 	nvme_tcp_teardown_admin_queue(ctrl, shutdown);
 }
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
