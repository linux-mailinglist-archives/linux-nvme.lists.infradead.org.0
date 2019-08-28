Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02615A0085
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 13:12:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=yTI9KA+xNubZlvZa4l/JuaNe1nb3Cnu6SOLURhWtYaU=; b=OHZ987ppxlG5ytjG3SjSke3Z4y
	cypk63/erLT7rHvk0pd769VQMdn/8JpcjdZECgys5RA567umVNtPoxMWmkFqLsrBW5Hw/cHnoLLeK
	OpDFkhhmxq1tZenn7diLMhPqzyvTSTtDA9rg1PkS0jZHtLJlJFQzgKO+qDSNCFr1xrG/k5/KKdWaE
	/nO07q4J+ghtgIVxycLy30kW6laJY9hexRi5MSJltpBUcH46U+8M3HHdnYJd6YcD05cB1BvRxZA2m
	CQNqMdejkRyBWwGndWsggm3wj5A/l7y4K+wY32xJ6Uc6T6Ix48QiN5PV6jdr3V2Gl/uFBh4hk8V0d
	WqbJ7OxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vsa-0004xb-7V; Wed, 28 Aug 2019 11:12:44 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vs2-0004eI-Mf
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 11:12:12 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 28 Aug 2019 14:11:57 +0300
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x7SBBvFT010949;
 Wed, 28 Aug 2019 14:11:57 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH 3/3] nvme-rdma: Use rq_dma_dir macro
Date: Wed, 28 Aug 2019 14:11:50 +0300
Message-Id: <1566990710-16713-3-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1566990710-16713-1-git-send-email-israelr@mellanox.com>
References: <1566990710-16713-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_041211_140296_BDD210B3 
X-CRM114-Status: UNSURE (   7.42  )
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
 drivers/nvme/host/rdma.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 5143e2a..2a77e54 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1132,9 +1132,7 @@ static void nvme_rdma_unmap_data(struct nvme_rdma_queue *queue,
 		req->mr = NULL;
 	}
 
-	ib_dma_unmap_sg(ibdev, req->sg_table.sgl,
-			req->nents, rq_data_dir(rq) ==
-				    WRITE ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+	ib_dma_unmap_sg(ibdev, req->sg_table.sgl, req->nents, rq_dma_dir(rq));
 
 	nvme_cleanup_cmd(rq);
 	sg_free_table_chained(&req->sg_table, SG_CHUNK_SIZE);
@@ -1260,7 +1258,7 @@ static int nvme_rdma_map_data(struct nvme_rdma_queue *queue,
 	req->nents = blk_rq_map_sg(rq->q, rq, req->sg_table.sgl);
 
 	count = ib_dma_map_sg(ibdev, req->sg_table.sgl, req->nents,
-		    rq_data_dir(rq) == WRITE ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+			      rq_dma_dir(rq));
 	if (unlikely(count <= 0)) {
 		ret = -EIO;
 		goto out_free_table;
@@ -1289,9 +1287,7 @@ static int nvme_rdma_map_data(struct nvme_rdma_queue *queue,
 	return 0;
 
 out_unmap_sg:
-	ib_dma_unmap_sg(ibdev, req->sg_table.sgl,
-			req->nents, rq_data_dir(rq) ==
-			WRITE ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
+	ib_dma_unmap_sg(ibdev, req->sg_table.sgl, req->nents, rq_dma_dir(rq));
 out_free_table:
 	sg_free_table_chained(&req->sg_table, SG_CHUNK_SIZE);
 	return ret;
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
