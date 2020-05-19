Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9003C1D990B
	for <lists+linux-nvme@lfdr.de>; Tue, 19 May 2020 16:10:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Js8cmCEFCL1NnkRxeuABeA0qfj+5PRJ8M/u4d8Z7IWc=; b=RVhHQfeh1d7lBX
	d9BpE8eOWR4w4NNkih0J48efb74vZ64LU/7RHNUVJMxZDsMJ+bggTt10EYkHrG7rjCKAiQ28f2ygN
	SEidmMEauX5ytfCuVByFZJNf8GBSFcAUgLrJAl+gi2SZ5DsdXtO/VeKhfLBHRqKMc/UmGb8nhUQEj
	hMA/P4oFUZ2lJq0FG2o8EhFAsFxDXQq5eUg/QANAW6Nyp6M8hiUJiQo0cjwAICxRKKQZh17ruTJS+
	zF9m5PQeJt2PHCB4DaeEIZQCDWu8byYSlAYNAWiEoV69fwf4Uvi1dZuCz3Otnc/4fL/+E8bAEn8K+
	Igm61b9ECTiwuG4TqmdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb2wN-0004PW-LI; Tue, 19 May 2020 14:09:55 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2tA-0001jj-7w
 for linux-nvme@bombadil.infradead.org; Tue, 19 May 2020 14:06:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=j10FQ5mZgYmiRozvpVaYSOPBjUHS3msc0iDNpE3HN2c=; b=162zHyaYd0o9/o7tSj8IYBMgWD
 DvDUiB4QKTbmOcshEYmURYSDSgW+1NgF9QxgquZ94tusSpQl0hM27Bvc48rnUo9GLqRrcYxiDs5c8
 cjZrWzhiLCmbij6tC1EyfXz8HcyXcMxy6c9SMnevBtLydLfRvabxXfeBNN+dJGRVAj29IohQQQgvb
 SyrbNzIa41p3J1BJblrGI6i2r+8DaKtEL7ScCOsY2blGM2MS85rOrYokwhluPpdVNUcWgZ3G1LcCF
 gniZOkSRJ8s/aLjVQIgL5ocKiHdiHE9QwfLxUtwIrannLCgJ7XFgRvboUUzIwhkMtStm7e4W26vqC
 +sodotmQ==;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb2t1-0000vI-PH
 for linux-nvme@lists.infradead.org; Tue, 19 May 2020 14:06:35 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 19 May 2020 17:06:04 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 04JE63xk006590;
 Tue, 19 May 2020 17:06:03 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: sagi@grimberg.me, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, martin.petersen@oracle.com, jsmart2021@gmail.com,
 axboe@kernel.dk
Subject: [PATCH 03/16] nvme: introduce NVME_NS_METADATA_SUPPORTED flag
Date: Tue, 19 May 2020 17:05:50 +0300
Message-Id: <20200519140603.166576-4-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200519140603.166576-1-maxg@mellanox.com>
References: <20200519140603.166576-1-maxg@mellanox.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_SPF_HELO_TEMPERROR   SPF: test of HELO record failed (temperror)
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
Cc: vladimirk@mellanox.com, shlomin@mellanox.com, israelr@mellanox.com,
 James Smart <james.smart@broadcom.com>, idanb@mellanox.com, oren@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>, nitzanc@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is a preparation for adding support for metadata in fabric
controllers. New flag will imply that NVMe namespace supports getting
metadata that was originally generated by host's block layer.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
---
 drivers/nvme/host/core.c | 41 ++++++++++++++++++++++++++++++++++-------
 drivers/nvme/host/nvme.h |  1 +
 2 files changed, 35 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e6487bf..cbab79d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1882,13 +1882,27 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_queue_io_min(disk->queue, phys_bs);
 	blk_queue_io_opt(disk->queue, io_opt);
 
-	if (ns->ms && !(ns->features & NVME_NS_EXT_LBAS) &&
-	    (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED))
-		nvme_init_integrity(disk, ns->ms, ns->pi_type);
-	if ((ns->ms && !nvme_ns_has_pi(ns) && !blk_get_integrity(disk)) ||
-	    ns->lba_shift > PAGE_SHIFT)
+	/*
+	 * The block layer can't support LBA sizes larger than the page size
+	 * yet, so catch this early and don't allow block I/O.
+	 */
+	if (ns->lba_shift > PAGE_SHIFT)
 		capacity = 0;
 
+	/*
+	 * Register a metadata profile for PI, or the plain non-integrity NVMe
+	 * metadata masquerading as Type 0 if supported, otherwise reject block
+	 * I/O to namespaces with metadata except when the namespace supports
+	 * PI, as it can strip/insert in that case.
+	 */
+	if (ns->ms) {
+		if (IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY) &&
+		    (ns->features & NVME_NS_METADATA_SUPPORTED))
+			nvme_init_integrity(disk, ns->ms, ns->pi_type);
+		else if (!nvme_ns_has_pi(ns))
+			capacity = 0;
+	}
+
 	set_capacity_revalidate_and_notify(disk, capacity, false);
 
 	nvme_config_discard(disk, ns);
@@ -1923,14 +1937,27 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 
 	ns->features = 0;
 	ns->ms = le16_to_cpu(id->lbaf[id->flbas & NVME_NS_FLBAS_LBA_MASK].ms);
-	if (ns->ms && (id->flbas & NVME_NS_FLBAS_META_EXT))
-		ns->features |= NVME_NS_EXT_LBAS;
 	/* the PI implementation requires metadata equal t10 pi tuple size */
 	if (ns->ms == sizeof(struct t10_pi_tuple))
 		ns->pi_type = id->dps & NVME_NS_DPS_PI_MASK;
 	else
 		ns->pi_type = 0;
 
+	if (ns->ms) {
+		if (id->flbas & NVME_NS_FLBAS_META_EXT)
+			ns->features |= NVME_NS_EXT_LBAS;
+
+		/*
+		 * For PCI, Extended logical block will be generated by the
+		 * controller. Non-extended format can be generated by the
+		 * block layer.
+		 */
+		if (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED) {
+			if (!(ns->features & NVME_NS_EXT_LBAS))
+				ns->features |= NVME_NS_METADATA_SUPPORTED;
+		}
+	}
+
 	if (iob)
 		blk_queue_chunk_sectors(ns->queue, rounddown_pow_of_two(iob));
 	nvme_update_disk_info(disk, ns, id);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 110577c7..0dda145 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -366,6 +366,7 @@ struct nvme_ns_head {
 
 enum nvme_ns_features {
 	NVME_NS_EXT_LBAS = 1 << 0, /* support extended LBA format */
+	NVME_NS_METADATA_SUPPORTED = 1 << 1, /* support getting generated md */
 };
 
 struct nvme_ns {
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
