Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0523036074
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 17:41:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9SMKJxmO+z+nD7cikZsUUNx8gtNfviHJIfg+ekY/aCw=; b=qrg
	z2nQPLHOCfmMJBhZXGjwy80MofjmQRb54l4ItiBe5yD1f26PzXNICYuLduDeBx0MTmuVXvgt+3WSG
	1kTdhK8D6FhtFZznPEiH+vfxrjU/dKddTYAkGuzSqWUA66CAAjkrV64FPuz9Cbunj6UrOeYWeFAbO
	k94Cp0KqPSkWKPdZjoDQ/Jq32qdy+Gs9FEFPrZxAuShoXSH0H5LCImqrlmWoaLjB+6mHMWHObtA79
	Lq/ISO7ls2UDeLAatq19H9G45WTGlG7hL70F3McD3nU+2vBmlFdsLboNfplMK2n6tC9dng4doyI0P
	Cn6s4ibl9zw+X/Y93W9FcD5mBy+GiMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYY2q-0007SR-VD; Wed, 05 Jun 2019 15:41:44 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYY2k-0007S7-Du
 for linux-nvme@lists.infradead.org; Wed, 05 Jun 2019 15:41:40 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 5 Jun 2019 18:41:33 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x55FfXhf002157;
 Wed, 5 Jun 2019 18:41:33 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, james.r.harris@intel.com, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH 1/1] nvme-rdma: use dynamic dma mapping per command
