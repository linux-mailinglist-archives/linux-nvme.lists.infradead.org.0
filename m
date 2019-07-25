Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A2175715
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gjJ+FK4dbVQPlip9y6z7TlOefKB75kSB4IARFBW7VxU=; b=fak
	nyhJ+oWRdqDH38PNNu+JXBTGwM6GKPkVvE+ijGl146IYyYPaN4qnobJYdCelp2DzrDifT2cS40I92
	lU6sk8UsmavOc+6xv3I/mz3y82Y05SvKXxXRMGlZ9vg82Uvh1lvLjFPVUBBjPHOj0A9+M7jDfDfMO
	+jXidPhKFSDa8ycmLa3oo0xHE1N0hGPUtdBnoCGn0JDMPzAdrfErNohe/+L5jzXqQfmZfy4qqaGGr
	gBrs5lQEUq1X8ft9o3wO9Sdd/xNkBP7q19FRmWijBwG9cJXkHqXy9WQHW6mzNdS+1xKMq4d+tx2kG
	JTaFBP4Kk1npLuryKwS/EhRTWPzcKOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqid3-0006un-I6; Thu, 25 Jul 2019 18:38:13 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hqicr-0006n4-TV; Thu, 25 Jul 2019 18:38:01 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: fix controller removal race with scan work
Date: Thu, 25 Jul 2019 11:37:58 -0700
Message-Id: <20190725183758.3318-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

With multipath enabled, nvme_scan_work() can read from the device
(through nvme_mpath_add_disk()) and hang [1]. However, with fabrics,
once ctrl->state is set to NVME_CTRL_DELETING, the reads will hang
(see nvmf_check_ready()) and the mpath stack device make_request
will block if head->list is not empty. However, when the head->list
consistst of only DELETING/DEAD controllers, we should actually not
block, but rather fail immediately.

In addition, before we go ahead and remove the namespaces, make sure
to clear the current path and kick the requeue list so that the
request will fast fail upon requeuing.

[1]:
--
  INFO: task kworker/u4:3:166 blocked for more than 120 seconds.
        Not tainted 5.2.0-rc6-vmlocalyes-00005-g808c8c2dc0cf #316
  "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
  kworker/u4:3    D    0   166      2 0x80004000
  Workqueue: nvme-wq nvme_scan_work
  Call Trace:
   __schedule+0x851/0x1400
   schedule+0x99/0x210
   io_schedule+0x21/0x70
   do_read_cache_page+0xa57/0x1330
   read_cache_page+0x4a/0x70
   read_dev_sector+0xbf/0x380
   amiga_partition+0xc4/0x1230
   check_partition+0x30f/0x630
   rescan_partitions+0x19a/0x980
   __blkdev_get+0x85a/0x12f0
   blkdev_get+0x2a5/0x790
   __device_add_disk+0xe25/0x1250
   device_add_disk+0x13/0x20
   nvme_mpath_set_live+0x172/0x2b0
   nvme_update_ns_ana_state+0x130/0x180
   nvme_set_ns_ana_state+0x9a/0xb0
   nvme_parse_ana_log+0x1c3/0x4a0
   nvme_mpath_add_disk+0x157/0x290
   nvme_validate_ns+0x1017/0x1bd0
   nvme_scan_work+0x44d/0x6a0
   process_one_work+0x7d7/0x1240
   worker_thread+0x8e/0xff0
   kthread+0x2c3/0x3b0
   ret_from_fork+0x35/0x40

   INFO: task kworker/u4:1:1034 blocked for more than 120 seconds.
        Not tainted 5.2.0-rc6-vmlocalyes-00005-g808c8c2dc0cf #316
  "echo 0 > /proc/sys/kernel/hung_task_timeout_secs" disables this message.
  kworker/u4:1    D    0  1034      2 0x80004000
  Workqueue: nvme-delete-wq nvme_delete_ctrl_work
  Call Trace:
   __schedule+0x851/0x1400
   schedule+0x99/0x210
   schedule_timeout+0x390/0x830
   wait_for_completion+0x1a7/0x310
   __flush_work+0x241/0x5d0
   flush_work+0x10/0x20
   nvme_remove_namespaces+0x85/0x3d0
   nvme_do_delete_ctrl+0xb4/0x1e0
   nvme_delete_ctrl_work+0x15/0x20
   process_one_work+0x7d7/0x1240
   worker_thread+0x8e/0xff0
   kthread+0x2c3/0x3b0
   ret_from_fork+0x35/0x40
