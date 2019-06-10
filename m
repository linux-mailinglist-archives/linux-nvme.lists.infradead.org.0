Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AEE463BEED
	for <lists+linux-nvme@lfdr.de>; Mon, 10 Jun 2019 23:50:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JQCi8WfQC0HgyzBBJ649H3vpWE7xJMpNrwfUdlYdzkM=; b=DKT
	jt7/xNgLZ4IKFk5KFRO78R3OGInUDOVOv38kdqXp3fTHwGLhIPTZEq/s0nZn+fn+67wb36krpGw5o
	bxJ9GO+ClKHq8Pyn6x9+2JvFDd54KZJOg6lKsi+nB8+awP1fBakILiRtQ0j2QOlFC1AiPum8TLKTa
	Dj3VUkCu3edUZ+azFdQ4ACx/8kZ00Ym+1qJlY8fwG46h950FHzCEZb6XEDzke3ZTKVQE6aOfO8Nzj
	8MP2Vl8WFJIIOIf4ZGJngTqhT2DWZDYs+awKdyW9ximkkPnPu76XitmjxkR9R0PhTpbK6kQgjSyhL
	231BCCsNr4/uv68tGGtybFBNttlSNhg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haSBA-0007Z0-6E; Mon, 10 Jun 2019 21:50:12 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1haSB0-00078S-Kg; Mon, 10 Jun 2019 21:50:02 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: fix possible io failures when removing multipathed ns
Date: Mon, 10 Jun 2019 14:50:01 -0700
Message-Id: <20190610215001.10079-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>,
 Anton Eidelman <anton@lightbitslabs.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Anton Eidelman <anton@lightbitslabs.com>

When a shared namespace is removed, we call blk_cleanup_queue()
when the device can still be accessed as the current path and this can
result in submission to a dying queue. Hence, direct_make_request()
called by our mpath device may fail (propagating the failure to userspace).
Instead, we want to failover this I/O to a different path if one exists.
Thus, before we cleanup the request queue, we make sure that the device is
cleared from the current path nor it can be selected again as such.

Fix this by:
- clear the ns from the head->list and synchronize rcu to make sure there is
  no concurrent path search that restores it as the current path
- clear the mpath current path in order to trigger a subsequent path search
  and sync srcu to wait for any ongoing request submissions
- safely continue to namespace removal and blk_cleanup_queue

Signed-off-by: Anton Eidelman <anton@lightbitslabs.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index b4e69a3fb845..024fb219de17 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3365,6 +3365,14 @@ static void nvme_ns_remove(struct nvme_ns *ns)
 		return;
 
 	nvme_fault_inject_fini(ns);
+
+	mutex_lock(&ns->ctrl->subsys->lock);
+	list_del_rcu(&ns->siblings);
+	mutex_unlock(&ns->ctrl->subsys->lock);
+	synchronize_rcu(); /* guarantee not available in head->list */
+	nvme_mpath_clear_current_path(ns);
+	synchronize_srcu(&ns->head->srcu); /* wait for concurrent submissions */
+
 	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
 		del_gendisk(ns->disk);
 		blk_cleanup_queue(ns->queue);
@@ -3372,16 +3380,10 @@ static void nvme_ns_remove(struct nvme_ns *ns)
 			blk_integrity_unregister(ns->disk);
 	}
 
-	mutex_lock(&ns->ctrl->subsys->lock);
-	list_del_rcu(&ns->siblings);
-	nvme_mpath_clear_current_path(ns);
-	mutex_unlock(&ns->ctrl->subsys->lock);
-
 	down_write(&ns->ctrl->namespaces_rwsem);
 	list_del_init(&ns->list);
 	up_write(&ns->ctrl->namespaces_rwsem);
 
-	synchronize_srcu(&ns->head->srcu);
 	nvme_mpath_check_last_path(ns);
 	nvme_put_ns(ns);
 }
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