Date: Wed,  5 Jun 2019 18:41:33 +0300
Message-Id: <1559749293-32649-1-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_084138_874413_91A60CF0 
X-CRM114-Status: GOOD (  13.83  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Max Gurtovoy <maxg@mellanox.com>, israelr@mellanox.com,
 shlomin@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Commit 87fd125344d6 ("nvme-rdma: remove redundant reference between
ib_device and tagset") caused a kernel panic when disconnecting from an
inaccessible controller (disconnect during re-connection).

--
nvme nvme0: Removing ctrl: NQN "testnqn1"
nvme_rdma: nvme_rdma_exit_request: hctx 0 queue_idx 1
BUG: unable to handle kernel paging request at 0000000080000228
PGD 0 P4D 0
Oops: 0000 [#1] SMP PTI
...
Call Trace:
 blk_mq_exit_hctx+0x5c/0xf0
 blk_mq_exit_queue+0xd4/0x100
 blk_cleanup_queue+0x9a/0xc0
 nvme_rdma_destroy_io_queues+0x52/0x60 [nvme_rdma]
 nvme_rdma_shutdown_ctrl+0x3e/0x80 [nvme_rdma]
 nvme_do_delete_ctrl+0x53/0x80 [nvme_core]
 nvme_sysfs_delete+0x45/0x60 [nvme_core]
 kernfs_fop_write+0x105/0x180
 vfs_write+0xad/0x1a0
 ksys_write+0x5a/0xd0
 do_syscall_64+0x55/0x110
 entry_SYSCALL_64_after_hwframe+0x44/0xa9
RIP: 0033:0x7fa215417154
--

The reason for this crash is accessing an already freed ib_device for
performing dma_unmap during exit_request commands. The root cause for
that is that during re-connection all the queues are destroyed and
re-created (and the ib_device is reference counted by the queues and
freed as well) but the tagset stays alive and all the DMA mappings (that
we perform in init_request) kept in the request context. The original
commit fixed a different bug that was introduced during bonding (aka nic
teaming) tests that for some scenarios change the underlying ib_device
and caused memory leakage and possible segmentation fault. This commit
is a complementry commit that also changes the wrong DMA mappings that
were saved in the request context and also fixes the above crash of
accessing freed ib_device during destruction of the tagset.

Fixes: 87fd125344d6 ("nvme-rdma: remove redundant reference between ib_device and tagset")
Suggested-by: Sagi Grimberg <sagi@grimberg.me>
Tested-by: Jim Harris <james.r.harris@intel.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/rdma.c | 76 ++++++++++++++++++++++++++++++------------------
 1 file changed, 47 insertions(+), 29 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 0e033b6..88f11c5 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -167,15 +167,17 @@ static inline size_t nvme_rdma_inline_data_size(struct nvme_rdma_queue *queue)
 	return queue->cmnd_capsule_len - sizeof(struct nvme_command);
 }
 
-static void nvme_rdma_free_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
-		size_t capsule_size, enum dma_data_direction dir)
+static void nvme_rdma_free_mapped_qe(struct ib_device *ibdev,
+		struct nvme_rdma_qe *qe, size_t capsule_size,
+		enum dma_data_direction dir)
 {
 	ib_dma_unmap_single(ibdev, qe->dma, capsule_size, dir);
 	kfree(qe->data);
 }
 
-static int nvme_rdma_alloc_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
-		size_t capsule_size, enum dma_data_direction dir)
+static int nvme_rdma_alloc_mapped_qe(struct ib_device *ibdev,
+		struct nvme_rdma_qe *qe, size_t capsule_size,
+		enum dma_data_direction dir)
 {
 	qe->data = kzalloc(capsule_size, GFP_KERNEL);
 	if (!qe->data)
@@ -198,7 +200,7 @@ static void nvme_rdma_free_ring(struct ib_device *ibdev,
 	int i;
 
 	for (i = 0; i < ib_queue_size; i++)
-		nvme_rdma_free_qe(ibdev, &ring[i], capsule_size, dir);
+		nvme_rdma_free_mapped_qe(ibdev, &ring[i], capsule_size, dir);
 	kfree(ring);
 }
 
@@ -214,7 +216,8 @@ static struct nvme_rdma_qe *nvme_rdma_alloc_ring(struct ib_device *ibdev,
 		return NULL;
 
 	for (i = 0; i < ib_queue_size; i++) {
-		if (nvme_rdma_alloc_qe(ibdev, &ring[i], capsule_size, dir))
+		if (nvme_rdma_alloc_mapped_qe(ibdev, &ring[i], capsule_size,
+					      dir))
 			goto out_free_ring;
 	}
 
@@ -274,14 +277,9 @@ static int nvme_rdma_create_qp(struct nvme_rdma_queue *queue, const int factor)
 static void nvme_rdma_exit_request(struct blk_mq_tag_set *set,
 		struct request *rq, unsigned int hctx_idx)
 {
-	struct nvme_rdma_ctrl *ctrl = set->driver_data;
 	struct nvme_rdma_request *req = blk_mq_rq_to_pdu(rq);
-	int queue_idx = (set == &ctrl->tag_set) ? hctx_idx + 1 : 0;
-	struct nvme_rdma_queue *queue = &ctrl->queues[queue_idx];
-	struct nvme_rdma_device *dev = queue->device;
 
-	nvme_rdma_free_qe(dev->dev, &req->sqe, sizeof(struct nvme_command),
-			DMA_TO_DEVICE);
+	kfree(req->sqe.data);
 }
 
 static int nvme_rdma_init_request(struct blk_mq_tag_set *set,
@@ -292,15 +290,11 @@ static int nvme_rdma_init_request(struct blk_mq_tag_set *set,
 	struct nvme_rdma_request *req = blk_mq_rq_to_pdu(rq);
 	int queue_idx = (set == &ctrl->tag_set) ? hctx_idx + 1 : 0;
 	struct nvme_rdma_queue *queue = &ctrl->queues[queue_idx];
-	struct nvme_rdma_device *dev = queue->device;
-	struct ib_device *ibdev = dev->dev;
-	int ret;
 
 	nvme_req(rq)->ctrl = &ctrl->ctrl;
-	ret = nvme_rdma_alloc_qe(ibdev, &req->sqe, sizeof(struct nvme_command),
-			DMA_TO_DEVICE);
-	if (ret)
-		return ret;
+	req->sqe.data = kzalloc(sizeof(struct nvme_command), GFP_KERNEL);
+	if (!req->sqe.data)
+		return -ENOMEM;
 
 	req->queue = queue;
 
@@ -748,8 +742,10 @@ static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
 		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
 	}
 	if (ctrl->async_event_sqe.data) {
-		nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
-				sizeof(struct nvme_command), DMA_TO_DEVICE);
+		nvme_rdma_free_mapped_qe(ctrl->device->dev,
+					 &ctrl->async_event_sqe,
+					 sizeof(struct nvme_command),
+					 DMA_TO_DEVICE);
 		ctrl->async_event_sqe.data = NULL;
 	}
 	nvme_rdma_free_queue(&ctrl->queues[0]);
@@ -769,8 +765,10 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 
 	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ctrl->device->dev);
 
-	error = nvme_rdma_alloc_qe(ctrl->device->dev, &ctrl->async_event_sqe,
-			sizeof(struct nvme_command), DMA_TO_DEVICE);
+	error = nvme_rdma_alloc_mapped_qe(ctrl->device->dev,
+					  &ctrl->async_event_sqe,
+					  sizeof(struct nvme_command),
+					  DMA_TO_DEVICE);
 	if (error)
 		goto out_free_queue;
 
@@ -825,8 +823,10 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 	if (new)
 		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
 out_free_async_qe:
-	nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
-		sizeof(struct nvme_command), DMA_TO_DEVICE);
+	nvme_rdma_free_mapped_qe(ctrl->device->dev,
+				 &ctrl->async_event_sqe,
+				 sizeof(struct nvme_command),
+				 DMA_TO_DEVICE);
 	ctrl->async_event_sqe.data = NULL;
 out_free_queue:
 	nvme_rdma_free_queue(&ctrl->queues[0]);
