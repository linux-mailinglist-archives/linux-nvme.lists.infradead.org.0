Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 963B41BBEBB
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 15:15:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XvgAeJ1orS8edRKpPhQl1xXgRfqE9lVe1xnFk0aMGo8=; b=OMKhKC6n3SbCZD
	jjj4aJgqoAA4byoPHlMDA2uXFAl0VU47J5AT8Qal7kiavj3MYQPJHHUjiNds8sC16nPheqT4trMXb
	sXSkq1ojAxkcieUjdyvB4ziOfxqlPTXcT+L5t/3oYtrynceUL1KPtkxmG8wNIHq/FZICkhZ0P6v1Y
	mO5667Td99oOOfEPVtsCNjgBOEAhCdMlpP/Smkyxe8uX02a7+NXlzDCJXgDuU6JcpOxplqb5UaVTo
	0ouTpPEJHygpnDMToj3m7EVeTVo4qR+uAYRPvEOslFkR9tlxgx25rFtaUqRMyQjbfOOZ/3rYG8lrM
	IG7D+Xbtl10oweD5+O2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTQ4h-0005k3-Er; Tue, 28 Apr 2020 13:14:59 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTQ1Z-0003JH-Q3
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 13:11:53 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 28 Apr 2020 16:11:38 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 03SDBZZA028635;
 Tue, 28 Apr 2020 16:11:38 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: maxg@mellanox.com, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
Subject: [PATCH 15/15] nvmet-rdma: add metadata/T10-PI support
Date: Tue, 28 Apr 2020 16:11:35 +0300
Message-Id: <20200428131135.211521-16-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200428131135.211521-1-maxg@mellanox.com>
References: <20200428131135.211521-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_061146_262989_41E001F3 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: vladimirk@mellanox.com, shlomin@mellanox.com, israelr@mellanox.com,
 idanb@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

For capable HCAs (e.g. ConnectX-5/ConnectX-6) this will allow end-to-end
protection information passthrough and validation for NVMe over RDMA
transport. Metadata support was implemented over the new RDMA signature
verbs API.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/rdma.c | 234 +++++++++++++++++++++++++++++++++++++++++----
 1 file changed, 215 insertions(+), 19 deletions(-)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 7a90b10..f4a4721 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -33,6 +33,7 @@
 
 /* Assume mpsmin == device_page_size == 4KB */
 #define NVMET_RDMA_MAX_MDTS			8
+#define NVMET_RDMA_MAX_METADATA_MDTS		5
 
 struct nvmet_rdma_srq;
 
