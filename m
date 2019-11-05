Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 754CEF0284
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 17:22:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2B3PTJN29AwotrvAoHllQyI84vhAxPkEUBEEj6tKxz8=; b=LXHK5/9qoam0oD
	q6ySKqrLawbNb6pPCUMYBIpIOMrnm/LwLGUb3WiyScVyxfPqwgbM+F1e+2+XMNq5UELOKb9PJMyZX
	8h+KkNRQ0yNo5GGpQMTxHq6ZuoXQCKbWeIc/9pXHknaL8NGEBz6A7WSVWe5xDRKonyUy+h/s9FA8P
	cmkVx5hOU758qHhh00M1dbSOd/XazPcBWqlBeoThNZzz2MA+x2xymeU6u+ubst+xmHlXi5Vwt2gck
	56BVL/Cbf+O9/hjWnmMgrnvFWm8cX/KMy3N4rnRY0LMYpcivYaAwwcsZzClBYxWy7vH3jT2864fSt
	H9MzwzOMSD79Iu+WhDGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1ar-0004iU-Cq; Tue, 05 Nov 2019 16:22:09 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1ZO-0003S0-Ss
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 16:20:43 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 5 Nov 2019 18:20:27 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xA5GKQm0013132;
 Tue, 5 Nov 2019 18:20:27 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH 03/15] nvme: Introduce max_integrity_segments ctrl attribute
Date: Tue,  5 Nov 2019 18:20:14 +0200
Message-Id: <20191105162026.183901-5-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191105162026.183901-1-maxg@mellanox.com>
References: <20191105162026.183901-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_082039_347821_8F7F7C92 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch doesn't change any logic, and is needed as a preparataion
for adding PI support for fabrics drivers that will use an extended
LBA format for metadata.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 11 +++++++----
 drivers/nvme/host/nvme.h |  1 +
 drivers/nvme/host/pci.c  |  7 +++++++
 3 files changed, 15 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 832b0fd..9ec8322 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1577,7 +1577,8 @@ static int nvme_getgeo(struct block_device *bdev, struct hd_geometry *geo)
 }
 
 #ifdef CONFIG_BLK_DEV_INTEGRITY
-static void nvme_init_integrity(struct gendisk *disk, u16 ms, u8 pi_type)
+static void nvme_init_integrity(struct gendisk *disk, u16 ms, u8 pi_type,
+				u32 max_integrity_segments)
 {
 	struct blk_integrity integrity;
 
@@ -1600,10 +1601,11 @@ static void nvme_init_integrity(struct gendisk *disk, u16 ms, u8 pi_type)
 	}
 	integrity.tuple_size = ms;
 	blk_integrity_register(disk, &integrity);
-	blk_queue_max_integrity_segments(disk->queue, 1);
+	blk_queue_max_integrity_segments(disk->queue, max_integrity_segments);
 }
 #else
-static void nvme_init_integrity(struct gendisk *disk, u16 ms, u8 pi_type)
+static void nvme_init_integrity(struct gendisk *disk, u16 ms, u8 pi_type,
+				u32 max_integrity_segments)
 {
 }
 #endif /* CONFIG_BLK_DEV_INTEGRITY */
@@ -1756,7 +1758,8 @@ static void nvme_update_disk_info(struct gendisk *disk,
 
 	if (ns->ms && (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED)) {
 		if ((ns->ctrl->opts && ns->ctrl->opts->pi_enable) || !ns->ext)
-			nvme_init_integrity(disk, ns->ms, ns->pi_type);
+			nvme_init_integrity(disk, ns->ms, ns->pi_type,
+					    ns->ctrl->max_integrity_segments);
 	}
 	if ((ns->ms && !nvme_ns_has_pi(ns) && !blk_get_integrity(disk)) ||
 	    ns->lba_shift > PAGE_SHIFT)
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 2637d9d..1a8b9bb 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -216,6 +216,7 @@ struct nvme_ctrl {
 	u32 page_size;
 	u32 max_hw_sectors;
 	u32 max_segments;
+	u32 max_integrity_segments;
 	u16 crdt[3];
 	u16 oncs;
 	u16 oacs;
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 86bd379..5397774 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2573,6 +2573,13 @@ static void nvme_reset_work(struct work_struct *work)
 		goto out;
 	}
 
+	/*
+	 * NVMe PCI driver doesn't support Extended LBA format so using 1
+	 * integrity segment should be enough for a separate contiguous
+	 * buffer of metadata.
+	 */
+	dev->ctrl.max_integrity_segments = 1;
+
 	result = nvme_init_identify(&dev->ctrl);
 	if (result)
 		goto out;
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
