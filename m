Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AC3CA296A
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 00:08:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cRhjS0phDZbX5um8Cr5irU8/JW2SSFVI0s5WeoGFKwI=; b=oB7pXts1tFC7QfM2NU1sMN95E6
	EdgDMFO0Po1SDoJ+tyG7iR5EGASQ3sMlAo4GHSOwm0WZcuFqC6rSKKCRqmTriqKCTQMo6L0UtRksR
	zX+QrOaA4dgDDs8+5gSZG0mFmIciisWiu+EYSWm/JWttgz4D92KGkdavLmedkEWFyznFGG8+Y7P50
	ZNLrvwMDLB+gA96LRirlo8pALgtQKB6WzJQv4CEMYnrjRkhjPcaz3gUmaOmoTyxSaidO5++Cf6ss7
	zcTig2tdSjYvuOpcrFpWWDHUeJXq99D0Pe+DLXgm864u1w41mge84vr02wWDbONji/bk2aJePFfKZ
	Aj2n3oLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SaV-0000bm-S4; Thu, 29 Aug 2019 22:08:15 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SZ7-0007dt-Oc; Thu, 29 Aug 2019 22:06:49 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v9 8/9] nvme: don't leak nvme status codes to the block layer
Date: Thu, 29 Aug 2019 15:06:44 -0700
Message-Id: <20190829220645.5480-9-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829220645.5480-1-sagi@grimberg.me>
References: <20190829220645.5480-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In case revalidate returned an nvme status, convert it to
a proper errno. We keep the existing functionality as we will
still care about the nvme status in nvme_validate_ns.

Rename __nvme_revalidate_disk to nvme_revalidate_ns as it is
operating on the namespace.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 22 +++++++++++++++-------
 1 file changed, 15 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8f0881dec907..a7d86a050f85 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1701,10 +1701,8 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_mq_unfreeze_queue(disk->queue);
 }
 
-static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
+static void nvme_revalidate_ns(struct nvme_ns *ns, struct nvme_id_ns *id)
 {
-	struct nvme_ns *ns = disk->private_data;
-
 	/*
 	 * If identify namespace failed, use default 512 byte block size so
 	 * block layer can use before failing read/write for 0 capacity.
@@ -1723,7 +1721,7 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 
 	if (ns->noiob)
 		nvme_set_chunk_size(ns);
-	nvme_update_disk_info(disk, ns, id);
+	nvme_update_disk_info(ns->disk, ns, id);
 #ifdef CONFIG_NVME_MULTIPATH
 	if (ns->head->disk) {
 		nvme_update_disk_info(ns->head->disk, ns, id);
@@ -1732,7 +1730,7 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 #endif
 }
 
-static int nvme_revalidate_disk(struct gendisk *disk)
+static int __nvme_revalidate_disk(struct gendisk *disk)
 {
 	struct nvme_ns *ns = disk->private_data;
 	struct nvme_ctrl *ctrl = ns->ctrl;
@@ -1754,7 +1752,7 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 		goto out;
 	}
 
-	__nvme_revalidate_disk(disk, id);
+	nvme_revalidate_ns(ns, id);
 	ret = nvme_report_ns_ids(ctrl, ns->head->ns_id, id, &ids);
 	if (ret)
 		goto out;
@@ -1770,6 +1768,16 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 	return ret;
 }
 
+static int nvme_revalidate_disk(struct gendisk *disk)
+{
+	int ret;
+
+	ret = __nvme_revalidate_disk(disk);
+	if (ret > 0)
+		return blk_status_to_errno(nvme_error_status(ret));
+	return ret;
+}
+
 static char nvme_pr_type(enum pr_type type)
 {
 	switch (type) {
@@ -3370,7 +3378,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	memcpy(disk->disk_name, disk_name, DISK_NAME_LEN);
 	ns->disk = disk;
 
-	__nvme_revalidate_disk(disk, id);
+	nvme_revalidate_ns(ns, id);
 
 	if ((ctrl->quirks & NVME_QUIRK_LIGHTNVM) && id->vs[0] == 0x1) {
 		ret = nvme_nvm_register(ns, disk_name, node);
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
