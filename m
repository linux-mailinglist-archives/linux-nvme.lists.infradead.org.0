Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F124F2168A
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 11:48:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jCOmB0yNSAVaS3Wi0Hbp0pgEXpIT2GVTFk61pYftZT8=; b=BdFAwXu1fG2Lrr
	JgeFTTE1W9K+EBVeZE9qqtAAk0TstyI1vpP5asdfH4KDlOEpxYJpMgx75N95U2VvIgbTjsjtaonWB
	HKz/x+2gxgQ3bAtXC2JG0ug9T7Abz8YSVefFVC0PVkSkhRv2ZhYIJGzmOSZRKX8MdZ48O5lqbEh08
	kXO07z1yJz4NrHLvUnmdeQ2HVDxtgf1c/smNXlqCIgl6YS06KmkgnDdss+Dnq8RsuMtW0CgEoOrDe
	aS89KvZw6sSISS6LqsGQa9uk/d47Ji1PFx4PPqbNuLAiQia01ap0S0j4S5cA3kOpbLZBo45kHorMs
	Xi4M9UTMWSmZJ7JtYpfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZTc-0000Tz-Mo; Fri, 17 May 2019 09:48:32 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZTW-0000TT-IL; Fri, 17 May 2019 09:48:27 +0000
From: Christoph Hellwig <hch@lst.de>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/4] nvme: fix srcu locking on error return in
 nvme_get_ns_from_disk
Date: Fri, 17 May 2019 11:47:33 +0200
Message-Id: <20190517094736.14504-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: kbusch@kernel.org, Keith Busch <keith.busch@intel.com>,
 kenneth.heitke@intel.com, Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If we can't get a namespace don't leak the SRCU lock.  nvme_ioctl was
working around this, but nvme_pr_command wasn't handling this properly.
Just do what callers would usually expect.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Keith Busch <keith.busch@intel.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/core.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 7da80f375315..63146060df66 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1361,9 +1361,14 @@ static struct nvme_ns *nvme_get_ns_from_disk(struct gendisk *disk,
 {
 #ifdef CONFIG_NVME_MULTIPATH
 	if (disk->fops == &nvme_ns_head_ops) {
+		struct nvme_ns *ns;
+
 		*head = disk->private_data;
 		*srcu_idx = srcu_read_lock(&(*head)->srcu);
-		return nvme_find_path(*head);
+		ns = nvme_find_path(*head);
+		if (!ns)
+			srcu_read_unlock(&(*head)->srcu, *srcu_idx);
+		return ns;
 	}
 #endif
 	*head = NULL;
@@ -1410,9 +1415,9 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 
 	ns = nvme_get_ns_from_disk(bdev->bd_disk, &head, &srcu_idx);
 	if (unlikely(!ns))
-		ret = -EWOULDBLOCK;
-	else
-		ret = nvme_ns_ioctl(ns, cmd, arg);
+		return -EWOULDBLOCK;
+
+	ret = nvme_ns_ioctl(ns, cmd, arg);
 	nvme_put_ns_from_disk(head, srcu_idx);
 	return ret;
 }
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
