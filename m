Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 562071C40AA
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 19:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7k161unmzy6XBJK4OFAOcD81RmWec0eonAAv/GrdZrQ=; b=nzlMPpRozF6z6H
	+MbfKadb4fkAUz/j0MTSeYiRkHTduI24K7Q0dR3zycYwZZYU0LUujdaMHdKwGpOvwrxkMdZSvuX5q
	+KCveoWNM9kNeUJbdkmiCgSrzSDODub//oqMn+ke1qFHgts+opLOHGlRBZNaK9narXv36c57wdkor
	Do7ZgAa7saWKRn9sH4Crdel1TXBN6DHj7Q7XQ6NMB1DApT2d2QLpHxxrr1s+t0Y7x2iGyMW8nsxK8
	Ub9qQE+LWgoNAKRn023wdoGbNs3JYMiOpUpNam3gaHur0aDBbzoCCj+5+LPMqd2S6TWqke5Fv+6Og
	YEqB99+iuH/mk4GLNXVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVeSH-00062B-Ag; Mon, 04 May 2020 17:00:33 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdTo-0000z2-Tr
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 15:58:07 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 4 May 2020 18:57:57 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 044FvtCM017882;
 Mon, 4 May 2020 18:57:56 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: maxg@mellanox.com, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
Subject: [PATCH 10/16] nvmet: add metadata characteristics for a namespace
Date: Mon,  4 May 2020 18:57:49 +0300
Message-Id: <20200504155755.221125-11-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200504155755.221125-1-maxg@mellanox.com>
References: <20200504155755.221125-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_085805_366155_A331F17B 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: vladimirk@mellanox.com, shlomin@mellanox.com, israelr@mellanox.com,
 idanb@mellanox.com, oren@mellanox.com, nitzanc@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

Fill those namespace fields from the block device format for adding
metadata (T10-PI) over fabric support with block devices.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/target/io-cmd-bdev.c | 22 ++++++++++++++++++++++
 drivers/nvme/target/nvmet.h       |  3 +++
 2 files changed, 25 insertions(+)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 0427e04..45dc644 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -47,6 +47,22 @@ void nvmet_bdev_set_limits(struct block_device *bdev, struct nvme_id_ns *id)
 	id->nows = to0based(ql->io_opt / ql->logical_block_size);
 }
 
+static void nvmet_bdev_ns_enable_integrity(struct nvmet_ns *ns)
+{
+	struct blk_integrity *bi = bdev_get_integrity(ns->bdev);
+
+	if (bi) {
+		ns->metadata_size = bi->tuple_size;
+		if (bi->profile == &t10_pi_type1_crc)
+			ns->pi_type = NVME_NS_DPS_PI_TYPE1;
+		else if (bi->profile == &t10_pi_type3_crc)
+			ns->pi_type = NVME_NS_DPS_PI_TYPE3;
+		else
+			/* Unsupported metadata type */
+			ns->metadata_size = 0;
+	}
+}
+
 int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
 {
 	int ret;
@@ -64,6 +80,12 @@ int nvmet_bdev_ns_enable(struct nvmet_ns *ns)
 	}
 	ns->size = i_size_read(ns->bdev->bd_inode);
 	ns->blksize_shift = blksize_bits(bdev_logical_block_size(ns->bdev));
+
+	ns->pi_type = 0;
+	ns->metadata_size = 0;
+	if (IS_ENABLED(CONFIG_BLK_DEV_INTEGRITY))
+		nvmet_bdev_ns_enable_integrity(ns);
+
 	return 0;
 }
 
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 3d981eb..b9fb57b 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -19,6 +19,7 @@
 #include <linux/rcupdate.h>
 #include <linux/blkdev.h>
 #include <linux/radix-tree.h>
+#include <linux/t10-pi.h>
 
 #define NVMET_ASYNC_EVENTS		4
 #define NVMET_ERROR_LOG_SLOTS		128
@@ -77,6 +78,8 @@ struct nvmet_ns {
 
 	int			use_p2pmem;
 	struct pci_dev		*p2p_dev;
+	int			pi_type;
+	int			metadata_size;
 };
 
 static inline struct nvmet_ns *to_nvmet_ns(struct config_item *item)
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
