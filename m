Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1286C217C0
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 13:29:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0WUJRas8/JK68Stx62tOXmB6ccCkPr7EsnVoXocVRaY=; b=Zh8
	KgEWnl3cRAaR9GQqRQMUmPwgVHh96BkvfBtZt1AJfWwGcD4Mr2ufFvTSLm3z+OYn6pim0z3nBuSRR
	rCkREULCB5qHDbSYyCgyphY+dJGUtENO1BNNU2WZLB0HReNMv9b6tu8Gf0sKTJ97QRsZwur5gLi0t
	rnkIP7olbV4ifaKNcwOQ0FFf1nuU/ymxw654Fo6e/lDuDj1kPcQJql4Rbg2V2uU4gYSP+VvfB+GaY
	CbTesShNj0TMLvk3ObMWOwq7aj/UO9dn4OKdqLhwWDZY+TD32j9VdPpQZeOBL29bBd6bvG0UMNmx/
	iDIsDwt7KLcAgQ/zaEIqlfOPDzPkO0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRb3E-0002WU-Tn; Fri, 17 May 2019 11:29:24 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRb39-0002W2-M4
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 11:29:21 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id EAC45AE24;
 Fri, 17 May 2019 11:29:15 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvme-multipath: handle ANA log parse failures gracefully
Date: Fri, 17 May 2019 13:29:12 +0200
Message-Id: <20190517112912.47055-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_042919_867353_BE36AE2B 
X-CRM114-Status: GOOD (  12.84  )
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When we're failing to parse the ANA log the ana log buffer will
not be allocated, causing a crash in nvme_mpath_add_disk().
This makes debugging impossible as no connection will be established,
and one cannot check why parsing failed.
So this patch will be emitting a warning for this situation, and
set the path to OPTIMIZED.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/multipath.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 499acf07d61a..9e67462541f1 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -373,6 +373,8 @@ static int nvme_parse_ana_log(struct nvme_ctrl *ctrl, void *data,
 	int error, i;
 
 	lockdep_assert_held(&ctrl->ana_lock);
+	if (!ctrl->ana_log_buf)
+		return -EINVAL;
 
 	for (i = 0; i < le16_to_cpu(ctrl->ana_log_buf->ngrps); i++) {
 		struct nvme_ana_group_desc *desc = base + offset;
@@ -583,17 +585,19 @@ static int nvme_set_ns_ana_state(struct nvme_ctrl *ctrl,
 
 void nvme_mpath_add_disk(struct nvme_ns *ns, struct nvme_id_ns *id)
 {
+	mutex_lock(&ns->ctrl->ana_lock);
 	if (nvme_ctrl_use_ana(ns->ctrl)) {
-		mutex_lock(&ns->ctrl->ana_lock);
 		ns->ana_grpid = le32_to_cpu(id->anagrpid);
-		nvme_parse_ana_log(ns->ctrl, ns, nvme_set_ns_ana_state);
-		mutex_unlock(&ns->ctrl->ana_lock);
-	} else {
-		mutex_lock(&ns->head->lock);
-		ns->ana_state = NVME_ANA_OPTIMIZED; 
-		nvme_mpath_set_live(ns);
-		mutex_unlock(&ns->head->lock);
+		if (!nvme_parse_ana_log(ns->ctrl, ns, nvme_set_ns_ana_state))
+			goto out_unlock;
+		dev_warn(ns->ctrl->device,
+			 "Failed to parse ANA log, set to OPTIMIZED\n");
 	}
+	ns->ana_state = NVME_ANA_OPTIMIZED;
+	nvme_mpath_set_live(ns);
+
+out_unlock:
+	mutex_unlock(&ns->ctrl->ana_lock);
 }
 
 void nvme_mpath_remove_disk(struct nvme_ns_head *head)
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
