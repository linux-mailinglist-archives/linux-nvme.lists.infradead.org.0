Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 65A76213D0
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 08:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wsr6JzsBUe4bfyDx4k3wdeS6K0Xv2GpeUkyB4YRNBeA=; b=uCq6hu8wqyoIlQU7GjhP7jIyh8
	K9nZZtUUcW6v93CJmxkUvycYUpnmLuqhawihR63/HmwQxZXK6mzaC4lJiAZQM4y8HFZK+jOJVlY2X
	NFJ+vPoc9OiWMTWxzZM+RU+wqiyv86/XrYGSQ/IEH37JgCVrJWKYM2CwznUxZaZWQPl2KiQxyWouu
	xaQQWDK+q0+HnN1byHHDbsvjUH6QSLE+Z4KDqlTAez0mTIN8OvRwWgGg4CgqT1uCSAVnvOVrjQzXh
	DGCY1KgA1MV2csP6RMJ3fYMBH0esc/BW5EhJfAkcDaDMbJLYRKPDunlxgpf1ynEnG0h2sxyqS1R8/
	Gh+rM+Gw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRWaI-0006Sl-04; Fri, 17 May 2019 06:43:14 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRWa7-0006P3-CC
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 06:43:04 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 99419AEEA;
 Fri, 17 May 2019 06:42:58 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 2/3] nvme-fc: track state change failures during reconnect
Date: Fri, 17 May 2019 08:42:53 +0200
Message-Id: <20190517064254.95561-3-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190517064254.95561-1-hare@suse.de>
References: <20190517064254.95561-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_234303_568613_F0C38805 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The nvme-fc driver has several situation under which an expected
state transition fails, but doesn't print out any messages if
this happens.
The patch adds logging for these situations.

Signed-off-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
---
 drivers/nvme/host/fc.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 0c9e036afd09..e5c81ba2b7a1 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2867,8 +2867,12 @@ nvme_fc_reconnect_or_delete(struct nvme_fc_ctrl *ctrl, int status)
 	unsigned long recon_delay = ctrl->ctrl.opts->reconnect_delay * HZ;
 	bool recon = true;
 
-	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING)
+	if (ctrl->ctrl.state != NVME_CTRL_CONNECTING) {
+		dev_info(ctrl->ctrl.device,
+			 "NVME-FC{%d}: couldn't reconnect in state %s\n",
+			 ctrl->cnum, nvme_ctrl_state_name(&ctrl->ctrl));
 		return;
+	}
 
 	if (portptr->port_state == FC_OBJSTATE_ONLINE)
 		dev_info(ctrl->ctrl.device,
@@ -2914,7 +2918,8 @@ __nvme_fc_terminate_io(struct nvme_fc_ctrl *ctrl)
 	    !nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_CONNECTING))
 		dev_err(ctrl->ctrl.device,
 			"NVME-FC{%d}: error_recovery: Couldn't change state "
-			"to CONNECTING\n", ctrl->cnum);
+			"from %s to CONNECTING\n", ctrl->cnum,
+			nvme_ctrl_state_name(&ctrl->ctrl));
 }
 
 static void
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
