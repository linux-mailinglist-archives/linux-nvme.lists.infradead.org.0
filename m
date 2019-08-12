Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A994C8A45F
	for <lists+linux-nvme@lfdr.de>; Mon, 12 Aug 2019 19:32:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AoE9Tf2WO/cRSQxpN9VEaF+NhSkdSoh4vdse9O7TJB4=; b=FKs2B5IqW+aMXv
	NCcpfjckKdQB5kujwkXRFMC8QklaGTSQoWSbI7Kh7HIcoW0uJoTpVAqTItHIiEqP/440DJ7D1iKxT
	WLXTwViXlkLHiMQ8/nWGCGB1yNEzOVJzVc1ytAxc65DXGhl9AMQuhfMYRAz10dv4X9/pH4FJNHbaU
	7gXVmP/Jdfm8Zsto8r/jtdagmo6abEIFARPjszw4OPdOo7l3Zx+/jpFI+b0BrpZMLj7pvz7YrTYSb
	gK10X13vawb6P+KDRcW6K0AJMwXIuseVdhPcICfX/tB9mu3H1z8hvPMpzLI9fawUsUTGoV7QlrzRb
	56XiOqzp5l6SMIk7dCaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxEB5-0007b5-7T; Mon, 12 Aug 2019 17:32:15 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE9r-0006Tb-SO
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 17:31:04 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9o-0002sg-WC; Mon, 12 Aug 2019 11:30:58 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9j-0002Pg-R6; Mon, 12 Aug 2019 11:30:51 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 12 Aug 2019 11:30:46 -0600
Message-Id: <20190812173048.9186-13-logang@deltatee.com>
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
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH v3 12/14] PCI/P2PDMA: dma_map() requests that traverse the
 host bridge
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_103100_260940_35A9A5B0 
X-CRM114-Status: GOOD (  11.82  )
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

Any requests that traverse the host bridge will need to be mapped into the
IOMMU, so call dma_map_sg() inside pci_p2pdma_map_sg() when appropriate.

Similarly, call dma_unmap_sg() inside pci_p2pdma_unmap_sg().

Link: https://lore.kernel.org/r/20190730163545.4915-13-logang@deltatee.com
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/p2pdma.c | 40 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 39 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index db8224ff6e80..bca1ffc7075e 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -807,6 +807,16 @@ void pci_p2pmem_publish(struct pci_dev *pdev, bool publish)
 }
 EXPORT_SYMBOL_GPL(pci_p2pmem_publish);
 
+static enum pci_p2pdma_map_type pci_p2pdma_map_type(struct pci_dev *provider,
+						    struct pci_dev *client)
+{
+	if (!provider->p2pdma)
+		return PCI_P2PDMA_MAP_NOT_SUPPORTED;
+
+	return xa_to_value(xa_load(&provider->p2pdma->map_types,
+				   map_types_idx(client)));
+}
+
 static int __pci_p2pdma_map_sg(struct pci_p2pdma_pagemap *p2p_pgmap,
 		struct device *dev, struct scatterlist *sg, int nents)
 {
@@ -852,8 +862,22 @@ int pci_p2pdma_map_sg_attrs(struct device *dev, struct scatterlist *sg,
 {
 	struct pci_p2pdma_pagemap *p2p_pgmap =
 		to_p2p_pgmap(sg_page(sg)->pgmap);
+	struct pci_dev *client;
 
-	return __pci_p2pdma_map_sg(p2p_pgmap, dev, sg, nents);
+	if (WARN_ON_ONCE(!dev_is_pci(dev)))
+		return 0;
+
+	client = to_pci_dev(dev);
+
+	switch (pci_p2pdma_map_type(p2p_pgmap->provider, client)) {
+	case PCI_P2PDMA_MAP_THRU_HOST_BRIDGE:
+		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
+	case PCI_P2PDMA_MAP_BUS_ADDR:
+		return __pci_p2pdma_map_sg(p2p_pgmap, dev, sg, nents);
+	default:
+		WARN_ON_ONCE(1);
+		return 0;
+	}
 }
 EXPORT_SYMBOL_GPL(pci_p2pdma_map_sg_attrs);
 
@@ -869,6 +893,20 @@ EXPORT_SYMBOL_GPL(pci_p2pdma_map_sg_attrs);
 void pci_p2pdma_unmap_sg_attrs(struct device *dev, struct scatterlist *sg,
 		int nents, enum dma_data_direction dir, unsigned long attrs)
 {
+	struct pci_p2pdma_pagemap *p2p_pgmap =
+		to_p2p_pgmap(sg_page(sg)->pgmap);
+	enum pci_p2pdma_map_type map_type;
+	struct pci_dev *client;
+
+	if (WARN_ON_ONCE(!dev_is_pci(dev)))
+		return;
+
+	client = to_pci_dev(dev);
+
+	map_type = pci_p2pdma_map_type(p2p_pgmap->provider, client);
+
+	if (map_type == PCI_P2PDMA_MAP_THRU_HOST_BRIDGE)
+		dma_unmap_sg_attrs(dev, sg, nents, dir, attrs);
 }
 EXPORT_SYMBOL_GPL(pci_p2pdma_unmap_sg_attrs);
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
