Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D161717301
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 09:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L87Huh3MW0hxqfAZwthJwUPxOH2zuXhMQjIZmu+L0SI=; b=HrFtG3wKQ1iyCT
	we4wGWBao43Ej+gWuk0xb0lkGTX80cD6Hmw4UtaX3fCf0emzJEoJnop/lWAvzjHhp70URj0w5QcBY
	WGz9SL88xtD540cMew1HoIYcetKBqsJORodkErmbp4FbDRkmz3O3x69GTkw+sxGGecsomqpfJfARw
	3Z5VAqHTGmjPxH3CuQ5TIKaIY1G+gAyK7U7MVAkLxTlBNQhhmXlHvsEA23P7wuEKKSuX40m+yrkRY
	eJkZsYDjs4M1c/XJfptH5DxJhHa6GEnESFnkKLjtyDMoYK5xm7FF2GO17DvMweApj+NYivQjXjVrM
	tquoz+efkmhQN9k2sRSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOHQm-0003Fe-Tz; Wed, 08 May 2019 07:56:00 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOHQd-00039N-9Y; Wed, 08 May 2019 07:55:51 +0000
From: Christoph Hellwig <hch@lst.de>
To: hare@suse.de
Subject: [PATCH,
 RFC 2/2] nvme: validate cntlid during controller initialisation
Date: Wed,  8 May 2019 09:55:08 +0200
Message-Id: <20190508075508.28552-2-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190508075508.28552-1-hch@lst.de>
References: <20190508075508.28552-1-hch@lst.de>
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
index 4f4ffcce7416..ce258cbdc642 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2341,18 +2341,33 @@ static const struct attribute_group *nvme_subsys_attrs_groups[] = {
 	NULL,
 };
 
-static int nvme_active_ctrls(struct nvme_subsystem *subsys)
+static bool nvme_validate_cntlid(struct nvme_subsystem *subsys,
+		struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 {
-	int count = 0;
-	struct nvme_ctrl *ctrl;
+	struct nvme_ctrl *tmp;
 
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
+				"Duplicate cntlid %u, rejecting\n",
+				ctrl->cntlid);
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
@@ -2395,15 +2410,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
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
