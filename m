Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 602FD17300
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 09:56:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=yDzpr8mRsisueTf5On8pSWtBzfZAoEkadpq0h0ZV+/E=; b=jvxmWImyn9NQ5b
	fqJvBXxDgKMh20Gh2mO5BXt2WdBdyQV+GDz8oyo6xFN5r10LQkf2R8c1fHQ2GIP7m8LMr0COCZXl8
	jOR9Q7qv5h7PQG4sYFMCab9qPfYuna3tkEqYdFzEP88NAvG9oBG7uB2kN9ydWc4jvzZYfbnCJ3jy6
	wsbmjo6DawsiBpb+9wRWFJfbV/4S4DOR2H1UL6IMc6LYSWyhr/z0GGbli6ATlu4Un11RSPibd99pU
	DjB0tBgLG+IUzVhMJrgNjC875tJEoEy0aST+3VpCf3A7TTVTIeffsTubgAeJLLjUiS7bvi5z7vWML
	gb/02Za4rVafnxs5hoCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHQf-00039P-Bx; Wed, 08 May 2019 07:55:53 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHQa-00038r-Oo; Wed, 08 May 2019 07:55:49 +0000
From: Christoph Hellwig <hch@lst.de>
To: hare@suse.de
Subject: [PATCH,
 RFC 1/2] nvme: change locking for the per-subsystem controller list
Date: Wed,  8 May 2019 09:55:07 +0200
Message-Id: <20190508075508.28552-1-hch@lst.de>
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
 drivers/nvme/host/core.c | 30 ++++++++++++------------------
 1 file changed, 12 insertions(+), 18 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index eebaeadaa800..4f4ffcce7416 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2346,13 +2346,11 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
 	int count = 0;
 	struct nvme_ctrl *ctrl;
 
-	mutex_lock(&subsys->lock);
 	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
 		if (ctrl->state != NVME_CTRL_DELETING &&
 		    ctrl->state != NVME_CTRL_DEAD)
 			count++;
 	}
-	mutex_unlock(&subsys->lock);
 
 	return count;
 }
@@ -2394,6 +2392,9 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	mutex_lock(&nvme_subsystems_lock);
 	found = __nvme_find_get_subsystem(subsys->subnqn);
 	if (found) {
+		__nvme_release_subsystem(subsys);
+		subsys = found;
+
 		/*
 		 * Verify that the subsystem actually supports multiple
 		 * controllers, else bail out.
@@ -2402,14 +2403,10 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
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
@@ -2421,23 +2418,20 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
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
@@ -3695,10 +3689,10 @@ static void nvme_free_ctrl(struct device *dev)
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