@@ -60,6 +61,7 @@ struct nvmet_rdma_rsp {
 	struct nvmet_rdma_queue	*queue;
 
 	struct ib_cqe		read_cqe;
+	struct ib_cqe		write_cqe;
 	struct rdma_rw_ctx	rw;
 
 	struct nvmet_req	req;
@@ -161,6 +163,7 @@ struct nvmet_rdma_device {
 static void nvmet_rdma_send_done(struct ib_cq *cq, struct ib_wc *wc);
 static void nvmet_rdma_recv_done(struct ib_cq *cq, struct ib_wc *wc);
 static void nvmet_rdma_read_data_done(struct ib_cq *cq, struct ib_wc *wc);
+static void nvmet_rdma_write_data_done(struct ib_cq *cq, struct ib_wc *wc);
 static void nvmet_rdma_qp_event(struct ib_event *event, void *priv);
 static void nvmet_rdma_queue_disconnect(struct nvmet_rdma_queue *queue);
 static void nvmet_rdma_free_rsp(struct nvmet_rdma_device *ndev,
@@ -423,6 +426,9 @@ static int nvmet_rdma_alloc_rsp(struct nvmet_rdma_device *ndev,
 
 	/* Data In / RDMA READ */
 	r->read_cqe.done = nvmet_rdma_read_data_done;
+	/* Data Out / RDMA WRITE */
+	r->write_cqe.done = nvmet_rdma_write_data_done;
+
 	return 0;
 
 out_free_rsp:
@@ -532,6 +538,129 @@ static void nvmet_rdma_process_wr_wait_list(struct nvmet_rdma_queue *queue)
 	spin_unlock(&queue->rsp_wr_wait_lock);
 }
 
+static u16 nvmet_rdma_check_pi_status(struct ib_mr *sig_mr)
+{
+	struct ib_mr_status mr_status;
+	int ret;
+	u16 status = 0;
+
+	if (!IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY))
+		return 0;
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
+static void nvmet_rdma_set_sig_domain(struct blk_integrity *bi,
+		struct nvme_command *cmd, struct ib_sig_domain *domain,
+		u16 control)
+{
+	domain->sig_type = IB_SIG_TYPE_T10_DIF;
+	domain->sig.dif.bg_type = IB_T10DIF_CRC;
+#ifdef CONFIG_BLK_DEV_INTEGRITY
+	domain->sig.dif.pi_interval = 1 << bi->interval_exp;
+#endif
+	domain->sig.dif.ref_tag = le32_to_cpu(cmd->rw.reftag);
+	domain->sig.dif.apptag_check_mask = 0xffff;
+	domain->sig.dif.app_escape = true;
+	domain->sig.dif.ref_escape = true;
+	if (control & NVME_RW_PRINFO_PRCHK_REF)
+		domain->sig.dif.ref_remap = true;
+}
+
+static void nvmet_rdma_set_sig_attrs(struct nvmet_req *req,
+				     struct ib_sig_attrs *sig_attrs)
+{
+	struct nvme_command *cmd = req->cmd;
+	u16 control = le16_to_cpu(cmd->rw.control);
+	struct blk_integrity *bi;
+
+	if (!IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY))
+		return;
+
+	bi = bdev_get_integrity(req->ns->bdev);
+
+	memset(sig_attrs, 0, sizeof(*sig_attrs));
+
+	if (control & NVME_RW_PRINFO_PRACT) {
+		/* for WRITE_INSERT/READ_STRIP no wire domain */
+		sig_attrs->wire.sig_type = IB_SIG_TYPE_NONE;
+		nvmet_rdma_set_sig_domain(bi, cmd, &sig_attrs->mem, control);
+		/* Clear the PRACT bit since HCA will generate/verify the PI */
+		control &= ~NVME_RW_PRINFO_PRACT;
+		cmd->rw.control = cpu_to_le16(control);
+		/* PI is added by the HW */
+		req->transfer_len += req->md_len;
+	} else {
+		/* for WRITE_PASS/READ_PASS both wire/memory domains exist */
+		nvmet_rdma_set_sig_domain(bi, cmd, &sig_attrs->wire, control);
+		nvmet_rdma_set_sig_domain(bi, cmd, &sig_attrs->mem, control);
+	}
+
+	if (control & NVME_RW_PRINFO_PRCHK_REF)
+		sig_attrs->check_mask |= IB_SIG_CHECK_REFTAG;
+	if (control & NVME_RW_PRINFO_PRCHK_GUARD)
+		sig_attrs->check_mask |= IB_SIG_CHECK_GUARD;
+	if (control & NVME_RW_PRINFO_PRCHK_APP)
+		sig_attrs->check_mask |= IB_SIG_CHECK_APPTAG;
+}
+
+static int nvmet_rdma_rw_ctx_init(struct nvmet_rdma_rsp *rsp, u64 addr, u32 key,
+				  struct ib_sig_attrs *sig_attrs)
+{
+	struct rdma_cm_id *cm_id = rsp->queue->cm_id;
+	struct nvmet_req *req = &rsp->req;
+	int ret;
+
+	if (req->md_len)
+		ret = rdma_rw_ctx_signature_init(&rsp->rw, cm_id->qp,
+			cm_id->port_num, req->sg, req->sg_cnt, req->md_sg,
+			req->md_sg_cnt, sig_attrs, addr, key,
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
+	if (req->md_len)
+		rdma_rw_ctx_destroy_signature(&rsp->rw, cm_id->qp,
+			cm_id->port_num, req->sg, req->sg_cnt, req->md_sg,
+			req->md_sg_cnt, nvmet_data_dir(req));
+	else
+		rdma_rw_ctx_destroy(&rsp->rw, cm_id->qp, cm_id->port_num,
+				    req->sg, req->sg_cnt, nvmet_data_dir(req));
+}
 
 static void nvmet_rdma_release_rsp(struct nvmet_rdma_rsp *rsp)
 {
@@ -539,11 +668,8 @@ static void nvmet_rdma_release_rsp(struct nvmet_rdma_rsp *rsp)
 
 	atomic_add(1 + rsp->n_rdma, &queue->sq_wr_avail);
 
-	if (rsp->n_rdma) {
-		rdma_rw_ctx_destroy(&rsp->rw, queue->qp,
-				queue->cm_id->port_num, rsp->req.sg,
-				rsp->req.sg_cnt, nvmet_data_dir(&rsp->req));
-	}
+	if (rsp->n_rdma)
+		nvmet_rdma_rw_ctx_destroy(rsp);
 
 	if (rsp->req.sg != rsp->cmd->inline_sg)
 		nvmet_req_free_sgl(&rsp->req);
@@ -598,11 +724,16 @@ static void nvmet_rdma_queue_response(struct nvmet_req *req)
 		rsp->send_wr.opcode = IB_WR_SEND;
 	}
 
-	if (nvmet_rdma_need_data_out(rsp))
-		first_wr = rdma_rw_ctx_wrs(&rsp->rw, cm_id->qp,
-				cm_id->port_num, NULL, &rsp->send_wr);
-	else
+	if (nvmet_rdma_need_data_out(rsp)) {
+		if (rsp->req.md_len)
+			first_wr = rdma_rw_ctx_wrs(&rsp->rw, cm_id->qp,
+					cm_id->port_num, &rsp->write_cqe, NULL);
+		else
+			first_wr = rdma_rw_ctx_wrs(&rsp->rw, cm_id->qp,
+					cm_id->port_num, NULL, &rsp->send_wr);
+	} else {
 		first_wr = &rsp->send_wr;
+	}
 
 	nvmet_rdma_post_recv(rsp->queue->dev, rsp->cmd);
 
@@ -621,15 +752,14 @@ static void nvmet_rdma_read_data_done(struct ib_cq *cq, struct ib_wc *wc)
 	struct nvmet_rdma_rsp *rsp =
 		container_of(wc->wr_cqe, struct nvmet_rdma_rsp, read_cqe);
 	struct nvmet_rdma_queue *queue = cq->cq_context;
+	u16 status = 0;
 
 	WARN_ON(rsp->n_rdma <= 0);
 	atomic_add(rsp->n_rdma, &queue->sq_wr_avail);
-	rdma_rw_ctx_destroy(&rsp->rw, queue->qp,
-			queue->cm_id->port_num, rsp->req.sg,
-			rsp->req.sg_cnt, nvmet_data_dir(&rsp->req));
 	rsp->n_rdma = 0;
 
 	if (unlikely(wc->status != IB_WC_SUCCESS)) {
+		nvmet_rdma_rw_ctx_destroy(rsp);
 		nvmet_req_uninit(&rsp->req);
 		nvmet_rdma_release_rsp(rsp);
 		if (wc->status != IB_WC_WR_FLUSH_ERR) {
@@ -640,7 +770,58 @@ static void nvmet_rdma_read_data_done(struct ib_cq *cq, struct ib_wc *wc)
 		return;
 	}
 
-	rsp->req.execute(&rsp->req);
+	if (rsp->req.md_len)
+		status = nvmet_rdma_check_pi_status(rsp->rw.reg->mr);
+	nvmet_rdma_rw_ctx_destroy(rsp);
+
+	if (unlikely(status))
+		nvmet_req_complete(&rsp->req, status);
+	else
+		rsp->req.execute(&rsp->req);
+}
+
+static void nvmet_rdma_write_data_done(struct ib_cq *cq, struct ib_wc *wc)
+{
+	struct nvmet_rdma_rsp *rsp =
+		container_of(wc->wr_cqe, struct nvmet_rdma_rsp, write_cqe);
+	struct nvmet_rdma_queue *queue = cq->cq_context;
+	struct rdma_cm_id *cm_id = rsp->queue->cm_id;
+	u16 status;
+
+	if (!IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY))
+		return;
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
 }
 
 static void nvmet_rdma_use_inline_sg(struct nvmet_rdma_rsp *rsp, u32 len,
@@ -697,9 +878,9 @@ static u16 nvmet_rdma_map_sgl_inline(struct nvmet_rdma_rsp *rsp)
 static u16 nvmet_rdma_map_sgl_keyed(struct nvmet_rdma_rsp *rsp,
 		struct nvme_keyed_sgl_desc *sgl, bool invalidate)
 {
-	struct rdma_cm_id *cm_id = rsp->queue->cm_id;
 	u64 addr = le64_to_cpu(sgl->addr);
 	u32 key = get_unaligned_le32(sgl->key);
+	struct ib_sig_attrs sig_attrs;
 	int ret;
 
 	rsp->req.transfer_len = get_unaligned_le24(sgl->length);
@@ -708,13 +889,14 @@ static u16 nvmet_rdma_map_sgl_keyed(struct nvmet_rdma_rsp *rsp,
 	if (!rsp->req.transfer_len)
 		return 0;
 
+	if (rsp->req.md_len)
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
@@ -1108,6 +1290,9 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
 		qp_attr.cap.max_recv_sge = 1 + ndev->inline_page_count;
 	}
 
+	if (queue->port->pi_enable && queue->host_qid)
+		qp_attr.create_flags |= IB_QP_CREATE_INTEGRITY_EN;
+
 	ret = rdma_create_qp(queue->cm_id, ndev->pd, &qp_attr);
 	if (ret) {
 		pr_err("failed to create_qp ret= %d\n", ret);
@@ -1226,6 +1411,7 @@ static int nvmet_rdma_cm_reject(struct rdma_cm_id *cm_id,
 		struct rdma_cm_id *cm_id,
 		struct rdma_cm_event *event)
 {
+	struct nvmet_rdma_port *port = cm_id->context;
 	struct nvmet_rdma_queue *queue;
 	int ret;
 
@@ -1252,6 +1438,7 @@ static int nvmet_rdma_cm_reject(struct rdma_cm_id *cm_id,
 	INIT_WORK(&queue->release_work, nvmet_rdma_release_queue_work);
 	queue->dev = ndev;
 	queue->cm_id = cm_id;
+	queue->port = port->nport;
 
 	spin_lock_init(&queue->state_lock);
 	queue->state = NVMET_RDMA_Q_CONNECTING;
@@ -1369,7 +1556,6 @@ static int nvmet_rdma_cm_accept(struct rdma_cm_id *cm_id,
 static int nvmet_rdma_queue_connect(struct rdma_cm_id *cm_id,
 		struct rdma_cm_event *event)
 {
-	struct nvmet_rdma_port *port = cm_id->context;
 	struct nvmet_rdma_device *ndev;
 	struct nvmet_rdma_queue *queue;
 	int ret = -EINVAL;
@@ -1385,7 +1571,6 @@ static int nvmet_rdma_queue_connect(struct rdma_cm_id *cm_id,
 		ret = -ENOMEM;
 		goto put_device;
 	}
-	queue->port = port->nport;
 
 	if (queue->host_qid == 0) {
 		/* Let inflight controller teardown complete */
@@ -1657,6 +1842,14 @@ static int nvmet_rdma_enable_port(struct nvmet_rdma_port *port)
 		goto out_destroy_id;
 	}
 
+	if (port->nport->pi_enable &&
+	    !(cm_id->device->attrs.device_cap_flags &
+	      IB_DEVICE_INTEGRITY_HANDOVER)) {
+		pr_err("T10-PI is not supported for %pISpcs\n", addr);
+		ret = -EINVAL;
+		goto out_destroy_id;
+	}
+
 	port->cm_id = cm_id;
 	return 0;
 
@@ -1766,6 +1959,8 @@ static void nvmet_rdma_disc_port_addr(struct nvmet_req *req,
 
 static u8 nvmet_rdma_get_mdts(const struct nvmet_ctrl *ctrl)
 {
+	if (ctrl->pi_support)
+		return NVMET_RDMA_MAX_METADATA_MDTS;
 	return NVMET_RDMA_MAX_MDTS;
 }
 
@@ -1774,6 +1969,7 @@ static u8 nvmet_rdma_get_mdts(const struct nvmet_ctrl *ctrl)
 	.type			= NVMF_TRTYPE_RDMA,
 	.msdbd			= 1,
 	.has_keyed_sgls		= 1,
+	.metadata_support	= 1,
 	.add_port		= nvmet_rdma_add_port,
 	.remove_port		= nvmet_rdma_remove_port,
 	.queue_response		= nvmet_rdma_queue_response,
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
