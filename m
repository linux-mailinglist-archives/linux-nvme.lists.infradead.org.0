Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A5CC1A2968
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 00:07:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=h+FMbbX8JFma8MfTxYrCjCLdKpxljPJyua/FpGHKjY8=; b=P0ddCJTT/smglc06MoG84bLCgc
	xYe7Do+H3XNew+8JVO9bPSvMimfxQ4grpXy0vDnuF7tQD9RyHA6N9pyIEWQevasvsJcv5v87q+/7f
	26RtGt5Zg7s7jBZgKRmszWKl73/3R1ZDXWXJUyWLT3KXr3w9nX0NrTHtqlwCbyGo+1GTMj7YsmXWd
	JijjCMkV5KjCGBnxPq3n4MZEhioSnNjYbJRcJRtWyLQzlHuCUVtSIaRBOybwD9sieD2Rhxw3HwBVj
	X5Rxo83DjDpl0JO37oYsL7WKG5O7dH0nqwiMy6OgJ2tnzSPyNLE/jcF2U2t5Zidtfs4P6GzWEB2Q1
	XbCKjl7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3SaC-0000FI-Vu; Thu, 29 Aug 2019 22:07:56 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SZ7-0007dt-6x; Thu, 29 Aug 2019 22:06:49 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v9 6/9] block_dev: split disk size check out of revalidate_disk
Date: Thu, 29 Aug 2019 15:06:42 -0700
Message-Id: <20190829220645.5480-7-sagi@grimberg.me>
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

Allow callers to call separately the ->revalidate_disk()
callout and the disk size change check separately. This
will help the caller to take action based on the return
status of ->revalidate_disk() and run the disk size check
afterwards.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 fs/block_dev.c     | 29 +++++++++++++++++------------
 include/linux/fs.h |  1 +
 2 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/fs/block_dev.c b/fs/block_dev.c
index a6f7c892cb4a..4939a093e2f8 100644
--- a/fs/block_dev.c
+++ b/fs/block_dev.c
@@ -1482,6 +1482,21 @@ void check_disk_size_change(struct gendisk *disk, struct block_device *bdev,
 	}
 }
 
+void check_disk_size(struct gendisk *disk, bool verbose)
+{
+	struct block_device *bdev = bdget_disk(disk, 0);
+
+	if (!bdev)
+		return;
+
+	mutex_lock(&bdev->bd_mutex);
+	check_disk_size_change(disk, bdev, verbose);
+	bdev->bd_invalidated = 0;
+	mutex_unlock(&bdev->bd_mutex);
+	bdput(bdev);
+}
+EXPORT_SYMBOL_GPL(check_disk_size);
+
 /**
  * revalidate_disk - wrapper for lower-level driver's revalidate_disk call-back
  * @disk: struct gendisk to be revalidated
@@ -1501,18 +1516,8 @@ int revalidate_disk(struct gendisk *disk)
 	 * Hidden disks don't have associated bdev so there's no point in
 	 * revalidating it.
 	 */
-	if (!(disk->flags & GENHD_FL_HIDDEN)) {
-		struct block_device *bdev = bdget_disk(disk, 0);
-
-		if (!bdev)
-			return ret;
-
-		mutex_lock(&bdev->bd_mutex);
-		check_disk_size_change(disk, bdev, ret == 0);
-		bdev->bd_invalidated = 0;
-		mutex_unlock(&bdev->bd_mutex);
-		bdput(bdev);
-	}
+	if (!(disk->flags & GENHD_FL_HIDDEN))
+		check_disk_size(disk, ret == 0);
 	return ret;
 }
 EXPORT_SYMBOL(revalidate_disk);
diff --git a/include/linux/fs.h b/include/linux/fs.h
index 997a530ff4e9..6649ad157317 100644
--- a/include/linux/fs.h
+++ b/include/linux/fs.h
@@ -2679,6 +2679,7 @@ extern bool is_bad_inode(struct inode *);
 extern void check_disk_size_change(struct gendisk *disk,
 		struct block_device *bdev, bool verbose);
 extern int revalidate_disk(struct gendisk *);
+extern void check_disk_size(struct gendisk *disk, bool verbose);
 extern int check_disk_change(struct block_device *);
 extern int __invalidate_device(struct block_device *, bool);
 extern int invalidate_partition(struct gendisk *, int);
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
