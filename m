Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBE1A12F58
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 15:38:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mVTOg3wgTlKG5XyMmWKLckWuxQvEoPk4CxQ1siMtcB4=; b=aCYVca0VcN/s/+PHmhTq5U6Djj
	hyI4YyTuVzUmVYPdyAD8i7uxXg6VUXxcpYMyRx1ecTqIqH5e17RO+93VWLqEPUNnzJ7f6/Y8PSgbZ
	9vT4k+N3HncbOa7BRe6CV4KhNvMFT7T+qCZjKWhiqeDBPjPYgqJ+6rssR/z7OdZ7Bt1f72JwztZMa
	ZxdzlerhiLjVGt+mPN0EQVZS9uUNXILcNDRSAd/dSKoupJ5kMU8+3FeuFi+SnI7nL7ahPsD+saL4U
	GqvXz5aa73CYf52+CeMSQurdxGIa9Zi414ghUSg84fReLc668GC0RlpZVTM7pAErmhaI+xBB0jYod
	7TKJhiUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYO6-0005mo-F3; Fri, 03 May 2019 13:38:06 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYNk-0005Qj-NU
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 13:37:46 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 73F18AD5D;
 Fri,  3 May 2019 13:37:43 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCHv3 2/2] nvme: validate cntlid during controller initialisation
Date: Fri,  3 May 2019 15:37:36 +0200
Message-Id: <20190503133736.111201-3-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190503133736.111201-1-hare@suse.de>
References: <20190503133736.111201-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_063744_913258_5134E5C2 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Hannes Reinecke <hare@suse.com>

The CNTLID value is required to be unique, and we do rely on this
for correct operation. So reject any controller for which a non-unique
CNTLID has been detected.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/core.c | 32 ++++++++++++++++++++++++++++++--
 1 file changed, 30 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index cd16d98d1f1a..dc74f7ba6f4a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2358,6 +2358,23 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
 	return count;
 }
 
+static bool nvme_duplicate_cntlid(struct nvme_subsystem *subsys,
+				  struct nvme_ctrl *ctrl)
+{
+	struct nvme_ctrl *tmp;
+	bool ret = false;
+
+	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
+		if (tmp == ctrl)
+			continue;
+		if (tmp->cntlid == ctrl->cntlid) {
+			ret = true;
+			break;
+		}
+	}
+	return ret;
+}
+
 static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 {
 	struct nvme_subsystem *subsys, *found;
@@ -2411,6 +2428,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 
 		__nvme_release_subsystem(subsys);
 		subsys = found;
+		ret = 0;
 	} else {
 		ret = device_add(&subsys->dev);
 		if (ret) {
@@ -2434,10 +2452,20 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	}
 
 	mutex_lock(&subsys->lock);
-	list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
+	if (!nvme_duplicate_cntlid(subsys, ctrl))
+		list_add_tail(&ctrl->subsys_entry, &subsys->ctrls);
+	else {
+		dev_err(ctrl->device,
+			"Duplicate cntlid %u, rejecting\n",
+			ctrl->cntlid);
+		ctrl->subsys = NULL;
+		sysfs_remove_link(&subsys->dev.kobj, dev_name(ctrl->device));
+		nvme_put_subsystem(subsys);
+		ret = -EINVAL;
+	}
 	mutex_unlock(&subsys->lock);
 
-	return 0;
+	return ret;
 
 out_unlock:
 	mutex_unlock(&nvme_subsystems_lock);
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
