Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC2FA1B1242
	for <lists+linux-nvme@lfdr.de>; Mon, 20 Apr 2020 18:49:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q30JPKSK+hEKWpe7SzLMv4UHP16BlXrYsHeZPelylws=; b=h5YQ1RUVRu2T8g
	dFTGqoYZwXitkFURzPu62h+kc5r3oDX/WtNTE35rvrpnfd53IjajJK5tmssDXPMGSrmtPo/oOvrB5
	OTPQ4v5iXHWS/oeUfPU9KqjT1LdeXZ2KL91tW44YtjD5zlYSbaXvSKEm3lMKJUcgqCTvJEQFLahjG
	WnkZOzI8+HEqqUDnES8/1UWU5LS9iAarzIKo+N3mT5heyJFM/9q9YYUMORvuJssceUAukpPJEoiId
	BQz1gJCn1xN0uiw2g4dITGxPFz1GJ8Yr4OIDSUj69ii/m6Xi4bmT9UlVhtyEvOU/Iur+uMV8dVnnH
	kgwy41MJdmgHeTqMW2OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZbr-0003UN-I2; Mon, 20 Apr 2020 16:49:27 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZZl-0000RV-6D
 for linux-nvme@lists.infradead.org; Mon, 20 Apr 2020 16:47:23 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1jQZZb-0008F7-BS; Mon, 20 Apr 2020 10:47:11 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1jQZZa-0005du-F0; Mon, 20 Apr 2020 10:47:06 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Mon, 20 Apr 2020 10:46:58 -0600
Message-Id: <20200420164700.21620-8-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420164700.21620-1-logang@deltatee.com>
References: <20200420164700.21620-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com,
 maxg@mellanox.com, sbates@raithlin.com, logang@deltatee.com,
 Chaitanya.Kulkarni@wdc.com, chaitanya.kulkarni@wdc.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_FREE,MYRULES_NO_TEXT autolearn=no autolearn_force=no
 version=3.4.2
Subject: [PATCH v12 7/9] nvmet-passthru: Add passthru code to process commands
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_094717_454260_4CB04113 
X-CRM114-Status: GOOD (  27.69  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Add passthru command handling capability for the NVMeOF target and
export passthru APIs which are used to integrate passthru
code with nvmet-core.

The new file passthru.c handles passthru cmd parsing and execution.
In the passthru mode, we create a block layer request from the nvmet
request and map the data on to the block layer request.

Admin commands and features are on a white list as there are a number
of each that don't make too much sense with passthrough. We use a
white list so that new commands can be considered before being blindly
passed through. In both cases, vendor specific commands are always
allowed.

We also blacklist reservation IO commands as the underlying device
cannot differentiate between multiple hosts behind a fabric.

Based-on-a-patch-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/Makefile    |   1 +
 drivers/nvme/target/admin-cmd.c |   7 +-
 drivers/nvme/target/core.c      |   3 +
 drivers/nvme/target/nvmet.h     |  39 +++
 drivers/nvme/target/passthru.c  | 460 ++++++++++++++++++++++++++++++++
 include/linux/nvme.h            |   4 +
 6 files changed, 512 insertions(+), 2 deletions(-)
 create mode 100644 drivers/nvme/target/passthru.c

diff --git a/drivers/nvme/target/Makefile b/drivers/nvme/target/Makefile
index 2b33836f3d3e..ebf91fc4c72e 100644
--- a/drivers/nvme/target/Makefile
+++ b/drivers/nvme/target/Makefile
@@ -11,6 +11,7 @@ obj-$(CONFIG_NVME_TARGET_TCP)		+= nvmet-tcp.o
 
 nvmet-y		+= core.o configfs.o admin-cmd.o fabrics-cmd.o \
 			discovery.o io-cmd-file.o io-cmd-bdev.o
+nvmet-$(CONFIG_NVME_TARGET_PASSTHRU)	+= passthru.o
 nvme-loop-y	+= loop.o
 nvmet-rdma-y	+= rdma.o
 nvmet-fc-y	+= fc.o
diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 9d6f75cfa77c..a2dfd202eb32 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -734,7 +734,7 @@ u16 nvmet_set_feat_async_event(struct nvmet_req *req, u32 mask)
 	return 0;
 }
 
