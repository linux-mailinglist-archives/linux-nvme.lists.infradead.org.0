Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F07CE594B2
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 09:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EN3Jeo66QY1rK8qbhxZMy/ZFbsMNUobCJtj7XlKpu0o=; b=S1Pi4YToYkL2jK
	QNhYQ2AFH8Ltxa1+RoQisOZhczJ1l9RwED57Dr69BVUPe1/pUDzmGDh16JVqhUP33/JnFTogdildw
	L5TIVW87bRGbgQ1pQsWlYJEGbfmntUML6RVpg/8bWS57p2f/GgxMk2Y+YzQ4DK3FZssNeZMsibyXE
	jLY1OHHi1WBylvsgYsuKKVMdQVpJijH/hsoPwsQezCJ/At0qnj+MBRe9YA2JJ2FXhbeB0V75swPum
	f2VgOMj7hbuBdgSOYxqFSktNtzbLnNwH1QyJI8EFmYOINXQSA1L5L0hjfl4+zTKMatn2rY2Omxrfa
	UoW1QXzBTooZAQvyONDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgl9l-0006PP-98; Fri, 28 Jun 2019 07:18:49 +0000
Received: from 089144214055.atnat0023.highway.a1.net ([89.144.214.55]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hgl9b-0006OT-Nc
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 07:18:40 +0000
From: Christoph Hellwig <hch@lst.de>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-pci: don't fall back to a 32-bit DMA mask
Date: Fri, 28 Jun 2019 09:18:37 +0200
Message-Id: <20190628071837.7087-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Since Linux 5.0 drivers can safely set the largest DMA mask supported
by the device, and don't need fallbacks to work around the dma mapping
implementations.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/pci.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index f50013369cc5..49c1fc9907a6 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2289,8 +2289,7 @@ static int nvme_pci_enable(struct nvme_dev *dev)
 
 	pci_set_master(pdev);
 
-	if (dma_set_mask_and_coherent(dev->dev, DMA_BIT_MASK(64)) &&
-	    dma_set_mask_and_coherent(dev->dev, DMA_BIT_MASK(32)))
+	if (dma_set_mask_and_coherent(dev->dev, DMA_BIT_MASK(64)))
 		goto disable;
 
 	if (readl(dev->bar + NVME_REG_CSTS) == -1) {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
