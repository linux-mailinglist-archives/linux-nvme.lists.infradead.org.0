Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE4410EBD8
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 15:52:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fVs+rXRbHoXVtCQ8iscf+oxCfVH8ImH6/Q2w77wL8lg=; b=WlZaOqkOjCcK+U
	M4d8ava/+0Y1RVraPG42VJJCtEoFp71v7rkSpY+12tF66UV5QmX0dr7KyxGq8P9W6kvzayi9f2BCX
	ZIxtWxRaJ/B8uQLihiw8rdLQ1/fmvjofj3aBKjnWJn2sM7p9S6sNFzGP2jI6i/ASMPXJ+XDsQ5RTq
	1xUW0bEs/hYD4UT+OZoNaGVlCkUPlDVooUyak9GfKq8INWyia36w8K5gMGSoTe1v+a+G2brpN71Wz
	3pLXm912zD/jAu/gq8WOQ939GSpT0Oh2Q2bp7i0FcuH4DbNvmTV1/7u9OU7I0mNvxmLeM1EqAXxEY
	HmcmbttvfyYiI3fMNyFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibn3T-0000mR-FS; Mon, 02 Dec 2019 14:52:03 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmzx-0005SA-Ei
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 14:48:34 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 2 Dec 2019 16:48:14 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xB2EmC26004689;
 Mon, 2 Dec 2019 16:48:14 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me, martin.petersen@oracle.com
Subject: [PATCH 16/16] nvmet-rdma: Add metadata/T10-PI support
Date: Mon,  2 Dec 2019 16:48:12 +0200
Message-Id: <20191202144812.147686-18-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191202144812.147686-1-maxg@mellanox.com>
References: <20191202144812.147686-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_064825_976715_2586BF2F 
X-CRM114-Status: GOOD (  15.89  )
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, oren@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