@@ -1709,12 +1709,20 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
 		return nvmf_fail_nonready_command(&queue->ctrl->ctrl, rq);
 
 	dev = queue->device->dev;
+
+	req->sqe.dma = ib_dma_map_single(dev, req->sqe.data,
+					 sizeof(struct nvme_command),
+					 DMA_TO_DEVICE);
+	err = ib_dma_mapping_error(dev, req->sqe.dma);
+	if (unlikely(err))
+		return BLK_STS_RESOURCE;
+
 	ib_dma_sync_single_for_cpu(dev, sqe->dma,
 			sizeof(struct nvme_command), DMA_TO_DEVICE);
 
 	ret = nvme_setup_cmd(ns, rq, c);
 	if (ret)
-		return ret;
+		goto unmap_qe;
 
 	blk_mq_start_request(rq);
 
@@ -1739,10 +1747,16 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
 	}
 
 	return BLK_STS_OK;
+
 err:
 	if (err == -ENOMEM || err == -EAGAIN)
-		return BLK_STS_RESOURCE;
-	return BLK_STS_IOERR;
+		ret = BLK_STS_RESOURCE;
+	else
+		ret = BLK_STS_IOERR;
+unmap_qe:
+	ib_dma_unmap_single(dev, req->sqe.dma, sizeof(struct nvme_command),
+			    DMA_TO_DEVICE);
+	return ret;
 }
 
 static int nvme_rdma_poll(struct blk_mq_hw_ctx *hctx)
@@ -1755,8 +1769,12 @@ static int nvme_rdma_poll(struct blk_mq_hw_ctx *hctx)
 static void nvme_rdma_complete_rq(struct request *rq)
 {
 	struct nvme_rdma_request *req = blk_mq_rq_to_pdu(rq);
+	struct nvme_rdma_queue *queue = req->queue;
+	struct ib_device *ibdev = queue->device->dev;
 
-	nvme_rdma_unmap_data(req->queue, rq);
+	nvme_rdma_unmap_data(queue, rq);
+	ib_dma_unmap_single(ibdev, req->sqe.dma, sizeof(struct nvme_command),
+			    DMA_TO_DEVICE);
 	nvme_complete_rq(rq);
 }
 
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
