Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 914E820EEE
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 20:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VxzCuvvLSRC9g97IJZzGBY3JN4W1f3cCII5+ffa97+Y=; b=ZMtzeUkULgqpTb
	vX52GjnhORX5O2u6mnB9SQffTq2mA1c4a/zmtBiX4r2JYtbEqPNx6H040091DeoQpzKKpBFvP6wWv
	NDXFSAYzwch71e4RCVz/uFa24fXt2UklS4CLBcL29amnaGg5Ko0DLYH/owtwyssKmIIH5JRctFfDa
	nBoGwdixyyzluEYPOngGPyUZ9darHBzjPRi5RdtG3dXy2SmO67OcbZdVo0nntEgsocakzBBSOffSl
	yvyZ1+emvR9pYYmHjp2yjMJZx13Mke0YrEuA9m/HyLSPJj8JT7DiXZ130i4jIxaSLsHPjBYE4+422
	73oygCSuhTQxUfwa7/zA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRLTh-0005Ht-Vo; Thu, 16 May 2019 18:51:42 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRLTU-000566-M1; Thu, 16 May 2019 18:51:29 +0000
From: Christoph Hellwig <hch@lst.de>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/4] nvme: merge nvme_ns_ioctl into nvme_ioctl
Date: Thu, 16 May 2019 20:50:35 +0200
Message-Id: <20190516185036.17394-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190516185036.17394-1-hch@lst.de>
References: <20190516185036.17394-1-hch@lst.de>
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
Cc: kbusch@kernel.org, kenneth.heitke@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Merge the two functions to make future changes a little easier.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 47 ++++++++++++++++++++--------------------
 1 file changed, 24 insertions(+), 23 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 7f72d57efc27..27f4e0c4be69 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1382,32 +1382,11 @@ static void nvme_put_ns_from_disk(struct nvme_ns_head *head, int idx)
 		srcu_read_unlock(&head->srcu, idx);
 }
 
-static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
-{
-	switch (cmd) {
-	case NVME_IOCTL_ID:
-		force_successful_syscall_return();
-		return ns->head->ns_id;
-	case NVME_IOCTL_ADMIN_CMD:
-		return nvme_user_cmd(ns->ctrl, NULL, (void __user *)arg);
-	case NVME_IOCTL_IO_CMD:
-		return nvme_user_cmd(ns->ctrl, ns, (void __user *)arg);
-	case NVME_IOCTL_SUBMIT_IO:
-		return nvme_submit_io(ns, (void __user *)arg);
-	default:
-		if (ns->ndev)
-			return nvme_nvm_ioctl(ns, cmd, arg);
-		if (is_sed_ioctl(cmd))
-			return sed_ioctl(ns->ctrl->opal_dev, cmd,
-					 (void __user *) arg);
-		return -ENOTTY;
-	}
-}
-
 static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 		unsigned int cmd, unsigned long arg)
 {
 	struct nvme_ns_head *head = NULL;
+	void __user *argp = (void __user *)arg;
 	struct nvme_ns *ns;
 	int srcu_idx, ret;
 
@@ -1415,7 +1394,29 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 	if (unlikely(!ns))
 		return -EWOULDBLOCK;
 
-	ret = nvme_ns_ioctl(ns, cmd, arg);
+	switch (cmd) {
+	case NVME_IOCTL_ID:
+		force_successful_syscall_return();
+		ret = ns->head->ns_id;
+		break;
+	case NVME_IOCTL_ADMIN_CMD:
+		ret = nvme_user_cmd(ns->ctrl, NULL, argp);
+		break;
+	case NVME_IOCTL_IO_CMD:
+		ret = nvme_user_cmd(ns->ctrl, ns, argp);
+		break;
+	case NVME_IOCTL_SUBMIT_IO:
+		ret = nvme_submit_io(ns, argp);
+		break;
+	default:
+		if (ns->ndev)
+			ret = nvme_nvm_ioctl(ns, cmd, arg);
+		else if (is_sed_ioctl(cmd))
+			ret = sed_ioctl(ns->ctrl->opal_dev, cmd, argp);
+		else
+			ret = -ENOTTY;
+	}
+
 	nvme_put_ns_from_disk(head, srcu_idx);
 	return ret;
 }
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
