Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 06149A0083
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 13:12:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U3AzpYb/qigWDt/Ue9ihDTubOTHtdFeaNjV8xwyGAnM=; b=l9mncbBhi1av1KEBIFCz02M92t
	sYO1OzAjODRLDmVJnIKdO58OHLHk80qc1cQhiN9wu5/d7Q4tYcjePVwwvxqpN8j42t0gWraGfA3S6
	6JpvIl4trjG1faDDbOqupzc2OjrRdKLfxpRh3DnDvVtMvDnjecvgjzFlGhgME4WLpOU/IxQwcCZ4/
	Xgv0DSMlANpy7IKvtCHF3snJYw+qk2ZUvYAUz7h08LKiYE3+LhO8r49imtR1cDlwVjI/qcTbptXsr
	vy+FJ49eYE38LYF5TOLjn+5eDSJQli1GPKlC6+NCTnBNIymjxrHW0SGY+M/CrVTTifY0kH0FDCRm8
	yVFs7psA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vsA-0004fF-Uj; Wed, 28 Aug 2019 11:12:19 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vs0-0004eH-KC
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 11:12:10 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 28 Aug 2019 14:11:57 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7SBBvFS010949;
 Wed, 28 Aug 2019 14:11:57 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 2/3] nvme-fc: Use rq_dma_dir macro
Date: Wed, 28 Aug 2019 14:11:49 +0300
Message-Id: <1566990710-16713-2-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1566990710-16713-1-git-send-email-israelr@mellanox.com>
References: <1566990710-16713-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_041209_113708_44EC5AE8 
X-CRM114-Status: UNSURE (   6.57  )
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

Remove code duplication.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/fc.c | 7 ++-----
 1 file changed, 2 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index ec264b2..3e1b868 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2107,7 +2107,6 @@ enum {
 		struct nvme_fc_fcp_op *op)
 {
 	struct nvmefc_fcp_req *freq = &op->fcp_req;
-	enum dma_data_direction dir;
 	int ret;
 
 	freq->sg_cnt = 0;
@@ -2124,9 +2123,8 @@ enum {
 
 	op->nents = blk_rq_map_sg(rq->q, rq, freq->sg_table.sgl);
 	WARN_ON(op->nents > blk_rq_nr_phys_segments(rq));
-	dir = (rq_data_dir(rq) == WRITE) ? DMA_TO_DEVICE : DMA_FROM_DEVICE;
 	freq->sg_cnt = fc_dma_map_sg(ctrl->lport->dev, freq->sg_table.sgl,
-				op->nents, dir);
+				op->nents, rq_dma_dir(rq));
 	if (unlikely(freq->sg_cnt <= 0)) {
 		sg_free_table_chained(&freq->sg_table, SG_CHUNK_SIZE);
 		freq->sg_cnt = 0;
@@ -2149,8 +2147,7 @@ enum {
 		return;
 
 	fc_dma_unmap_sg(ctrl->lport->dev, freq->sg_table.sgl, op->nents,
-				((rq_data_dir(rq) == WRITE) ?
-					DMA_TO_DEVICE : DMA_FROM_DEVICE));
+			rq_dma_dir(rq));
 
 	nvme_cleanup_cmd(rq);
 
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
