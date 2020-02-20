Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421E0166115
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Feb 2020 16:36:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=s8dzDGBx4Ma/+qTo7xRfIprxWYHHAT7gAqQiyiVdxAY=; b=jCmNH7enm2O53z
	26yzDz9Ih2CtjVoA91TY/00SWRXHTJXM1py/NsIo8doTXh7GpbebBzDSA3wYjRnNZdwHynLk2vG1E
	1+/o+LVHbv8KaWXzyWkmPSgFwjxijKrvItfKOj79azE+y6vcEnkSCQg3Z40HYRob7obIwsXwxyi0w
	irk8/VFmpb68NSsMnp0wgLyGDZwRJmI5rKuqfzQcVOUqckz3cT0yV2aC5sNbRL2pmH4K58unZ5KRa
	EFkf+SZ2ktOQhoe1P1NLVRYDaKdCClnJjyZprl5kHTnyEJpBAzucJtoZHtx1khlCq1rKn+6akVD41
	gEeoC7jyvk61e6dvY1fA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4nry-00015o-HI; Thu, 20 Feb 2020 15:36:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nre-0000w2-7j
 for linux-nvme@bombadil.infradead.org; Thu, 20 Feb 2020 15:35:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=FfZ/CPqOsmeEcxpSb+nrUPj9eN/SEHnRpBBZaPuD/LE=; b=IBySOLSqViK/A90LkKlrdhIHpT
 9D53zfhfQ+PrJtnxTuB6z9pLrUytS4ID6iwxbEUKvVU2fSJ0xI/hCsLrR1pbMGwQFxDlyjQ6ORg+y
 TJSIO8Y9oyYkYYPhfKkd3NjzR69/WKQY+31Fzvj+W6rnnfFhOGxg12Umdy8EzGxGmEUZ+QnqNwH7p
 jE07Xld6pqqDFFSpMsuFAxvierlfZQJHttFEma+8yQIf2LdArOtyiMAJArzUTU1NV4mfB69eLqdOF
 rIrW8yqMt2rR8ewvAVtkrAhro5tQ4jb41kjgAuZ2rS7f4HpTWY4/Ux4IuDMo2DEus1YJhbIulhTHD
 dHGNFXrg==;
Received: from mail.kernel.org ([198.145.29.99])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4nD2-0005L6-91
 for linux-nvme@lists.infradead.org; Thu, 20 Feb 2020 14:53:51 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7D357208C4;
 Thu, 20 Feb 2020 14:53:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582210424;
 bh=h93Hg3asQUNlxSI9wBe7jse9kY9QP1/QVnSaUgsTOQE=;
 h=From:To:Cc:Subject:Date:From;
 b=0jQggoaAskJ86r5YWxzA+FW64tFNGs6FFHZvEMVzKIwLl+bxfcABtd9hxXhvRZRRk
 Bt77zjCV5RG2nCri1nIjD2hBEarPm9G+cvTiqVuDluTKc93CGSjxqbzVPdAXRzWjL9
 tXvIBas4qtLcTfyLFzjGyZeRazb4C61cGJvwGntY=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH] nvme-multipath: do not reset on unknown status
Date: Thu, 20 Feb 2020 23:52:41 +0900
Message-Id: <20200220145241.12982-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_145348_749073_261B0E19 
X-CRM114-Status: GOOD (  14.20  )
X-Spam-Score: -7.1 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-7.1 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>, hare@suse.de,
 John Meneghini <johnm@netapp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: John Meneghini <johnm@netapp.com>

The nvme multipath error handling defaults to controller reset if the
error is unknown. There are, however, no existing nvme status codes that
indicate a reset should be used, and resetting causes unnecessary
disruption to the rest of IO.

Change nvme's error handling to first check if failover should happen.
If not, let the normal error handling take over rather than reset the
controller.

Signed-off-by: John Meneghini <johnm@netapp.com>
[changelog]
Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c      |  4 +---
 drivers/nvme/host/multipath.c | 21 +++++++++------------
 drivers/nvme/host/nvme.h      |  5 +++--
 3 files changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 84914223c537..0eef1ef8c659 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -292,10 +292,8 @@ void nvme_complete_rq(struct request *req)
 
 	if (unlikely(status != BLK_STS_OK && nvme_req_needs_retry(req))) {
 		if ((req->cmd_flags & REQ_NVME_MPATH) &&
-		    blk_path_error(status)) {
-			nvme_failover_req(req);
+		    nvme_failover_req(req))
 			return;
-		}
 
 		if (!blk_queue_dying(req->q)) {
 			nvme_retry_req(req);
diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 797c18337d96..16df0baaeb40 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -64,17 +64,12 @@ void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
 	}
 }
 
-void nvme_failover_req(struct request *req)
+bool nvme_failover_req(struct request *req)
 {
 	struct nvme_ns *ns = req->q->queuedata;
 	u16 status = nvme_req(req)->status;
 	unsigned long flags;
 
-	spin_lock_irqsave(&ns->head->requeue_lock, flags);
-	blk_steal_bios(&ns->head->requeue_list, req);
-	spin_unlock_irqrestore(&ns->head->requeue_lock, flags);
-	blk_mq_end_request(req, 0);
-
 	switch (status & 0x7ff) {
 	case NVME_SC_ANA_TRANSITION:
 	case NVME_SC_ANA_INACCESSIBLE:
@@ -103,15 +98,17 @@ void nvme_failover_req(struct request *req)
 		nvme_mpath_clear_current_path(ns);
 		break;
 	default:
-		/*
-		 * Reset the controller for any non-ANA error as we don't know
-		 * what caused the error.
-		 */
-		nvme_reset_ctrl(ns->ctrl);
-		break;
+		/* This was a non-ANA error so follow the normal error path. */
+		return false;
 	}
 
+	spin_lock_irqsave(&ns->head->requeue_lock, flags);
+	blk_steal_bios(&ns->head->requeue_list, req);
+	spin_unlock_irqrestore(&ns->head->requeue_lock, flags);
+	blk_mq_end_request(req, 0);
+
 	kblockd_schedule_work(&ns->head->requeue_work);
+	return true;
 }
 
 void nvme_kick_requeue_lists(struct nvme_ctrl *ctrl)
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 1024fec7914c..d800b9a51c2c 100644
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
@@ -599,8 +599,9 @@ static inline void nvme_set_disk_name(char *disk_name, struct nvme_ns *ns,
 	sprintf(disk_name, "nvme%dn%d", ctrl->instance, ns->head->instance);
 }
 
-static inline void nvme_failover_req(struct request *req)
+static inline bool nvme_failover_req(struct request *req)
 {
+	return false;
 }
 static inline void nvme_kick_requeue_lists(struct nvme_ctrl *ctrl)
 {
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
