Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C51E36FD0
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 11:27:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=pQIIz74P0vRSWQEJb8rI0MVoYE/I3talWazUkG7/uTk=; b=DG0
	5gRA0bABETvPO11VpsvHkk5Odvk/VlaYGD7EIUDmaZCjoaljA++y8MBIDuWFZDzXYttn18WJ83dn1
	SBhBMotJVh2z6WsLW/liDTY6lDs6j84H/6CKVpyLJVbj4lmrY+7GyMIWc1gTzJTM6A4KhCS/DrwwL
	Adqh3iEfq4RyKukeC3GUJN+XkSMCVMqPTP1RFPwVUm5sarCayWi/rg7pyME6ZuAoprrWGEUtNUxc7
	OIqYztWAUeY9UeF3ppeDRsX86SQXO7bvMjn2aoI8E+zXdUKH7dj1Ei8wR2iRMHKwrFmTv/XzAO8sa
	nWge185Z9aIYqYZ2/e8F74WnAEK+Rkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYogT-0004Ys-Bx; Thu, 06 Jun 2019 09:27:45 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYogO-0004YU-6N
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 09:27:42 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 6 Jun 2019 12:27:36 +0300
Received: from r-vnc08.mtr.labs.mlnx (r-vnc08.mtr.labs.mlnx [10.208.0.121])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x569Rakv003106;
 Thu, 6 Jun 2019 12:27:36 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, james.r.harris@intel.com, sagi@grimberg.me,
 hch@lst.de
Subject: [PATCH v2 1/1] nvme-rdma: use dynamic dma mapping per command
Date: Thu,  6 Jun 2019 12:27:36 +0300
Message-Id: <1559813256-12370-1-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.8.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_022740_640597_03BF1329 
X-CRM114-Status: GOOD (  14.76  )
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
Cc: Max Gurtovoy <maxg@mellanox.com>, israelr@mellanox.com, alex@zadara.com,
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
is a complementary commit that also changes the wrong DMA mappings that
were saved in the request context and making the request sqe dma
mappings dynamic with the command lifetime (i.e. mapped in .queue_rq and
unmapped in .complete). It also fixes the above crash of accessing freed
ib_device during destruction of the tagset.

Fixes: 87fd125344d6 ("nvme-rdma: remove redundant reference between ib_device and tagset")
Reported-by: Jim Harris <james.r.harris@intel.com>
Suggested-by: Sagi Grimberg <sagi@grimberg.me>
Tested-by: Jim Harris <james.r.harris@intel.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---

Changes from V1:
 - commit message typo and description addition (Sagi)
 - added Reported-by description (Christoph)
 - added comments for async SQE and general CQEs DMA map holding (Christoph)
 - rollback to original functions name for alloc/free QE (Sagi/Christoph)

---
 drivers/nvme/host/rdma.c | 53 ++++++++++++++++++++++++++++++++----------------
 1 file changed, 36 insertions(+), 17 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 0e033b6..9c6e3f7 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -213,6 +213,11 @@ static struct nvme_rdma_qe *nvme_rdma_alloc_ring(struct ib_device *ibdev,
 	if (!ring)
 		return NULL;
 
+	/*
+	 * Bind the CQEs (post recv buffers) DMA mapping to the RDMA queue
+	 * lifetime. It's safe, since any chage in the underlying RDMA device
+	 * will issue error recovery and queue re-creation.
+	 */
 	for (i = 0; i < ib_queue_size; i++) {
 		if (nvme_rdma_alloc_qe(ibdev, &ring[i], capsule_size, dir))
 			goto out_free_ring;
@@ -274,14 +279,9 @@ static int nvme_rdma_create_qp(struct nvme_rdma_queue *queue, const int factor)
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
@@ -292,15 +292,11 @@ static int nvme_rdma_init_request(struct blk_mq_tag_set *set,
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
 
@@ -769,6 +765,11 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 
 	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ctrl->device->dev);
 
+	/*
+	 * Bind the async event SQE DMA mapping to the admin queue lifetime.
+	 * It's safe, since any chage in the underlying RDMA device will issue
+	 * error recovery and queue re-creation.
+	 */
 	error = nvme_rdma_alloc_qe(ctrl->device->dev, &ctrl->async_event_sqe,
 			sizeof(struct nvme_command), DMA_TO_DEVICE);
 	if (error)
@@ -1709,12 +1710,20 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
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
 
@@ -1739,10 +1748,16 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
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
@@ -1755,8 +1770,12 @@ static int nvme_rdma_poll(struct blk_mq_hw_ctx *hctx)
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
