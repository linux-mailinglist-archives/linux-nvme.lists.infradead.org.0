Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269EB6B2E6
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 02:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=BsxmUV0Z7JPZOE68KzesynBPqi2V0D8zc2bTBFbTf94=; b=gcAl0G1I3ik0mFQrjwq2JhfrSZ
	Q9vt3W2uzvS8WhbvKq0oGImVVyRbsCteDa5CbqCBAhM47OOyHX/rKMSmExFgh6PGbnK/cAUXSVxC/
	Bn73Iw3cJbVVENT0P1MeS3uv4JF3wvFSz9YxhU+4uWp+2uAI0Ksskxx+kC9jYsKLEPM3+e/IyqYeJ
	qHHF2VWPIehgDGNSD1fYdA1gWKym7bRvtBqEa3ZoMr2NAvxn5eQkHP+RZPQ6UizwFdxVUO+V1B2ZO
	xNeT3zgz6/hU7C2O7fuFXQe558GfF7/cXX8FTuZoYw48QNPFLo8nXWkuqUrv1w72bQ33TTgJrPMDy
	vw44a3Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnY58-0001aO-34; Wed, 17 Jul 2019 00:46:06 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnY4n-0001W6-Hd
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 00:45:46 +0000
Received: from ufdda393ec48b57.ant.amazon.com (localhost.localdomain
 [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6H0jXni032429;
 Tue, 16 Jul 2019 19:45:38 -0500
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 2/3] nvme-pci: Add support for variable IO SQ element size
Date: Wed, 17 Jul 2019 10:45:26 +1000
Message-Id: <20190717004527.30363-2-benh@kernel.crashing.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190717004527.30363-1-benh@kernel.crashing.org>
References: <20190717004527.30363-1-benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_174545_730840_92D9E65C 
X-CRM114-Status: GOOD (  12.10  )
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

The size of a submission queue element should always be 6 (64 bytes)
by spec.

However some controllers such as Apple's are not properly implementing
the standard and require a different size.

This provides the ground work for the subsequent quirks for these
controllers.

Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---
 drivers/nvme/host/pci.c | 11 ++++++++---
 include/linux/nvme.h    |  1 +
 2 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 8f006638452b..1637677afb78 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -28,7 +28,7 @@
 #include "trace.h"
 #include "nvme.h"
 
-#define SQ_SIZE(q)	((q)->q_depth * sizeof(struct nvme_command))
+#define SQ_SIZE(q)	((q)->q_depth << (q)->sqes)
 #define CQ_SIZE(q)	((q)->q_depth * sizeof(struct nvme_completion))
 
 #define SGES_PER_PAGE	(PAGE_SIZE / sizeof(struct nvme_sgl_desc))
@@ -100,6 +100,7 @@ struct nvme_dev {
 	unsigned io_queues[HCTX_MAX_TYPES];
 	unsigned int num_vecs;
 	int q_depth;
+	int io_sqes;
 	u32 db_stride;
 	void __iomem *bar;
 	unsigned long bar_mapped_size;
@@ -162,7 +163,7 @@ static inline struct nvme_dev *to_nvme_dev(struct nvme_ctrl *ctrl)
 struct nvme_queue {
 	struct nvme_dev *dev;
 	spinlock_t sq_lock;
-	struct nvme_command *sq_cmds;
+	void *sq_cmds;
 	 /* only used for poll queues: */
 	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
 	volatile struct nvme_completion *cqes;
@@ -178,6 +179,7 @@ struct nvme_queue {
 	u16 last_cq_head;
 	u16 qid;
 	u8 cq_phase;
+	u8 sqes;
 	unsigned long flags;
 #define NVMEQ_ENABLED		0
 #define NVMEQ_SQ_CMB		1
@@ -488,7 +490,8 @@ static void nvme_submit_cmd(struct nvme_queue *nvmeq, struct nvme_command *cmd,
 			    bool write_sq)
 {
 	spin_lock(&nvmeq->sq_lock);
-	memcpy(&nvmeq->sq_cmds[nvmeq->sq_tail], cmd, sizeof(*cmd));
+	memcpy(nvmeq->sq_cmds + (nvmeq->sq_tail << nvmeq->sqes),
+	       cmd, sizeof(*cmd));
 	if (++nvmeq->sq_tail == nvmeq->q_depth)
 		nvmeq->sq_tail = 0;
 	nvme_write_sq_db(nvmeq, write_sq);
@@ -1465,6 +1468,7 @@ static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
 	if (dev->ctrl.queue_count > qid)
 		return 0;
 
+	nvmeq->sqes = qid ? dev->io_sqes : NVME_NVM_ADMSQES;
 	nvmeq->q_depth = depth;
 	nvmeq->cqes = dma_alloc_coherent(dev->dev, CQ_SIZE(nvmeq),
 					 &nvmeq->cq_dma_addr, GFP_KERNEL);
@@ -2318,6 +2322,7 @@ static int nvme_pci_enable(struct nvme_dev *dev)
 				io_queue_depth);
 	dev->db_stride = 1 << NVME_CAP_STRIDE(dev->ctrl.cap);
 	dev->dbs = dev->bar + 4096;
+	dev->io_sqes = NVME_NVM_IOSQES;
 
 	/*
 	 * Temporary fix for the Apple controller found in the MacBook8,1 and
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 01aa6a6c241d..d5a4bc21f36b 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -140,6 +140,7 @@ enum {
  * Submission and Completion Queue Entry Sizes for the NVM command set.
  * (In bytes and specified as a power of two (2^n)).
  */
+#define NVME_NVM_ADMSQES	6
 #define NVME_NVM_IOSQES		6
 #define NVME_NVM_IOCQES		4
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
