Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A6633BC6
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 01:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=yVNw6s/h8qmOmOPEi0ySvnvJPblhAQKX6AHsV9Pnojo=; b=P2d
	7j4Bohy6IhrfqDg0RSszAKGtE1fyNAdQZtT/oPRYS/uJP7tJlG7ayqFj2vgo/mYqpt56IE2ExxjNt
	/ZxFzDiKZC/fRDTihsguxjzCyY9e5dTUCuzecDD8KRQoHgcIDoOlitzlo/T/u85eDHtjWzgjQKY+L
	NY2fDMe6IGzYckkmwwFDRcQi1H2hATb0AvD4ri+6RCDdUTlU7OARtI1rHboQpLBKN8Dml+2nJnpfm
	XFFdpqHQcH8aXStIW0CQO5zHOP+v6fe1lBdowGpo5OUsopEWq9LsF8YbkPRv0Kkdqt+dNpOfmjGj9
	kO+K9xIBZ8y6AErvAAWFIb70XKsQj9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXw7Y-0004cT-Uq; Mon, 03 Jun 2019 23:12:04 +0000
Received: from [64.35.102.114] (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXw7V-0004cJ-IM; Mon, 03 Jun 2019 23:12:01 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] Revert "nvme-rdma: remove redundant reference between
 ib_device and tagset"
Date: Mon,  3 Jun 2019 16:11:59 -0700
Message-Id: <20190603231159.17034-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>, james.r.harris@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This commit caused a kernel panic when disconnecting from an
inaccessible controller.

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

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/rdma.c | 34 +++++++++++++++++++++++++++++-----
 1 file changed, 29 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 26709a2ab593..8aff3a0ab609 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -707,6 +707,15 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
 	return ret;
 }
 
+static void nvme_rdma_free_tagset(struct nvme_ctrl *nctrl,
+		struct blk_mq_tag_set *set)
+{
+	struct nvme_rdma_ctrl *ctrl = to_rdma_ctrl(nctrl);
+
+	blk_mq_free_tag_set(set);
+	nvme_rdma_dev_put(ctrl->device);
+}
+
 static struct blk_mq_tag_set *nvme_rdma_alloc_tagset(struct nvme_ctrl *nctrl,
 		bool admin)
 {
@@ -745,9 +754,24 @@ static struct blk_mq_tag_set *nvme_rdma_alloc_tagset(struct nvme_ctrl *nctrl,
 
 	ret = blk_mq_alloc_tag_set(set);
 	if (ret)
-		return ERR_PTR(ret);
+		goto out;
+
+	/*
+	 * We need a reference on the device as long as the tag_set is alive,
+	 * as the MRs in the request structures need a valid ib_device.
+	 */
+	ret = nvme_rdma_dev_get(ctrl->device);
+	if (!ret) {
+		ret = -EINVAL;
+		goto out_free_tagset;
+	}
 
 	return set;
+
+out_free_tagset:
+	blk_mq_free_tag_set(set);
+out:
+	return ERR_PTR(ret);
 }
 
 static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
@@ -755,7 +779,7 @@ static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
 {
 	if (remove) {
 		blk_cleanup_queue(ctrl->ctrl.admin_q);
-		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
+		nvme_rdma_free_tagset(&ctrl->ctrl, ctrl->ctrl.admin_tagset);
 	}
 	if (ctrl->async_event_sqe.data) {
 		nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
@@ -833,7 +857,7 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 		blk_cleanup_queue(ctrl->ctrl.admin_q);
 out_free_tagset:
 	if (new)
-		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
+		nvme_rdma_free_tagset(&ctrl->ctrl, ctrl->ctrl.admin_tagset);
 out_free_async_qe:
 	nvme_rdma_free_qe(ctrl->device->dev, &ctrl->async_event_sqe,
 		sizeof(struct nvme_command), DMA_TO_DEVICE);
@@ -848,7 +872,7 @@ static void nvme_rdma_destroy_io_queues(struct nvme_rdma_ctrl *ctrl,
 {
 	if (remove) {
 		blk_cleanup_queue(ctrl->ctrl.connect_q);
-		blk_mq_free_tag_set(ctrl->ctrl.tagset);
+		nvme_rdma_free_tagset(&ctrl->ctrl, ctrl->ctrl.tagset);
 	}
 	nvme_rdma_free_io_queues(ctrl);
 }
@@ -889,7 +913,7 @@ static int nvme_rdma_configure_io_queues(struct nvme_rdma_ctrl *ctrl, bool new)
 		blk_cleanup_queue(ctrl->ctrl.connect_q);
 out_free_tag_set:
 	if (new)
-		blk_mq_free_tag_set(ctrl->ctrl.tagset);
+		nvme_rdma_free_tagset(&ctrl->ctrl, ctrl->ctrl.tagset);
 out_free_io_queues:
 	nvme_rdma_free_io_queues(ctrl);
 	return ret;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
