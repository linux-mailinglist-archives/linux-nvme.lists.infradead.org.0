Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1257D62C
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 09:17:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3Uzdan7E/BTXThpbrNvgJ3yBfLIsqtRW9T8Q1cvV8ms=; b=ScsUfGKLP3FA6TndL0prTDUtkY
	PpxDbwS6J+ssBRJi4uoHmRAlZSQQiP1ynCuO/EKkXPl3k4ua1wFKINWmCvJL2cauRLGrIjOIHVoA5
	5cwFqRhMEouCqA+w7eNF7OL9gJ7oM0L0K6hdTymU/Iky4nJ3+Dff5I+6WHXXR+a64okzkKnsee/5v
	YCOo290kduaMLTY/4LKWznDJZBmWNFtHFeGqfo6uscvMPLDbZc7KgVqLp4DQ+BrHV473DhfC3FGr3
	iwOY0q+xRyhktoxzVIJGCb5nKr04i6CEOdhZsyo+n8nMsji1A1HhOAuz6rqCv86kJ3VZl9pp46BX4
	Oj7vWxbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5Kb-0002VZ-4h; Thu, 01 Aug 2019 07:16:57 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5KT-0002UW-P6
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 07:16:51 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 09F73AE9E;
 Thu,  1 Aug 2019 07:16:46 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 2/2] nvme: do not remove namespaces during reset
Date: Thu,  1 Aug 2019 09:16:44 +0200
Message-Id: <20190801071644.66690-3-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190801071644.66690-1-hare@suse.de>
References: <20190801071644.66690-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_001649_956667_43013183 
X-CRM114-Status: GOOD (  12.18  )
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

Whenever the controller is resetting or connecting we cannot make
any decisions about the attached namespaces, and consequently we
shouldn't remove them. So skip namespace removal during reset;
a scan will be triggered anyway after reconnecting which will
clean up any stale namespaces.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/core.c | 25 ++++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 177fa4185775..b24cf21f34d0 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3410,7 +3410,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	return ret;
 }
 
-static void nvme_ns_remove(struct nvme_ns *ns)
+static void __nvme_ns_remove(struct nvme_ns *ns)
 {
 	if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
 		return;
@@ -3439,6 +3439,21 @@ static void nvme_ns_remove(struct nvme_ns *ns)
 	nvme_put_ns(ns);
 }
 
+static void nvme_ns_remove(struct nvme_ns *ns)
+{
+	/*
+	 * We cannot make any assumptions about namespaces during
+	 * reset; in particular we shouldn't attempt to remove them
+	 * as I/O might still be queued to them.
+	 * So ignore this call during reset and rely on the
+	 * rescan after reset to clean up things again.
+	 */
+	if (ns->ctrl->state == NVME_CTRL_RESETTING ||
+	    ns->ctrl->state == NVME_CTRL_CONNECTING)
+		return;
+	__nvme_ns_remove(ns);
+}
+
 static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 {
 	struct nvme_ns *ns;
@@ -3458,6 +3473,10 @@ static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
 	struct nvme_ns *ns, *next;
 	LIST_HEAD(rm_list);
 
+	if (ctrl->state == NVME_CTRL_RESETTING ||
+	    ctrl->state == NVME_CTRL_CONNECTING)
+		return;
+
 	down_write(&ctrl->namespaces_rwsem);
 	list_for_each_entry_safe(ns, next, &ctrl->namespaces, list) {
 		if (test_bit(NVME_NS_REMOVING, &ns->flags))
@@ -3468,7 +3487,7 @@ static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
 	up_write(&ctrl->namespaces_rwsem);
 
 	list_for_each_entry_safe(ns, next, &rm_list, list)
-		nvme_ns_remove(ns);
+		__nvme_ns_remove(ns);
 
 }
 
@@ -3618,7 +3637,7 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
 	up_write(&ctrl->namespaces_rwsem);
 
 	list_for_each_entry_safe(ns, next, &ns_list, list)
-		nvme_ns_remove(ns);
+		__nvme_ns_remove(ns);
 }
 EXPORT_SYMBOL_GPL(nvme_remove_namespaces);
 
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
