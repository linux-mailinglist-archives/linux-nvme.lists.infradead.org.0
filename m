Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3C144C6B7
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 07:15:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=txR4CtoXymmy1/+TVxkCz6bkIBpVjA1qM8ztlqeyoD0=; b=ccpKnBU9dwdMvr
	nrAcbuyp9IGiSx/gPVc0njXsHNtvTBtaddCwVUbGPry9skYp7Eoqhtrn31gdm0DolP8W58kWFCYZb
	Xk2pNm+VldR/zElBLT6LmkCAISVha68/k8yxxA0mIR3ZjHbj6iVsNZrLWgQmyYi03nfNe1Dj4QxiX
	ZyyYX8uZzRh2eQqwQ2EQ49rBFIGHsBZDP4wWx6Nc1+elk0QDbS8bR4USmDfe5RweE55AdQ6rU7IxC
	8yTFIm8MhsQT4fCj/xC22iTEQTmt1rDoPHiEI64YzvBUMuczaQenla//I7deBbZOwBvU54+V32zlv
	3mZnnN9rg1geOBQyyODw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdpPk-0001t8-F9; Thu, 20 Jun 2019 05:15:12 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdpOc-0001DF-4k
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 05:14:04 +0000
Received: by mail-pg1-x542.google.com with SMTP id y72so916668pgd.8
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 22:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=32H8bMdQWLl4HBY6nkF3Y7yCvSJU2H00os9QmN/seNQ=;
 b=tfKVTzBh7gfF7qUht9OuGoFAQNbi+Ib5OdsCnBF6AuLA2aS+trvzdAcW9zMt31TzFE
 Nu0iKxOQTKxS4JtyPSyIe+njd+htVd7GAuGapiIU+m8S96mR57IsUHWe8A8uprQaasG9
 KWLWtdtUPny2LGYv3e1JLrBdxD2A25F+PFYJfcosJIUTbbVlRrOXhK0CFX4LiTpW2OWC
 sSJxAhvEIh1m+JvazRVvMdSF9beGDUt7lj2DG6idoujiMUB4hYj75iwRuTqSxx06Ji4i
 OBtqksL4+pxhCVeyyb9MCRapFSC+zm7cchDq5WmQ5+UD8bMnFvR36FkZXoOHWkoDM/nu
 zzbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=32H8bMdQWLl4HBY6nkF3Y7yCvSJU2H00os9QmN/seNQ=;
 b=J0KOJqr6aPDprZ3RQClfXdOOYG557r2RIWRQBFLqKO/Za3v5hGPPR7v3Z8GdsOncHq
 QT7b3C0HDVu4edVWFEQjc2o7pKCvV2rLVfTA0K8HD/24vPQsmMx0iqPMkWbjwb5tcAz8
 b0exmB5MJU+gmyDmNlKemufKFatInVAh73g907H8dPj4vGvgtSZmClaos+O7x3V880Rm
 YTW1a3MKzOeGgs3xFc7jF37DJ1fxTSoV8v8jZZ3/Q4LfHUxAEYLyJ4nfQVwyFA6mGJ/+
 siZlipDRfUK+QPyFFsyzMx2bQb53kvK8EOJOxh63Dgu9VOdw7KsWeYM+XkyvggVICD9/
 M/tg==
X-Gm-Message-State: APjAAAVl0/Pb6oJK9WjJgP7cDMjpU2zbn/degAuKjylXvXUYRg42YM8P
 JbiiSXCUGZnei+h7DM0bf1dkwA==
X-Google-Smtp-Source: APXvYqwv4o9k382uodWhKnV3+u/6LJ8KbCgAn7Gw6I7aSlqt6Yg7joY1bw+jPfz0F5fMMt+8cS1Pow==
X-Received: by 2002:aa7:83d4:: with SMTP id j20mr132388733pfn.90.1561007641132; 
 Wed, 19 Jun 2019 22:14:01 -0700 (PDT)
