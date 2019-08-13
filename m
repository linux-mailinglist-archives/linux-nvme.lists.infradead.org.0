Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA0468B00E
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 08:43:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9HL5qof3xZl8xbBvkg3bXmKJ5HDctaQHPkp12UnO1vQ=; b=EPmPO+YNMvLldZe7dLwffo2u5V
	9zqWxkuW4dYNZzmKIomLq/1EQ4mFLg1GD6LsAtIR696VTPArjVCZp4wpO1vzXJrBCbTEYGjZkY232
	lHgSrjUemMW3FcDv/YG9fgUXwc0fbSgMjkfGeFIBPFFYOQLUCJfziarAA+6983cg28Eb3QBwc7pAQ
	0AtY+UbjNdit20ZK8duut17q1Q5vMiuubyqc2t09raOKX3mle4y+zRLZEJ85rpQfD3zq74hk0v5Cw
	gmiKovgASIZYFz7q87uSxQSxYwzmG9PDmrkFWJnMgiFst1HRLn6xfucWpnlNLxeeM9w7Q+yuD9GeV
	R8PQ2YgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQX9-0007tB-Dh; Tue, 13 Aug 2019 06:43:51 +0000
Received: from [2601:647:4800:973f:a183:2905:6842:b7c]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQWP-0007Z2-QW; Tue, 13 Aug 2019 06:43:05 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v6 3/7] nvme: make nvme_identify_ns propagate errors back
Date: Mon, 12 Aug 2019 23:43:00 -0700
Message-Id: <20190813064304.7344-4-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813064304.7344-1-sagi@grimberg.me>
References: <20190813064304.7344-1-sagi@grimberg.me>
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
Note that if the return status from nvme_submit_sync_cmd() is positive
then we convert it from a blk_status_t to a negative errno.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f9bc10407f1b..4cc21567c43f 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1110,13 +1110,16 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
 
 	id = kmalloc(sizeof(*id), GFP_KERNEL);
 	if (!id)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	error = nvme_submit_sync_cmd(ctrl->admin_q, &c, id, sizeof(*id));
 	if (error) {
 		dev_warn(ctrl->device, "Identify namespace failed (%d)\n", error);
 		kfree(id);
-		return NULL;
+		if (error > 0)
+			return ERR_PTR(blk_status_to_errno(error));
+		else
+			return ERR_PTR(error);
 	}
 
 	return id;
@@ -1750,8 +1753,8 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 	}
 
 	id = nvme_identify_ns(ctrl, ns->head->ns_id);
-	if (!id)
-		return -ENODEV;
+	if (IS_ERR(id))
+		return PTR_ERR(id);
 
 	if (id->ncap == 0) {
 		ret = -ENODEV;
@@ -3339,8 +3342,8 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
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