--

Reported-by: Logan Gunthorpe <logang@deltatee.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c      | 11 +++++++++++
 drivers/nvme/host/multipath.c | 35 +++++++++++++++++++++++++++++------
 drivers/nvme/host/nvme.h      |  2 +-
 3 files changed, 41 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1c2863216082..bb5cf7e80969 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3577,6 +3577,17 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
 	struct nvme_ns *ns, *next;
 	LIST_HEAD(ns_list);
 
+	/*
+	 * make sure to requeue I/O to all namespaces as these
+	 * might result from the scan itself and must complete
+	 * for the scan_work to make progress
+	 */
+	mutex_lock(&ctrl->scan_lock);
+	list_for_each_entry(ns, &ctrl->namespaces, list)
+		if (nvme_mpath_clear_current_path(ns))
+			kblockd_schedule_work(&ns->head->requeue_work);
+	mutex_unlock(&ctrl->scan_lock);
+
 	/* prevent racing with ns scanning */
 	flush_work(&ctrl->scan_work);
 
diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index a9a927677970..6fc156891c86 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -109,18 +109,23 @@ static const char *nvme_ana_state_names[] = {
 	[NVME_ANA_CHANGE]		= "change",
 };
 
-void nvme_mpath_clear_current_path(struct nvme_ns *ns)
+bool nvme_mpath_clear_current_path(struct nvme_ns *ns)
 {
 	struct nvme_ns_head *head = ns->head;
+	bool changed = false;
 	int node;
 
 	if (!head)
-		return;
+		goto out;
 
 	for_each_node(node) {
-		if (ns == rcu_access_pointer(head->current_path[node]))
+		if (ns == rcu_access_pointer(head->current_path[node])) {
 			rcu_assign_pointer(head->current_path[node], NULL);
+			changed = true;
+		}
 	}
+out:
+	return changed;
 }
 
 static bool nvme_path_is_disabled(struct nvme_ns *ns)
@@ -231,6 +236,24 @@ inline struct nvme_ns *nvme_find_path(struct nvme_ns_head *head)
 	return ns;
 }
 
+static bool nvme_available_path(struct nvme_ns_head *head)
+{
+	struct nvme_ns *ns;
+
+	list_for_each_entry_rcu(ns, &head->list, siblings) {
+		switch (ns->ctrl->state) {
+		case NVME_CTRL_LIVE:
+		case NVME_CTRL_RESETTING:
+		case NVME_CTRL_CONNECTING:
+			/* fallthru */
+			return true;
+		default:
+			break;
+		}
+	}
+	return false;
+}
+
 static blk_qc_t nvme_ns_head_make_request(struct request_queue *q,
 		struct bio *bio)
 {
@@ -257,14 +280,14 @@ static blk_qc_t nvme_ns_head_make_request(struct request_queue *q,
 				      disk_devt(ns->head->disk),
 				      bio->bi_iter.bi_sector);
 		ret = direct_make_request(bio);
-	} else if (!list_empty_careful(&head->list)) {
-		dev_warn_ratelimited(dev, "no path available - requeuing I/O\n");
+	} else if (nvme_available_path(head)) {
+		dev_warn_ratelimited(dev, "no usable path - requeuing I/O\n");
 
 		spin_lock_irq(&head->requeue_lock);
 		bio_list_add(&head->requeue_list, bio);
 		spin_unlock_irq(&head->requeue_lock);
 	} else {
-		dev_warn_ratelimited(dev, "no path - failing I/O\n");
+		dev_warn_ratelimited(dev, "no available path - failing I/O\n");
 
 		bio->bi_status = BLK_STS_IOERR;
 		bio_endio(bio);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 740241e84d29..cf3a882bf14e 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -496,7 +496,7 @@ void nvme_mpath_remove_disk(struct nvme_ns_head *head);
 int nvme_mpath_init(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id);
 void nvme_mpath_uninit(struct nvme_ctrl *ctrl);
 void nvme_mpath_stop(struct nvme_ctrl *ctrl);
-void nvme_mpath_clear_current_path(struct nvme_ns *ns);
+bool nvme_mpath_clear_current_path(struct nvme_ns *ns);
 struct nvme_ns *nvme_find_path(struct nvme_ns_head *head);
 
 static inline void nvme_mpath_check_last_path(struct nvme_ns *ns)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
