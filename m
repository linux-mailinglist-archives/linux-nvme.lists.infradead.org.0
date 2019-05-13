Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 104711B049
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 08:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XjHcemjAzqfoBTdKEwtMCJK2iceTJsfBcPMMPtei9K4=; b=rUL5mHFk/AYPLW
	KISCWWQfeOl03ABEUy/d9WgEAenPW7RBjxer4cyHoAgXETx0eH+DW26ZBLRi3Hf+1F874TzDHMzz4
	8n+pC8Mz1LoZSA/mMKNN5n9tHlsY9mWTjexY/T1KtyNlwchtu0SkCaAOWmyN8kTLAClEcOi6p62H6
	AhHect7rqHwlrUZWDCD9M33pb7x0RuSr9M05N0TZhOOHjOef8uwnpTJnwP1meJhLttIIfTJLaM8KL
	Vcyt/KclduHqVe6nnz1A+M919Gyu1vchhr95SWcxnu8aV58jnt2iPsM1NyFcl8hneMKsc6re5Xzcu
	fMDcirHy2V94ygJ/SerA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ4Pc-0003Np-Lh; Mon, 13 May 2019 06:26:12 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ4PP-0003BI-Ck; Mon, 13 May 2019 06:25:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: hare@suse.de
Subject: [PATCH 2/2] nvme: validate cntlid during controller initialisation
Date: Mon, 13 May 2019 08:25:10 +0200
Message-Id: <20190513062510.756-3-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190513062510.756-1-hch@lst.de>
References: <20190513062510.756-1-hch@lst.de>
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

The CNTLID value is required to be unique, and we do rely on this
for correct operation. So reject any controller for which a non-unique
CNTLID has been detected.

Based on a patch from Hannes Reinecke.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 41 +++++++++++++++++++++++-----------------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 70a2bc01e41e..09a1d5ca872f 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2341,20 +2341,35 @@ static const struct attribute_group *nvme_subsys_attrs_groups[] = {
 	NULL,
 };
 
-static int nvme_active_ctrls(struct nvme_subsystem *subsys)
+static bool nvme_validate_cntlid(struct nvme_subsystem *subsys,
+		struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 {
-	int count = 0;
-	struct nvme_ctrl *ctrl;
+	struct nvme_ctrl *tmp;
 
 	lockdep_assert_held(&nvme_subsystems_lock);
 
-	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
-		if (ctrl->state != NVME_CTRL_DELETING &&
-		    ctrl->state != NVME_CTRL_DEAD)
-			count++;
+	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
+		if (ctrl->state == NVME_CTRL_DELETING ||
+		    ctrl->state == NVME_CTRL_DEAD)
+			continue;
+
+		if (tmp->cntlid == ctrl->cntlid) {
+			dev_err(ctrl->device,
+				"Duplicate cntlid %u with %s, rejecting\n",
+				ctrl->cntlid, dev_name(tmp->device));
+			return false;
+		}
+
+		if ((id->cmic & (1 << 1)) ||
+		    (ctrl->opts && ctrl->opts->discovery_nqn))
+		    	continue;
+
+		dev_err(ctrl->device,
+			"Subsystem does not support multiple controllers\n");
+		return false;
 	}
 
-	return count;
+	return true;
 }
 
 static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
@@ -2397,15 +2412,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 		__nvme_release_subsystem(subsys);
 		subsys = found;
 
-		/*
-		 * Verify that the subsystem actually supports multiple
-		 * controllers, else bail out.
-		 */
-		if (!(ctrl->opts && ctrl->opts->discovery_nqn) &&
-		    nvme_active_ctrls(found) && !(id->cmic & (1 << 1))) {
-			dev_err(ctrl->device,
-				"ignoring ctrl due to duplicate subnqn (%s).\n",
-				subsys->subnqn);
+		if (!nvme_validate_cntlid(subsys, ctrl, id)) {
 			ret = -EINVAL;
 			goto out_put_subsystem;
 		}
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
