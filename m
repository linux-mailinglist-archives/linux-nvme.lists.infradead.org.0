Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B00B7108436
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 17:39:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OK9Kh68iXTAFPrK7cWrDRyN+i68PYInUGuvW9CxonFs=; b=strBbH5N59xt6TYHXQQ1ujwc7/
	BMhfWz4j0hW7L9jKwDyQC17uXVK3/zP38qKtRq+zSnsE3+HF8u01+nns+R/ddBlWpgYUb80sDlL8H
	xJVYSJd66e85LsUWNnDNekNfLCV4Qyspe9f26xLlUQ6iTcDswdYe9XBVH3kzSPdjThcPMq5icr49Y
	Gp3s50XrTFk1ptUL9zyvNWSBNmGVggdU8kGYaZV3c5/8VhYGI6FeCbqwAPVsP1JOtKxrvZiCkOs2f
	mABBAy9jHgV43V6ScmfGt/916LneEwvzS5MaSR+Ozsf5HbvCkGq+WBZwZPbLL4cBp+BTNaT2VDLdF
	ejacnzAA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYuvE-00067O-35; Sun, 24 Nov 2019 16:39:40 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYuuc-0005pL-PH
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 16:39:06 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Nov 2019 18:38:49 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xAOGcm6K029897;
 Sun, 24 Nov 2019 18:38:48 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>,
 James Smart <jsmart2021@gmail.com>, Keith Busch <kbusch@kernel.org>
Subject: [PATCH 2/3] nvme-fc: Avoid preallocating big SGL for data
Date: Sun, 24 Nov 2019 18:38:31 +0200
Message-Id: <1574613512-5943-3-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1574613512-5943-1-git-send-email-israelr@mellanox.com>
References: <1574613512-5943-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_083903_229329_946BFE46 
X-CRM114-Status: GOOD (  10.09  )
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
Cc: Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_fc_create_io_queues() preallocates a big buffer for the IO SGL based
on SG_CHUNK_SIZE.

Modern DMA engines are often capable of dealing with very big segments so
the SG_CHUNK_SIZE is often too big. SG_CHUNK_SIZE results in a static 4KB
SGL allocation per command.

If a controller has lots of deep queues, preallocation for the sg list can
consume substantial amounts of memory. For nvme-fc, nr_hw_queues can be
128 and each queue's depth 128. This means the resulting preallocation
for the data SGL is 128*128*4K = 64MB per controller.

Switch to runtime allocation for SGL for lists longer than 2 entries. This
is the approach used by NVMe PCI so it should be reasonable for NVMeOF as
well. Runtime SGL allocation has always been the case for the legacy I/O
path so this is nothing new.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/fc.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 679a721..13cb00e 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -95,7 +95,7 @@ struct nvme_fc_fcp_op {
 
 struct nvme_fcp_op_w_sgl {
 	struct nvme_fc_fcp_op	op;
-	struct scatterlist	sgl[SG_CHUNK_SIZE];
+	struct scatterlist	sgl[NVME_INLINE_SG_CNT];
 	uint8_t			priv[0];
 };
 
@@ -2141,7 +2141,7 @@ enum {
 	freq->sg_table.sgl = freq->first_sgl;
 	ret = sg_alloc_table_chained(&freq->sg_table,
 			blk_rq_nr_phys_segments(rq), freq->sg_table.sgl,
-			SG_CHUNK_SIZE);
+			NVME_INLINE_SG_CNT);
 	if (ret)
 		return -ENOMEM;
 
@@ -2150,7 +2150,7 @@ enum {
 	freq->sg_cnt = fc_dma_map_sg(ctrl->lport->dev, freq->sg_table.sgl,
 				op->nents, rq_dma_dir(rq));
 	if (unlikely(freq->sg_cnt <= 0)) {
-		sg_free_table_chained(&freq->sg_table, SG_CHUNK_SIZE);
+		sg_free_table_chained(&freq->sg_table, NVME_INLINE_SG_CNT);
 		freq->sg_cnt = 0;
 		return -EFAULT;
 	}
@@ -2173,7 +2173,7 @@ enum {
 	fc_dma_unmap_sg(ctrl->lport->dev, freq->sg_table.sgl, op->nents,
 			rq_dma_dir(rq));
 
-	sg_free_table_chained(&freq->sg_table, SG_CHUNK_SIZE);
+	sg_free_table_chained(&freq->sg_table, NVME_INLINE_SG_CNT);
 
 	freq->sg_cnt = 0;
 }
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
