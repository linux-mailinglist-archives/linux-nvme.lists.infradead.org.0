Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DAF684664
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 09:54:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7eiFHnCagr/HYgYajWqkHBKHUnPNTgL4QPLs2Ytrtus=; b=UtYGSmG/sHd6SqIZSL3DsVIakY
	8+OkzoXLaYWHtCFva4P0iYEkU9A8J802MGwOIldbnbLcav0Ev9J1fuxzBWX5ysR2PhSWPilzwHEpy
	bjrJYMIMWftkgjWN356HrBQHFz239km+e9Jk5Ul6SfoounDLUKh1A1JETh1DCver2M+7fYpnCTr32
	takNcN5XoaCXtGMUWtTPxFtMzk6eHxrkITwqmvisQJw2Ag30I84+wg+f/WVMBvJvuyRQqyakwqdpo
	wzQpmPGgSWixqRAX660Hg120cthtZOvml+WfKJMtxOqpyEPZ2/jnOjRd+3UoZMS1GENDswVEc/vjN
	sRLfeU2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvGlm-0007oq-SG; Wed, 07 Aug 2019 07:54:03 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvGjk-0006gk-VO
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 07:52:01 +0000
Received: from ufdda393ec48b57.ant.amazon.com (localhost.localdomain
 [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x777pPaM021791;
 Wed, 7 Aug 2019 02:51:37 -0500
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v4 3/4] nvme-pci: Add support for Apple 2018+ models
Date: Wed,  7 Aug 2019 17:51:21 +1000
Message-Id: <20190807075122.6247-4-benh@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190807075122.6247-1-benh@kernel.crashing.org>
References: <20190807075122.6247-1-benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_005157_223012_32E175D4 
X-CRM114-Status: GOOD (  12.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>
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
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/nvme.h | 10 ++++++++++
 drivers/nvme/host/pci.c  | 21 ++++++++++++++++++++-
 2 files changed, 30 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 8dc010ca30e5..0925f7fc13ff 100644
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
index 78a660e229d9..c683263cdf60 100644
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
@@ -2321,7 +2328,16 @@ static int nvme_pci_enable(struct nvme_dev *dev)
 	dev->ctrl.sqsize = dev->q_depth - 1; /* 0's based queue depth */
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
