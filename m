Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D47DC1BB230
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 01:53:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NWF4bckt/z7tvTPfzRzpq6VzVqBt6YOuO+SI0kICP30=; b=q/2rBUuFmWbIXS
	o45lNfLt28FlI9Fjw4Iee7MBCgUZeOL7cGVSqVdvpuOxqPlghAN/MDgRMZYtjh7yYqpv3z5weaXRx
	GFp3bFMuZ+b+P3jEnjJwKhlIikrZKRU9ueBVYkt/20u0uiGcN04Bvy7lOT+hj/14ACgkuwQvDhea5
	4ne9XqsDKQuXizMZvcRBYBa7cpZLdYupQXgXSovl7vSxnbjMzFvzJIRvXsT5bfjEbcMX6glyWq02U
	COnouvPLZgI22yraqtS9iqaGgKe2gIHuJ7PZnTKpzc1VZWh8p9hheLrlG/EmUXKvNjYSQsEYZBLqt
	v+tSsmWk3f+3324SE/Zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDYl-00050P-6P; Mon, 27 Apr 2020 23:53:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDYN-0004kr-Fq
 for linux-nvme@lists.infradead.org; Mon, 27 Apr 2020 23:52:49 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D73D52087E;
 Mon, 27 Apr 2020 23:52:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588031567;
 bh=u6zKnIU9G2q0u6ul/1YaXNI3IPisvGOgU1ctrepoO8w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=vKygu0pV4Z9UDWANnl8eIPsLN3ov9RcDshGN3ciIwaqo7y94I49DjuZBMStqs2jhG
 COKKit0o/dBLhgktoqE7xErPBEF8MlzGywNjLFDVkGnRcmWlx5aJAX1SymmTs3Xj6+
 BfjyvDSFYvrZToZ6+rrTk1CUaxVulu5ub9kEYrZc=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 3/3] nvme-pci: reshuffle nvme_queue members
Date: Mon, 27 Apr 2020 16:52:43 -0700
Message-Id: <20200427235243.2268765-3-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200427235243.2268765-1-kbusch@kernel.org>
References: <20200427235243.2268765-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_165247_544910_4F43256A 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

All the io path hot members can fit within the first 64-bytes, which is
a common cacheline. Order the members of this struct so those members
fit in and align to that window.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 6d91fc5ee4d1..c16cf9fd4483 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -164,12 +164,14 @@ struct nvme_queue {
 	struct nvme_dev *dev;
 	spinlock_t sq_lock;
 	void *sq_cmds;
-	 /* only used for poll queues: */
-	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
 	struct nvme_completion *cqes;
-	dma_addr_t sq_dma_addr;
-	dma_addr_t cq_dma_addr;
 	u32 __iomem *q_db;
+	unsigned long flags;
+#define NVMEQ_ENABLED		0
+#define NVMEQ_SQ_CMB		1
+#define NVMEQ_DELETE_ERROR	2
+#define NVMEQ_POLLED		3
+
 	u16 q_depth;
 	u16 cq_vector;
 	u16 sq_tail;
@@ -177,13 +179,13 @@ struct nvme_queue {
 	u16 qid;
 	u8 cq_phase;
 	u8 sqes;
-	unsigned long flags;
-#define NVMEQ_ENABLED		0
-#define NVMEQ_SQ_CMB		1
-#define NVMEQ_DELETE_ERROR	2
-#define NVMEQ_POLLED		3
+
+	/* only used for poll queues: */
+	spinlock_t cq_poll_lock;
+	dma_addr_t sq_dma_addr;
+	dma_addr_t cq_dma_addr;
 	struct completion delete_done;
-};
+} ____cacheline_aligned_in_smp;
 
 /*
  * The nvme_iod describes the data in an I/O.
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
