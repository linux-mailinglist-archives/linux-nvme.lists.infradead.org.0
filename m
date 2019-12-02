Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C605910EBCE
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 15:50:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MNwoTudtLiuPOM01C8ZsmLN5c+wG6bnHI7jspUb/rQ8=; b=Sit+PlEUu1PHqZ
	JHHVGH+2I80td3LOmJlxdNNx9e7dQw5q31JNVq+zYH92jJxXeTizkfmiSIPcxsV9CeEq+wwnqoGAp
	HdwlJ5vOsYOGR941nkrcz8bUz7h0ukMKKQmN6r++p/jleZvszA5jS00fo06+Ej4TiZwir1uavOYbL
	AGY6gda+o7C1/mEzyTMw9hL+13pfBKutmR1EDTzKGrk8yWnEV8qkbzwtMKJ5A4u7nPVBL+HPU/32E
	vbSwX1DxDiHMSJRotKKD4SUJXtdEiF9cuyZRxb6NLbk0o0iNtOvXWy74+ZeEv55pBjjBwHXMQqZ9j
	XEc/oTCdLod8xbZiYT2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibn1r-0006nE-2Z; Mon, 02 Dec 2019 14:50:23 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibmzx-0005S2-Bw
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 14:48:30 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 2 Dec 2019 16:48:12 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xB2EmC1q004689;
 Mon, 2 Dec 2019 16:48:12 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me, martin.petersen@oracle.com
Subject: [PATCH 02/16] nvme: Enforce extended LBA format for fabrics metadata
Date: Mon,  2 Dec 2019 16:47:58 +0200
Message-Id: <20191202144812.147686-4-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191202144812.147686-1-maxg@mellanox.com>
References: <20191202144812.147686-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_064825_878047_7C8A4346 
X-CRM114-Status: GOOD (  11.53  )
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, oren@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

An extended LBA is a larger LBA that is created when metadata associated
with the LBA is transferred contiguously with the LBA data (AKA
interleaved). The metadata may be either transferred as part of the LBA
(creating an extended LBA) or it may be transferred as a separate
contiguous buffer of data. According to the NVMeoF spec, a fabrics ctrl
supports only an Extended LBA format. Fail revalidation in case we have a
spec violation. Also initialize the integrity profile for the block device
for fabrics ctrl.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Israel Rukshin <israelr@mellanox.com>
---
 drivers/nvme/host/core.c | 25 +++++++++++++++++++++----
 1 file changed, 21 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 2e027627ab58..2ebaa9edc08b 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1816,7 +1816,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_mq_unfreeze_queue(disk->queue);
 }
 
-static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
+static int __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 {
 	struct nvme_ns *ns = disk->private_data;
 
@@ -1843,12 +1843,22 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 		if (id->flbas & NVME_NS_FLBAS_META_EXT)
 			ns->features |= NVME_NS_EXT_LBAS;
 
+		/*
+		 * For Fabrics, only metadata as part of extended data LBA is
+		 * supported. Fail in case of a spec violation.
+		 */
+		if (ns->ctrl->ops->flags & NVME_F_FABRICS) {
+			if (WARN_ON_ONCE(!(ns->features & NVME_NS_EXT_LBAS)))
+				return -EINVAL;
+		}
+
 		/*
 		 * For PCI, Extended logical block will be generated by the
 		 * controller.
 		 */
 		if (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED) {
-			if (!(ns->features & NVME_NS_EXT_LBAS))
+			if (ns->ctrl->ops->flags & NVME_F_FABRICS ||
+			    !(ns->features & NVME_NS_EXT_LBAS))
 				ns->features |= NVME_NS_DIX_SUPPORTED;
 		}
 	}
@@ -1863,6 +1873,7 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 		revalidate_disk(ns->head->disk);
 	}
 #endif
+	return 0;
 }
 
 static int nvme_revalidate_disk(struct gendisk *disk)
@@ -1887,7 +1898,10 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 		goto free_id;
 	}
 
-	__nvme_revalidate_disk(disk, id);
+	ret = __nvme_revalidate_disk(disk, id);
+	if (ret)
+		goto free_id;
+
 	ret = nvme_report_ns_ids(ctrl, ns->head->ns_id, id, &ids);
 	if (ret)
 		goto free_id;
@@ -3563,7 +3577,8 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	memcpy(disk->disk_name, disk_name, DISK_NAME_LEN);
 	ns->disk = disk;
 
-	__nvme_revalidate_disk(disk, id);
+	if (__nvme_revalidate_disk(disk, id))
+		goto out_free_disk;
 
 	if ((ctrl->quirks & NVME_QUIRK_LIGHTNVM) && id->vs[0] == 0x1) {
 		ret = nvme_nvm_register(ns, disk_name, node);
@@ -3588,6 +3603,8 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	return 0;
  out_put_disk:
 	put_disk(ns->disk);
+ out_free_disk:
+	del_gendisk(ns->disk);
  out_unlink_ns:
 	mutex_lock(&ctrl->subsys->lock);
 	list_del_rcu(&ns->siblings);
-- 
2.16.3


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