Received: from limbo.local (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.gmail.com with ESMTPSA id j2sm26383423pfn.135.2019.06.19.22.13.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 22:14:00 -0700 (PDT)
From: Daniel Drake <drake@endlessm.com>
To: axboe@kernel.dk,
	kbusch@kernel.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH v2 4/5] nvme: move common definitions to pci.h
Date: Thu, 20 Jun 2019 13:13:32 +0800
Message-Id: <20190620051333.2235-5-drake@endlessm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620051333.2235-1-drake@endlessm.com>
References: <20190620051333.2235-1-drake@endlessm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_221402_226640_9F0A12D9 
X-CRM114-Status: GOOD (  16.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-ide@vger.kernel.org,
 alex.williamson@redhat.com, hare@suse.de, bhelgaas@google.com,
 dan.j.williams@intel.com, linux@endlessm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Dan Williams <dan.j.williams@intel.com>

A platform-driver for nvme resources needs access to struct nvme_dev and
other definitions that are currently local to pci.c.

Signed-off-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Daniel Drake <drake@endlessm.com>
---
 drivers/nvme/host/pci.c | 125 +-----------------------------------
 drivers/nvme/host/pci.h | 136 ++++++++++++++++++++++++++++++++++++++++
 2 files changed, 137 insertions(+), 124 deletions(-)
 create mode 100644 drivers/nvme/host/pci.h

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 23bda524f16b..bed6c91b6b7c 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -26,6 +26,7 @@
 
 #include "trace.h"
 #include "nvme.h"
+#include "pci.h"
 
 #define SQ_SIZE(depth)		(depth * sizeof(struct nvme_command))
 #define CQ_SIZE(depth)		(depth * sizeof(struct nvme_completion))
@@ -83,97 +84,9 @@ static int poll_queues = 0;
 module_param_cb(poll_queues, &queue_count_ops, &poll_queues, 0644);
 MODULE_PARM_DESC(poll_queues, "Number of queues to use for polled IO.");
 
-struct nvme_dev;
-struct nvme_queue;
-
 static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown);
 static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode);
 
-struct nvme_dev_ops {
-	/* Enable device (required) */
-	int (*enable)(struct nvme_dev *dev);
-
-	/* Disable device (required) */
-	void (*disable)(struct nvme_dev *dev);
-
-	/* Allocate IRQ vectors for given number of io queues (required) */
-	int (*setup_irqs)(struct nvme_dev *dev, int nr_io_queues);
-
-	/* Get the IRQ vector for a specific queue */
-	int (*q_irq)(struct nvme_queue *q);
-
-	/* Allocate device-specific SQ command buffer (optional) */
-	int (*cmb_alloc_sq_cmds)(struct nvme_queue *nvmeq, size_t size,
-				 struct nvme_command **sq_cmds,
-				 dma_addr_t *sq_dma_addr);
-
-	/* Free device-specific SQ command buffer (optional) */
-	void (*cmb_free_sq_cmds)(struct nvme_queue *nvmeq,
-				 struct nvme_command *sq_cmds, size_t size);
-
-	/* Device-specific mapping of blk queues to CPUs (optional) */
-	int (*map_queues)(struct nvme_dev *dev, struct blk_mq_queue_map *map,
-			  int offset);
-
-	/* Check if device is enabled on the bus (required) */
-	int (*is_enabled)(struct nvme_dev *dev);
-
-	/* Check if channel is in running state (required) */
-	int (*is_offline)(struct nvme_dev *dev);
-
-	/* Check if device is present and responding (optional) */
-	bool (*is_present)(struct nvme_dev *dev);
-
-	/* Check & log device state before it gets reset (optional) */
-	void (*warn_reset)(struct nvme_dev *dev);
-};
-
-/*
- * Represents an NVM Express device.  Each nvme_dev is a PCI function.
- */
-struct nvme_dev {
-	const struct resource *res;
-	const struct nvme_dev_ops *ops;
-	struct nvme_queue *queues;
-	struct blk_mq_tag_set tagset;
-	struct blk_mq_tag_set admin_tagset;
-	u32 __iomem *dbs;
-	struct device *dev;
-	struct dma_pool *prp_page_pool;
-	struct dma_pool *prp_small_pool;
-	unsigned online_queues;
-	unsigned max_qid;
-	unsigned io_queues[HCTX_MAX_TYPES];
-	unsigned int num_vecs;
-	int q_depth;
-	u32 db_stride;
-	void __iomem *bar;
-	unsigned long bar_mapped_size;
-	struct work_struct remove_work;
-	struct mutex shutdown_lock;
-	bool subsystem;
-	u64 cmb_size;
-	bool cmb_use_sqes;
-	u32 cmbsz;
-	u32 cmbloc;
-	struct nvme_ctrl ctrl;
-
-	mempool_t *iod_mempool;
-
-	/* shadow doorbell buffer support: */
-	u32 *dbbuf_dbs;
-	dma_addr_t dbbuf_dbs_dma_addr;
-	u32 *dbbuf_eis;
-	dma_addr_t dbbuf_eis_dma_addr;
-
-	/* host memory buffer support: */
-	u64 host_mem_size;
-	u32 nr_host_mem_descs;
-	dma_addr_t host_mem_descs_dma;
-	struct nvme_host_mem_buf_desc *host_mem_descs;
-	void **host_mem_desc_bufs;
-};
-
 static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
 {
 	int n = 0, ret;
@@ -213,42 +126,6 @@ static inline struct nvme_dev *to_nvme_dev(struct nvme_ctrl *ctrl)
 	return container_of(ctrl, struct nvme_dev, ctrl);
 }
 
