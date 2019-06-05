Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9ED363D2
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:09:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzwqqT1f0PZBLHSz7cMfaEOPYbm9JwKfyeV0nMFipmY=; b=Vj9a/VSFX80srr
	3OoqvQCbhvNSVqKZigMFGtCqper547sAM6EIb+JW1jm8FwiSq96sHXVHtHvGp8KQrJM6niX2MTjV7
	XWMRIpoxWq33iK3QxX91J90Mz5N8GXcsvMoadx9N5gwqFvHGThjHvMghbibt4qmyPKRun7hIucmc/
	9eAIO1bxkD2Rgi5EwZvH0oFz2EqWSoSFbNE1ISdLSRfBJsRwTpecVH+XTBEuwq1LlDR3I4V3ODxT7
	ZwU4XRv5mp1lpxc9gSGm4ZuJZaslBFtJI9RQ1xtlWqGn04RjkvhpMTSXZgpt1z0+owpSXnu3IFEST
	rGu0oeGhjfOCMqqzDMcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHQ-0005Qp-IT; Wed, 05 Jun 2019 19:09:00 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbHB-0005Dh-RI; Wed, 05 Jun 2019 19:08:46 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH 02/13] rsxx: don't call dma_set_max_seg_size
Date: Wed,  5 Jun 2019 21:08:25 +0200
Message-Id: <20190605190836.32354-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, Sebastian Ott <sebott@linux.ibm.com>,
 linux-rdma@vger.kernel.org, Oliver Neukum <oneukum@suse.com>,
 linux-mmc@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>, linux-scsi@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, MPT-FusionLinux.pdl@broadcom.com,
 megaraidlinux.pdl@broadcom.com, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This driver does never uses dma_map_sg, so the setting is rather
pointless.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/block/rsxx/core.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/block/rsxx/core.c b/drivers/block/rsxx/core.c
index de9b2d2f8654..76b73ddf8fd7 100644
--- a/drivers/block/rsxx/core.c
+++ b/drivers/block/rsxx/core.c
@@ -767,7 +767,6 @@ static int rsxx_pci_probe(struct pci_dev *dev,
 		goto failed_enable;
 
 	pci_set_master(dev);
-	dma_set_max_seg_size(&dev->dev, RSXX_HW_BLK_SIZE);
 
 	st = dma_set_mask(&dev->dev, DMA_BIT_MASK(64));
 	if (st) {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
