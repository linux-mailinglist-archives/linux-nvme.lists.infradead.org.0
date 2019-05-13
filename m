Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 561BB1B048
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 08:26:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XeWThInoMf40SZBEiex6cUFourgaCjb7w28hANy6/kQ=; b=abHx8S+I/6zzG0
	SxCHgDyeso0ByA09MGt2vuoKbAGA8/QnMTnrynBLZ9Lulp16QW1VVhMM8fJL4BB74z3AagOS7Pm6x
	D8CEM7Zl/9RTQCUIF5RX3nnR8gI7VvxBHp+OEPebSW/8iSA9eSBuhiVSQOWxcxmJyBAL3puB6MlSq
	NeLkYUllNQ/m2RD4WbY00PxgEW/ogyPiU8OsKFeHv7f1cP5DpafSOnTsjvodPZVwf6eVJ6vyEFLAi
	apYXH0uPuWltgLkXQGmtaoCKSvgM/RKElqoOuhfWslNKsmFeHnvI462w38nOEb7Z4BMzZvpepMnTx
	q1OkyOvRByXUDz9SgLeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4PV-0003Cb-AV; Mon, 13 May 2019 06:26:05 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4PM-00038v-Qe; Mon, 13 May 2019 06:25:57 +0000
From: Christoph Hellwig <hch@lst.de>
To: hare@suse.de
Subject: [PATCH 1/2] nvme: change locking for the per-subsystem controller list
Date: Mon, 13 May 2019 08:25:09 +0200
Message-Id: <20190513062510.756-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190513062510.756-1-hch@lst.de>
References: <20190513062510.756-1-hch@lst.de>
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Life becomes a lot simpler if we just use the global
nvme_subsystems_lock to protect this list.  Given that it is only
accessed during controller probing and removal that isn't a scalability
problem either.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 32 ++++++++++++++------------------
 1 file changed, 14 insertions(+), 18 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index eebaeadaa800..70a2bc01e41e 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2346,13 +2346,13 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
 	int count = 0;
 	struct nvme_ctrl *ctrl;
 
-	mutex_lock(&subsys->lock);
+	lockdep_assert_held(&nvme_subsystems_lock);
+
 	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
 		if (ctrl->state != NVME_CTRL_DELETING &&
 		    ctrl->state != NVME_CTRL_DEAD)
 			count++;
 	}
-	mutex_unlock(&subsys->lock);
 
 	return count;
 }
@@ -2394,6 +2394,9 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	mutex_lock(&nvme_subsystems_lock);
 	found = __nvme_find_get_subsystem(subsys->subnqn);
 	if (found) {
+		__nvme_release_subsystem(subsys);
+		subsys = found;
+
 		/*
 		 * Verify that the subsystem actually supports multiple
 		 * controllers, else bail out.
@@ -2402,14 +2405,10 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 		    nvme_active_ctrls(found) && !(id->cmic & (1 << 1))) {
 			dev_err(ctrl->device,
 				"ignoring ctrl due to duplicate subnqn (%s).\n",
-				found->subnqn);
-			nvme_put_subsystem(found);
+				subsys->subnqn);
 			ret = -EINVAL;
-			goto out_unlock;
+			goto out_put_subsystem;
 		}
-
-		__nvme_release_subsystem(subsys);
-		subsys = found;
 	} else {
 		ret = device_add(&subsys->dev);
 		if (ret) {
@@ -2421,23 +2420,20 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 		list_add_tail(&subsys->entry, &nvme_subsystems);
 	}
 
-	ctrl->subsys = subsys;
-	mutex_unlock(&nvme_subsystems_lock);
-
 	if (sysfs_create_link(&subsys->dev.kobj, &ctrl->device->kobj,
 			dev_name(ctrl->device))) {
 		dev_err(ctrl->device,
 			"failed to create sysfs link from subsystem.\n");
-		/* the transport driver will eventually put the subsystem */
-		return -EINVAL;
+		goto out_put_subsystem;
 	}
 
-	mutex_lock(&subsys->lock);
+	ctrl->subsys = subsys;
 	list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
-	mutex_unlock(&subsys->lock);
-
+	mutex_unlock(&nvme_subsystems_lock);
 	return 0;
 
+out_put_subsystem:
+	nvme_put_subsystem(subsys);
 out_unlock:
 	mutex_unlock(&nvme_subsystems_lock);
 	put_device(&subsys->dev);
@@ -3695,10 +3691,10 @@ static void nvme_free_ctrl(struct device *dev)
 	__free_page(ctrl->discard_page);
 
 	if (subsys) {
-		mutex_lock(&subsys->lock);
+		mutex_lock(&nvme_subsystems_lock);
 		list_del(&ctrl->subsys_entry);
-		mutex_unlock(&subsys->lock);
 		sysfs_remove_link(&subsys->dev.kobj, dev_name(ctrl->device));
+		mutex_unlock(&nvme_subsystems_lock);
 	}
 
 	ctrl->ops->free_ctrl(ctrl);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
