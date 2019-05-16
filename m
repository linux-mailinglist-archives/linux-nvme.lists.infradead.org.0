Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6DD820EEF
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 20:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nbTVkoQh2L83UKpoO26KZ/bUzAE0g7PNwHK/6UYjLfU=; b=us4rog0z9XHhmn
	C27Oh8zg4ZQW/ouTL2fW5ZnHdh+D9sdYBeCfsFumxPPhiDGa9phvEUpht4b5lWorlHwewEMQSGP8I
	myBYinWbkYXBsEAUf/kcvy4+BatMiQ86GyDzx2vcrLLdCzay0snOA9bInfVZRALh66lDpjT9d/Lkj
	7KTlHX88xMicEsO/fItOdmJEyzcFFH78/XcPUOe49q9JFgSy9KxQE0Y2eFIwcId3BxGnHeEWfBW3Y
	2Cr5gyLsKqfiszsqLXpTBOuLHT3xultzj062VQ/DaIpO/HwJJyXdsOr6nwDHBfcuBZNc4SFABIo6E
	O908WdPLOV8QUm/fguuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRLTp-0005Ru-HU; Thu, 16 May 2019 18:51:49 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRLTX-00059h-68; Thu, 16 May 2019 18:51:31 +0000
From: Christoph Hellwig <hch@lst.de>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 4/4] nvme: release namespace SRCU protection before performing
 controller ioctls
Date: Thu, 16 May 2019 20:50:36 +0200
Message-Id: <20190516185036.17394-4-hch@lst.de>
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

Holding the SRCU critical section protecting the namespace list can
cause deadlocks when using the per-namespace admin passthrough ioctl to
delete as namespace.  Release it earlier when performing per-controller
ioctls to avoid that.

Reported-by: Kenneth Heitke <kenneth.heitke@intel.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 25 ++++++++++++++++++++-----
 1 file changed, 20 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 27f4e0c4be69..a3102aabd525 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1394,14 +1394,31 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 	if (unlikely(!ns))
 		return -EWOULDBLOCK;
 
+	/*
+	 * Handle ioctls that apply to the controller instead of the namespace
+	 * seperately and drop the ns SRCU reference early.  This avoids a
+	 * deadlock when deleting namespaces using the passthrough interface.
+	 */
+	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd)) {
+		struct nvme_ctrl *ctrl = ns->ctrl;
+
+		nvme_get_ctrl(ns->ctrl);
+		nvme_put_ns_from_disk(head, srcu_idx);
+
+		if (cmd == NVME_IOCTL_ADMIN_CMD)
+			ret = nvme_user_cmd(ctrl, NULL, argp);
+		else
+			ret = sed_ioctl(ctrl->opal_dev, cmd, argp);
+
+		nvme_get_ctrl(ctrl);
+		return ret;
+	}
+
 	switch (cmd) {
 	case NVME_IOCTL_ID:
 		force_successful_syscall_return();
 		ret = ns->head->ns_id;
 		break;
-	case NVME_IOCTL_ADMIN_CMD:
-		ret = nvme_user_cmd(ns->ctrl, NULL, argp);
-		break;
 	case NVME_IOCTL_IO_CMD:
 		ret = nvme_user_cmd(ns->ctrl, ns, argp);
 		break;
@@ -1411,8 +1428,6 @@ static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
 	default:
 		if (ns->ndev)
 			ret = nvme_nvm_ioctl(ns, cmd, arg);
-		else if (is_sed_ioctl(cmd))
-			ret = sed_ioctl(ns->ctrl->opal_dev, cmd, argp);
 		else
 			ret = -ENOTTY;
 	}
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
