Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BA1B4D383
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:19:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yPmUQ0VpkpMKTEpjuakmg+g8/sBr3ajYPfe6jNdKsxQ=; b=nZ5+xd0QyBqoS6
	5/zVtnwCoUDgp3MMG7/1Z7qedvrbGjkWcOuDnnH6yim+L0nLkdz9rkaLm0BLoWGHjIKPcszhMinqg
	KfTr/ihfilk4NViNH66urCllFopLdTQOlnMhEcKX1qxnVThsLF5W9i+vadSzmFMoMYyAgi7zZGryb
	fsuqgIOioSaD5JrnTd2H8mLMoIABkPk/ruLmLTFNuXt+n2cuHL4QDlWYFJPWL5xYNVx1qXdm743m6
	8vhrtGX1kCJ7Kf86dVigeHDKBLXp0E0Rw6xlf6+vt4NTqN9WQ6JjWvw8CkLt0ntf0sku1N9qW9co8
	cY2q0BYHlUHzLP+RW2+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzmm-0002bI-Pu; Thu, 20 Jun 2019 16:19:41 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgL-0004nn-Sl
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:06 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg9-00046H-Dg; Thu, 20 Jun 2019 10:13:00 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-0005x9-Lr; Thu, 20 Jun 2019 10:12:46 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:38 -0600
Message-Id: <20190620161240.22738-27-logang@deltatee.com>
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
Subject: [RFC PATCH 26/28] PCI/P2PDMA: Remove SGL helpers
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091301_999869_A0DD8910 
X-CRM114-Status: GOOD (  16.94  )
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

The functions, pci_p2pmem_alloc_sgl(), pci_p2pmem_free_sgl() and
pci_p2pdma_map_sg() no longer have any callers, so remove them.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 Documentation/driver-api/pci/p2pdma.rst |  9 +--
 drivers/pci/p2pdma.c                    | 95 -------------------------
 include/linux/pci-p2pdma.h              | 19 -----
 3 files changed, 3 insertions(+), 120 deletions(-)

diff --git a/Documentation/driver-api/pci/p2pdma.rst b/Documentation/driver-api/pci/p2pdma.rst
index 44deb52beeb4..5b19c420d921 100644
--- a/Documentation/driver-api/pci/p2pdma.rst
+++ b/Documentation/driver-api/pci/p2pdma.rst
@@ -84,9 +84,8 @@ Client Drivers
 --------------
 
 A client driver typically only has to conditionally change its DMA map
-routine to use the mapping function :c:func:`pci_p2pdma_map_sg()` instead
-of the usual :c:func:`dma_map_sg()` function. Memory mapped in this
-way does not need to be unmapped.
+routine to use the PCI bus address with :c:func:`pci_p2pmem_virt_to_bus()`
+for the DMA address instead of the usual :c:func:`dma_map_sg()` function.
 
 The client may also, optionally, make use of
 :c:func:`is_pci_p2pdma_page()` to determine when to use the P2P mapping
@@ -117,9 +116,7 @@ returned with pci_dev_put().
 
 Once a provider is selected, the orchestrator can then use
 :c:func:`pci_alloc_p2pmem()` and :c:func:`pci_free_p2pmem()` to
-allocate P2P memory from the provider. :c:func:`pci_p2pmem_alloc_sgl()`
-and :c:func:`pci_p2pmem_free_sgl()` are convenience functions for
-allocating scatter-gather lists with P2P memory.
+allocate P2P memory from the provider.
 
 Struct Page Caveats
 -------------------
diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index a98126ad9c3a..9b82e13f802c 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -666,60 +666,6 @@ pci_bus_addr_t pci_p2pmem_virt_to_bus(struct pci_dev *pdev, void *addr)
 }
 EXPORT_SYMBOL_GPL(pci_p2pmem_virt_to_bus);
 