-static void nvmet_execute_set_features(struct nvmet_req *req)
+void nvmet_execute_set_features(struct nvmet_req *req)
 {
 	struct nvmet_subsys *subsys = req->sq->ctrl->subsys;
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
@@ -809,7 +809,7 @@ void nvmet_get_feat_async_event(struct nvmet_req *req)
 	nvmet_set_result(req, READ_ONCE(req->sq->ctrl->aen_enabled));
 }
 
-static void nvmet_execute_get_features(struct nvmet_req *req)
+void nvmet_execute_get_features(struct nvmet_req *req)
 {
 	struct nvmet_subsys *subsys = req->sq->ctrl->subsys;
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
@@ -925,6 +925,9 @@ u16 nvmet_parse_admin_cmd(struct nvmet_req *req)
 	if (unlikely(ret))
 		return ret;
 
+	if (nvmet_req_passthru_ctrl(req))
+		return nvmet_parse_passthru_admin_cmd(req);
+
 	switch (cmd->common.opcode) {
 	case nvme_admin_get_log_page:
 		req->execute = nvmet_execute_get_log_page;
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index b685f99d56a1..2547e0d8951c 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -841,6 +841,9 @@ static u16 nvmet_parse_io_cmd(struct nvmet_req *req)
 	if (unlikely(ret))
 		return ret;
 
+	if (nvmet_req_passthru_ctrl(req))
+		return nvmet_parse_passthru_io_cmd(req);
+
 	req->ns = nvmet_find_namespace(req->sq->ctrl, cmd->rw.nsid);
 	if (unlikely(!req->ns)) {
 		req->error_loc = offsetof(struct nvme_common_command, nsid);
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 421dff3ea143..deb996c90804 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -237,6 +237,10 @@ struct nvmet_subsys {
 	struct config_group	allowed_hosts_group;
 
 	struct nvmet_subsys_model	__rcu *model;
+
+#ifdef CONFIG_NVME_TARGET_PASSTHRU
+	struct nvme_ctrl	*passthru_ctrl;
+#endif /* CONFIG_NVME_TARGET_PASSTHRU */
 };
 
 static inline struct nvmet_subsys *to_subsys(struct config_item *item)
@@ -313,6 +317,11 @@ struct nvmet_req {
 			struct bio_vec          *bvec;
 			struct work_struct      work;
 		} f;
+		struct {
+			struct request		*rq;
+			struct work_struct      work;
+			u16 (*end_req)(struct nvmet_req *req);
+		} p;
 	};
 	int			sg_cnt;
 	/* data length as parsed from the SGL descriptor: */
@@ -390,6 +399,8 @@ void nvmet_req_complete(struct nvmet_req *req, u16 status);
 int nvmet_req_alloc_sgl(struct nvmet_req *req);
 void nvmet_req_free_sgl(struct nvmet_req *req);
 
+void nvmet_execute_set_features(struct nvmet_req *req);
+void nvmet_execute_get_features(struct nvmet_req *req);
 void nvmet_execute_keep_alive(struct nvmet_req *req);
 
 void nvmet_cq_setup(struct nvmet_ctrl *ctrl, struct nvmet_cq *cq, u16 qid,
@@ -511,6 +522,34 @@ static inline u32 nvmet_dsm_len(struct nvmet_req *req)
 		sizeof(struct nvme_dsm_range);
 }
 
+#ifdef CONFIG_NVME_TARGET_PASSTHRU
+u16 nvmet_parse_passthru_admin_cmd(struct nvmet_req *req);
+u16 nvmet_parse_passthru_io_cmd(struct nvmet_req *req);
+static inline struct nvme_ctrl *nvmet_passthru_ctrl(struct nvmet_subsys *subsys)
+{
+	return subsys->passthru_ctrl;
+}
+#else /* CONFIG_NVME_TARGET_PASSTHRU */
+static inline u16 nvmet_parse_passthru_admin_cmd(struct nvmet_req *req)
+{
+	return 0;
+}
+static inline u16 nvmet_parse_passthru_io_cmd(struct nvmet_req *req)
+{
+	return 0;
+}
+static inline struct nvme_ctrl *nvmet_passthru_ctrl(struct nvmet_subsys *subsys)
+{
+	return NULL;
+}
+#endif /* CONFIG_NVME_TARGET_PASSTHRU */
+
+static inline struct nvme_ctrl *
+nvmet_req_passthru_ctrl(struct nvmet_req *req)
+{
+	return nvmet_passthru_ctrl(req->sq->ctrl->subsys);
+}
+
 u16 errno_to_nvme_status(struct nvmet_req *req, int errno);
 
 /* Convert a 32-bit number to a 16-bit 0's based number */
diff --git a/drivers/nvme/target/passthru.c b/drivers/nvme/target/passthru.c
new file mode 100644
index 000000000000..15b23521e59f
--- /dev/null
+++ b/drivers/nvme/target/passthru.c
@@ -0,0 +1,460 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * NVMe Over Fabrics Target Passthrough command implementation.
+ *
+ * Copyright (c) 2017-2018 Western Digital Corporation or its
+ * affiliates.
+ */
+#define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
+#include <linux/module.h>
+
+#include "../host/nvme.h"
+#include "nvmet.h"
+
+static void nvmet_passthru_execute_cmd_work(struct work_struct *w)
+{
+	struct nvmet_req *req = container_of(w, struct nvmet_req, p.work);
+	struct request *rq = req->p.rq;
+	u16 status;
+
+	nvme_execute_passthru_rq(rq);
+
+	status = nvme_req(rq)->status;
+	if (status == NVME_SC_SUCCESS && req->p.end_req)
+		status = req->p.end_req(req);
+
+	req->cqe->result = nvme_req(rq)->result;
+	nvmet_req_complete(req, status);
+	blk_put_request(rq);
+}
+
+static void nvmet_passthru_req_done(struct request *rq,
+				    blk_status_t blk_status)
+{
+	struct nvmet_req *req = rq->end_io_data;
+
+	req->cqe->result = nvme_req(rq)->result;
+	nvmet_req_complete(req, nvme_req(rq)->status);
+	blk_put_request(rq);
+}
+
+static int nvmet_passthru_map_sg(struct nvmet_req *req, struct request *rq)
+{
+	int sg_cnt = req->sg_cnt;
+	struct scatterlist *sg;
+	int op_flags = 0;
+	struct bio *bio;
+	int i, ret;
+
+	if (req->cmd->common.opcode == nvme_cmd_flush)
+		op_flags = REQ_FUA;
+	else if (nvme_is_write(req->cmd))
+		op_flags = REQ_SYNC | REQ_IDLE;
+
+
+	bio = bio_alloc(GFP_KERNEL, min(sg_cnt, BIO_MAX_PAGES));
+	bio->bi_end_io = bio_put;
+
+	for_each_sg(req->sg, sg, req->sg_cnt, i) {
+		if (bio_add_page(bio, sg_page(sg), sg->length,
+				 sg->offset) != sg->length) {
+			ret = blk_rq_append_bio(rq, &bio);
+			if (unlikely(ret))
+				return ret;
+
+			bio->bi_opf = req_op(rq) | op_flags;
+			bio = bio_alloc(GFP_KERNEL,
+					min(sg_cnt, BIO_MAX_PAGES));
+		}
+		sg_cnt--;
+	}
+
+	ret = blk_rq_append_bio(rq, &bio);
+	if (unlikely(ret))
+		return ret;
+
+	return 0;
+}
+
+static void nvmet_passthru_execute_cmd(struct nvmet_req *req)
+{
+	struct nvme_ctrl *ctrl = nvmet_req_passthru_ctrl(req);
+	struct nvme_ns *ns = NULL;
+	struct request *rq = NULL;
+	struct request_queue *q;
+	u32 effects;
+	u16 status;
+	int ret;
+
+	if (likely(req->sq->qid != 0)) {
+		u32 nsid = le32_to_cpu(req->cmd->common.nsid);
+
+		ns = nvme_find_get_ns(ctrl, nsid);
+		if (unlikely(!ns)) {
+			pr_err("failed to get passthru ns nsid:%u\n", nsid);
+			status = NVME_SC_INVALID_NS | NVME_SC_DNR;
+			goto fail_out;
+		}
+	}
+
+	if (ns)
+		q = ns->queue;
+	else
+		q = ctrl->admin_q;
+
+	rq = nvme_alloc_request(q, req->cmd, BLK_MQ_REQ_NOWAIT, NVME_QID_ANY);
+	if (IS_ERR(rq)) {
+		rq = NULL;
+		status = NVME_SC_INTERNAL;
+		goto fail_out;
+	}
+
+	if (req->sg_cnt) {
+		ret = nvmet_passthru_map_sg(req, rq);
+		if (unlikely(ret)) {
+			status = NVME_SC_INTERNAL;
+			goto fail_out;
+		}
+	}
+
+	if (blk_rq_nr_phys_segments(rq) > queue_max_segments(rq->q)) {
+		status = NVME_SC_INVALID_FIELD;
+		goto fail_out;
+	}
+
+	if ((blk_rq_payload_bytes(rq) >> 9) > queue_max_hw_sectors(rq->q)) {
+		status = NVME_SC_INVALID_FIELD;
+		goto fail_out;
+	}
+
+	/*
+	 * If there are effects for the command we are about to execute, or
+	 * an end_req function we need to use nvme_execute_passthru_rq()
+	 * synchronously in a work item seeing the end_req function and
+	 * nvme_passthru_end() can't be called in the request done callback
+	 * which is typically in interrupt context.
+	 */
+	effects = nvme_command_effects(ctrl, ns, req->cmd->common.opcode);
+	if (req->p.end_req || effects) {
+		INIT_WORK(&req->p.work, nvmet_passthru_execute_cmd_work);
+		req->p.rq = rq;
+		schedule_work(&req->p.work);
+	} else {
+		rq->end_io_data = req;
+		blk_execute_rq_nowait(rq->q, ns ? ns->disk : NULL, rq, 0,
+				      nvmet_passthru_req_done);
+	}
+
+	if (ns)
+		nvme_put_ns(ns);
+
+	return;
+
+fail_out:
+	if (ns)
+		nvme_put_ns(ns);
+	nvmet_req_complete(req, status);
+	blk_put_request(rq);
+}
+
+static u16 nvmet_passthru_override_id_ctrl(struct nvmet_req *req)
+{
+	struct nvmet_ctrl *ctrl = req->sq->ctrl;
+	struct nvme_ctrl *pctrl = ctrl->subsys->passthru_ctrl;
+	u16 status = NVME_SC_SUCCESS;
+	struct nvme_id_ctrl *id;
+	u32 max_hw_sectors;
+	int page_shift;
+
+	id = kzalloc(sizeof(*id), GFP_KERNEL);
+	if (!id)
+		return NVME_SC_INTERNAL;
+
+	status = nvmet_copy_from_sgl(req, 0, id, sizeof(*id));
+	if (status)
+		goto out_free;
+
+	id->cntlid = cpu_to_le16(ctrl->cntlid);
+	id->ver = cpu_to_le32(ctrl->subsys->ver);
+
+	/*
+	 * The passthru NVMe driver may have a limit on the number of segments
+	 * which depends on the host's memory fragementation. To solve this,
+	 * ensure mdts is limitted to the pages equal to the number of
+	 * segments.
+	 */
+	max_hw_sectors = min_not_zero(pctrl->max_segments << (PAGE_SHIFT - 9),
+				      pctrl->max_hw_sectors);
+
+	page_shift = NVME_CAP_MPSMIN(ctrl->cap) + 12;
+
+	id->mdts = ilog2(max_hw_sectors) + 9 - page_shift;
+
+	id->acl = 3;
+	/*
+	 * We export aerl limit for the fabrics controller, update this when
+	 * passthru based aerl support is added.
+	 */
+	id->aerl = NVMET_ASYNC_EVENTS - 1;
+
+	/* emulate kas as most of the PCIe ctrl don't have a support for kas */
+	id->kas = cpu_to_le16(NVMET_KAS);
+
+	/* don't support host memory buffer */
+	id->hmpre = 0;
+	id->hmmin = 0;
+
+	id->sqes = min_t(__u8, ((0x6 << 4) | 0x6), id->sqes);
+	id->cqes = min_t(__u8, ((0x4 << 4) | 0x4), id->cqes);
+	id->maxcmd = cpu_to_le16(NVMET_MAX_CMD);
+
+	/* don't support fuse commands */
+	id->fuses = 0;
+
+	id->sgls = cpu_to_le32(1 << 0); /* we always support SGLs */
+	if (ctrl->ops->has_keyed_sgls)
+		id->sgls |= cpu_to_le32(1 << 2);
+	if (req->port->inline_data_size)
+		id->sgls |= cpu_to_le32(1 << 20);
+
+	/*
+	 * When passsthru controller is setup using nvme-loop transport it will
+	 * export the passthru ctrl subsysnqn (PCIe NVMe ctrl) and will fail in
+	 * the nvme/host/core.c in the nvme_init_subsystem()->nvme_active_ctrl()
+	 * code path with duplicate ctr subsynqn. In order to prevent that we
+	 * mask the passthru-ctrl subsysnqn with the target ctrl subsysnqn.
+	 */
+	memcpy(id->subnqn, ctrl->subsysnqn, sizeof(id->subnqn));
+
+	/* use fabric id-ctrl values */
+	id->ioccsz = cpu_to_le32((sizeof(struct nvme_command) +
+				req->port->inline_data_size) / 16);
+	id->iorcsz = cpu_to_le32(sizeof(struct nvme_completion) / 16);
+
+	id->msdbd = ctrl->ops->msdbd;
+
+	/* Support multipath connections with fabrics */
+	id->cmic |= 1 << 1;
+
+	/* Disable reservations, see nvmet_parse_passthru_io_cmd() */
+	id->oncs &= cpu_to_le16(~NVME_CTRL_ONCS_RESERVATIONS);
+
+	status = nvmet_copy_to_sgl(req, 0, id, sizeof(struct nvme_id_ctrl));
+
+out_free:
+	kfree(id);
+	return status;
+}
+
+static u16 nvmet_passthru_override_id_ns(struct nvmet_req *req)
+{
+	u16 status = NVME_SC_SUCCESS;
+	struct nvme_id_ns *id;
+	int i;
+
+	id = kzalloc(sizeof(*id), GFP_KERNEL);
+	if (!id)
+		return NVME_SC_INTERNAL;
+
+	status = nvmet_copy_from_sgl(req, 0, id, sizeof(struct nvme_id_ns));
+	if (status)
+		goto out_free;
+
+	for (i = 0; i < (id->nlbaf + 1); i++)
+		if (id->lbaf[i].ms)
+			memset(&id->lbaf[i], 0, sizeof(id->lbaf[i]));
+
+	id->flbas = id->flbas & ~(1 << 4);
+
+	/*
+	 * Presently the NVMEof target code does not support sending
+	 * metadata, so we must disable it here. This should be updated
+	 * once target starts supporting metadata.
+	 */
+	id->mc = 0;
+
+	status = nvmet_copy_to_sgl(req, 0, id, sizeof(*id));
+
+out_free:
+	kfree(id);
+	return status;
+}
+
+/*
+ * We need to emulate set host behaviour to ensure that any requested
+ * behaviour of the target's host matches the requested behaviour
+ * of the device's host and fail otherwise.
+ */
+static void nvmet_passthru_set_host_behaviour(struct nvmet_req *req)
+{
+	struct nvme_ctrl *ctrl = nvmet_req_passthru_ctrl(req);
+	struct nvme_feat_host_behavior *host;
+	u16 status;
+	int ret;
+
+	host = kzalloc(sizeof(*host) * 2, GFP_KERNEL);
+	ret = nvme_get_features(ctrl, NVME_FEAT_HOST_BEHAVIOR, 0,
+				host, sizeof(*host), NULL);
+	if (ret) {
+		status = NVME_SC_INTERNAL;
+		goto free_and_exit;
+	}
+
+	status = nvmet_copy_from_sgl(req, 0, &host[1], sizeof(*host));
+	if (status)
+		goto free_and_exit;
+
+	if (memcmp(&host[0], &host[1], sizeof(host[0]))) {
+		pr_warn("target host has requested different behaviour from the local host\n");
+		status = NVME_SC_INTERNAL;
+	}
+
+free_and_exit:
+	kfree(host);
+	nvmet_req_complete(req, status);
+}
+
+static u16 nvmet_setup_passthru_command(struct nvmet_req *req)
+{
+	req->p.end_req = NULL;
+	req->execute = nvmet_passthru_execute_cmd;
+	return NVME_SC_SUCCESS;
+}
+
+u16 nvmet_parse_passthru_io_cmd(struct nvmet_req *req)
+{
+	switch (req->cmd->common.opcode) {
+	case nvme_cmd_resv_register:
+	case nvme_cmd_resv_report:
+	case nvme_cmd_resv_acquire:
+	case nvme_cmd_resv_release:
+		/*
+		 * Reservations cannot be supported properly because the
+		 * underlying device has no way of differentiating different
+		 * hosts that connect via fabrics. This could potentially be
+		 * emulated in the future if regular targets grow support for
+		 * this feature.
+		 */
+		return NVME_SC_INVALID_OPCODE | NVME_SC_DNR;
+	}
+
+	return nvmet_setup_passthru_command(req);
+}
+
+/*
+ * Only features that are emulated or specifically whitelisted are passed
+ * down to the controller. This function implements the whitelist for both
+ * get and set features.
+ */
+static u16 nvmet_passthru_get_set_features(struct nvmet_req *req)
+{
+	switch (le32_to_cpu(req->cmd->features.fid)) {
+	case NVME_FEAT_ARBITRATION:
+	case NVME_FEAT_POWER_MGMT:
+	case NVME_FEAT_LBA_RANGE:
+	case NVME_FEAT_TEMP_THRESH:
+	case NVME_FEAT_ERR_RECOVERY:
+	case NVME_FEAT_VOLATILE_WC:
+	case NVME_FEAT_WRITE_ATOMIC:
+	case NVME_FEAT_AUTO_PST:
+	case NVME_FEAT_TIMESTAMP:
+	case NVME_FEAT_HCTM:
+	case NVME_FEAT_NOPSC:
+	case NVME_FEAT_RRL:
+	case NVME_FEAT_PLM_CONFIG:
+	case NVME_FEAT_PLM_WINDOW:
+	case NVME_FEAT_HOST_BEHAVIOR:
+	case NVME_FEAT_SANITIZE:
+	case NVME_FEAT_VENDOR_START ... NVME_FEAT_VENDOR_END:
+		return nvmet_setup_passthru_command(req);
+
+	case NVME_FEAT_ASYNC_EVENT:
+		/* There is no support for forwarding ASYNC events */
+	case NVME_FEAT_IRQ_COALESCE:
+	case NVME_FEAT_IRQ_CONFIG:
+		/* The IRQ settings will not apply to the target controller */
+	case NVME_FEAT_HOST_MEM_BUF:
+		/*
+		 * Any HMB that's set will not be passed through and will
+		 * not work as expected
+		 */
+	case NVME_FEAT_SW_PROGRESS:
+		/*
+		 * The Pre-Boot Software Load Count doesn't make much
+		 * sense for a target to export
+		 */
+	case NVME_FEAT_RESV_MASK:
+	case NVME_FEAT_RESV_PERSIST:
+		/* No reservations, see nvmet_parse_passthru_io_cmd() */
+	default:
+		return NVME_SC_INVALID_OPCODE | NVME_SC_DNR;
+	}
+}
+
+u16 nvmet_parse_passthru_admin_cmd(struct nvmet_req *req)
+{
+	/*
+	 * Passthru all vendor specific commands
+	 */
+	if (req->cmd->common.opcode >= nvme_admin_vendor_start)
+		return nvmet_setup_passthru_command(req);
+
+	switch (req->cmd->common.opcode) {
+	case nvme_admin_async_event:
+		req->execute = nvmet_execute_async_event;
+		return NVME_SC_SUCCESS;
+	case nvme_admin_keep_alive:
+		/*
+		 * Most PCIe ctrls don't support keep alive cmd, we route keep
+		 * alive to the non-passthru mode. In future please change this
+		 * code when PCIe ctrls with keep alive support available.
+		 */
+		req->execute = nvmet_execute_keep_alive;
+		return NVME_SC_SUCCESS;
+	case nvme_admin_set_features:
+		switch (le32_to_cpu(req->cmd->features.fid)) {
+		case NVME_FEAT_ASYNC_EVENT:
+		case NVME_FEAT_KATO:
+		case NVME_FEAT_NUM_QUEUES:
+		case NVME_FEAT_HOST_ID:
+			req->execute = nvmet_execute_set_features;
+			return NVME_SC_SUCCESS;
+		case NVME_FEAT_HOST_BEHAVIOR:
+			req->execute = nvmet_passthru_set_host_behaviour;
+			return NVME_SC_SUCCESS;
+		default:
+			return nvmet_passthru_get_set_features(req);
+		}
+		break;
+	case nvme_admin_get_features:
+		switch (le32_to_cpu(req->cmd->features.fid)) {
+		case NVME_FEAT_ASYNC_EVENT:
+		case NVME_FEAT_KATO:
+		case NVME_FEAT_NUM_QUEUES:
+		case NVME_FEAT_HOST_ID:
+			req->execute = nvmet_execute_get_features;
+			return NVME_SC_SUCCESS;
+		default:
+			return nvmet_passthru_get_set_features(req);
+		}
+		break;
+	case nvme_admin_identify:
+		switch (req->cmd->identify.cns) {
+		case NVME_ID_CNS_CTRL:
+			req->execute = nvmet_passthru_execute_cmd;
+			req->p.end_req = nvmet_passthru_override_id_ctrl;
+			return NVME_SC_SUCCESS;
+		case NVME_ID_CNS_NS:
+			req->execute = nvmet_passthru_execute_cmd;
+			req->p.end_req = nvmet_passthru_override_id_ns;
+			return NVME_SC_SUCCESS;
+		default:
+			return nvmet_setup_passthru_command(req);
+		}
+	case nvme_admin_get_log_page:
+		return nvmet_setup_passthru_command(req);
+	default:
+		/* Reject commands not in the whitelist above */
+		return NVME_SC_INVALID_OPCODE | NVME_SC_DNR;
+	}
+}
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 3d5189f46cb1..af807e0fb114 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -303,6 +303,7 @@ enum {
 	NVME_CTRL_ONCS_WRITE_UNCORRECTABLE	= 1 << 1,
 	NVME_CTRL_ONCS_DSM			= 1 << 2,
 	NVME_CTRL_ONCS_WRITE_ZEROES		= 1 << 3,
+	NVME_CTRL_ONCS_RESERVATIONS		= 1 << 5,
 	NVME_CTRL_ONCS_TIMESTAMP		= 1 << 6,
 	NVME_CTRL_VWC_PRESENT			= 1 << 0,
 	NVME_CTRL_OACS_SEC_SUPP                 = 1 << 0,
@@ -858,6 +859,7 @@ enum nvme_admin_opcode {
 	nvme_admin_security_recv	= 0x82,
 	nvme_admin_sanitize_nvm		= 0x84,
 	nvme_admin_get_lba_status	= 0x86,
+	nvme_admin_vendor_start		= 0xC0,
 };
 
 #define nvme_admin_opcode_name(opcode)	{ opcode, #opcode }
@@ -921,6 +923,8 @@ enum {
 	NVME_FEAT_RESV_MASK	= 0x82,
 	NVME_FEAT_RESV_PERSIST	= 0x83,
 	NVME_FEAT_WRITE_PROTECT	= 0x84,
+	NVME_FEAT_VENDOR_START	= 0xC0,
+	NVME_FEAT_VENDOR_END	= 0xFF,
 	NVME_LOG_ERROR		= 0x01,
 	NVME_LOG_SMART		= 0x02,
 	NVME_LOG_FW_SLOT	= 0x03,
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
