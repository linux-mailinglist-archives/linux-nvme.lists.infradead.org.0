Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC551C3F41
	for <lists+linux-nvme@lfdr.de>; Mon,  4 May 2020 18:01:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EFVdNI+Tmc4Q1j+Nva89N4L1soDoig5vAsnSbkZYiAs=; b=pFLpVnid6sN5F+
	b7lI+voKVHq5UslnqabADhVXxo65jtMhZjZRcQoU/H7wxhtBr25dV3Q3KOvfl0+e7ym12DmBAG7iv
	ityNsdElstA8Ygre8TUCuPzWunGTDirXsPr/vOYPDp4YvDT4LDKREF70CkFYSCoXs21fDPEFTOq2o
	wmRuP8ObtuME+tLvDqROP4d3dPvIzZt2Bf/sdgS4GMreG0yyUdUoDxHTD/hNKqKD517wW8ZYOU1j8
	OXutvAZge0BDW3c9YiQmCqxVYON7eRgFmye6jWrFK7xpkYfl5U9o/EHO+xeTT/z1A12SLmzThZS99
	xw7yVAEuNU4TQvGyOppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVdWX-0006Vt-UU; Mon, 04 May 2020 16:00:53 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVdTs-00011s-Hk
 for linux-nvme@lists.infradead.org; Mon, 04 May 2020 15:58:13 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 4 May 2020 18:57:56 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 044FvtCI017882;
 Mon, 4 May 2020 18:57:56 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: maxg@mellanox.com, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, sagi@grimberg.me, martin.petersen@oracle.com,
 jsmart2021@gmail.com, axboe@kernel.dk
Subject: [PATCH 06/16] nvme: enforce extended LBA format for fabrics metadata
Date: Mon,  4 May 2020 18:57:45 +0300
Message-Id: <20200504155755.221125-7-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200504155755.221125-1-maxg@mellanox.com>
References: <20200504155755.221125-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200504_085808_985401_6C924FEF 
X-CRM114-Status: GOOD (  11.82  )
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

An extended LBA is a larger LBA that is created when metadata associated
with the LBA is transferred contiguously with the LBA data (AKA
interleaved). The metadata may be either transferred as part of the LBA
(creating an extended LBA) or it may be transferred as a separate
contiguous buffer of data. According to the NVMeoF spec, a fabrics ctrl
supports only an Extended LBA format. Fail revalidation in case we have a
spec violation. Also add a flag that will imply on capable transports and
controllers as part of a preparation for allowing end-to-end protection
information for fabric controllers.

Suggested-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 41 +++++++++++++++++++++++++++--------------
 1 file changed, 27 insertions(+), 14 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 89b1bfcb..f565281 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1913,9 +1913,10 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_mq_unfreeze_queue(disk->queue);
 }
 
-static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
+static int __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 {
 	struct nvme_ns *ns = disk->private_data;
+	struct nvme_ctrl *ctrl = ns->ctrl;
 	u32 iob;
 
 	/*
@@ -1926,9 +1927,9 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 	if (ns->lba_shift == 0)
 		ns->lba_shift = 9;
 
-	if ((ns->ctrl->quirks & NVME_QUIRK_STRIPE_SIZE) &&
-	    is_power_of_2(ns->ctrl->max_hw_sectors))
-		iob = ns->ctrl->max_hw_sectors;
+	if ((ctrl->quirks & NVME_QUIRK_STRIPE_SIZE) &&
+	    is_power_of_2(ctrl->max_hw_sectors))
+		iob = ctrl->max_hw_sectors;
 	else
 		iob = nvme_lba_to_sect(ns, le16_to_cpu(id->noiob));
 
@@ -1941,16 +1942,24 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 		ns->pi_type = 0;
 
 	if (ns->ms) {
-		if (id->flbas & NVME_NS_FLBAS_META_EXT)
-			ns->features |= NVME_NS_EXT_LBAS;
-
 		/*
-		 * For PCI, Extended logical block will be generated by the
-		 * controller. Non-extended format can be generated by the
-		 * block layer.
+		 * For PCIe only the separate metadata pointer is supported,
+		 * as the block layer supplies metadata in a separate bio_vec
+		 * chain. For Fabrics, only metadata as part of extended data
+		 * LBA is supported on the wire per the Fabrics specification,
+		 * but the HBA/HCA will do the remapping from the separate
+		 * metadata buffers for us.
 		 */
-		if (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED) {
-			if (!(ns->features & NVME_NS_EXT_LBAS))
+		if (id->flbas & NVME_NS_FLBAS_META_EXT) {
+			ns->features |= NVME_NS_EXT_LBAS;
+			if ((ctrl->ops->flags & NVME_F_FABRICS) &&
+			    (ctrl->ops->flags & NVME_F_METADATA_SUPPORTED) &&
+			    ctrl->max_integrity_segments)
+				ns->features |= NVME_NS_METADATA_SUPPORTED;
+		} else {
+			if (WARN_ON_ONCE(ctrl->ops->flags & NVME_F_FABRICS))
+				return -EINVAL;
+			if (ctrl->ops->flags & NVME_F_METADATA_SUPPORTED)
 				ns->features |= NVME_NS_METADATA_SUPPORTED;
 		}
 	}
@@ -1965,6 +1974,7 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 		revalidate_disk(ns->head->disk);
 	}
 #endif
+	return 0;
 }
 
 static int nvme_revalidate_disk(struct gendisk *disk)
@@ -2000,7 +2010,7 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 		goto free_id;
 	}
 
-	__nvme_revalidate_disk(disk, id);
+	ret = __nvme_revalidate_disk(disk, id);
 free_id:
 	kfree(id);
 out:
@@ -3654,7 +3664,8 @@ static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	memcpy(disk->disk_name, disk_name, DISK_NAME_LEN);
 	ns->disk = disk;
 
-	__nvme_revalidate_disk(disk, id);
+	if (__nvme_revalidate_disk(disk, id))
+		goto out_free_disk;
 
 	if ((ctrl->quirks & NVME_QUIRK_LIGHTNVM) && id->vs[0] == 0x1) {
 		ret = nvme_nvm_register(ns, disk_name, node);
@@ -3679,6 +3690,8 @@ static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	return;
  out_put_disk:
 	put_disk(ns->disk);
+ out_free_disk:
+	del_gendisk(ns->disk);
  out_unlink_ns:
 	mutex_lock(&ctrl->subsys->lock);
 	list_del_rcu(&ns->siblings);
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