-/**
- * pci_p2pmem_alloc_sgl - allocate peer-to-peer DMA memory in a scatterlist
- * @pdev: the device to allocate memory from
- * @nents: the number of SG entries in the list
- * @length: number of bytes to allocate
- *
- * Return: %NULL on error or &struct scatterlist pointer and @nents on success
- */
-struct scatterlist *pci_p2pmem_alloc_sgl(struct pci_dev *pdev,
-					 unsigned int *nents, u32 length)
-{
-	struct scatterlist *sg;
-	void *addr;
-
-	sg = kzalloc(sizeof(*sg), GFP_KERNEL);
-	if (!sg)
-		return NULL;
-
-	sg_init_table(sg, 1);
-
-	addr = pci_alloc_p2pmem(pdev, length);
-	if (!addr)
-		goto out_free_sg;
-
-	sg_set_buf(sg, addr, length);
-	*nents = 1;
-	return sg;
-
-out_free_sg:
-	kfree(sg);
-	return NULL;
-}
-EXPORT_SYMBOL_GPL(pci_p2pmem_alloc_sgl);
-
-/**
- * pci_p2pmem_free_sgl - free a scatterlist allocated by pci_p2pmem_alloc_sgl()
- * @pdev: the device to allocate memory from
- * @sgl: the allocated scatterlist
- */
-void pci_p2pmem_free_sgl(struct pci_dev *pdev, struct scatterlist *sgl)
-{
-	struct scatterlist *sg;
-	int count;
-
-	for_each_sg(sgl, sg, INT_MAX, count) {
-		if (!sg)
-			break;
-
-		pci_free_p2pmem(pdev, sg_virt(sg), sg->length);
-	}
-	kfree(sgl);
-}
-EXPORT_SYMBOL_GPL(pci_p2pmem_free_sgl);
-
 /**
  * pci_p2pmem_publish - publish the peer-to-peer DMA memory for use by
  *	other devices with pci_p2pmem_find()
@@ -738,47 +684,6 @@ void pci_p2pmem_publish(struct pci_dev *pdev, bool publish)
 }
 EXPORT_SYMBOL_GPL(pci_p2pmem_publish);
 
-/**
- * pci_p2pdma_map_sg - map a PCI peer-to-peer scatterlist for DMA
- * @dev: device doing the DMA request
- * @sg: scatter list to map
- * @nents: elements in the scatterlist
- * @dir: DMA direction
- *
- * Scatterlists mapped with this function should not be unmapped in any way.
- *
- * Returns the number of SG entries mapped or 0 on error.
- */
-int pci_p2pdma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
-		      enum dma_data_direction dir)
-{
-	struct dev_pagemap *pgmap;
-	struct scatterlist *s;
-	phys_addr_t paddr;
-	int i;
-
-	/*
-	 * p2pdma mappings are not compatible with devices that use
-	 * dma_virt_ops. If the upper layers do the right thing
-	 * this should never happen because it will be prevented
-	 * by the check in pci_p2pdma_add_client()
-	 */
-	if (WARN_ON_ONCE(IS_ENABLED(CONFIG_DMA_VIRT_OPS) &&
-			 dev->dma_ops == &dma_virt_ops))
-		return 0;
-
-	for_each_sg(sg, s, nents, i) {
-		pgmap = sg_page(s)->pgmap;
-		paddr = sg_phys(s);
-
-		s->dma_address = paddr - pgmap->pci_p2pdma_bus_offset;
-		sg_dma_len(s) = s->length;
-	}
-
-	return nents;
-}
-EXPORT_SYMBOL_GPL(pci_p2pdma_map_sg);
-
 /**
  * pci_p2pdma_enable_store - parse a configfs/sysfs attribute store
  *		to enable p2pdma
diff --git a/include/linux/pci-p2pdma.h b/include/linux/pci-p2pdma.h
index bca9bc3e5be7..4a75a3f43444 100644
--- a/include/linux/pci-p2pdma.h
+++ b/include/linux/pci-p2pdma.h
@@ -26,12 +26,7 @@ struct pci_dev *pci_p2pmem_find_many(struct device **clients, int num_clients);
 void *pci_alloc_p2pmem(struct pci_dev *pdev, size_t size);
 void pci_free_p2pmem(struct pci_dev *pdev, void *addr, size_t size);
 pci_bus_addr_t pci_p2pmem_virt_to_bus(struct pci_dev *pdev, void *addr);
-struct scatterlist *pci_p2pmem_alloc_sgl(struct pci_dev *pdev,
-					 unsigned int *nents, u32 length);
-void pci_p2pmem_free_sgl(struct pci_dev *pdev, struct scatterlist *sgl);
 void pci_p2pmem_publish(struct pci_dev *pdev, bool publish);
-int pci_p2pdma_map_sg(struct device *dev, struct scatterlist *sg, int nents,
-		      enum dma_data_direction dir);
 int pci_p2pdma_enable_store(const char *page, struct pci_dev **p2p_dev,
 			    bool *use_p2pdma);
 ssize_t pci_p2pdma_enable_show(char *page, struct pci_dev *p2p_dev,
@@ -69,23 +64,9 @@ static inline pci_bus_addr_t pci_p2pmem_virt_to_bus(struct pci_dev *pdev,
 {
 	return 0;
 }
-static inline struct scatterlist *pci_p2pmem_alloc_sgl(struct pci_dev *pdev,
-		unsigned int *nents, u32 length)
-{
-	return NULL;
-}
-static inline void pci_p2pmem_free_sgl(struct pci_dev *pdev,
-		struct scatterlist *sgl)
-{
-}
 static inline void pci_p2pmem_publish(struct pci_dev *pdev, bool publish)
 {
 }
-static inline int pci_p2pdma_map_sg(struct device *dev,
-		struct scatterlist *sg, int nents, enum dma_data_direction dir)
-{
-	return 0;
-}
 static inline int pci_p2pdma_enable_store(const char *page,
 		struct pci_dev **p2p_dev, bool *use_p2pdma)
 {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
