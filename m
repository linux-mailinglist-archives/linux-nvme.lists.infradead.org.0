Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C7988A45B
	for <lists+linux-nvme@lfdr.de>; Mon, 12 Aug 2019 19:31:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o8HnzWoCf+wxXAokmt5y7QRlxK5SMvwKjTHPOFBXnDs=; b=nZ9X5bpkwLdVc8
	1jIrfMRMhjmwA2JXCbBlLA25jV57HDnOA1xLRoEWQ3ZlIkyeKOlIdaP6ne7iR4v+yoVHtr5y9XWWh
	S+0U063LP50GgGuitTfl/gA9xMomPHDot3oGBfyQBlSzmguPq2YmX9nPHdvlBVzkMAacYjAGjzRzu
	yTzbg1NboxDvgBl4nX6lMf8RXOrV7Np6zTuPMueFDy+XY+6rxlG4HxBun8dJnjTx6vpJVk1JipYtQ
	/JVltqF8dp/LRWIIrH5x6COEAxzkSIuXL48Y3sTybm3i8ADWeyQt9FXp43021QpSrGxppu4RHszUv
	Z/cI2uAmLcJrQMzlGbsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxEAE-0006gW-9W; Mon, 12 Aug 2019 17:31:22 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE9q-0006S4-IS
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 17:31:01 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9l-0002sc-OC; Mon, 12 Aug 2019 11:30:56 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9j-0002PX-Hv; Mon, 12 Aug 2019 11:30:51 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 12 Aug 2019 11:30:43 -0600
Message-Id: <20190812173048.9186-10-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190812173048.9186-1-logang@deltatee.com>
References: <20190812173048.9186-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-rdma@vger.kernel.org, bhelgaas@google.com,
 hch@lst.de, Christian.Koenig@amd.com, jgg@mellanox.com, sagi@grimberg.me,
 kbusch@kernel.org, axboe@fb.com, dan.j.williams@intel.com, epilmore@gigaio.com,
 sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_FREE,MYRULES_NO_TEXT autolearn=no autolearn_force=no
 version=3.4.2
Subject: [PATCH v3 09/14] PCI/P2PDMA: Introduce pci_p2pdma_unmap_sg()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_103058_664981_01227B5E 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 Christian Koenig <Christian.Koenig@amd.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Jason Gunthorpe <jgg@mellanox.com>,
 Stephen Bates <sbates@raithlin.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Eric Pilmore <epilmore@gigaio.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Add pci_p2pdma_unmap_sg() to the two places that call pci_p2pdma_map_sg().

This is a prep patch to introduce correct mappings for p2pdma transactions
that go through the root complex.

Link: https://lore.kernel.org/r/20190730163545.4915-10-logang@deltatee.com
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/infiniband/core/rw.c |  6 ++++--
 drivers/nvme/host/pci.c      |  6 ++++--
 drivers/pci/p2pdma.c         | 18 +++++++++++++++++-
 include/linux/pci-p2pdma.h   | 13 +++++++++++++
 4 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/infiniband/core/rw.c b/drivers/infiniband/core/rw.c
index dce06108c8c3..5337393d4dfe 100644
--- a/drivers/infiniband/core/rw.c
+++ b/drivers/infiniband/core/rw.c
@@ -583,8 +583,10 @@ void rdma_rw_ctx_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
 		break;
 	}
 
-	/* P2PDMA contexts do not need to be unmapped */
-	if (!is_pci_p2pdma_page(sg_page(sg)))
+	if (is_pci_p2pdma_page(sg_page(sg)))
+		pci_p2pdma_unmap_sg(qp->pd->device->dma_device, sg,
+				    sg_cnt, dir);
+	else
 		ib_dma_unmap_sg(qp->pd->device, sg, sg_cnt, dir);
 }
 EXPORT_SYMBOL(rdma_rw_ctx_destroy);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index f97bb031228a..0f92cca7a860 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -547,8 +547,10 @@ static void nvme_unmap_data(struct nvme_dev *dev, struct request *req)
 
 	WARN_ON_ONCE(!iod->nents);
 
