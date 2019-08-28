Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E915A0084
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 13:12:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=fONY7ajwrj6OY1bNvtQ/oVdNdhQAdW3LdJ2xuzkuUTg=; b=aON
	pIE2vH2Ofiaym3D8kzbSfrSBavaf/j0GElh0fPTPhkE/WA6DJ4uB0vhF60l+IMGliMy6nlQBlYoCl
	6EKTTsLb4QRwYwmwrTD+5/ONmZQSDRlnNm7QExohwQnUFH1pppXQDeLrDm6W6Og0mXz7gv95ZoPfX
	xxqiXUgzKKgJSu4CApKFz6xgX3R7x7hEUSyR1h+3SIELqi/f+BE228C5exR5qL/1lRS8hm4gcMK5f
	xRSpC2XSjxgbLISaiQFGRHLF6Mu9QIwnfh//y1UpRRhM4640hfxrQ8/7Z4OJr2rr27yF9lFxHIMiK
	90dLdhPvRJLthkbUD2jU11aFebDZsIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vsM-0004mb-Pa; Wed, 28 Aug 2019 11:12:30 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vs0-0004eJ-KJ
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 11:12:10 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 28 Aug 2019 14:11:57 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7SBBvFR010949;
 Wed, 28 Aug 2019 14:11:57 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 1/3] nvme-pci: Tidy up nvme_unmap_data
Date: Wed, 28 Aug 2019 14:11:48 +0300
Message-Id: <1566990710-16713-1-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_041209_113487_1818536C 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Israel Rukshin <israelr@mellanox.com>, Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Remove pointless local variable and use rq_dma_dir macro.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/pci.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bf54b12..0eba960 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -534,14 +534,13 @@ static inline bool nvme_pci_use_sgls(struct nvme_dev *dev, struct request *req)
 static void nvme_unmap_data(struct nvme_dev *dev, struct request *req)
 {
 	struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
-	enum dma_data_direction dma_dir = rq_data_dir(req) ?
-			DMA_TO_DEVICE : DMA_FROM_DEVICE;
 	const int last_prp = dev->ctrl.page_size / sizeof(__le64) - 1;
 	dma_addr_t dma_addr = iod->first_dma, next_dma_addr;
 	int i;
 
 	if (iod->dma_len) {
-		dma_unmap_page(dev->dev, dma_addr, iod->dma_len, dma_dir);
+		dma_unmap_page(dev->dev, dma_addr, iod->dma_len,
+			       rq_dma_dir(req));
 		return;
 	}
 
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
