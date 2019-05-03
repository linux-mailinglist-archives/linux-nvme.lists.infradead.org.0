Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA73812D7E
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 14:27:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AovO9txbKqB6Qpmx9B2nt67mA8Uq59bynULl4Cnot/Y=; b=kcBjlwqtEOIX3UVxSVhRzz/WxT
	B/IAy8IIyrRMb/uDpbKn6iQV6rwo+A/27weojb2q1OUMgZ87uKUYWPtsHMqbAg/79EHazDXkdtu4l
	O7TiqZlg9KskjU4Rry9DoJjSg3WdM/Mi1IFQ582dgBrwtr9rrScr3tjTECQxTtfflwYDEbTzd/MPT
	DH97T5vIE6z6qmAHwWt6QVnFb9yVWATIbXwPhMzNfILr63b7dA/DwsRSFe02a14C5sQwtC18ORln7
	gL1sjpn5QuX4GQbzxp6TTHtRjzXylt7dCryHCEtTz2o9sTUAIpKI111U74MeYyVlkonC/GvV3dtZa
	pCPinswA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMXHY-0003Fd-Gu; Fri, 03 May 2019 12:27:16 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMXH9-0002nB-6J
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 12:26:54 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id E4112ADD2;
 Fri,  3 May 2019 12:26:49 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCHv2 2/2] nvme: validate cntlid during controller initialisation
Date: Fri,  3 May 2019 14:26:42 +0200
Message-Id: <20190503122642.59317-3-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190503122642.59317-1-hare@suse.de>
References: <20190503122642.59317-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_052651_541397_DEB2DD0B 
X-CRM114-Status: GOOD (  11.66  )
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
 drivers/nvme/host/core.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index cd16d98d1f1a..b0396135f097 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2358,6 +2358,25 @@ static int nvme_active_ctrls(struct nvme_subsystem *subsys)
 	return count;
 }
 
+static bool nvme_duplicate_cntlid(struct nvme_subsystem *subsys,
+				  struct nvme_ctrl *ctrl)
+{
+	struct nvme_ctrl *tmp;
+	bool ret = false;
+
+	mutex_lock(&subsys->lock);
+	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
+		if (tmp == ctrl)
+			continue;
+		if (tmp->cntlid == ctrl->cntlid) {
+			ret = true;
+			break;
+		}
+	}
+	mutex_unlock(&subsys->lock);
+	return ret;
+}
+
 static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 {
 	struct nvme_subsystem *subsys, *found;
@@ -2408,6 +2427,14 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 			ret = -EINVAL;
 			goto out_unlock;
 		}
+		if (nvme_duplicate_cntlid(found, ctrl)) {
+			dev_err(ctrl->device,
+				"Duplicate cntlid %u, rejecting\n",
+				ctrl->cntlid);
+			nvme_put_subsystem(found);
+			ret = -EINVAL;
+			goto out_unlock;
+		}
 
 		__nvme_release_subsystem(subsys);
 		subsys = found;
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
