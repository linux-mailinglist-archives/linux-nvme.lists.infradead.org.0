Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE8B624FFD
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 15:20:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=eb7FCcttj3pkBbg53UAO+gSgLqwM/ruQAPTbJjHw2MQ=; b=fhw
	bzhTXuSEjodub5BspZPrtC2GyPmAuybvALY9AT5cIfXmhyl2Pe0vCHOFOFPcBkGaGrD8P4VF5Empj
	1IMucJcZTLpZ9sogwrp/1AmsLnKdXMpEdWQahTROahcX28gLRaXM5IDKSBH+tEwfh9OVoH33Ghyiy
	EBGSvGVzTQIbQQsTdF8AdsKRIARlPIvaEpJA9R6mGkGRPMV4uapCUwoYt9fvZxEpBrvaRiOUdJB9t
	pSQoDvhv03YXXpFbctbTW/Y9yz+xsBcKAEnQKJKoGg2LrC4GaoRXWyvUCPh4krsNzSBGIM4Ej2Nqb
	jO3ke1CfAe1B3oRMbNmq/IEx+NbkWCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT4ge-0003um-L1; Tue, 21 May 2019 13:20:12 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT4gY-0003Ek-HN
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 13:20:08 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 21 May 2019 16:19:57 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x4LDJvua014589;
 Tue, 21 May 2019 16:19:57 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, sagi@grimberg.me, hch@lst.de
Subject: [PATCH 1/1] nvme-rdma: Add association between ctrl and transport dev
Date: Tue, 21 May 2019 16:19:56 +0300
Message-Id: <1558444796-5190-1-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_062006_990894_B3071206 
X-CRM114-Status: GOOD (  12.09  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: shlomin@mellanox.com, maxg@mellanox.com, israelr@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

RDMA transport ctrl holds a reference to it's underlaying transport
device, so we need to make sure that this reference is valid. Use kref
object to enforce that.

This commit fixes possible segmentation fault that may happen during
reconnection + device removal flow that was caused by removing the ref
count between block layer tagsets and the transport device.

Fixes: 87fd125344d6 ("nvme-rdma: remove redundant reference between ib_device and tagset")

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/rdma.c | 51 ++++++++++++++++++++++++++++++++++++++----------
 1 file changed, 41 insertions(+), 10 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index f383146..07eddfb 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -354,6 +354,21 @@ static int nvme_rdma_dev_get(struct nvme_rdma_device *dev)
 	return kref_get_unless_zero(&dev->ref);
 }
 
+static void nvme_rdma_ctrl_dev_put(struct nvme_rdma_ctrl *ctrl,
+				   struct nvme_rdma_device *dev)
+{
+	ctrl->device = 	NULL;
+	kref_put(&dev->ref, nvme_rdma_free_dev);
+}
+
+static void nvme_rdma_ctrl_dev_get(struct nvme_rdma_ctrl *ctrl,
+				   struct nvme_rdma_device *dev)
+{
+	kref_get(&dev->ref);
+	ctrl->device = dev;
+}
+
+
 static struct nvme_rdma_device *
 nvme_rdma_find_get_device(struct rdma_cm_id *cm_id)
 {
@@ -743,12 +758,16 @@ static struct blk_mq_tag_set *nvme_rdma_alloc_tagset(struct nvme_ctrl *nctrl,
 static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
 		bool remove)
 {
+	struct nvme_rdma_device *ndev = ctrl->device;
+
 	if (remove) {
 		blk_cleanup_queue(ctrl->ctrl.admin_q);
 		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
+		/* ctrl releases refcount on device */
+		nvme_rdma_ctrl_dev_put(ctrl, ctrl->device);
 	}
 	if (ctrl->async_event_sqe.data) {
-		nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
+		nvme_rdma_free_qe(ndev->dev, &ctrl->async_event_sqe,
 				sizeof(struct nvme_command), DMA_TO_DEVICE);
 		ctrl->async_event_sqe.data = NULL;
 	}
@@ -758,23 +777,26 @@ static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
 static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 		bool new)
 {
+	struct ib_device *ibdev;
 	int error;
 
 	error = nvme_rdma_alloc_queue(ctrl, 0, NVME_AQ_DEPTH);
 	if (error)
 		return error;
 
-	ctrl->device = ctrl->queues[0].device;
-	ctrl->ctrl.numa_node = dev_to_node(ctrl->device->dev->dma_device);
+	ibdev = ctrl->queues[0].device->dev;
+	ctrl->ctrl.numa_node = dev_to_node(ibdev->dma_device);
+	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ibdev);
 
-	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ctrl->device->dev);
-
-	error = nvme_rdma_alloc_qe(ctrl->device->dev, &ctrl->async_event_sqe,
+	error = nvme_rdma_alloc_qe(ibdev, &ctrl->async_event_sqe,
 			sizeof(struct nvme_command), DMA_TO_DEVICE);
 	if (error)
 		goto out_free_queue;
 
 	if (new) {
+		/* ctrl takes refcount on device */
+		nvme_rdma_ctrl_dev_get(ctrl, ctrl->queues[0].device);
+
 		ctrl->ctrl.admin_tagset = nvme_rdma_alloc_tagset(&ctrl->ctrl, true);
 		if (IS_ERR(ctrl->ctrl.admin_tagset)) {
 			error = PTR_ERR(ctrl->ctrl.admin_tagset);
@@ -786,6 +808,14 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 			error = PTR_ERR(ctrl->ctrl.admin_q);
 			goto out_free_tagset;
 		}
+	} else if (ctrl->device != ctrl->queues[0].device) {
+		/* ctrl releases refcount on old device */
+		nvme_rdma_ctrl_dev_put(ctrl, ctrl->device);
+		/*
+		 * underlaying device might change, ctrl takes refcount on
+		 * new device.
+		 */
+		nvme_rdma_ctrl_dev_get(ctrl, ctrl->queues[0].device);
 	}
 
 	error = nvme_rdma_start_queue(ctrl, 0);
@@ -825,7 +855,9 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 	if (new)
 		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
 out_free_async_qe:
-	nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
+	if (new)
+		nvme_rdma_ctrl_dev_put(ctrl, ctrl->device);
+	nvme_rdma_free_qe(ibdev, &ctrl->async_event_sqe,
 		sizeof(struct nvme_command), DMA_TO_DEVICE);
 	ctrl->async_event_sqe.data = NULL;
 out_free_queue:
@@ -2027,9 +2059,8 @@ static void nvme_rdma_remove_one(struct ib_device *ib_device, void *client_data)
 	/* Delete all controllers using this device */
 	mutex_lock(&nvme_rdma_ctrl_mutex);
 	list_for_each_entry(ctrl, &nvme_rdma_ctrl_list, list) {
-		if (ctrl->device->dev != ib_device)
-			continue;
-		nvme_delete_ctrl(&ctrl->ctrl);
+		if (ctrl->device && ctrl->device->dev == ib_device)
+			nvme_delete_ctrl(&ctrl->ctrl);
 	}
 	mutex_unlock(&nvme_rdma_ctrl_mutex);
 
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
