Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95DD08A45A
	for <lists+linux-nvme@lfdr.de>; Mon, 12 Aug 2019 19:31:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Bo9YovMofqpB9TJ36sP9dSknRPS0j3Ur+ptTM+xhAY=; b=EePTdcdkKZ0BsI
	2ZPUdjtfrK//2Itx885hf74X8ePrJZq6nYGVzKZNVpV6/NkFktD6k2yt7jGLWiFojgPT8w8a8IbMF
	Wwv3J9JV43Dqnxjyh9MBBo9aDD6w4gzGmYwYAUSrHUrpx23VpyUJt5jivEqK+keLLDxhMs0PUkhHA
	4iRJ+M4WA/KUvS4ZrmDmjqT4L6GJkplst38e0BzIh4ZT3LZuMsbLx1hIbomr7BoKefy7VE0hc0SsB
	KlyimDLRLVDZfIDNlIDXccLj2nOkq4ZRNHMZAjpv4nq1aauyEoemqjYw0fSO4MOmqJFrCgdL2AIpL
	heGj0ClIIdOTZ0j3u8TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxEA2-0006W7-Pu; Mon, 12 Aug 2019 17:31:11 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxE9q-0006S3-IO
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 17:31:01 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9l-0002sh-OD; Mon, 12 Aug 2019 11:30:56 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hxE9j-0002Pj-To; Mon, 12 Aug 2019 11:30:51 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-rdma@vger.kernel.org
Date: Mon, 12 Aug 2019 11:30:47 -0600
Message-Id: <20190812173048.9186-14-logang@deltatee.com>
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
Subject: [PATCH v3 13/14] PCI/P2PDMA: Allow IOMMU for host bridge whitelist
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_103058_658632_6ECA9351 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
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

Now that we map the requests correctly we can remove the iommu_present()
restriction.

Link: https://lore.kernel.org/r/20190730163545.4915-14-logang@deltatee.com
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/p2pdma.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
index bca1ffc7075e..d8c824097d26 100644
--- a/drivers/pci/p2pdma.c
+++ b/drivers/pci/p2pdma.c
@@ -18,7 +18,6 @@
 #include <linux/percpu-refcount.h>
 #include <linux/random.h>
 #include <linux/seq_buf.h>
-#include <linux/iommu.h>
 #include <linux/xarray.h>
 
 enum pci_p2pdma_map_type {
@@ -328,9 +327,6 @@ static bool host_bridge_whitelist(struct pci_dev *a, struct pci_dev *b)
 	struct pci_host_bridge *host_a = pci_find_host_bridge(a->bus);
 	struct pci_host_bridge *host_b = pci_find_host_bridge(b->bus);
 
-	if (iommu_present(a->dev.bus) || iommu_present(b->dev.bus))
-		return false;
-
 	if (host_a == host_b)
 		return __host_bridge_whitelist(host_a, true);
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
