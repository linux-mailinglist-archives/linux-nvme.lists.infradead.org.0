Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7613515AA36
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Feb 2020 14:42:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GQD713EzitbR1GzMZpdLhvRS8StQE/Qo269zkO+g/mk=; b=PBw
	KM0c+IihWOjZI6cTw+NxKiOy9DindKxmd1CegdF+cEZTsPyUfMrxSq91hoW97beHzju9+0LDWxzyW
	LmmeScyemNLMc5GUYk0qB7kUMQ4a4W5Bo14ZWJwEmrwlWIfAxYRUKoGnoi7WD10PsaEK4b+MT7svR
	ydlB7WwCut0XUBEmm67OVYAoL1YKM5eh7r5lTtTLoNJviTCdXANtaRkSvQ9VbX2fDDaOwcFSDe4aO
	urx9xA6XSTetJrTneEJV7KmhXan694BsquUM8hNpGuiIljN4pDEsv1ZeiIQqNGzKxa5OaYpAt55Mk
	xkqK0AkvgTgLhBqWYHiV78FEYHiOPMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1sHG-00071F-Cr; Wed, 12 Feb 2020 13:42:06 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1sH5-0006rH-Az
 for linux-nvme@lists.infradead.org; Wed, 12 Feb 2020 13:41:57 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id DFC86AE54;
 Wed, 12 Feb 2020 13:41:53 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH] nvme-multipath: do not reset controller on unknown status
Date: Wed, 12 Feb 2020 14:41:40 +0100
Message-Id: <20200212134140.105817-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_054155_680652_813EE1A2 
X-CRM114-Status: GOOD (  16.59  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 John Managhini <john.meneghini@netapp.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We're seeing occasional controller resets during straight I/O,
but only when multipath is active.
The problem here is the nvme-multipath will reset the controller
on every unknown status, which really is an odd behaviour, seeing
that the host already received a perfectly good status; it's just
that it's not smart enough to understand it.
And resetting wouldn't help at all; the error status will continue
to be received.
So we should rather pass up any unknown error to the generic
routines and let them deal with this situation.

Signed-off-by: Hannes Reinecke <hare@suse.de>
Cc: John Managhini <john.meneghini@netapp.com>
---
 drivers/nvme/host/core.c      |  4 ++--
 drivers/nvme/host/multipath.c | 18 ++++++++++--------
 drivers/nvme/host/nvme.h      |  2 +-
 3 files changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 5dc32b72e7fa..edb081781ae7 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -293,8 +293,8 @@ void nvme_complete_rq(struct request *req)
 	if (unlikely(status != BLK_STS_OK && nvme_req_needs_retry(req))) {
 		if ((req->cmd_flags & REQ_NVME_MPATH) &&
 		    blk_path_error(status)) {
-			nvme_failover_req(req);
-			return;
+			if (nvme_failover_req(req))
+				return;
 		}
 
 		if (!blk_queue_dying(req->q)) {
diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 797c18337d96..71e8acae78eb 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -64,16 +64,16 @@ void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
 	}
 }
 
-void nvme_failover_req(struct request *req)
+bool nvme_failover_req(struct request *req)
 {
 	struct nvme_ns *ns = req->q->queuedata;
 	u16 status = nvme_req(req)->status;
 	unsigned long flags;
+	bool handled = false;
 
 	spin_lock_irqsave(&ns->head->requeue_lock, flags);
 	blk_steal_bios(&ns->head->requeue_list, req);
 	spin_unlock_irqrestore(&ns->head->requeue_lock, flags);
-	blk_mq_end_request(req, 0);
 
 	switch (status & 0x7ff) {
 	case NVME_SC_ANA_TRANSITION:
@@ -88,11 +88,13 @@ void nvme_failover_req(struct request *req)
 		 * mark the the path as pending and kick of a re-read of the ANA
 		 * log page ASAP.
 		 */
+		blk_mq_end_request(req, 0);
 		nvme_mpath_clear_current_path(ns);
 		if (ns->ctrl->ana_log_buf) {
 			set_bit(NVME_NS_ANA_PENDING, &ns->flags);
 			queue_work(nvme_wq, &ns->ctrl->ana_work);
 		}
+		handled = true;
 		break;
 	case NVME_SC_HOST_PATH_ERROR:
 	case NVME_SC_HOST_ABORTED_CMD:
@@ -100,18 +102,18 @@ void nvme_failover_req(struct request *req)
 		 * Temporary transport disruption in talking to the controller.
 		 * Try to send on a new path.
 		 */
+		blk_mq_end_request(req, 0);
 		nvme_mpath_clear_current_path(ns);
+		handled = true;
 		break;
 	default:
-		/*
-		 * Reset the controller for any non-ANA error as we don't know
-		 * what caused the error.
-		 */
-		nvme_reset_ctrl(ns->ctrl);
+		/* Delegate to common error handling */
 		break;
 	}
 
-	kblockd_schedule_work(&ns->head->requeue_work);
+	if (handled)
+		kblockd_schedule_work(&ns->head->requeue_work);
+	return handled;
 }
 
 void nvme_kick_requeue_lists(struct nvme_ctrl *ctrl)
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 1024fec7914c..7e28084f71af 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -550,7 +550,7 @@ void nvme_mpath_wait_freeze(struct nvme_subsystem *subsys);
 void nvme_mpath_start_freeze(struct nvme_subsystem *subsys);
 void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
 			struct nvme_ctrl *ctrl, int *flags);
-void nvme_failover_req(struct request *req);
+bool nvme_failover_req(struct request *req);
 void nvme_kick_requeue_lists(struct nvme_ctrl *ctrl);
 int nvme_mpath_alloc_disk(struct nvme_ctrl *ctrl,struct nvme_ns_head *head);
 void nvme_mpath_add_disk(struct nvme_ns *ns, struct nvme_id_ns *id);
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
