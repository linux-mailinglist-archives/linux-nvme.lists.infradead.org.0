Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A37F6B2E7
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 02:46:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VCc+mwvGgKKvBLqbwyC/mZuZ29k3sWkCLOPy1M0J+ao=; b=cXGJSh+ks9xe7raVDyleY679Qo
	eOXINLCmZS/Tw+bPYSouV5oNQuYPVmNDHSOZjXxkWsDQqAegkRtdQdTlG30LmJiIDQGkztp3KIWIY
	+E6SmUbzdfh5BxbVlXy+rUbZOzpVMJx2sxifxVQLP4n/PLEr09gG6jadKDgSdk2pTFptc+wZ8V7ii
	PwaIog5DpjJJ39NyJw2uN5MYJmWsB9FHc4xAGUfzidL1E3wqJqESUyhI/qEhNpbJuBhypPv8y7Ms7
	djYwpgPTtvpBCia/qFTdv10HES/F8p4aM8zKfJfjOUu1hw+hUEiO0VQiXtJeDEKhQRS4IrPl2BfpL
	Fw6dCMPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnY5M-0001ox-Sw; Wed, 17 Jul 2019 00:46:20 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnY4q-0001XV-RF
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 00:45:50 +0000
Received: from ufdda393ec48b57.ant.amazon.com (localhost.localdomain
 [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6H0jXnj032429;
 Tue, 16 Jul 2019 19:45:41 -0500
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 3/3] nvme-pci: Add support for Apple 2018+ models
Date: Wed, 17 Jul 2019 10:45:27 +1000
Message-Id: <20190717004527.30363-3-benh@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190717004527.30363-1-benh@kernel.crashing.org>
References: <20190717004527.30363-1-benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_174549_086773_620DE6FC 
X-CRM114-Status: GOOD (  12.49  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Based on reverse engineering and original patch by

Paul Pawlowski <paul@mrarm.io>

This adds support for Apple weird implementation of NVME in their
2018 or later machines. It accounts for the twice-as-big SQ entries
for the IO queues, and the fact that only interrupt vector 0 appears
to function properly.

Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>

# Conflicts:
#	drivers/nvme/host/core.c
---
 drivers/nvme/host/nvme.h | 10 ++++++++++
 drivers/nvme/host/pci.c  | 21 ++++++++++++++++++++-
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 716a876119c8..ced0e0a7e039 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -92,6 +92,16 @@ enum nvme_quirks {
 	 * Broken Write Zeroes.
 	 */
 	NVME_QUIRK_DISABLE_WRITE_ZEROES		= (1 << 9),
+
+	/*
+	 * Use only one interrupt vector for all queues
+	 */
+	NVME_QUIRK_SINGLE_VECTOR		= (1 << 10),
+
+	/*
+	 * Use non-standard 128 bytes SQEs.
+	 */
+	NVME_QUIRK_128_BYTES_SQES		= (1 << 11),
 };
 
 /*
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 1637677afb78..7088971d4c42 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2081,6 +2081,13 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 	dev->io_queues[HCTX_TYPE_DEFAULT] = 1;
 	dev->io_queues[HCTX_TYPE_READ] = 0;
 
+	/*
+	 * Some Apple controllers require all queues to use the
+	 * first vector.
+	 */
+	if (dev->ctrl.quirks & NVME_QUIRK_SINGLE_VECTOR)
+		irq_queues = 1;
+
 	return pci_alloc_irq_vectors_affinity(pdev, 1, irq_queues,
 			      PCI_IRQ_ALL_TYPES | PCI_IRQ_AFFINITY, &affd);
 }
@@ -2322,7 +2329,16 @@ static int nvme_pci_enable(struct nvme_dev *dev)
 				io_queue_depth);
 	dev->db_stride = 1 << NVME_CAP_STRIDE(dev->ctrl.cap);
 	dev->dbs = dev->bar + 4096;
-	dev->io_sqes = NVME_NVM_IOSQES;
+
+	/*
+	 * Some Apple controllers require a non-standard SQE size.
+	 * Interestingly they also seem to ignore the CC:IOSQES register
+	 * so we don't bother updating it here.
+	 */
+	if (dev->ctrl.quirks & NVME_QUIRK_128_BYTES_SQES)
+		dev->io_sqes = 7;
+	else
+		dev->io_sqes = NVME_NVM_IOSQES;
 
 	/*
 	 * Temporary fix for the Apple controller found in the MacBook8,1 and
@@ -3039,6 +3055,9 @@ static const struct pci_device_id nvme_id_table[] = {
 	{ PCI_DEVICE_CLASS(PCI_CLASS_STORAGE_EXPRESS, 0xffffff) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2001) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
+	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2005),
+		.driver_data = NVME_QUIRK_SINGLE_VECTOR |
+				NVME_QUIRK_128_BYTES_SQES },
 	{ 0, }
 };
 MODULE_DEVICE_TABLE(pci, nvme_id_table);
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
