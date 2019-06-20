Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 994804D37C
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:17:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+o9Hzlmcou00Up1aj2rzF1G9YiaDi7hYdyVMjJ4ps0Q=; b=D1f1Tpph1Are8d
	ukScMPrp7I5Rc7ATt4qt33mwOsCBf1gb7lrb5qpOjKX1Q2bDkWrkCQXNLlTaIaht/+8z+VqMPFa+y
	X+MIWBHQzbhW2NR+aS+/UD0P53Xr/iJ/4ooF0n3/GOa/O0lFMal9x7GJmvkc728YJW5aOwHCvABuo
	IOVkKTzSB3UXjKVXrqUMZjkTTMVKMu3ZG/33QkY948Dji5bCvgaOvx9fSYSYE+tuFeuzbeyFgNlPu
	v5lM51ckXZnbWav8FMScGxk4fNkHgqsUTkiFa6xd8IKEDSNx5bhJGyb4cVVGfkR6pmgALv8sYa0eQ
	dqaWbBUw1Pq3E1dslkQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzkx-0001IR-Dc; Thu, 20 Jun 2019 16:17:47 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgJ-0004l2-Aj
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:03 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzgB-00046O-2S; Thu, 20 Jun 2019 10:12:58 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-0005x0-6t; Thu, 20 Jun 2019 10:12:46 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:35 -0600
Message-Id: <20190620161240.22738-24-logang@deltatee.com>
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
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [RFC PATCH 23/28] nvme-pci: Remove support for PCI_P2PDMA requests
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091259_627031_A13CC6BE 
X-CRM114-Status: GOOD (  14.58  )
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

These requests have been superseded by dma-direct requests and are
therefore no longer needed.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/host/core.c |  2 --
 drivers/nvme/host/nvme.h |  3 +--
 drivers/nvme/host/pci.c  | 27 ++++++++++-----------------
 3 files changed, 11 insertions(+), 21 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8e876417c44b..63d132c478b4 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3257,8 +3257,6 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	}
 
 	blk_queue_flag_set(QUEUE_FLAG_NONROT, ns->queue);
-	if (ctrl->ops->flags & NVME_F_PCI_P2PDMA)
-		blk_queue_flag_set(QUEUE_FLAG_PCI_P2PDMA, ns->queue);
 	if (ctrl->ops->flags & NVME_F_DMA_DIRECT)
 		blk_queue_flag_set(QUEUE_FLAG_DMA_DIRECT, ns->queue);
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index f1dddc95c6a8..d103cecc14dd 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -361,8 +361,7 @@ struct nvme_ctrl_ops {
 	unsigned int flags;
 #define NVME_F_FABRICS			(1 << 0)
 #define NVME_F_METADATA_SUPPORTED	(1 << 1)
-#define NVME_F_PCI_P2PDMA		(1 << 2)
-#define NVME_F_DMA_DIRECT		(1 << 3)
+#define NVME_F_DMA_DIRECT		(1 << 2)
 	int (*reg_read32)(struct nvme_ctrl *ctrl, u32 off, u32 *val);
 	int (*reg_write32)(struct nvme_ctrl *ctrl, u32 off, u32 val);
 	int (*reg_read64)(struct nvme_ctrl *ctrl, u32 off, u64 *val);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 5957f3a4f261..7f806e76230a 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -564,9 +564,8 @@ static void nvme_unmap_data(struct nvme_dev *dev, struct request *req)
 
 	WARN_ON_ONCE(!iod->nents);
 
-	/* P2PDMA requests do not need to be unmapped */
-	if (!is_pci_p2pdma_page(sg_page(iod->sg)) &&
-	    !blk_rq_is_dma_direct(req))
+	/* DMA direct requests do not need to be unmapped */
+	if (!blk_rq_is_dma_direct(req))
 		dma_unmap_sg(dev->dev, iod->sg, iod->nents, rq_dma_dir(req));
 
 
@@ -828,16 +827,14 @@ static blk_status_t nvme_map_data(struct nvme_dev *dev, struct request *req,
 	if (blk_rq_nr_phys_segments(req) == 1 && !blk_rq_is_dma_direct(req)) {
 		struct bio_vec bv = req_bvec(req);
 
-		if (!is_pci_p2pdma_page(bv.bv_page)) {
-			if (bv.bv_offset + bv.bv_len <= dev->ctrl.page_size * 2)
-				return nvme_setup_prp_simple(dev, req,
-							     &cmnd->rw, &bv);
+		if (bv.bv_offset + bv.bv_len <= dev->ctrl.page_size * 2)
+			return nvme_setup_prp_simple(dev, req,
+						     &cmnd->rw, &bv);
 
-			if (iod->nvmeq->qid &&
-			    dev->ctrl.sgls & ((1 << 0) | (1 << 1)))
-				return nvme_setup_sgl_simple(dev, req,
-							     &cmnd->rw, &bv);
-		}
+		if (iod->nvmeq->qid &&
+		    dev->ctrl.sgls & ((1 << 0) | (1 << 1)))
+			return nvme_setup_sgl_simple(dev, req,
+						     &cmnd->rw, &bv);
 	}
 
 	iod->dma_len = 0;
@@ -849,10 +846,7 @@ static blk_status_t nvme_map_data(struct nvme_dev *dev, struct request *req,
 	if (!iod->nents)
 		goto out;
 
-	if (is_pci_p2pdma_page(sg_page(iod->sg)))
-		nr_mapped = pci_p2pdma_map_sg(dev->dev, iod->sg, iod->nents,
-					      rq_dma_dir(req));
-	else if (blk_rq_is_dma_direct(req))
+	if (blk_rq_is_dma_direct(req))
 		nr_mapped = iod->nents;
 	else
 		nr_mapped = dma_map_sg_attrs(dev->dev, iod->sg, iod->nents,
@@ -2642,7 +2636,6 @@ static const struct nvme_ctrl_ops nvme_pci_ctrl_ops = {
 	.name			= "pcie",
 	.module			= THIS_MODULE,
 	.flags			= NVME_F_METADATA_SUPPORTED |
-				  NVME_F_PCI_P2PDMA |
 				  NVME_F_DMA_DIRECT,
 	.reg_read32		= nvme_pci_reg_read32,
 	.reg_write32		= nvme_pci_reg_write32,
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
