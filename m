Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 576C0188611
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 14:41:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=arEnziQZDD6OhRQ3x21jJX1RgMFmXFc7XNH8+R4fp2k=; b=ch0ekz9Hy6YZ4g
	fwk9//FSvRkJ4JF8Fvz4RwCQu9DbgPv/gPVH7Lw8fCEwpNRYjcEeezBIkqjt59J+s7BoPgaOnFSF5
	Ydsgn7rFRrx63T2KpfIOeX2D1HEqUUmF6/6Sj9Yjz0Av6NpSYD4iJUqSlYdZLdbuoQ/gkIzyhijoa
	UoWkBuzFN2CXY57rMJdt5UEPIZ/hyN2fyhuKgpo+D2AGg8BxxUjHCOaH+HzHjn9Iwf62zLxD+xpiy
	xE2rIeZUcE1RYuPPMLjJXzvqXQFgrB02U++orB45MdKuE8ox3gXmyzQr1AMnBNs29IZidKmujzn6N
	uQq2/eznoiXDZgnoGLQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECTc-0001fK-2y; Tue, 17 Mar 2020 13:41:48 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECSU-0000aA-0X
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 13:40:55 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 17 Mar 2020 15:40:30 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02HDeUhe028750;
 Tue, 17 Mar 2020 15:40:30 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, sagi@grimberg.me, hch@lst.de,
 loberman@redhat.com, bvanassche@acm.org, linux-rdma@vger.kernel.org