-	/* P2PDMA requests do not need to be unmapped */
-	if (!is_pci_p2pdma_page(sg_page(iod->sg)))
+	if (is_pci_p2pdma_page(sg_page(iod->sg)))
+		pci_p2pdma_unmap_sg(dev->dev, iod->sg, iod->nents,
+				    rq_dma_dir(req));
+	else
 		dma_unmap_sg(dev->dev, iod->sg, iod->nents, rq_dma_dir(req));
 
 
diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index 94fbacbcbbd0..1eec7a5ec27e 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -800,7 +800,8 @@ EXPORT_SYMBOL_GPL(pci_p2pmem_publish);
  * @dir: DMA direction
  * @attrs: DMA attributes passed to dma_map_sg() (if called)
  *
- * Scatterlists mapped with this function should not be unmapped in any way.
+ * Scatterlists mapped with this function should be unmapped using
+ * pci_p2pdma_unmap_sg_attrs().
  *
  * Returns the number of SG entries mapped or 0 on error.
  */
@@ -834,6 +835,21 @@ int pci_p2pdma_map_sg_attrs(struct device *dev, struct scatterlist *sg,
 }
 EXPORT_SYMBOL_GPL(pci_p2pdma_map_sg_attrs);
 
+/**
+ * pci_p2pdma_unmap_sg - unmap a PCI peer-to-peer scatterlist that was
+ *	mapped with pci_p2pdma_map_sg()
+ * @dev: device doing the DMA request
+ * @sg: scatter list to map
+ * @nents: number of elements returned by pci_p2pdma_map_sg()
+ * @dir: DMA direction
+ * @attrs: DMA attributes passed to dma_unmap_sg() (if called)
+ */
+void pci_p2pdma_unmap_sg_attrs(struct device *dev, struct scatterlist *sg,
+		int nents, enum dma_data_direction dir, unsigned long attrs)
+{
+}
+EXPORT_SYMBOL_GPL(pci_p2pdma_unmap_sg_attrs);
+
 /**
  * pci_p2pdma_enable_store - parse a configfs/sysfs attribute store
  *		to enable p2pdma
diff --git a/include/linux/pci-p2pdma.h b/include/linux/pci-p2pdma.h
index 7fd51954f93a..8318a97c9c61 100644
--- a/include/linux/pci-p2pdma.h
+++ b/include/linux/pci-p2pdma.h
@@ -32,6 +32,8 @@ void pci_p2pmem_free_sgl(struct pci_dev *pdev, struct scatterlist *sgl);
 void pci_p2pmem_publish(struct pci_dev *pdev, bool publish);
 int pci_p2pdma_map_sg_attrs(struct device *dev, struct scatterlist *sg,
 		int nents, enum dma_data_direction dir, unsigned long attrs);
+void pci_p2pdma_unmap_sg_attrs(struct device *dev, struct scatterlist *sg,
+		int nents, enum dma_data_direction dir, unsigned long attrs);
 int pci_p2pdma_enable_store(const char *page, struct pci_dev **p2p_dev,
 			    bool *use_p2pdma);
 ssize_t pci_p2pdma_enable_show(char *page, struct pci_dev *p2p_dev,
@@ -87,6 +89,11 @@ static inline int pci_p2pdma_map_sg_attrs(struct device *dev,
 {
 	return 0;
 }
+static inline void pci_p2pdma_unmap_sg_attrs(struct device *dev,
+		struct scatterlist *sg, int nents, enum dma_data_direction dir,
+		unsigned long attrs)
+{
+}
 static inline int pci_p2pdma_enable_store(const char *page,
 		struct pci_dev **p2p_dev, bool *use_p2pdma)
 {
@@ -118,4 +125,10 @@ static inline int pci_p2pdma_map_sg(struct device *dev, struct scatterlist *sg,
 	return pci_p2pdma_map_sg_attrs(dev, sg, nents, dir, 0);
 }
 
+static inline void pci_p2pdma_unmap_sg(struct device *dev,
+		struct scatterlist *sg, int nents, enum dma_data_direction dir)
+{
+	pci_p2pdma_unmap_sg_attrs(dev, sg, nents, dir, 0);
+}
+
 #endif /* _LINUX_PCI_P2P_H */
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
