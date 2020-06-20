Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CED97201EAB
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jun 2020 01:36:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VJourkWnSVJopAbpphlt3dImsanmB3V19M/ojW1sx/c=; b=lGLIKKHboiK2tK
	xpjp858Pz8Mm1UX8UjbewAgO8O92yDi0AW/YfxYULmW5qQpRW9pPje02KyiH8Yh0KyQzVLrH9rpwF
	6sGWUZflHGu8Hk87sHFDuFUgL10aNhH7oJxVNiYKNOVTQ8xNs4/d5HUdWqJA6fWIu/3KX2O/6VZho
	2RW1BWDzOPt62n4w5x6WYarikoFdngscPbMrI4g/HsgU8yZgNXOsKHY2Y2a3PFkQEQ7PZhDs80PTt
	AMDrTWtKhDlNcM7SYqueca5pRrZBM3ILm6VQEdT0BqWFimvrv9TNruBV2fWNn0/8LFHBgQgDdfs6z
	SvVV3VUzagBUoeYrraDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmQXy-0007Kr-GY; Fri, 19 Jun 2020 23:35:46 +0000
Received: from [2601:647:4802:9070:4430:34bd:1e1c:d6bc]
 (helo=localhost.localdomain)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQXC-0004Qq-Mz; Fri, 19 Jun 2020 23:34:58 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH 3/5] nvme: don't protect ns mutation with ns->head->lock
Date: Fri, 19 Jun 2020 16:34:54 -0700
Message-Id: <20200619233456.379778-4-sagi@grimberg.me>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619233456.379778-1-sagi@grimberg.me>
References: <20200619233456.379778-1-sagi@grimberg.me>
MIME-Version: 1.0
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
Cc: Anton Eidelman <anton@lightbitslabs.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Right now ns->head->lock is protecting namespace mutation
which is wrong and unneeded. Move it to only protect
against head mutations. While we're at it, remove unnecessary
ns->head reference as we already have head pointer.

Fixes: 0d0b660f214d ("nvme: add ANA support")
Signed-off-by: Anton Eidelman <anton@lightbitslabs.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/multipath.c | 12 ++++--------
 1 file changed, 4 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index a646f9eb2e73..c8fc42e37138 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -409,11 +409,10 @@ static void nvme_mpath_set_live(struct nvme_ns *ns)
 {
 	struct nvme_ns_head *head = ns->head;
 
-	lockdep_assert_held(&ns->head->lock);
-
 	if (!head->disk)
 		return;
 
+	mutex_lock(&head->lock);
 	if (!(head->disk->flags & GENHD_FL_UP))
 		device_add_disk(&head->subsys->dev, head->disk,
 				nvme_ns_id_attr_groups);
@@ -427,8 +426,9 @@ static void nvme_mpath_set_live(struct nvme_ns *ns)
 		srcu_read_unlock(&head->srcu, srcu_idx);
 	}
 
-	synchronize_srcu(&ns->head->srcu);
-	kblockd_schedule_work(&ns->head->requeue_work);
+	synchronize_srcu(&head->srcu);
+	kblockd_schedule_work(&head->requeue_work);
+	mutex_unlock(&head->lock);
 }
 
 static int nvme_parse_ana_log(struct nvme_ctrl *ctrl, void *data,
@@ -483,14 +483,12 @@ static inline bool nvme_state_is_live(enum nvme_ana_state state)
 static void nvme_update_ns_ana_state(struct nvme_ana_group_desc *desc,
 		struct nvme_ns *ns)
 {
-	mutex_lock(&ns->head->lock);
 	ns->ana_grpid = le32_to_cpu(desc->grpid);
 	ns->ana_state = desc->state;
 	clear_bit(NVME_NS_ANA_PENDING, &ns->flags);
 
 	if (nvme_state_is_live(ns->ana_state))
 		nvme_mpath_set_live(ns);
-	mutex_unlock(&ns->head->lock);
 }
 
 static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
@@ -670,10 +668,8 @@ void nvme_mpath_add_disk(struct nvme_ns *ns, struct nvme_id_ns *id)
 			nvme_update_ns_ana_state(&desc, ns);
 		}
 	} else {
-		mutex_lock(&ns->head->lock);
 		ns->ana_state = NVME_ANA_OPTIMIZED; 
 		nvme_mpath_set_live(ns);
-		mutex_unlock(&ns->head->lock);
 	}
 
 	if (bdi_cap_stable_pages_required(ns->queue->backing_dev_info)) {
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