Subject: [PATCH 3/5] nvmet-rdma: use SRQ per completion vector
Date: Tue, 17 Mar 2020 15:40:28 +0200
Message-Id: <20200317134030.152833-4-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200317134030.152833-1-maxg@mellanox.com>
References: <20200317134030.152833-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_064047_302081_63D08F14 
X-CRM114-Status: GOOD (  16.94  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: vladimirk@mellanox.com, shlomin@mellanox.com, leonro@mellanox.com,
 dledford@redhat.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, idanb@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In order to save resource allocation and utilize the completion
locality in a better way (compared to SRQ per device that exist today),
allocate Shared Receive Queues (SRQs) per completion vector. Associate
each created QP/CQ with an appropriate SRQ according to the queue index.
This association will reduce the lock contention in the fast path
(compared to SRQ per device solution) and increase the locality in
memory buffers. Add new module parameter for SRQ size to adjust it
according to the expected load. User should make sure the size is >= 256
to avoid lack of resources.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/rdma.c | 204 +++++++++++++++++++++++++++++++++------------
 1 file changed, 153 insertions(+), 51 deletions(-)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 04062af..f560257 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -18,6 +18,7 @@
 #include <asm/unaligned.h>
 
 #include <rdma/ib_verbs.h>
+#include <rdma/srq_set.h>
 #include <rdma/rdma_cm.h>
 #include <rdma/rw.h>
 
@@ -31,6 +32,8 @@
 #define NVMET_RDMA_MAX_INLINE_SGE		4
 #define NVMET_RDMA_MAX_INLINE_DATA_SIZE		max_t(int, SZ_16K, PAGE_SIZE)
 
+struct nvmet_rdma_srq;
+
 struct nvmet_rdma_cmd {
 	struct ib_sge		sge[NVMET_RDMA_MAX_INLINE_SGE + 1];
 	struct ib_cqe		cqe;
@@ -38,7 +41,7 @@ struct nvmet_rdma_cmd {
 	struct scatterlist	inline_sg[NVMET_RDMA_MAX_INLINE_SGE];
 	struct nvme_command     *nvme_cmd;
 	struct nvmet_rdma_queue	*queue;
-	struct ib_srq		*srq;
+	struct nvmet_rdma_srq   *nsrq;
 };
 
 enum {
@@ -80,6 +83,7 @@ struct nvmet_rdma_queue {
 	struct ib_cq		*cq;
 	atomic_t		sq_wr_avail;
 	struct nvmet_rdma_device *dev;
+	struct nvmet_rdma_srq   *nsrq;
 	spinlock_t		state_lock;
 	enum nvmet_rdma_queue_state state;
 	struct nvmet_cq		nvme_cq;
@@ -97,17 +101,24 @@ struct nvmet_rdma_queue {
 
 	int			idx;
 	int			host_qid;
+	int			comp_vector;
 	int			recv_queue_size;
 	int			send_queue_size;
 
 	struct list_head	queue_list;
 };
 
+struct nvmet_rdma_srq {
+	struct ib_srq            *srq;
+	struct nvmet_rdma_cmd    *cmds;
+	struct nvmet_rdma_device *ndev;
+};
+
 struct nvmet_rdma_device {
 	struct ib_device	*device;
 	struct ib_pd		*pd;
-	struct ib_srq		*srq;
-	struct nvmet_rdma_cmd	*srq_cmds;
+	struct nvmet_rdma_srq	**srqs;
+	int			srq_count;
 	size_t			srq_size;
 	struct kref		ref;
 	struct list_head	entry;
@@ -119,6 +130,16 @@ struct nvmet_rdma_device {
 module_param_named(use_srq, nvmet_rdma_use_srq, bool, 0444);
 MODULE_PARM_DESC(use_srq, "Use shared receive queue.");
 
+static int srq_size_set(const char *val, const struct kernel_param *kp);
+static const struct kernel_param_ops srq_size_ops = {
+	.set = srq_size_set,
+	.get = param_get_int,
+};
+
+static int nvmet_rdma_srq_size = 1024;
+module_param_cb(srq_size, &srq_size_ops, &nvmet_rdma_srq_size, 0644);
+MODULE_PARM_DESC(srq_size, "set Shared Receive Queue (SRQ) size, should >= 256 (default: 1024)");
+
 static DEFINE_IDA(nvmet_rdma_queue_ida);
 static LIST_HEAD(nvmet_rdma_queue_list);
 static DEFINE_MUTEX(nvmet_rdma_queue_mutex);
@@ -139,6 +160,17 @@ static int nvmet_rdma_alloc_rsp(struct nvmet_rdma_device *ndev,
 
 static const struct nvmet_fabrics_ops nvmet_rdma_ops;
 
+static int srq_size_set(const char *val, const struct kernel_param *kp)
+{
+	int n = 0, ret;
+
+	ret = kstrtoint(val, 10, &n);
+	if (ret != 0 || n < 256)
+		return -EINVAL;
+
+	return param_set_int(val, kp);
+}
+
 static int num_pages(int len)
 {
 	return 1 + (((len - 1) & PAGE_MASK) >> PAGE_SHIFT);
@@ -462,8 +494,8 @@ static int nvmet_rdma_post_recv(struct nvmet_rdma_device *ndev,
 		cmd->sge[0].addr, cmd->sge[0].length,
 		DMA_FROM_DEVICE);
 
-	if (cmd->srq)
-		ret = ib_post_srq_recv(cmd->srq, &cmd->wr, NULL);
+	if (cmd->nsrq)
+		ret = ib_post_srq_recv(cmd->nsrq->srq, &cmd->wr, NULL);
 	else
 		ret = ib_post_recv(cmd->queue->cm_id->qp, &cmd->wr, NULL);
 
@@ -841,30 +873,82 @@ static void nvmet_rdma_recv_done(struct ib_cq *cq, struct ib_wc *wc)
 	nvmet_rdma_handle_command(queue, rsp);
 }
 
-static void nvmet_rdma_destroy_srq(struct nvmet_rdma_device *ndev)
+static void nvmet_rdma_destroy_srq(struct nvmet_rdma_srq *nsrq)
+{
+	nvmet_rdma_free_cmds(nsrq->ndev, nsrq->cmds, nsrq->ndev->srq_size, false);
+	rdma_srq_put(nsrq->ndev->pd, nsrq->srq);
+
+	kfree(nsrq);
+}
+
+static void nvmet_rdma_destroy_srqs(struct nvmet_rdma_device *ndev)
 {
-	if (!ndev->srq)
+	int i;
+
+	if (!ndev->srqs)
 		return;
 
-	nvmet_rdma_free_cmds(ndev, ndev->srq_cmds, ndev->srq_size, false);
-	ib_destroy_srq(ndev->srq);
+	for (i = 0; i < ndev->srq_count; i++)
+		nvmet_rdma_destroy_srq(ndev->srqs[i]);
+
+	rdma_srq_set_destroy(ndev->pd);
+	kfree(ndev->srqs);
+	ndev->srqs = NULL;
+	ndev->srq_count = 0;
+	ndev->srq_size = 0;
 }
 
-static int nvmet_rdma_init_srq(struct nvmet_rdma_device *ndev)
+static struct nvmet_rdma_srq *
+nvmet_rdma_init_srq(struct nvmet_rdma_device *ndev)
 {
-	struct ib_srq_init_attr srq_attr = { NULL, };
+	size_t srq_size = ndev->srq_size;
+	struct nvmet_rdma_srq *nsrq;
 	struct ib_srq *srq;
-	size_t srq_size;
 	int ret, i;
 
-	srq_size = 4095;	/* XXX: tune */
+	nsrq = kzalloc(sizeof(*nsrq), GFP_KERNEL);
+	if (!nsrq)
+		return ERR_PTR(-ENOMEM);
 
-	srq_attr.attr.max_wr = srq_size;
-	srq_attr.attr.max_sge = 1 + ndev->inline_page_count;
-	srq_attr.attr.srq_limit = 0;
-	srq_attr.srq_type = IB_SRQT_BASIC;
-	srq = ib_create_srq(ndev->pd, &srq_attr);
-	if (IS_ERR(srq)) {
+	srq = rdma_srq_get(ndev->pd);
+	if (!srq) {
+		ret = -EAGAIN;
+		goto out_free_nsrq;
+	}
+
+	nsrq->cmds = nvmet_rdma_alloc_cmds(ndev, srq_size, false);
+	if (IS_ERR(nsrq->cmds)) {
+		ret = PTR_ERR(nsrq->cmds);
+		goto out_put_srq;
+	}
+
+	nsrq->srq = srq;
+	nsrq->ndev = ndev;
+
+	for (i = 0; i < srq_size; i++) {
+		nsrq->cmds[i].nsrq = nsrq;
+		ret = nvmet_rdma_post_recv(ndev, &nsrq->cmds[i]);
+		if (ret)
+			goto out_free_cmds;
+	}
+
+	return nsrq;
+
+out_free_cmds:
+	nvmet_rdma_free_cmds(ndev, nsrq->cmds, srq_size, false);
+out_put_srq:
+	rdma_srq_put(ndev->pd, srq);
+out_free_nsrq:
+	kfree(nsrq);
+	return ERR_PTR(ret);
+}
+
+static int nvmet_rdma_init_srqs(struct nvmet_rdma_device *ndev)
+{
+	struct ib_srq_init_attr srq_attr = { NULL, };
+	int i, ret;
+
+	if (!ndev->device->attrs.max_srq_wr || !ndev->device->attrs.max_srq) {
 		/*
 		 * If SRQs aren't supported we just go ahead and use normal
 		 * non-shared receive queues.
@@ -873,31 +957,44 @@ static int nvmet_rdma_init_srq(struct nvmet_rdma_device *ndev)
 		return 0;
 	}
 
-	ndev->srq_cmds = nvmet_rdma_alloc_cmds(ndev, srq_size, false);
-	if (IS_ERR(ndev->srq_cmds)) {
-		ret = PTR_ERR(ndev->srq_cmds);
-		goto out_destroy_srq;
-	}
+	ndev->srq_size = min(ndev->device->attrs.max_srq_wr,
+			     nvmet_rdma_srq_size);
+	ndev->srq_count = min(ndev->device->num_comp_vectors,
+			      ndev->device->attrs.max_srq);
 
-	ndev->srq = srq;
-	ndev->srq_size = srq_size;
+	ndev->srqs = kcalloc(ndev->srq_count, sizeof(*ndev->srqs), GFP_KERNEL);
+	if (!ndev->srqs)
+		return -ENOMEM;
 
-	for (i = 0; i < srq_size; i++) {
-		ndev->srq_cmds[i].srq = srq;
-		ret = nvmet_rdma_post_recv(ndev, &ndev->srq_cmds[i]);
-		if (ret)
-			goto out_free_cmds;
+	srq_attr.attr.max_wr = ndev->srq_size;
+	srq_attr.attr.max_sge = 2;
+	srq_attr.attr.srq_limit = 0;
+	srq_attr.srq_type = IB_SRQT_BASIC;
+	ret = rdma_srq_set_init(ndev->pd, ndev->srq_count, &srq_attr);
+	if (ret)
+		goto err_free;
+
+	for (i = 0; i < ndev->srq_count; i++) {
+		ndev->srqs[i] = nvmet_rdma_init_srq(ndev);
+		if (IS_ERR(ndev->srqs[i]))
+			goto err_srq;
 	}
 
 	return 0;
 
-out_free_cmds:
-	nvmet_rdma_free_cmds(ndev, ndev->srq_cmds, ndev->srq_size, false);
-out_destroy_srq:
-	ib_destroy_srq(srq);
+err_srq:
+	while (--i >= 0)
+		nvmet_rdma_destroy_srq(ndev->srqs[i]);
+	rdma_srq_set_destroy(ndev->pd);
+err_free:
+	kfree(ndev->srqs);
+	ndev->srqs = NULL;
+	ndev->srq_count = 0;
+	ndev->srq_size = 0;
 	return ret;
 }
 
+
 static void nvmet_rdma_free_dev(struct kref *ref)
 {
 	struct nvmet_rdma_device *ndev =
@@ -907,7 +1004,7 @@ static void nvmet_rdma_free_dev(struct kref *ref)
 	list_del(&ndev->entry);
 	mutex_unlock(&device_list_mutex);
 
-	nvmet_rdma_destroy_srq(ndev);
+	nvmet_rdma_destroy_srqs(ndev);
 	ib_dealloc_pd(ndev->pd);
 
 	kfree(ndev);
@@ -953,7 +1050,7 @@ static void nvmet_rdma_free_dev(struct kref *ref)
 		goto out_free_dev;
 
 	if (nvmet_rdma_use_srq) {
-		ret = nvmet_rdma_init_srq(ndev);
+		ret = nvmet_rdma_init_srqs(ndev);
 		if (ret)
 			goto out_free_pd;
 	}
@@ -977,14 +1074,8 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
 {
 	struct ib_qp_init_attr qp_attr;
 	struct nvmet_rdma_device *ndev = queue->dev;
-	int comp_vector, nr_cqe, ret, i;
+	int nr_cqe, ret, i;
 
-	/*
-	 * Spread the io queues across completion vectors,
-	 * but still keep all admin queues on vector 0.
-	 */
-	comp_vector = !queue->host_qid ? 0 :
-		queue->idx % ndev->device->num_comp_vectors;
 
 	/*
 	 * Reserve CQ slots for RECV + RDMA_READ/RDMA_WRITE + RDMA_SEND.
@@ -992,7 +1083,7 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
 	nr_cqe = queue->recv_queue_size + 2 * queue->send_queue_size;
 
 	queue->cq = ib_alloc_cq(ndev->device, queue,
-			nr_cqe + 1, comp_vector,
+			nr_cqe + 1, queue->comp_vector,
 			IB_POLL_WORKQUEUE);
 	if (IS_ERR(queue->cq)) {
 		ret = PTR_ERR(queue->cq);
@@ -1014,8 +1105,8 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
 	qp_attr.cap.max_send_sge = max(ndev->device->attrs.max_sge_rd,
 					ndev->device->attrs.max_send_sge);
 
-	if (ndev->srq) {
-		qp_attr.srq = ndev->srq;
+	if (queue->nsrq) {
+		qp_attr.srq = queue->nsrq->srq;
 	} else {
 		/* +1 for drain */
 		qp_attr.cap.max_recv_wr = 1 + queue->recv_queue_size;
@@ -1034,7 +1125,7 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
 		 __func__, queue->cq->cqe, qp_attr.cap.max_send_sge,
 		 qp_attr.cap.max_send_wr, queue->cm_id);
 
-	if (!ndev->srq) {
+	if (!queue->nsrq) {
 		for (i = 0; i < queue->recv_queue_size; i++) {
 			queue->cmds[i].queue = queue;
 			ret = nvmet_rdma_post_recv(ndev, &queue->cmds[i]);
@@ -1070,7 +1161,7 @@ static void nvmet_rdma_free_queue(struct nvmet_rdma_queue *queue)
 	nvmet_sq_destroy(&queue->nvme_sq);
 
 	nvmet_rdma_destroy_queue_ib(queue);
-	if (!queue->dev->srq) {
+	if (!queue->nsrq) {
 		nvmet_rdma_free_cmds(queue->dev, queue->cmds,
 				queue->recv_queue_size,
 				!queue->host_qid);
@@ -1182,13 +1273,22 @@ static int nvmet_rdma_cm_reject(struct rdma_cm_id *cm_id,
 		goto out_destroy_sq;
 	}
 
+	/*
+	 * Spread the io queues across completion vectors,
+	 * but still keep all admin queues on vector 0.
+	 */
+	queue->comp_vector = !queue->host_qid ? 0 :
+		queue->idx % ndev->device->num_comp_vectors;
+
 	ret = nvmet_rdma_alloc_rsps(queue);
 	if (ret) {
 		ret = NVME_RDMA_CM_NO_RSC;
 		goto out_ida_remove;
 	}
 
-	if (!ndev->srq) {
+	if (ndev->srqs) {
+		queue->nsrq = ndev->srqs[queue->comp_vector % ndev->srq_count];
+	} else {
 		queue->cmds = nvmet_rdma_alloc_cmds(ndev,
 				queue->recv_queue_size,
 				!queue->host_qid);
@@ -1209,10 +1309,12 @@ static int nvmet_rdma_cm_reject(struct rdma_cm_id *cm_id,
 	return queue;
 
 out_free_cmds:
-	if (!ndev->srq) {
+	if (!queue->nsrq) {
 		nvmet_rdma_free_cmds(queue->dev, queue->cmds,
 				queue->recv_queue_size,
 				!queue->host_qid);
+	} else {
+		queue->nsrq = NULL;
 	}
 out_free_responses:
 	nvmet_rdma_free_rsps(queue);
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
