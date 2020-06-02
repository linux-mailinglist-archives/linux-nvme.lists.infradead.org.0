Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A80C31EBCDB
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 15:16:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VXkLF+w3ZJU24IS7GMoOTBZmeF3TQGAGYD5lPHxrgQo=; b=HEq+aq2OZ0bAfg
	JEtdkK+/zy7VzxfpZ/HiiD9Lj5Gae66CGbnKMJbuFDMF801VtGJoatDLFsNgwwV9Rip7fB5i4xMpE
	sb6n3b0hxHicVJFGN+o8zXh/DGE11KEF54EkZ4rk7B0qmnYXAgMGD/y5YqYjBB4oV3INz59oVW0ut
	rTVSiZMuzH7A10zvCaH2/Ivke15VzcNGqoNUruKu72PTXzlCtVqclGuhetAPkZ3EUASevWNYtc1ym
	D3R15LkO45kUR7k17bLQ9C/tZTKfY1NReZh8DJDVB1xSmoSBKcY7224AeNVIv2j0pCTYMfUCWUiWV
	BKvGwIoh2lUSawtiSnww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6lw-0003Fz-OB; Tue, 02 Jun 2020 13:16:04 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6ll-0003AJ-GI
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 13:15:55 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 2 Jun 2020 16:15:47 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 052DFkVi031311;
 Tue, 2 Jun 2020 16:15:46 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: sagi@grimberg.me, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, james.smart@broadcom.com, chaitanya.kulkarni@wdc.com
Subject: [PATCH 2/5] nvme: use nvme_ana_type_to_name to get state string
Date: Tue,  2 Jun 2020 16:15:43 +0300
Message-Id: <20200602131546.51903-3-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200602131546.51903-1-maxg@mellanox.com>
References: <20200602131546.51903-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_061553_950209_BFB25D7B 
X-CRM114-Status: UNSURE (   8.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: israelr@mellanox.com, nitzanc@mellanox.com, oren@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Remove code duplication from nvme-core.ko and use common function to
translate enum to ANA state string.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Israel Rukshin <israelr@mellanox.com>
---
 drivers/nvme/host/multipath.c | 16 +++-------------
 drivers/nvme/host/nvme.h      |  1 +
 2 files changed, 4 insertions(+), 13 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index da78e49..37cb9df 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -124,15 +124,6 @@ void nvme_kick_requeue_lists(struct nvme_ctrl *ctrl)
 	up_read(&ctrl->namespaces_rwsem);
 }
 
-static const char *nvme_ana_state_names[] = {
-	[0]				= "invalid state",
-	[NVME_ANA_OPTIMIZED]		= "optimized",
-	[NVME_ANA_NONOPTIMIZED]		= "non-optimized",
-	[NVME_ANA_INACCESSIBLE]		= "inaccessible",
-	[NVME_ANA_PERSISTENT_LOSS]	= "persistent-loss",
-	[NVME_ANA_CHANGE]		= "change",
-};
-
 bool nvme_mpath_clear_current_path(struct nvme_ns *ns)
 {
 	struct nvme_ns_head *head = ns->head;
@@ -500,9 +491,8 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
 	unsigned *nr_change_groups = data;
 	struct nvme_ns *ns;
 
-	dev_dbg(ctrl->device, "ANA group %d: %s.\n",
-			le32_to_cpu(desc->grpid),
-			nvme_ana_state_names[desc->state]);
+	dev_dbg(ctrl->device, "ANA group %d: %s.\n", le32_to_cpu(desc->grpid),
+		nvme_ana_type_to_name(desc->state));
 
 	if (desc->state == NVME_ANA_CHANGE)
 		(*nr_change_groups)++;
@@ -636,7 +626,7 @@ static ssize_t ana_state_show(struct device *dev, struct device_attribute *attr,
 {
 	struct nvme_ns *ns = nvme_get_ns_from_dev(dev);
 
-	return sprintf(buf, "%s\n", nvme_ana_state_names[ns->ana_state]);
+	return sprintf(buf, "%s\n", nvme_ana_type_to_name(ns->ana_state));
 }
 DEVICE_ATTR_RO(ana_state);
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index fa5c755..eef0e88 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -7,6 +7,7 @@
 #define _NVME_H
 
 #include <linux/nvme.h>
+#include <linux/nvme-types.h>
 #include <linux/cdev.h>
 #include <linux/pci.h>
 #include <linux/kref.h>
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
