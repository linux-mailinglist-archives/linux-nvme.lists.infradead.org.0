Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DCE108437
	for <lists+linux-nvme@lfdr.de>; Sun, 24 Nov 2019 17:39:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Nr48d7sSAYw+G0ihM8Twpf4wGt1GXEyrfsHVpF3CquE=; b=KBoJiz6N6fgskereOwqE034JKK
	E33KSjH0zn/RFlk/YeD8Ys7HWg01V26Rd1yEG6QdPneR1X2HmW06Z6t/qjPc1AG1GyJvxIpotjAhv
	AxjeFssxAykpC9tOidGsbGK8SBuAfJOI0UjHiMAle4HrGNIXveh3m9MkzI/Sj1FiXwYj44xpqMrFd
	2AB1FT9jVoyJ4wqo8rXr+OZOrYrU4v0K6kZ/o5JmMKxxkVoq6R696J0YQlZmoOqdTsrOYSHhISaNJ
	V+NBnGRqnbh8Ua4c8OjieLVWZVrXVCUtiYbzvqodahl+ObXAsjAPKRA2sMavX54PdAjY8pbfUTAfQ
	VaZT1REw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iYuvS-0006Ib-4o; Sun, 24 Nov 2019 16:39:54 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iYuue-0005pJ-QT
 for linux-nvme@lists.infradead.org; Sun, 24 Nov 2019 16:39:06 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Nov 2019 18:38:49 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xAOGcm6J029897;
 Sun, 24 Nov 2019 18:38:48 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>,
 James Smart <jsmart2021@gmail.com>, Keith Busch <kbusch@kernel.org>
Subject: [PATCH 1/3] nvme-rdma: Avoid preallocating big SGL for data
Date: Sun, 24 Nov 2019 18:38:30 +0200
Message-Id: <1574613512-5943-2-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1574613512-5943-1-git-send-email-israelr@mellanox.com>
References: <1574613512-5943-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191124_083905_252759_3BD6ACAC 
X-CRM114-Status: GOOD (  12.54  )
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

nvme_rdma_alloc_tagset() preallocates a big buffer for the IO SGL based
on SG_CHUNK_SIZE.

Modern DMA engines are often capable of dealing with very big segments so
the SG_CHUNK_SIZE is often too big. SG_CHUNK_SIZE results in a static 4KB
SGL allocation per command.

If a controller has lots of deep queues, preallocation for the sg list can
consume substantial amounts of memory. For nvme-rdma, nr_hw_queues can be
128 and each queue's depth 128. This means the resulting preallocation
for the data SGL is 128*128*4K = 64MB per controller.

Switch to runtime allocation for SGL for lists longer than 2 entries. This
is the approach used by NVMe PCI so it should be reasonable for NVMeOF as
well. Runtime SGL allocation has always been the case for the legacy I/O
path so this is nothing new.

The preallocated small SGL depends on SG_CHAIN so if the ARCH doesn't
support SG_CHAIN, use only runtime allocation for the SGL.

We didn't notice of a performance degradation, since for small IOs we'll
use the inline SG and for the bigger IOs the allocation of a bigger SGL
from slab is fast enough.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/nvme.h |  6 ++++++
 drivers/nvme/host/rdma.c | 10 +++++-----
 2 files changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 34ac79c..3615145 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -27,6 +27,12 @@
 #define NVME_DEFAULT_KATO	5
 #define NVME_KATO_GRACE		10
 
+#ifdef CONFIG_ARCH_NO_SG_CHAIN
+#define  NVME_INLINE_SG_CNT  0
+#else
+#define  NVME_INLINE_SG_CNT  2
+#endif
+
 extern struct workqueue_struct *nvme_wq;
 extern struct workqueue_struct *nvme_reset_wq;
 extern struct workqueue_struct *nvme_delete_wq;
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 05f2dfa..9a02fde 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -731,7 +731,7 @@ static struct blk_mq_tag_set *nvme_rdma_alloc_tagset(struct nvme_ctrl *nctrl,
 		set->reserved_tags = 2; /* connect + keep-alive */
 		set->numa_node = nctrl->numa_node;
 		set->cmd_size = sizeof(struct nvme_rdma_request) +
-			SG_CHUNK_SIZE * sizeof(struct scatterlist);
+			NVME_INLINE_SG_CNT * sizeof(struct scatterlist);
 		set->driver_data = ctrl;
 		set->nr_hw_queues = 1;
 		set->timeout = ADMIN_TIMEOUT;
@@ -745,7 +745,7 @@ static struct blk_mq_tag_set *nvme_rdma_alloc_tagset(struct nvme_ctrl *nctrl,
 		set->numa_node = nctrl->numa_node;
 		set->flags = BLK_MQ_F_SHOULD_MERGE;
 		set->cmd_size = sizeof(struct nvme_rdma_request) +
-			SG_CHUNK_SIZE * sizeof(struct scatterlist);
+			NVME_INLINE_SG_CNT * sizeof(struct scatterlist);
 		set->driver_data = ctrl;
 		set->nr_hw_queues = nctrl->queue_count - 1;
 		set->timeout = NVME_IO_TIMEOUT;
@@ -1160,7 +1160,7 @@ static void nvme_rdma_unmap_data(struct nvme_rdma_queue *queue,
 	}
 
 	ib_dma_unmap_sg(ibdev, req->sg_table.sgl, req->nents, rq_dma_dir(rq));
-	sg_free_table_chained(&req->sg_table, SG_CHUNK_SIZE);
+	sg_free_table_chained(&req->sg_table, NVME_INLINE_SG_CNT);
 }
 
 static int nvme_rdma_set_sg_null(struct nvme_command *c)
@@ -1276,7 +1276,7 @@ static int nvme_rdma_map_data(struct nvme_rdma_queue *queue,
 	req->sg_table.sgl = req->first_sgl;
 	ret = sg_alloc_table_chained(&req->sg_table,
 			blk_rq_nr_phys_segments(rq), req->sg_table.sgl,
-			SG_CHUNK_SIZE);
+			NVME_INLINE_SG_CNT);
 	if (ret)
 		return -ENOMEM;
 
@@ -1314,7 +1314,7 @@ static int nvme_rdma_map_data(struct nvme_rdma_queue *queue,
 out_unmap_sg:
 	ib_dma_unmap_sg(ibdev, req->sg_table.sgl, req->nents, rq_dma_dir(rq));
 out_free_table:
-	sg_free_table_chained(&req->sg_table, SG_CHUNK_SIZE);
+	sg_free_table_chained(&req->sg_table, NVME_INLINE_SG_CNT);
 	return ret;
 }
 
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