-/*
- * An NVM Express queue.  Each device has at least two (one for admin
- * commands and one for I/O commands).
- */
-struct nvme_queue {
-	struct nvme_dev *dev;
-	char irqname[24];	/* nvme4294967295-65535\0 */
-	spinlock_t sq_lock;
-	struct nvme_command *sq_cmds;
-	 /* only used for poll queues: */
-	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
-	volatile struct nvme_completion *cqes;
-	struct blk_mq_tags **tags;
-	dma_addr_t sq_dma_addr;
-	dma_addr_t cq_dma_addr;
-	u32 __iomem *q_db;
-	u16 q_depth;
-	u16 cq_vector;
-	u16 sq_tail;
-	u16 last_sq_tail;
-	u16 cq_head;
-	u16 last_cq_head;
-	u16 qid;
-	u8 cq_phase;
-	unsigned long flags;
-#define NVMEQ_ENABLED		0
-#define NVMEQ_SQ_CMB		1
-#define NVMEQ_DELETE_ERROR	2
-#define NVMEQ_POLLED		3
-	u32 *dbbuf_sq_db;
-	u32 *dbbuf_cq_db;
-	u32 *dbbuf_sq_ei;
-	u32 *dbbuf_cq_ei;
-	struct completion delete_done;
-};
-
 /*
  * The nvme_iod describes the data in an I/O.
  *
diff --git a/drivers/nvme/host/pci.h b/drivers/nvme/host/pci.h
new file mode 100644
index 000000000000..7e4d73a22876
--- /dev/null
+++ b/drivers/nvme/host/pci.h
@@ -0,0 +1,136 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * NVM Express device driver
+ * Copyright (c) 2011-2014, Intel Corporation.
+ */
+
+#ifndef __NVME_PCI_H__
+#define __NVME_PCI_H__
+#include <linux/blk-mq.h>
+#include <linux/device.h>
+
+struct nvme_queue;
+struct nvme_dev;
+
+struct nvme_dev_ops {
+	/* Enable device (required) */
+	int (*enable)(struct nvme_dev *dev);
+
+	/* Disable device (required) */
+	void (*disable)(struct nvme_dev *dev);
+
+	/* Allocate IRQ vectors for given number of io queues (required) */
+	int (*setup_irqs)(struct nvme_dev *dev, int nr_io_queues);
+
+	/* Get the IRQ vector for a specific queue */
+	int (*q_irq)(struct nvme_queue *q);
+
+	/* Allocate device-specific SQ command buffer (optional) */
+	int (*cmb_alloc_sq_cmds)(struct nvme_queue *nvmeq, size_t size,
+				 struct nvme_command **sq_cmds,
+				 dma_addr_t *sq_dma_addr);
+
+	/* Free device-specific SQ command buffer (optional) */
+	void (*cmb_free_sq_cmds)(struct nvme_queue *nvmeq,
+				 struct nvme_command *sq_cmds, size_t size);
+
+	/* Device-specific mapping of blk queues to CPUs (optional) */
+	int (*map_queues)(struct nvme_dev *dev, struct blk_mq_queue_map *map,
+			  int offset);
+
+	/* Check if device is enabled on the bus (required) */
+	int (*is_enabled)(struct nvme_dev *dev);
+
+	/* Check if channel is in running state (required) */
+	int (*is_offline)(struct nvme_dev *dev);
+
+	/* Check if device is present and responding (optional) */
+	bool (*is_present)(struct nvme_dev *dev);
+
+	/* Check & log device state before it gets reset (optional) */
+	void (*warn_reset)(struct nvme_dev *dev);
+};
+
+/*
+ * Represents an NVM Express device.  Each nvme_dev is a PCI function.
+ */
+struct nvme_dev {
+	const struct resource *res;
+	const struct nvme_dev_ops *ops;
+	struct nvme_queue *queues;
+	struct blk_mq_tag_set tagset;
+	struct blk_mq_tag_set admin_tagset;
+	u32 __iomem *dbs;
+	struct device *dev;
+	struct dma_pool *prp_page_pool;
+	struct dma_pool *prp_small_pool;
+	unsigned online_queues;
+	unsigned max_qid;
+	unsigned io_queues[HCTX_MAX_TYPES];
+	unsigned int num_vecs;
+	int q_depth;
+	u32 db_stride;
+	void __iomem *bar;
+	unsigned long bar_mapped_size;
+	struct work_struct remove_work;
+	struct mutex shutdown_lock;
+	bool subsystem;
+	u64 cmb_size;
+	bool cmb_use_sqes;
+	u32 cmbsz;
+	u32 cmbloc;
+	struct nvme_ctrl ctrl;
+
+	mempool_t *iod_mempool;
+
+	/* shadow doorbell buffer support: */
+	u32 *dbbuf_dbs;
+	dma_addr_t dbbuf_dbs_dma_addr;
+	u32 *dbbuf_eis;
+	dma_addr_t dbbuf_eis_dma_addr;
+
+	/* host memory buffer support: */
+	u64 host_mem_size;
+	u32 nr_host_mem_descs;
+	dma_addr_t host_mem_descs_dma;
+	struct nvme_host_mem_buf_desc *host_mem_descs;
+	void **host_mem_desc_bufs;
+};
+
+/*
+ * An NVM Express queue.  Each device has at least two (one for admin
+ * commands and one for I/O commands).
+ */
+struct nvme_queue {
+	struct nvme_dev *dev;
+	char irqname[24];	/* nvme4294967295-65535\0 */
+	spinlock_t sq_lock;
+	struct nvme_command *sq_cmds;
+	 /* only used for poll queues: */
+	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
+	volatile struct nvme_completion *cqes;
+	struct blk_mq_tags **tags;
+	dma_addr_t sq_dma_addr;
+	dma_addr_t cq_dma_addr;
+	u32 __iomem *q_db;
+	u16 q_depth;
+	u16 cq_vector;
+	u16 sq_tail;
+	u16 last_sq_tail;
+	u16 cq_head;
+	u16 last_cq_head;
+	u16 qid;
+	u8 cq_phase;
+	unsigned long flags;
+#define NVMEQ_ENABLED		0
+#define NVMEQ_SQ_CMB		1
+#define NVMEQ_DELETE_ERROR	2
+#define NVMEQ_POLLED		3
+	u32 *dbbuf_sq_db;
+	u32 *dbbuf_cq_db;
+	u32 *dbbuf_sq_ei;
+	u32 *dbbuf_cq_ei;
+	struct completion delete_done;
+};
+
+#endif /* __NVME_PCI_H__ */
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
