Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A09E07D62D
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 09:17:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eMtTTmwc0u51qbO3ABCBlMKVPJryErQY7BDEpZY+7G4=; b=lHneUPXpPqACoxaHgkMlhsOgbE
	BBfCPLKIE8lE1f2d+08rptFuydHK8JWMRXgtWkybueRMdTqladw8d9JhOXbud2WdgJOLVCWJX80IY
	XfClG9NannODQ9v9AN3/p7I4roxtqL0QicR5N7v7bdA+QT9I9PxRPAGervg6Ow+EyqY5hlAAjgUhX
	zqiW6YbnoQY6GwLxekkCbFgPO5RatTSGXZeNjqtyPcv8eUruo8klYPtWeIFcPzPl2XI6uLng9KQvo
	rtcEIN+AEjwh9DDJG+1HSJj9nyk0mP9yi6AiOPij9KeNjVfwdSRhupC+2x7Brq06h3jCjICaxEx6A
	KQlDRoQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5Ki-0002Zn-Kw; Thu, 01 Aug 2019 07:17:04 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5KT-0002UV-Mr
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 07:16:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 0969CADC4;
 Thu,  1 Aug 2019 07:16:46 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 1/2] nvme: skip namespaces which are about to be removed
Date: Thu,  1 Aug 2019 09:16:43 +0200
Message-Id: <20190801071644.66690-2-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190801071644.66690-1-hare@suse.de>
References: <20190801071644.66690-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_001649_947830_5B1A6D50 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_ns_remove() will only remove the namespaces from the list at
the very last step, so we might run into situations where we iterate
over namespaces which are about to be deleted.
To avoid crashes we should be skipping all namespaces with the
NVME_NS_REMOVING flag set.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/core.c | 19 ++++++++++++++++++-
 1 file changed, 18 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index fcfff0a17a17..177fa4185775 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1303,9 +1303,12 @@ static void nvme_update_formats(struct nvme_ctrl *ctrl)
 	struct nvme_ns *ns;
 
 	down_read(&ctrl->namespaces_rwsem);
-	list_for_each_entry(ns, &ctrl->namespaces, list)
+	list_for_each_entry(ns, &ctrl->namespaces, list) {
+		if (test_bit(NVME_NS_REMOVING, &ns->flags))
+			continue;
 		if (ns->disk && nvme_revalidate_disk(ns->disk))
 			nvme_set_queue_dying(ns);
+	}
 	up_read(&ctrl->namespaces_rwsem);
 
 	nvme_remove_invalid_namespaces(ctrl, NVME_NSID_ALL);
@@ -1698,6 +1701,10 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 {
 	struct nvme_ns *ns = disk->private_data;
 
+	/* if ns is removing we cannot mangle with the request queue */
+	if (test_bit(NVME_NS_REMOVING, &ns->flags))
+		return;
+
 	/*
 	 * If identify namespace failed, use default 512 byte block size so
 	 * block layer can use before failing read/write for 0 capacity.
@@ -2776,6 +2783,10 @@ static int nvme_dev_user_cmd(struct nvme_ctrl *ctrl, void __user *argp)
 		ret = -EINVAL;
 		goto out_unlock;
 	}
+	if (test_bit(NVME_NS_REMOVING, &ns->flags)) {
+		ret = -ENODEV;
+		goto out_unlock;
+	}
 
 	dev_warn(ctrl->device,
 		"using deprecated NVME_IOCTL_IO_CMD ioctl on the char device!\n");
@@ -3255,6 +3266,10 @@ static struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 		if (ns->head->ns_id == nsid) {
 			if (!kref_get_unless_zero(&ns->kref))
 				continue;
+			if (test_bit(NVME_NS_REMOVING, &ns->flags)) {
+				nvme_put_ns(ns);
+				continue;
+			}
 			ret = ns;
 			break;
 		}
@@ -3445,6 +3460,8 @@ static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
 
 	down_write(&ctrl->namespaces_rwsem);
 	list_for_each_entry_safe(ns, next, &ctrl->namespaces, list) {
+		if (test_bit(NVME_NS_REMOVING, &ns->flags))
+			continue;
 		if (ns->head->ns_id > nsid || test_bit(NVME_NS_DEAD, &ns->flags))
 			list_move_tail(&ns->list, &rm_list);
 	}
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
