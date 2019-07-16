Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 124E76A006
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 02:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=17tRvX+Z1PEK2oMqaCrhGa3v4WELvs+Fk2lI6N1eiDY=; b=hHWtpRLLWixKxYPhtKZaWhYV0r
	5g+qhHTmWNhgo4lHAlxxnohPv+H+/onBdpGf4O94tk5Vqlvg/REKvkzQWZJ3uRQzyvcxJ6VkTZwiu
	B8SVOd+kyI0SnixBBm8IL6GZ9eeQRR9fJeoHTdq3kBKNQnweMrz9NRXPvjY0+yi9tAUj7/Y1892RB
	57xXeXPG2S06/ubU1OmGL991ezuDsj5cwJZGPF/i5ChKQgXyCUmQ7ltCgccoUKfPxxxaJ+HYbKi6H
	PZ6N+zieyl4roVnu43X4Nmc2A57a6rByF8Ebh77/TuADfKVcN0irgvLSnXtst1BgW7arkv9dnydoo
	hRNsbNsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnBd0-0000k6-0v; Tue, 16 Jul 2019 00:47:34 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnBch-0000do-OW
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 00:47:17 +0000
Received: from ufdda393ec48b57.ant.amazon.com (localhost.localdomain
 [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6G0l1P7001806;
 Mon, 15 Jul 2019 19:47:09 -0500
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/3] nvme: Add support for Apple 2018+ models
Date: Tue, 16 Jul 2019 10:46:49 +1000
Message-Id: <20190716004649.17799-3-benh@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190716004649.17799-1-benh@kernel.crashing.org>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_174715_956932_6C5AA4D6 
X-CRM114-Status: GOOD (  11.67  )
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
---
 drivers/nvme/host/core.c |  5 ++++-
 drivers/nvme/host/nvme.h | 10 ++++++++++
 drivers/nvme/host/pci.c  |  6 ++++++
 3 files changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 716ebe87a2b8..480ea24d8cf4 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2701,7 +2701,10 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 		ctrl->hmmaxd = le16_to_cpu(id->hmmaxd);
 
 		/* Grab required IO queue size */
-		ctrl->iosqes = id->sqes & 0xf;
+		if (ctrl->quirks & NVME_QUIRK_128_BYTES_SQES)
+			ctrl->iosqes = 7;
+		else
+			ctrl->iosqes = id->sqes & 0xf;
 		if (ctrl->iosqes < NVME_NVM_IOSQES) {
 			dev_err(ctrl->device,
 				"unsupported required IO queue size %d\n", ctrl->iosqes);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 34ef35fcd8a5..b2a78d08b984 100644
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
index 54b35ea4af88..ab2358137419 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2080,6 +2080,9 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 	dev->io_queues[HCTX_TYPE_DEFAULT] = 1;
 	dev->io_queues[HCTX_TYPE_READ] = 0;
 
+	if (dev->ctrl.quirks & NVME_QUIRK_SINGLE_VECTOR)
+		irq_queues = 1;
+
 	return pci_alloc_irq_vectors_affinity(pdev, 1, irq_queues,
 			      PCI_IRQ_ALL_TYPES | PCI_IRQ_AFFINITY, &affd);
 }
@@ -3037,6 +3040,9 @@ static const struct pci_device_id nvme_id_table[] = {
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
