Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 39D7F8A47B
	for <lists+linux-nvme@lfdr.de>; Mon, 12 Aug 2019 19:32:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eGf9tAU90mF4ZUce3J1/OHzZFH76J65wvGKF89BFQJs=; b=R3cv92CSzkcXsX
	nkzDD9Yu7yXjWL0ojW8RGkErJUeUVm5PN387QEGw25mpnKIWB42V5er257W0wa52Qs1l5sPefIDWy
	0q4jGmw0N5jMrILityYKf2//3MMO5BVhKcYRurCP8NpM6gdGUrPgf1zatB3J8pbv8HbtDM+bGyHwk
	6EEfz3FqNCq0ckR026qZN2DVB/o++BNyAbBsgAxQ5shmXlgl/ytlro6E5WGpjBzhL0GU9KTKHoA4Y
	o521w6tr72/fMFnrD3IOCkql+qRHomnvuIBhsMfOFdUO2luL97fNo+5qS30AWVwN0gtNnse64ANgB
	HvLkS5jPauQz/oiywpxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxEBS-0007wQ-US; Mon, 12 Aug 2019 17:32:39 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE9s-0006Tc-0A
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 17:31:04 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9o-0002se-TU; Mon, 12 Aug 2019 11:30:59 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9j-0002Pd-No; Mon, 12 Aug 2019 11:30:51 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 12 Aug 2019 11:30:45 -0600
Message-Id: <20190812173048.9186-12-logang@deltatee.com>
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
Subject: [PATCH v3 11/14] PCI/P2PDMA: Store mapping method in an xarray
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_103100_366774_9E5DD6C3 
X-CRM114-Status: GOOD (  12.35  )
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

When upstream_bridge_distance() is called, store the method required to map
the DMA transfers in an xarray so it can be looked up efficiently on the
hot path in pci_p2pdma_map_sg().

Link: https://lore.kernel.org/r/20190730163545.4915-12-logang@deltatee.com
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/p2pdma.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index 771b45605853..db8224ff6e80 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -19,6 +19,7 @@
 #include <linux/random.h>
 #include <linux/seq_buf.h>
 #include <linux/iommu.h>
+#include <linux/xarray.h>
 
 enum pci_p2pdma_map_type {
 	PCI_P2PDMA_MAP_UNKNOWN = 0,
@@ -30,6 +31,7 @@ enum pci_p2pdma_map_type {
 struct pci_p2pdma {
 	struct gen_pool *pool;
 	bool p2pmem_published;
+	struct xarray map_types;
 };
 
 struct pci_p2pdma_pagemap {
@@ -105,6 +107,7 @@ static void pci_p2pdma_release(void *data)
 
 	gen_pool_destroy(p2pdma->pool);
 	sysfs_remove_group(&pdev->dev.kobj, &p2pmem_group);
+	xa_destroy(&p2pdma->map_types);
 }
 
 static int pci_p2pdma_setup(struct pci_dev *pdev)
@@ -116,6 +119,8 @@ static int pci_p2pdma_setup(struct pci_dev *pdev)
 	if (!p2p)
 		return -ENOMEM;
 
+	xa_init(&p2p->map_types);
+
 	p2p->pool = gen_pool_create(PAGE_SHIFT, dev_to_node(&pdev->dev));
 	if (!p2p->pool)
 		goto out;
@@ -409,6 +414,12 @@ __upstream_bridge_distance(struct pci_dev *provider, struct pci_dev *client,
 	return PCI_P2PDMA_MAP_BUS_ADDR;
 }
 
+static unsigned long map_types_idx(struct pci_dev *client)
+{
+	return (pci_domain_nr(client->bus) << 16) |
+		(client->bus->number << 8) | client->devfn;
+}
+
 /*
  * Find the distance through the nearest common upstream bridge between
  * two PCI devices.
@@ -459,9 +470,13 @@ upstream_bridge_distance(struct pci_dev *provider, struct pci_dev *client,
 
 	if (map_type == PCI_P2PDMA_MAP_THRU_HOST_BRIDGE) {
 		if (!host_bridge_whitelist(provider, client))
-			return PCI_P2PDMA_MAP_NOT_SUPPORTED;
+			map_type = PCI_P2PDMA_MAP_NOT_SUPPORTED;
 	}
 
+	if (provider->p2pdma)
+		xa_store(&provider->p2pdma->map_types, map_types_idx(client),
+			 xa_mk_value(map_type), GFP_KERNEL);
+
 	return map_type;
 }
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
