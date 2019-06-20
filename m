Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85FA24D38F
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gai39p5zESVyM/7TvVfokrV8n2vGesApzQSyHTd5uEw=; b=hcjoDVfJ6CAUTc
	vLci29B20i0os5FlAmFqfeDof858t3QZtKpZu0bzXqaZXjxMVVWKLwX7N2qHTbs42RbU3iirwnjfk
	XRRx237dYQ2e5MQvYg+2gOSod81yHeXXUVNHMlxNZ5xNdYeeYWYyDXJb1Y2QHPQYvEzG75FDoWWam
	N56bm2W4GuXM5SlknL6E1Kl8Ij0hULkSZQZoh4hGcMoEi0/cnvGoWplSyxhCTZC1NQq37Dbb42iHs
	CcBZrpcYuiSa4tsUqyfaBUoMBjyYlgbdMEYxPr7zg2fTXVRhqdSCg22U+i7h+oCkcofEDTSMfuKYV
	xMna++NkvZvsqbkrrBoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzo6-0004gj-E1; Thu, 20 Jun 2019 16:21:02 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgO-0004rc-QC
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:08 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzgB-00046K-LN; Thu, 20 Jun 2019 10:13:03 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-0005wx-09; Thu, 20 Jun 2019 10:12:46 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:34 -0600
Message-Id: <20190620161240.22738-23-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620161240.22738-1-logang@deltatee.com>
References: <20190620161240.22738-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org, axboe@kernel.dk, hch@lst.de, bhelgaas@google.com,
 dan.j.williams@intel.com, sagi@grimberg.me, kbusch@kernel.org, jgg@ziepe.ca,
 sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [RFC PATCH 22/28] nvmet: Use DMA addresses instead of struct pages
 for P2P
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091305_421847_1543EFE8 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Jason Gunthorpe <jgg@ziepe.ca>, Stephen Bates <sbates@raithlin.com>,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Start using the dma-direct bios and DMA address RDMA CTX API.

This removes struct pages from all P2P transactions.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/core.c        | 12 +++++----
 drivers/nvme/target/io-cmd-bdev.c | 32 ++++++++++++++++++++---
 drivers/nvme/target/nvmet.h       |  5 +++-
 drivers/nvme/target/rdma.c        | 43 +++++++++++++++++++++++--------
 4 files changed, 71 insertions(+), 21 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 7734a6acff85..230e99b63320 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -420,7 +420,7 @@ static int nvmet_p2pmem_ns_enable(struct nvmet_ns *ns)
 		return -EINVAL;
 	}
 
