Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3929A74E
	for <lists+linux-nvme@lfdr.de>; Fri, 23 Aug 2019 07:57:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1PudSxtlLd83gLwE9XP1WAmn16fx9hkOS292U4eGUWw=; b=XJiWRCg+C5c1pWUhyegyJbG4M3
	nGzTjeNBlyRtQVbQ8fU/Hx5jGgXUbDrLu8wvEFInsZiw4fSwmVzivHC/ndIkOfZcTtFSY5DN2MTHs
	s02MgvtyYbQy760lRdsJSDg+GIV/MfZ29/ZzVYbuE8/+Yh2N8+2V2wyNt9h5pwbE7xMoOe/C0Kf40
	4J2Aenb4ifPFzIEUt44hayE9KhGBt1g3s10J3wlvA6l4pfMSLbHzDRTQQZM371/8sM6VGXsWqEi98
	tJG5PSOVN4lO1IMB+r1sVQ1VcpIxRhfvvi1al2Os/AS0mfKQ9RFdsg0hXaWgK+B4qSf23qlmLa9Jk
	agGMunfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i12ZM-0006e6-TF; Fri, 23 Aug 2019 05:57:05 +0000
Received: from [2601:647:4800:973f:7c34:e13b:6185:5c2a]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i12X8-0004dE-7V; Fri, 23 Aug 2019 05:54:46 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org,
	Christoph Hellwig <hch@lst.de>
Subject: [PATCH v8 2/7] nvme: make nvme_identify_ns propagate errors back
Date: Thu, 22 Aug 2019 22:54:37 -0700
Message-Id: <20190823055442.19148-3-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823055442.19148-1-sagi@grimberg.me>
References: <20190823055442.19148-1-sagi@grimberg.me>
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
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

right now callers of nvme_identify_ns only know that it failed,
but don't know why. Make nvme_identify_ns propagate the error back.
Because nvme_submit_sync_cmd may return a positive status code, we
make nvme_identify_ns receive the id by reference and return that
status up the call chain.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 30 +++++++++++++-----------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ea50794c0b60..37ed5506d3ba 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1090,10 +1090,9 @@ static int nvme_identify_ns_list(struct nvme_ctrl *dev, unsigned nsid, __le32 *n
 				    NVME_IDENTIFY_DATA_SIZE);
 }
 
-static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
-		unsigned nsid)
+static int nvme_identify_ns(struct nvme_ctrl *ctrl,
+		unsigned nsid, struct nvme_id_ns **id)
 {
-	struct nvme_id_ns *id;
 	struct nvme_command c = { };
 	int error;
 
@@ -1102,18 +1101,17 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
 	c.identify.nsid = cpu_to_le32(nsid);
 	c.identify.cns = NVME_ID_CNS_NS;
 
-	id = kmalloc(sizeof(*id), GFP_KERNEL);
-	if (!id)
-		return NULL;
+	*id = kmalloc(sizeof(**id), GFP_KERNEL);
+	if (!*id)
+		return -ENOMEM;
 
-	error = nvme_submit_sync_cmd(ctrl->admin_q, &c, id, sizeof(*id));
+	error = nvme_submit_sync_cmd(ctrl->admin_q, &c, *id, sizeof(**id));
 	if (error) {
 		dev_warn(ctrl->device, "Identify namespace failed (%d)\n", error);
-		kfree(id);
-		return NULL;
+		kfree(*id);
 	}
 
-	return id;
+	return error;
 }
 
 static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned int fid,
@@ -1743,9 +1741,9 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 		return -ENODEV;
 	}
 
-	id = nvme_identify_ns(ctrl, ns->head->ns_id);
-	if (!id)
-		return -ENODEV;
+	ret = nvme_identify_ns(ctrl, ns->head->ns_id, &id);
+	if (ret)
+		return ret;
 
 	if (id->ncap == 0) {
 		ret = -ENODEV;
@@ -3344,11 +3342,9 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	blk_queue_logical_block_size(ns->queue, 1 << ns->lba_shift);
 	nvme_set_queue_limits(ctrl, ns->queue);
 
-	id = nvme_identify_ns(ctrl, nsid);
-	if (!id) {
-		ret = -EIO;
+	ret = nvme_identify_ns(ctrl, nsid, &id);
+	if (ret)
 		goto out_free_queue;
-	}
 
 	if (id->ncap == 0) {
 		ret = -EINVAL;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
