Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BAE99A3F9
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 01:39:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=WiTaLDv6JUVnWZTkhEFve83NvZ07EwDctWm8wIb3cFQ=; b=Dtr
	dU4PTMEa8OO/PkWQfxVC/vtSm/4iz+kGzpVrP/lmwf6r5317YQF3HsnSGYae4p5v1Dp70dBpVrOJM
	OtfFeDXVWmZSOzIPgvKggnR33ZCvhHLmCKiObFWVGYsCZDXVXfUhrccQ0OlDHC3RvfZVNx0SbBGyv
	47XTZbFZ4pPk1FtiQWaoHX/AXXjiBm24nH5D5jQXIb59AVXm6ghWOV3Qe6KyXXkKhlB4/eDE9nYRx
	oazEiVSD4rHFVuDjYHfPxq7CDpyPr7hWcs1cDQYVAXVlQuDkwWjGPvNh4TBK8Ao/yp5TxdeU37oMn
	uAyyoP4BLfQ9xZ/m6rqF3vuuLs5CTcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0wg6-0004aT-B1; Thu, 22 Aug 2019 23:39:38 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i0wg0-0004aI-Pt; Thu, 22 Aug 2019 23:39:32 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3] nvme: make all fabrics command run on a separate request
 queue
Date: Thu, 22 Aug 2019 16:39:32 -0700
Message-Id: <20190822233932.29003-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We have a fundamental issue that fabric commands use the admin_q.
The reason is, that admin-connect, register reads and writes and
admin commands cannot be guaranteed ordering while we are running
controller resets.

For example, when we reset a controller we perform:
1. disable the controller
2. teardown the admin queue
3. re-establish the admin queue
4. enable the controller

In order to perform (3), we need to unquiesce the admin queue, however
we may have some admin commands that are already pending on the
quiesced admin_q and will immediate execute when we unquiesce it before
we execute (4). The host must not send admin commands to the controller
before enabling the controller.

To fix this, we have the fabric commands (admin connect and property
get/set) use a separate fabrics_q and make sure to quiesce the admin_q
before we disable the controller, and unquiesce it only after we enable
the controller. The fabrics_q lifetime is exactly like the admin_q lifetime
but it is quiesced after we disable/shutdown the controller and unquiesced
before the admin connect.

This fixes the error prints from nvmet in a controller reset storm test:
kernel: nvmet: got cmd 6 while CC.EN == 0 on qid = 0
Which indicate that the host is sending an admin command when the
controller is not enabled.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
Changes from v2:
- sent the correct patch this time :)

Changes from v1:
- quiesced/unquiesced the fabrics_q when we teardown the controller
  but do it where the admin_q quiesce/unquiesce used to be.

 drivers/nvme/host/fabrics.c |  8 ++++----
 drivers/nvme/host/fc.c      | 18 ++++++++++++++++--
 drivers/nvme/host/nvme.h    |  1 +
 drivers/nvme/host/rdma.c    | 25 +++++++++++++++++++++++--
 drivers/nvme/host/tcp.c     | 25 +++++++++++++++++++++++--
 drivers/nvme/target/loop.c  | 24 ++++++++++++++++++------
 6 files changed, 85 insertions(+), 16 deletions(-)

diff --git a/drivers/nvme/host/fabrics.c b/drivers/nvme/host/fabrics.c
index 6a8bcaa9a8f6..74b8818ac9a1 100644
--- a/drivers/nvme/host/fabrics.c
+++ b/drivers/nvme/host/fabrics.c
@@ -150,7 +150,7 @@ int nvmf_reg_read32(struct nvme_ctrl *ctrl, u32 off, u32 *val)
 	cmd.prop_get.fctype = nvme_fabrics_type_property_get;
 	cmd.prop_get.offset = cpu_to_le32(off);
 
-	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &cmd, &res, NULL, 0, 0,
+	ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, &res, NULL, 0, 0,
 			NVME_QID_ANY, 0, 0, false);
 
 	if (ret >= 0)
@@ -197,7 +197,7 @@ int nvmf_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
 	cmd.prop_get.attrib = 1;
 	cmd.prop_get.offset = cpu_to_le32(off);
 
