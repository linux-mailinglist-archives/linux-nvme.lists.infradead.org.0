Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA0C286BF0
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=N+DQsOTqGZxRnj5wlyc3tmkPhgvb8cYvGlaKwdQ4rhw=; b=lVVk7c/063uEcf/3XQmudN+11T
	zibVeSla1hZAB3+lcTOM/KefpaoqS49pTfFIfMR5hLlchGPSvBcJ8Bst/hxOp3oemYoom4O4tNLUY
	SXRbg3slnYKVp6aMaQXgLXMOxW5ecsFafzAnrK5BxkuQO1ymbc7SeQ/JDmHcfdVpPrFDI88Pe0Mk7
	wwpSpOvN3meWli4nJscfBvSDuEmxjfjgXV+tIdjR47UpHOLl8HVojnhfrPDDUV6u30vEuLMgK52hE
	+yaTEU0Jynlmx+DBzpWvWxc7A3pBkWTjwTghHjRoxLx6EyejoHemBokZNHS3xzP/Fp9MFk0C3sW+J
	uH1Ka8KA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpQD-0001cK-GV; Thu, 08 Aug 2019 20:54:05 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpPg-00013b-28; Thu, 08 Aug 2019 20:53:32 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 3/7] nvme: make nvme_identify_ns propagate errors back
Date: Thu,  8 Aug 2019 13:53:21 -0700
Message-Id: <20190808205325.24036-4-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808205325.24036-1-sagi@grimberg.me>
References: <20190808205325.24036-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

right now callers of nvme_identify_ns only know that it failed,
but don't know why. Make nvme_identify_ns propagate the error back.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f435c85c4062..e503fd14de81 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1108,13 +1108,13 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
 
 	id = kmalloc(sizeof(*id), GFP_KERNEL);
 	if (!id)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	error = nvme_submit_sync_cmd(ctrl->admin_q, &c, id, sizeof(*id));
 	if (error) {
 		dev_warn(ctrl->device, "Identify namespace failed (%d)\n", error);
 		kfree(id);
-		return NULL;
+		return ERR_PTR(error);
 	}
 
 	return id;
@@ -1748,8 +1748,8 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 	}
 
 	id = nvme_identify_ns(ctrl, ns->head->ns_id);
-	if (!id)
-		return -ENODEV;
+	if (IS_ERR(id))
+		return PTR_ERR(id);
 
 	if (id->ncap == 0) {
 		ret = -ENODEV;
@@ -3337,8 +3337,8 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	nvme_set_queue_limits(ctrl, ns->queue);
 
 	id = nvme_identify_ns(ctrl, nsid);
-	if (!id) {
-		ret = -EIO;
+	if (IS_ERR(id)) {
+		ret = PTR_ERR(id);
 		goto out_free_queue;
 	}
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
