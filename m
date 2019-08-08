Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E311586DDF
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 01:26:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f2EAhisHeEm4Zm8+pbE1LlHs9QtdE7S1DlaMTTmo/xs=; b=XsW1Gve8YcqCrx5d2jdC2Smnwr
	+7zBYKMwFgSlsdKMhhB8T8wqAU/z8kXvU523MQ2oxedBDqCmRzrTc3IXFuXmzQEelww+AlRhqayLX
	mx5WO2p6nvTLePPlmJM2zjcyLtnpmtgHp3XwRCtSWmFYu+GBUuaULAsdnkfTLMCSlaUdZ+oz18vkn
	zUSs2N6ZmwJpXCtgCUniBKDiWWptDLdriKIxMnOSKNRE+OP/W0AFLfrhImGay4Ho9XFkWm3gScw0c
	aKbuwQPsAdfU+qixffX+vG9+grR7BdW6jj8NzbKTeJggWeg3oN7aq7Yj2z7s8YiGykuTQ9Egn+dtq
	qWpFz3TA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrnV-0001C5-0B; Thu, 08 Aug 2019 23:26:17 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrmw-0000h8-O9; Thu, 08 Aug 2019 23:25:42 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v4 3/7] nvme: make nvme_identify_ns propagate errors back
Date: Thu,  8 Aug 2019 16:25:32 -0700
Message-Id: <20190808232536.4258-4-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808232536.4258-1-sagi@grimberg.me>
References: <20190808232536.4258-1-sagi@grimberg.me>
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

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index c259586eeadc..6fac09b24733 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1108,13 +1108,13 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
 
 	id = kmalloc(sizeof(*id), GFP_KERNEL);
 	if (!id)
-		return NULL;
+		return ERR_PTR(-ENOMEM);
 
 	error = nvme_submit_sync_cmd(ctrl->admin_q, &c, id, sizeof(*id));
 	if (error) {
 		dev_warn(ctrl->device, "Identify namespace failed (%d)\n", error);
 		kfree(id);
-		return NULL;
+		return ERR_PTR(error);
 	}
 
 	return id;
@@ -1748,8 +1748,8 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 	}
 
 	id = nvme_identify_ns(ctrl, ns->head->ns_id);
-	if (!id)
-		return -ENODEV;
+	if (IS_ERR(id))
+		return PTR_ERR(id);
 
 	if (id->ncap == 0) {
 		ret = -ENODEV;
@@ -3337,8 +3337,8 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
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