-	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &cmd, &res, NULL, 0, 0,
+	ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, &res, NULL, 0, 0,
 			NVME_QID_ANY, 0, 0, false);
 
 	if (ret >= 0)
@@ -243,7 +243,7 @@ int nvmf_reg_write32(struct nvme_ctrl *ctrl, u32 off, u32 val)
 	cmd.prop_set.offset = cpu_to_le32(off);
 	cmd.prop_set.value = cpu_to_le64(val);
 
-	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &cmd, NULL, NULL, 0, 0,
+	ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, NULL, NULL, 0, 0,
 			NVME_QID_ANY, 0, 0, false);
 	if (unlikely(ret))
 		dev_err(ctrl->device,
@@ -396,7 +396,7 @@ int nvmf_connect_admin_queue(struct nvme_ctrl *ctrl)
 	strncpy(data->subsysnqn, ctrl->opts->subsysnqn, NVMF_NQN_SIZE);
 	strncpy(data->hostnqn, ctrl->opts->host->nqn, NVMF_NQN_SIZE);
 
-	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &cmd, &res,
+	ret = __nvme_submit_sync_cmd(ctrl->fabrics_q, &cmd, &res,
 			data, sizeof(*data), 0, NVME_QID_ANY, 1,
 			BLK_MQ_REQ_RESERVED | BLK_MQ_REQ_NOWAIT, false);
 	if (ret) {
diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index c289f46f6d13..f5cce3c3f999 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2028,7 +2028,9 @@ nvme_fc_ctrl_free(struct kref *ref)
 	spin_unlock_irqrestore(&ctrl->rport->lock, flags);
 
 	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
+	blk_mq_unquiesce_queue(ctrl->ctrl.fabrics_q);
 	blk_cleanup_queue(ctrl->ctrl.admin_q);
+	blk_cleanup_queue(ctrl->ctrl.fabrics_q);
 	blk_mq_free_tag_set(&ctrl->admin_tag_set);
 
 	kfree(ctrl->queues);
@@ -2656,7 +2658,7 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 	if (ret)
 		goto out_delete_hw_queue;
 
-	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
+	blk_mq_unquiesce_queue(ctrl->ctrl.fabrics_q);
 
 	ret = nvmf_connect_admin_queue(&ctrl->ctrl);
 	if (ret)
@@ -2678,6 +2680,8 @@ nvme_fc_create_association(struct nvme_fc_ctrl *ctrl)
 	ctrl->ctrl.max_hw_sectors =
 		(ctrl->lport->ops->max_sgl_segments - 1) << (PAGE_SHIFT - 9);
 
+	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
+
 	ret = nvme_init_identify(&ctrl->ctrl);
 	if (ret)
 		goto out_disconnect_admin_queue;
@@ -2807,6 +2811,7 @@ nvme_fc_delete_association(struct nvme_fc_ctrl *ctrl)
 	 * terminate the exchanges.
 	 */
 	blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
+	blk_mq_quiesce_queue(ctrl->ctrl.fabrics_q);
 	blk_mq_tagset_busy_iter(&ctrl->admin_tag_set,
 				nvme_fc_terminate_exchange, &ctrl->ctrl);
 
@@ -2840,6 +2845,7 @@ nvme_fc_delete_association(struct nvme_fc_ctrl *ctrl)
 
 	/* re-enable the admin_q so anything new can fast fail */
 	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
+	blk_mq_unquiesce_queue(ctrl->ctrl.fabrics_q);
 
 	/* resume the io queues so that things will fast fail */
 	nvme_start_queues(&ctrl->ctrl);
@@ -3122,10 +3128,16 @@ nvme_fc_init_ctrl(struct device *dev, struct nvmf_ctrl_options *opts,
 		goto out_free_queues;
 	ctrl->ctrl.admin_tagset = &ctrl->admin_tag_set;
 
+	ctrl->ctrl.fabrics_q = blk_mq_init_queue(&ctrl->admin_tag_set);
+	if (IS_ERR(ctrl->ctrl.fabrics_q)) {
+		ret = PTR_ERR(ctrl->ctrl.fabrics_q);
+		goto out_free_admin_tag_set;
+	}
+
 	ctrl->ctrl.admin_q = blk_mq_init_queue(&ctrl->admin_tag_set);
 	if (IS_ERR(ctrl->ctrl.admin_q)) {
 		ret = PTR_ERR(ctrl->ctrl.admin_q);
-		goto out_free_admin_tag_set;
+		goto out_cleanup_fabrics_q;
 	}
 
 	/*
@@ -3197,6 +3209,8 @@ nvme_fc_init_ctrl(struct device *dev, struct nvmf_ctrl_options *opts,
 
 out_cleanup_admin_q:
 	blk_cleanup_queue(ctrl->ctrl.admin_q);
+out_cleanup_fabrics_q:
+	blk_cleanup_queue(ctrl->ctrl.fabrics_q);
 out_free_admin_tag_set:
 	blk_mq_free_tag_set(&ctrl->admin_tag_set);
 out_free_queues:
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 36fbbdd60de6..27e631c5b1e5 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -186,6 +186,7 @@ struct nvme_ctrl {
 	const struct nvme_ctrl_ops *ops;
 	struct request_queue *admin_q;
 	struct request_queue *connect_q;
+	struct request_queue *fabrics_q;
 	struct device *dev;
 	int instance;
 	int numa_node;
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 017e48a87620..90a2684641d1 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -757,6 +757,7 @@ static void nvme_rdma_destroy_admin_queue(struct nvme_rdma_ctrl *ctrl,
 {
 	if (remove) {
 		blk_cleanup_queue(ctrl->ctrl.admin_q);
+		blk_cleanup_queue(ctrl->ctrl.fabrics_q);
 		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
 	}
 	if (ctrl->async_event_sqe.data) {
@@ -798,13 +799,21 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 			goto out_free_async_qe;
 		}
 
+		ctrl->ctrl.fabrics_q = blk_mq_init_queue(&ctrl->admin_tag_set);
+		if (IS_ERR(ctrl->ctrl.fabrics_q)) {
+			error = PTR_ERR(ctrl->ctrl.fabrics_q);
+			goto out_free_tagset;
+		}
+
 		ctrl->ctrl.admin_q = blk_mq_init_queue(&ctrl->admin_tag_set);
 		if (IS_ERR(ctrl->ctrl.admin_q)) {
 			error = PTR_ERR(ctrl->ctrl.admin_q);
-			goto out_free_tagset;
+			goto out_cleanup_fabrics_q;
 		}
 	}
 
+	blk_mq_unquiesce_queue(ctrl->ctrl.fabrics_q);
+
 	error = nvme_rdma_start_queue(ctrl, 0);
 	if (error)
 		goto out_cleanup_queue;
@@ -816,6 +825,8 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 	ctrl->ctrl.max_hw_sectors =
 		(ctrl->max_fr_pages - 1) << (ilog2(SZ_4K) - 9);
 
+	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
+
 	error = nvme_init_identify(&ctrl->ctrl);
 	if (error)
 		goto out_stop_queue;
@@ -827,6 +838,9 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 out_cleanup_queue:
 	if (new)
 		blk_cleanup_queue(ctrl->ctrl.admin_q);
+out_cleanup_fabrics_q:
+	if (new)
+		blk_cleanup_queue(ctrl->ctrl.fabrics_q);
 out_free_tagset:
 	if (new)
 		blk_mq_free_tag_set(ctrl->ctrl.admin_tagset);
@@ -895,11 +909,15 @@ static void nvme_rdma_teardown_admin_queue(struct nvme_rdma_ctrl *ctrl,
 		bool remove)
 {
 	blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
+	blk_mq_quiesce_queue(ctrl->ctrl.fabrics_q);
 	nvme_rdma_stop_queue(&ctrl->queues[0]);
 	if (ctrl->ctrl.admin_tagset)
 		blk_mq_tagset_busy_iter(ctrl->ctrl.admin_tagset,
 			nvme_cancel_request, &ctrl->ctrl);
-	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
+	if (remove) {
+		blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
+		blk_mq_unquiesce_queue(ctrl->ctrl.fabrics_q);
+	}
 	nvme_rdma_destroy_admin_queue(ctrl, remove);
 }
 
@@ -1048,6 +1066,8 @@ static void nvme_rdma_error_recovery_work(struct work_struct *work)
 	nvme_rdma_teardown_io_queues(ctrl, false);
 	nvme_start_queues(&ctrl->ctrl);
 	nvme_rdma_teardown_admin_queue(ctrl, false);
+	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
+	blk_mq_unquiesce_queue(ctrl->ctrl.fabrics_q);
 
 	if (!nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_CONNECTING)) {
 		/* state change failure is ok if we're in DELETING state */
@@ -1860,6 +1880,7 @@ static void nvme_rdma_shutdown_ctrl(struct nvme_rdma_ctrl *ctrl, bool shutdown)
 	cancel_delayed_work_sync(&ctrl->reconnect_work);
 
 	nvme_rdma_teardown_io_queues(ctrl, shutdown);
+	blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
 	if (shutdown)
 		nvme_shutdown_ctrl(&ctrl->ctrl);
 	else
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 0b5cdcb4c434..d16d6bda9757 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1703,6 +1703,7 @@ static void nvme_tcp_destroy_admin_queue(struct nvme_ctrl *ctrl, bool remove)
 	nvme_tcp_stop_queue(ctrl, 0);
 	if (remove) {
 		blk_cleanup_queue(ctrl->admin_q);
+		blk_cleanup_queue(ctrl->fabrics_q);
 		blk_mq_free_tag_set(ctrl->admin_tagset);
 	}
 	nvme_tcp_free_admin_queue(ctrl);
@@ -1723,13 +1724,21 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
 			goto out_free_queue;
 		}
 
+		ctrl->fabrics_q = blk_mq_init_queue(ctrl->admin_tagset);
+		if (IS_ERR(ctrl->fabrics_q)) {
+			error = PTR_ERR(ctrl->fabrics_q);
+			goto out_free_tagset;
+		}
+
 		ctrl->admin_q = blk_mq_init_queue(ctrl->admin_tagset);
 		if (IS_ERR(ctrl->admin_q)) {
 			error = PTR_ERR(ctrl->admin_q);
-			goto out_free_tagset;
+			goto out_cleanup_fabrics_q;
 		}
 	}
 
+	blk_mq_unquiesce_queue(ctrl->fabrics_q);
+
 	error = nvme_tcp_start_queue(ctrl, 0);
 	if (error)
 		goto out_cleanup_queue;
@@ -1738,6 +1747,8 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
 	if (error)
 		goto out_stop_queue;
 
+	blk_mq_unquiesce_queue(ctrl->admin_q);
+
 	error = nvme_init_identify(ctrl);
 	if (error)
 		goto out_stop_queue;
@@ -1749,6 +1760,9 @@ static int nvme_tcp_configure_admin_queue(struct nvme_ctrl *ctrl, bool new)
 out_cleanup_queue:
 	if (new)
 		blk_cleanup_queue(ctrl->admin_q);
+out_cleanup_fabrics_q:
+	if (new)
+		blk_cleanup_queue(ctrl->fabrics_q);
 out_free_tagset:
 	if (new)
 		blk_mq_free_tag_set(ctrl->admin_tagset);
@@ -1761,11 +1775,15 @@ static void nvme_tcp_teardown_admin_queue(struct nvme_ctrl *ctrl,
 		bool remove)
 {
 	blk_mq_quiesce_queue(ctrl->admin_q);
+	blk_mq_quiesce_queue(ctrl->fabrics_q);
 	nvme_tcp_stop_queue(ctrl, 0);
 	if (ctrl->admin_tagset)
 		blk_mq_tagset_busy_iter(ctrl->admin_tagset,
 			nvme_cancel_request, ctrl);
-	blk_mq_unquiesce_queue(ctrl->admin_q);
+	if (remove) {
+		blk_mq_unquiesce_queue(ctrl->admin_q);
+		blk_mq_unquiesce_queue(ctrl->fabrics_q);
+	}
 	nvme_tcp_destroy_admin_queue(ctrl, remove);
 }
 
@@ -1890,6 +1908,8 @@ static void nvme_tcp_error_recovery_work(struct work_struct *work)
 	/* unquiesce to fail fast pending requests */
 	nvme_start_queues(ctrl);
 	nvme_tcp_teardown_admin_queue(ctrl, false);
+	blk_mq_unquiesce_queue(ctrl->admin_q);
+	blk_mq_unquiesce_queue(ctrl->fabrics_q);
 
 	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_CONNECTING)) {
 		/* state change failure is ok if we're in DELETING state */
@@ -1906,6 +1926,7 @@ static void nvme_tcp_teardown_ctrl(struct nvme_ctrl *ctrl, bool shutdown)
 	cancel_delayed_work_sync(&to_tcp_ctrl(ctrl)->connect_work);
 
 	nvme_tcp_teardown_io_queues(ctrl, shutdown);
+	blk_mq_quiesce_queue(ctrl->admin_q);
 	if (shutdown)
 		nvme_shutdown_ctrl(ctrl);
 	else
diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index d8078d7014eb..2a710be1a717 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -251,8 +251,12 @@ static const struct blk_mq_ops nvme_loop_admin_mq_ops = {
 static void nvme_loop_destroy_admin_queue(struct nvme_loop_ctrl *ctrl)
 {
 	clear_bit(NVME_LOOP_Q_LIVE, &ctrl->queues[0].flags);
+	blk_mq_quiesce_queue(ctrl->ctrl.fabrics_q);
+	blk_mq_tagset_busy_iter(&ctrl->admin_tag_set,
+				nvme_cancel_request, &ctrl->ctrl);
 	nvmet_sq_destroy(&ctrl->queues[0].nvme_sq);
 	blk_cleanup_queue(ctrl->ctrl.admin_q);
+	blk_cleanup_queue(ctrl->ctrl.fabrics_q);
 	blk_mq_free_tag_set(&ctrl->admin_tag_set);
 }
 
@@ -357,12 +361,20 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
 		goto out_free_sq;
 	ctrl->ctrl.admin_tagset = &ctrl->admin_tag_set;
 
+	ctrl->ctrl.fabrics_q = blk_mq_init_queue(&ctrl->admin_tag_set);
+	if (IS_ERR(ctrl->ctrl.fabrics_q)) {
+		error = PTR_ERR(ctrl->ctrl.fabrics_q);
+		goto out_free_tagset;
+	}
+
 	ctrl->ctrl.admin_q = blk_mq_init_queue(&ctrl->admin_tag_set);
 	if (IS_ERR(ctrl->ctrl.admin_q)) {
 		error = PTR_ERR(ctrl->ctrl.admin_q);
-		goto out_free_tagset;
+		goto out_cleanup_fabrics_q;
 	}
 
+	blk_mq_unquiesce_queue(ctrl->ctrl.fabrics_q);
+
 	error = nvmf_connect_admin_queue(&ctrl->ctrl);
 	if (error)
 		goto out_cleanup_queue;
@@ -376,6 +388,8 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
 	ctrl->ctrl.max_hw_sectors =
 		(NVME_LOOP_MAX_SEGMENTS - 1) << (PAGE_SHIFT - 9);
 
+	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
+
 	error = nvme_init_identify(&ctrl->ctrl);
 	if (error)
 		goto out_cleanup_queue;
@@ -384,6 +398,8 @@ static int nvme_loop_configure_admin_queue(struct nvme_loop_ctrl *ctrl)
 
 out_cleanup_queue:
 	blk_cleanup_queue(ctrl->ctrl.admin_q);
+out_cleanup_fabrics_q:
+	blk_cleanup_queue(ctrl->ctrl.fabrics_q);
 out_free_tagset:
 	blk_mq_free_tag_set(&ctrl->admin_tag_set);
 out_free_sq:
@@ -400,13 +416,9 @@ static void nvme_loop_shutdown_ctrl(struct nvme_loop_ctrl *ctrl)
 		nvme_loop_destroy_io_queues(ctrl);
 	}
 
+	blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
 	if (ctrl->ctrl.state == NVME_CTRL_LIVE)
 		nvme_shutdown_ctrl(&ctrl->ctrl);
-
-	blk_mq_quiesce_queue(ctrl->ctrl.admin_q);
-	blk_mq_tagset_busy_iter(&ctrl->admin_tag_set,
-				nvme_cancel_request, &ctrl->ctrl);
-	blk_mq_unquiesce_queue(ctrl->ctrl.admin_q);
 	nvme_loop_destroy_admin_queue(ctrl);
 }
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
