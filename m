Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 077E870D27
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 01:11:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XP4YnqmtlbxM0V9J6pt+ixkobaW7EjoVx5G/i4JT9qo=; b=bemWCrkABrf9aw
	cXwPQQlzOIBNPO1An1ypeaefwsicI1iSB4IMjly9+KgUy43Sp/Cx3fQc/9AQIMxw1dqQNrGOaFe7z
	M6odZdvpW0iY0Bkuzc+OyoO9EJhXC7FnnqStluMuzJQBeAyF/31UHkjCVA9Fl4qcW1Ep+d1zu7X37
	tZcU7UqrR4Lr+pPNNl0qcXEU3Dcylx8B9LdX9vbWTd345KN0r8aHORXK2xwIHT3jFdYZhBS+ikl3o
	RGhoJ79ga3jY3Ievmr65a4ootdCMGn3s2G3G7s+K/eYyjsy5VA46wRjNwAfuY/LPiH9dl4vyvGLHR
	mpVu4Fdw6BI79I7q51jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hphSu-0003Ne-0h; Mon, 22 Jul 2019 23:11:32 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hphQh-00015E-5p
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 23:09:18 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hphQb-0002k9-Dj; Mon, 22 Jul 2019 17:09:11 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hphQX-0001RH-V5; Mon, 22 Jul 2019 17:09:06 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 22 Jul 2019 17:08:59 -0600
Message-Id: <20190722230859.5436-15-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190722230859.5436-1-logang@deltatee.com>
References: <20190722230859.5436-1-logang@deltatee.com>
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
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH 14/14] PCI/P2PDMA: Introduce pci_p2pdma_[un]map_resource()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_160915_619405_3911B35B 
X-CRM114-Status: GOOD (  11.74  )
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

pci_p2pdma_[un]map_resource() can be used to map a resource given
it's physical address and the backing pci_dev. The functions will call
dma_[un]map_resource() when appropriate.

This is for demonstration purposes only as there are no users of this
function at this time. Thus, this patch should not be merged at
this time.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/pci/p2pdma.c | 85 ++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 85 insertions(+)

diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index baf476039396..20c834cfd2d3 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -874,6 +874,91 @@ void pci_p2pdma_unmap_sg_attrs(struct device *dev, struct scatterlist *sg,
 }
 EXPORT_SYMBOL_GPL(pci_p2pdma_unmap_sg_attrs);
 
+static pci_bus_addr_t pci_p2pdma_phys_to_bus(struct pci_dev *dev,
+		phys_addr_t start, size_t size)
+{
+	struct pci_host_bridge *bridge = pci_find_host_bridge(dev->bus);
+	phys_addr_t end = start + size;
+	struct resource_entry *window;
+
+	resource_list_for_each_entry(window, &bridge->windows) {
+		if (window->res->start <= start && window->res->end >= end)
+			return start - window->offset;
+	}
+
+	return DMA_MAPPING_ERROR;
+}
+EXPORT_SYMBOL_GPL(pci_p2pdma_phys_to_bus);
+
+/**
+ * pci_p2pdma_map_resource - map a PCI peer-to-peer physical address for DMA
+ * @provider: pci device that provides the memory backed by phys_addr
+ * @dma_dev: device doing the DMA request
+ * @phys_addr: physical address of the memory to map
+ * @size: size of the memory to map
+ * @dir: DMA direction
+ * @attrs: dma attributes passed to dma_map_resource() (if called)
+ *
+ * Maps a BAR physical address for programming a DMA engine.
+ *
+ * Returns the dma_addr_t to map or DMA_MAPPING_ERROR on failure
+ */
+dma_addr_t pci_p2pdma_map_resource(struct pci_dev *provider,
+		struct device *dma_dev, phys_addr_t phys_addr, size_t size,
+		enum dma_data_direction dir, unsigned long attrs)
+{
+	struct pci_dev *client;
+	int dist;
+
+	client = find_parent_pci_dev(dma_dev);
+	if (!client)
+		return DMA_MAPPING_ERROR;
+
+	dist = upstream_bridge_distance(provider, client, NULL);
+	if (dist & P2PDMA_NOT_SUPPORTED)
+		return DMA_MAPPING_ERROR;
+
+	if (dist & P2PDMA_THRU_HOST_BRIDGE)
+		return dma_map_resource(dma_dev, phys_addr, size, dir, attrs);
+	else
+		return pci_p2pdma_phys_to_bus(provider, phys_addr, size);
+}
+EXPORT_SYMBOL_GPL(pci_p2pdma_map_resource);
+
+/**
+ * pci_p2pdma_unmap_resource - unmap a resource mapped with
+ *		pci_p2pdma_map_resource()
+ * @provider: pci device that provides the memory backed by phys_addr
+ * @dma_dev: device doing the DMA request
+ * @addr: dma address returned by pci_p2pdma_unmap_resource()
+ * @size: size of the memory to map
+ * @dir: DMA direction
+ * @attrs: dma attributes passed to dma_unmap_resource() (if called)
+ *
+ * Maps a BAR physical address for programming a DMA engine.
+ *
+ * Returns the dma_addr_t to map or DMA_MAPPING_ERROR on failure
+ */
+void pci_p2pdma_unmap_resource(struct pci_dev *provider,
+		struct device *dma_dev, dma_addr_t addr, size_t size,
+		enum dma_data_direction dir, unsigned long attrs)
+{
+	struct pci_dev *client;
+	int dist;
+
+	client = find_parent_pci_dev(dma_dev);
+	if (!client)
+		return;
+
+	dist = upstream_bridge_distance(provider, client, NULL);
+	if (dist & P2PDMA_NOT_SUPPORTED)
+		return;
+
+	if (dist & P2PDMA_THRU_HOST_BRIDGE)
+		dma_unmap_resource(dma_dev, addr, size, dir, attrs);
+}
+EXPORT_SYMBOL_GPL(pci_p2pdma_unmap_resource);
+
 /**
  * pci_p2pdma_enable_store - parse a configfs/sysfs attribute store
  *		to enable p2pdma
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