For capable HCAs (e.g. ConnectX-4/ConnectX-5) this will allow end-to-end
protection information passthrough and validation for NVMe over RDMA
transport. Metadata support was implemented over the new RDMA signature
verbs API.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/rdma.c | 235 +++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 217 insertions(+), 18 deletions(-)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 37d262a65877..bdd3299d5739 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -54,6 +54,7 @@ struct nvmet_rdma_rsp {
 	struct nvmet_rdma_queue	*queue;
 
 	struct ib_cqe		read_cqe;
+	struct ib_cqe		write_cqe;
 	struct rdma_rw_ctx	rw;
 
 	struct nvmet_req	req;
@@ -129,6 +130,9 @@ static bool nvmet_rdma_execute_command(struct nvmet_rdma_rsp *rsp);
 static void nvmet_rdma_send_done(struct ib_cq *cq, struct ib_wc *wc);
 static void nvmet_rdma_recv_done(struct ib_cq *cq, struct ib_wc *wc);
 static void nvmet_rdma_read_data_done(struct ib_cq *cq, struct ib_wc *wc);
+#ifdef CONFIG_BLK_DEV_INTEGRITY
+static void nvmet_rdma_write_data_done(struct ib_cq *cq, struct ib_wc *wc);
+#endif
 static void nvmet_rdma_qp_event(struct ib_event *event, void *priv);
 static void nvmet_rdma_queue_disconnect(struct nvmet_rdma_queue *queue);
 static void nvmet_rdma_free_rsp(struct nvmet_rdma_device *ndev,
@@ -386,6 +390,10 @@ static int nvmet_rdma_alloc_rsp(struct nvmet_rdma_device *ndev,
 
 	/* Data In / RDMA READ */
 	r->read_cqe.done = nvmet_rdma_read_data_done;
+#ifdef CONFIG_BLK_DEV_INTEGRITY
+	/* Data Out / RDMA WRITE */
+	r->write_cqe.done = nvmet_rdma_write_data_done;
+#endif
 	return 0;
 
 out_free_rsp:
@@ -495,6 +503,138 @@ static void nvmet_rdma_process_wr_wait_list(struct nvmet_rdma_queue *queue)
 	spin_unlock(&queue->rsp_wr_wait_lock);
 }
 
+#ifdef CONFIG_BLK_DEV_INTEGRITY
+static u16 nvmet_rdma_check_pi_status(struct ib_mr *sig_mr)
+{
+	struct ib_mr_status mr_status;
+	int ret;
+	u16 status = 0;
+
+	ret = ib_check_mr_status(sig_mr, IB_MR_CHECK_SIG_STATUS, &mr_status);
+	if (ret) {
+		pr_err("ib_check_mr_status failed, ret %d\n", ret);
+		return NVME_SC_INVALID_PI;
+	}
+
+	if (mr_status.fail_status & IB_MR_CHECK_SIG_STATUS) {
+		switch (mr_status.sig_err.err_type) {
+		case IB_SIG_BAD_GUARD:
+			status = NVME_SC_GUARD_CHECK;
+			break;
+		case IB_SIG_BAD_REFTAG:
+			status = NVME_SC_REFTAG_CHECK;
+			break;
+		case IB_SIG_BAD_APPTAG:
+			status = NVME_SC_APPTAG_CHECK;
+			break;
+		}
+		pr_err("PI error found type %d expected 0x%x vs actual 0x%x\n",
+		       mr_status.sig_err.err_type,
+		       mr_status.sig_err.expected,
+		       mr_status.sig_err.actual);
+	}
+
+	return status;
+}
+
+static void nvmet_rdma_set_diff_domain(struct nvme_command *cmd,
+		struct ib_sig_domain *domain, struct nvmet_ns *ns)
+{
+	struct blk_integrity *bi = bdev_get_integrity(ns->bdev);
+
+	WARN_ON(bi == NULL);
+
+	domain->sig_type = IB_SIG_TYPE_T10_DIF;
+	domain->sig.dif.bg_type = IB_T10DIF_CRC;
+	domain->sig.dif.pi_interval = 1 << bi->interval_exp;
+	domain->sig.dif.ref_tag = le32_to_cpu(cmd->rw.reftag);
+
+	/*
+	 * At the moment we hard code those, but in the future
+	 * we will take them from cmd.
+	 */
+	domain->sig.dif.apptag_check_mask = 0xffff;
+	domain->sig.dif.app_escape = true;
+	domain->sig.dif.ref_escape = true;
+	if (ns->prot_type != NVME_NS_DPS_PI_TYPE3)
+		domain->sig.dif.ref_remap = true;
+}
+
+static void nvmet_rdma_set_sig_attrs(struct nvmet_req *req,
+				     struct ib_sig_attrs *sig_attrs)
+{
+	struct nvme_command *cmd = req->cmd;
+	u16 control = le16_to_cpu(cmd->rw.control);
+
+	memset(sig_attrs, 0, sizeof(*sig_attrs));
+
+	if (control & NVME_RW_PRINFO_PRACT) {
+		/* for WRITE_INSERT/READ_STRIP no wire domain */
+		sig_attrs->wire.sig_type = IB_SIG_TYPE_NONE;
+		nvmet_rdma_set_diff_domain(cmd, &sig_attrs->mem, req->ns);
+		/* Clear the PRACT bit since HCA will generate/verify the PI */
+		control &= ~NVME_RW_PRINFO_PRACT;
+		cmd->rw.control = cpu_to_le16(control);
+		/* PI is added by the HW */
+		req->transfer_len += req->prot_len;
+	} else {
+		/* for WRITE_PASS/READ_PASS both wire/memory domains exist */
+		nvmet_rdma_set_diff_domain(cmd, &sig_attrs->wire, req->ns);
+		nvmet_rdma_set_diff_domain(cmd, &sig_attrs->mem, req->ns);
+	}
+
+	if (le16_to_cpu(cmd->rw.control) & NVME_RW_PRINFO_PRCHK_REF)
+		sig_attrs->check_mask |= IB_SIG_CHECK_REFTAG;
+	if (le16_to_cpu(cmd->rw.control) & NVME_RW_PRINFO_PRCHK_GUARD)
+		sig_attrs->check_mask |= IB_SIG_CHECK_GUARD;
+	if (le16_to_cpu(cmd->rw.control) & NVME_RW_PRINFO_PRCHK_APP)
+		sig_attrs->check_mask |= IB_SIG_CHECK_APPTAG;
+}
+#else
+static u16 nvmet_rdma_check_pi_status(struct ib_mr *sig_mr)
+{
+	return 0;
+}
+
+static void nvmet_rdma_set_sig_attrs(struct nvmet_req *req,
+				     struct ib_sig_attrs *sig_attrs)
+{
+}
+#endif /* CONFIG_BLK_DEV_INTEGRITY */
+
+static int nvmet_rdma_rw_ctx_init(struct nvmet_rdma_rsp *rsp, u64 addr, u32 key,
+				  struct ib_sig_attrs *sig_attrs)
+{
+	struct rdma_cm_id *cm_id = rsp->queue->cm_id;
+	struct nvmet_req *req = &rsp->req;
+	int ret;
+
+	if (req->use_pi)
+		ret = rdma_rw_ctx_signature_init(&rsp->rw, cm_id->qp,
+			cm_id->port_num, req->sg, req->sg_cnt, req->prot_sg,
+			req->prot_sg_cnt, sig_attrs, addr, key,
+			nvmet_data_dir(req));
+	else
+		ret = rdma_rw_ctx_init(&rsp->rw, cm_id->qp, cm_id->port_num,
+				       req->sg, req->sg_cnt, 0, addr, key,
+				       nvmet_data_dir(req));
+
+	return ret;
+}
+
+static void nvmet_rdma_rw_ctx_destroy(struct nvmet_rdma_rsp *rsp)
+{
+	struct rdma_cm_id *cm_id = rsp->queue->cm_id;
+	struct nvmet_req *req = &rsp->req;
+
+	if (req->use_pi)
+		rdma_rw_ctx_destroy_signature(&rsp->rw, cm_id->qp,
+			cm_id->port_num, req->sg, req->sg_cnt, req->prot_sg,
+			req->prot_sg_cnt, nvmet_data_dir(req));
+	else
+		rdma_rw_ctx_destroy(&rsp->rw, cm_id->qp, cm_id->port_num,
+				    req->sg, req->sg_cnt, nvmet_data_dir(req));
+}
 
 static void nvmet_rdma_release_rsp(struct nvmet_rdma_rsp *rsp)
 {
@@ -502,11 +642,8 @@ static void nvmet_rdma_release_rsp(struct nvmet_rdma_rsp *rsp)
 
 	atomic_add(1 + rsp->n_rdma, &queue->sq_wr_avail);
 
-	if (rsp->n_rdma) {
-		rdma_rw_ctx_destroy(&rsp->rw, queue->cm_id->qp,
-				queue->cm_id->port_num, rsp->req.sg,
-				rsp->req.sg_cnt, nvmet_data_dir(&rsp->req));
-	}
+	if (rsp->n_rdma)
+		nvmet_rdma_rw_ctx_destroy(rsp);
 
 	if (rsp->req.sg != rsp->cmd->inline_sg)
 		nvmet_req_free_sgl(&rsp->req);
@@ -561,11 +698,16 @@ static void nvmet_rdma_queue_response(struct nvmet_req *req)
 		rsp->send_wr.opcode = IB_WR_SEND;
 	}
 
-	if (nvmet_rdma_need_data_out(rsp))
-		first_wr = rdma_rw_ctx_wrs(&rsp->rw, cm_id->qp,
-				cm_id->port_num, NULL, &rsp->send_wr);
-	else
+	if (nvmet_rdma_need_data_out(rsp)) {
+		if (rsp->req.use_pi)
+			first_wr = rdma_rw_ctx_wrs(&rsp->rw, cm_id->qp,
+					cm_id->port_num, &rsp->write_cqe, NULL);
+		else
+			first_wr = rdma_rw_ctx_wrs(&rsp->rw, cm_id->qp,
+					cm_id->port_num, NULL, &rsp->send_wr);
+	} else {
 		first_wr = &rsp->send_wr;
+	}
 
 	nvmet_rdma_post_recv(rsp->queue->dev, rsp->cmd);
 
@@ -584,15 +726,14 @@ static void nvmet_rdma_read_data_done(struct ib_cq *cq, struct ib_wc *wc)
 	struct nvmet_rdma_rsp *rsp =
 		container_of(wc->wr_cqe, struct nvmet_rdma_rsp, read_cqe);
 	struct nvmet_rdma_queue *queue = cq->cq_context;
+	u16 status = 0;
 
 	WARN_ON(rsp->n_rdma <= 0);
 	atomic_add(rsp->n_rdma, &queue->sq_wr_avail);
-	rdma_rw_ctx_destroy(&rsp->rw, queue->cm_id->qp,
-			queue->cm_id->port_num, rsp->req.sg,
-			rsp->req.sg_cnt, nvmet_data_dir(&rsp->req));
 	rsp->n_rdma = 0;
 
 	if (unlikely(wc->status != IB_WC_SUCCESS)) {
+		nvmet_rdma_rw_ctx_destroy(rsp);
 		nvmet_req_uninit(&rsp->req);
 		nvmet_rdma_release_rsp(rsp);
 		if (wc->status != IB_WC_WR_FLUSH_ERR) {
@@ -603,9 +744,59 @@ static void nvmet_rdma_read_data_done(struct ib_cq *cq, struct ib_wc *wc)
 		return;
 	}
 
-	rsp->req.execute(&rsp->req);
+	if (rsp->req.use_pi)
+		status = nvmet_rdma_check_pi_status(rsp->rw.reg->mr);
+	nvmet_rdma_rw_ctx_destroy(rsp);
+
+	if (unlikely(status))
+		nvmet_req_complete(&rsp->req, status);
+	else
+		rsp->req.execute(&rsp->req);
 }
 
+#ifdef CONFIG_BLK_DEV_INTEGRITY
+static void nvmet_rdma_write_data_done(struct ib_cq *cq, struct ib_wc *wc)
+{
+	struct nvmet_rdma_rsp *rsp =
+		container_of(wc->wr_cqe, struct nvmet_rdma_rsp, write_cqe);
+	struct nvmet_rdma_queue *queue = cq->cq_context;
+	struct rdma_cm_id *cm_id = rsp->queue->cm_id;
+	u16 status;
+
+	WARN_ON(rsp->n_rdma <= 0);
+	atomic_add(rsp->n_rdma, &queue->sq_wr_avail);
+	rsp->n_rdma = 0;
+
+	if (unlikely(wc->status != IB_WC_SUCCESS)) {
+		nvmet_rdma_rw_ctx_destroy(rsp);
+		nvmet_req_uninit(&rsp->req);
+		nvmet_rdma_release_rsp(rsp);
+		if (wc->status != IB_WC_WR_FLUSH_ERR) {
+			pr_info("RDMA WRITE for CQE 0x%p failed with status %s (%d).\n",
+				wc->wr_cqe, ib_wc_status_msg(wc->status),
+				wc->status);
+			nvmet_rdma_error_comp(queue);
+		}
+		return;
+	}
+
+	/*
+	 * Upon RDMA completion check the signature status
+	 * - if succeeded send good NVMe response
+	 * - if failed send bad NVMe response with appropriate error
+	 */
+	status = nvmet_rdma_check_pi_status(rsp->rw.reg->mr);
+	if (unlikely(status))
+		rsp->req.cqe->status = cpu_to_le16(status << 1);
+	nvmet_rdma_rw_ctx_destroy(rsp);
+
+	if (unlikely(ib_post_send(cm_id->qp, &rsp->send_wr, NULL))) {
+		pr_err("sending cmd response failed\n");
+		nvmet_rdma_release_rsp(rsp);
+	}
+}
+#endif /* CONFIG_BLK_DEV_INTEGRITY */
+
 static void nvmet_rdma_use_inline_sg(struct nvmet_rdma_rsp *rsp, u32 len,
 		u64 off)
 {
@@ -660,9 +851,9 @@ static u16 nvmet_rdma_map_sgl_inline(struct nvmet_rdma_rsp *rsp)
 static u16 nvmet_rdma_map_sgl_keyed(struct nvmet_rdma_rsp *rsp,
 		struct nvme_keyed_sgl_desc *sgl, bool invalidate)
 {
-	struct rdma_cm_id *cm_id = rsp->queue->cm_id;
 	u64 addr = le64_to_cpu(sgl->addr);
 	u32 key = get_unaligned_le32(sgl->key);
+	struct ib_sig_attrs sig_attrs;
 	int ret;
 
 	rsp->req.transfer_len = get_unaligned_le24(sgl->length);
@@ -671,13 +862,14 @@ static u16 nvmet_rdma_map_sgl_keyed(struct nvmet_rdma_rsp *rsp,
 	if (!rsp->req.transfer_len)
 		return 0;
 
+	if (rsp->req.use_pi)
+		nvmet_rdma_set_sig_attrs(&rsp->req, &sig_attrs);
+
 	ret = nvmet_req_alloc_sgl(&rsp->req);
 	if (unlikely(ret < 0))
 		goto error_out;
 
-	ret = rdma_rw_ctx_init(&rsp->rw, cm_id->qp, cm_id->port_num,
-			rsp->req.sg, rsp->req.sg_cnt, 0, addr, key,
-			nvmet_data_dir(&rsp->req));
+	ret = nvmet_rdma_rw_ctx_init(rsp, addr, key, &sig_attrs);
 	if (unlikely(ret < 0))
 		goto error_out;
 	rsp->n_rdma += ret;
@@ -956,6 +1148,9 @@ nvmet_rdma_find_get_device(struct rdma_cm_id *cm_id)
 			goto out_free_pd;
 	}
 
+	port->pi_capable = ndev->device->attrs.device_cap_flags &
+			IB_DEVICE_INTEGRITY_HANDOVER ? true : false;
+
 	list_add(&ndev->entry, &device_list);
 out_unlock:
 	mutex_unlock(&device_list_mutex);
@@ -1020,6 +1215,10 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
 		qp_attr.cap.max_recv_sge = 1 + ndev->inline_page_count;
 	}
 
+	if (queue->port->pi_capable && queue->port->pi_enable &&
+	    queue->host_qid)
+		qp_attr.create_flags |= IB_QP_CREATE_INTEGRITY_EN;
+
 	ret = rdma_create_qp(queue->cm_id, ndev->pd, &qp_attr);
 	if (ret) {
 		pr_err("failed to create_qp ret= %d\n", ret);
@@ -1164,6 +1363,7 @@ nvmet_rdma_alloc_queue(struct nvmet_rdma_device *ndev,
 	INIT_WORK(&queue->release_work, nvmet_rdma_release_queue_work);
 	queue->dev = ndev;
 	queue->cm_id = cm_id;
+	queue->port = cm_id->context;
 
 	spin_lock_init(&queue->state_lock);
 	queue->state = NVMET_RDMA_Q_CONNECTING;
@@ -1282,7 +1482,6 @@ static int nvmet_rdma_queue_connect(struct rdma_cm_id *cm_id,
 		ret = -ENOMEM;
 		goto put_device;
 	}
-	queue->port = cm_id->context;
 
 	if (queue->host_qid == 0) {
 		/* Let inflight controller teardown complete */
-- 
2.16.3


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