-	if (!blk_queue_pci_p2pdma(ns->bdev->bd_queue)) {
+	if (!blk_queue_dma_direct(ns->bdev->bd_queue)) {
 		pr_err("peer-to-peer DMA is not supported by the driver of %s\n",
 		       ns->device_path);
 		return -EINVAL;
@@ -926,9 +926,9 @@ int nvmet_req_alloc_sgl(struct nvmet_req *req)
 
 		req->p2p_dev = NULL;
 		if (req->sq->qid && p2p_dev) {
-			req->sg = pci_p2pmem_alloc_sgl(p2p_dev, &req->sg_cnt,
-						       req->transfer_len);
-			if (req->sg) {
+			req->p2p_dma_buf = pci_alloc_p2pmem(p2p_dev,
+							    req->transfer_len);
+			if (req->p2p_dma_buf) {
 				req->p2p_dev = p2p_dev;
 				return 0;
 			}
@@ -951,10 +951,12 @@ EXPORT_SYMBOL_GPL(nvmet_req_alloc_sgl);
 void nvmet_req_free_sgl(struct nvmet_req *req)
 {
 	if (req->p2p_dev)
-		pci_p2pmem_free_sgl(req->p2p_dev, req->sg);
+		pci_free_p2pmem(req->p2p_dev, req->p2p_dma_buf,
+				req->transfer_len);
 	else
 		sgl_free(req->sg);
 
+	req->p2p_dev = NULL;
 	req->sg = NULL;
 	req->sg_cnt = 0;
 }
diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 061d40b020c7..f5621aeb1d6c 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -6,6 +6,7 @@
 #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
 #include <linux/blkdev.h>
 #include <linux/module.h>
+#include <linux/pci-p2pdma.h>
 #include "nvmet.h"
 
 int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
@@ -132,6 +133,24 @@ static void nvmet_submit_sg(struct nvmet_req *req, struct bio *bio,
 	submit_bio(bio);
 }
 
+static void nvmet_submit_p2p(struct nvmet_req *req, struct bio *bio)
+{
+	dma_addr_t addr;
+	int ret;
+
+	addr = pci_p2pmem_virt_to_bus(req->p2p_dev, req->p2p_dma_buf);
+
+	ret = bio_add_dma_addr(req->ns->bdev->bd_queue, bio,
+			       addr, req->transfer_len);
+	if (WARN_ON_ONCE(ret != req->transfer_len)) {
+		bio->bi_status = BLK_STS_NOTSUPP;
+		nvmet_bio_done(bio);
+		return;
+	}
+
+	submit_bio(bio);
+}
+
 static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 {
 	int sg_cnt = req->sg_cnt;
@@ -139,7 +158,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	sector_t sector;
 	int op, op_flags = 0;
 
-	if (!req->sg_cnt) {
+	if (!req->sg_cnt && !req->p2p_dev) {
 		nvmet_req_complete(req, 0);
 		return;
 	}
@@ -153,8 +172,10 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 		op = REQ_OP_READ;
 	}
 
-	if (is_pci_p2pdma_page(sg_page(req->sg)))
-		op_flags |= REQ_NOMERGE;
+	if (req->p2p_dev) {
+		op_flags |= REQ_DMA_DIRECT;
+		sg_cnt = 1;
+	}
 
 	sector = le64_to_cpu(req->cmd->rw.slba);
 	sector <<= (req->ns->blksize_shift - 9);
@@ -171,7 +192,10 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	bio->bi_end_io = nvmet_bio_done;
 	bio_set_op_attrs(bio, op, op_flags);
 
-	nvmet_submit_sg(req, bio, sector);
+	if (req->p2p_dev)
+		nvmet_submit_p2p(req, bio);
+	else
+		nvmet_submit_sg(req, bio, sector);
 }
 
 static void nvmet_bdev_execute_flush(struct nvmet_req *req)
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index c25d88fc9dec..5714e5b5ef04 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -288,7 +288,10 @@ struct nvmet_req {
 	struct nvmet_sq		*sq;
 	struct nvmet_cq		*cq;
 	struct nvmet_ns		*ns;
-	struct scatterlist	*sg;
+	union {
+		struct scatterlist	*sg;
+		void			*p2p_dma_buf;
+	};
 	struct bio_vec		inline_bvec[NVMET_MAX_INLINE_BIOVEC];
 	union {
 		struct {
diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 36d906a7f70d..92bfc7207814 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -15,6 +15,7 @@
 #include <linux/string.h>
 #include <linux/wait.h>
 #include <linux/inet.h>
+#include <linux/pci-p2pdma.h>
 #include <asm/unaligned.h>
 
 #include <rdma/ib_verbs.h>
@@ -495,6 +496,18 @@ static void nvmet_rdma_process_wr_wait_list(struct nvmet_rdma_queue *queue)
 	spin_unlock(&queue->rsp_wr_wait_lock);
 }
 
+static void nvmet_rdma_ctx_destroy(struct nvmet_rdma_rsp *rsp)
+{
+	struct nvmet_rdma_queue *queue = rsp->queue;
+
+	if (rsp->req.p2p_dev)
+		rdma_rw_ctx_dma_destroy(&rsp->rw, queue->cm_id->qp,
+					queue->cm_id->port_num);
+	else
+		rdma_rw_ctx_destroy(&rsp->rw, queue->cm_id->qp,
+				queue->cm_id->port_num, rsp->req.sg,
+				rsp->req.sg_cnt, nvmet_data_dir(&rsp->req));
+}
 
 static void nvmet_rdma_release_rsp(struct nvmet_rdma_rsp *rsp)
 {
@@ -502,11 +515,8 @@ static void nvmet_rdma_release_rsp(struct nvmet_rdma_rsp *rsp)
 
 	atomic_add(1 + rsp->n_rdma, &queue->sq_wr_avail);
 
-	if (rsp->n_rdma) {
-		rdma_rw_ctx_destroy(&rsp->rw, queue->cm_id->qp,
-				queue->cm_id->port_num, rsp->req.sg,
-				rsp->req.sg_cnt, nvmet_data_dir(&rsp->req));
-	}
+	if (rsp->n_rdma)
+		nvmet_rdma_ctx_destroy(rsp);
 
 	if (rsp->req.sg != rsp->cmd->inline_sg)
 		nvmet_req_free_sgl(&rsp->req);
@@ -587,9 +597,9 @@ static void nvmet_rdma_read_data_done(struct ib_cq *cq, struct ib_wc *wc)
 
 	WARN_ON(rsp->n_rdma <= 0);
 	atomic_add(rsp->n_rdma, &queue->sq_wr_avail);
-	rdma_rw_ctx_destroy(&rsp->rw, queue->cm_id->qp,
-			queue->cm_id->port_num, rsp->req.sg,
-			rsp->req.sg_cnt, nvmet_data_dir(&rsp->req));
+
+	nvmet_rdma_ctx_destroy(rsp);
+
 	rsp->n_rdma = 0;
 
 	if (unlikely(wc->status != IB_WC_SUCCESS)) {
@@ -663,6 +673,7 @@ static u16 nvmet_rdma_map_sgl_keyed(struct nvmet_rdma_rsp *rsp,
 	struct rdma_cm_id *cm_id = rsp->queue->cm_id;
 	u64 addr = le64_to_cpu(sgl->addr);
 	u32 key = get_unaligned_le32(sgl->key);
+	dma_addr_t dma_addr;
 	int ret;
 
 	rsp->req.transfer_len = get_unaligned_le24(sgl->length);
@@ -675,9 +686,19 @@ static u16 nvmet_rdma_map_sgl_keyed(struct nvmet_rdma_rsp *rsp,
 	if (ret < 0)
 		goto error_out;
 
-	ret = rdma_rw_ctx_init(&rsp->rw, cm_id->qp, cm_id->port_num,
-			rsp->req.sg, rsp->req.sg_cnt, 0, addr, key,
-			nvmet_data_dir(&rsp->req));
+	if (rsp->req.p2p_dev) {
+		dma_addr = pci_p2pmem_virt_to_bus(rsp->req.p2p_dev,
+						  rsp->req.p2p_dma_buf);
+
+		ret = rdma_rw_ctx_dma_init(&rsp->rw, cm_id->qp,
+					   cm_id->port_num, dma_addr,
+					   rsp->req.transfer_len, addr, key,
+					   nvmet_data_dir(&rsp->req));
+	} else {
+		ret = rdma_rw_ctx_init(&rsp->rw, cm_id->qp, cm_id->port_num,
+				       rsp->req.sg, rsp->req.sg_cnt, 0, addr,
+				       key, nvmet_data_dir(&rsp->req));
+	}
 	if (ret < 0)
 		goto error_out;
 	rsp->n_rdma += ret;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
