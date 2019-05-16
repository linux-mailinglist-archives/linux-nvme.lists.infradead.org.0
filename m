Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28BAB20169
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 10:38:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=vCZTtPDHTWqhPbbGcT/YkT2fbYFP7uYJsoVOXp8OkOg=; b=jloPssj43c1yRkedorhUuYLeDC
	13waV2EnE2nbHPMYFtq2aO5/vKdnTocMrvgwsZe7drxiFc2SU8V882OAQHufWDQo4SVWhm2KyBymi
	ryfCw/GPIL8Axqs3mweQPvlHLUuqD9aNqv4y4Cfg0M1YnkGlaFajyIFeuQf2xpNWiU3E5yX2OrjgG
	P2OjwQSdqSvrvWWFKfuRkgYmntpRzndS4JfZt35/1TaYQvf8/ZuUuHAWeMvo/tTffL+5QYDWSIlE6
	OHdAsImhIFReSm8HeBCAgXXGz4KbfQq16TRTd4ieNIdWl8REJfPtGrIFMXCZRxSZ8pDDte/0idCTn
	xvpvgB5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBtm-0003B0-H8; Thu, 16 May 2019 08:37:58 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBtb-00035l-0g
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 08:37:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 18411AEBC;
 Thu, 16 May 2019 08:37:45 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 1/3] nvme: separate out nvme_ctrl_state_name()
Date: Thu, 16 May 2019 10:37:38 +0200
Message-Id: <20190516083740.95894-2-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190516083740.95894-1-hare@suse.de>
References: <20190516083740.95894-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_013747_204010_38BAE29F 
X-CRM114-Status: GOOD (  12.44  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Separate out nvme_ctrl_state_name() to return the controller state
as a string.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/core.c | 36 +++++++++++++++++++++++-------------
 drivers/nvme/host/nvme.h |  1 +
 2 files changed, 24 insertions(+), 13 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index c2e4fa694f79..2632276458f5 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -380,6 +380,25 @@ bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
 }
 EXPORT_SYMBOL_GPL(nvme_change_ctrl_state);
 
+static const char *const nvme_ctrl_state_names[] = {
+	[NVME_CTRL_NEW]		= "new",
+	[NVME_CTRL_LIVE]	= "live",
+	[NVME_CTRL_ADMIN_ONLY]	= "only-admin",
+	[NVME_CTRL_RESETTING]	= "resetting",
+	[NVME_CTRL_CONNECTING]	= "connecting",
+	[NVME_CTRL_DELETING]	= "deleting",
+	[NVME_CTRL_DEAD]	= "dead",
+};
+
+const char *nvme_ctrl_state_name(struct nvme_ctrl *ctrl)
+{
+	if ((unsigned)ctrl->state < ARRAY_SIZE(nvme_ctrl_state_names) &&
+	    nvme_ctrl_state_names[ctrl->state])
+		return nvme_ctrl_state_names[ctrl->state];
+	return NULL;
+}
+EXPORT_SYMBOL_GPL(nvme_ctrl_state_name);
+
 static void nvme_free_ns_head(struct kref *ref)
 {
 	struct nvme_ns_head *head =
@@ -2989,19 +3008,10 @@ static ssize_t nvme_sysfs_show_state(struct device *dev,
 				     char *buf)
 {
 	struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
-	static const char *const state_name[] = {
-		[NVME_CTRL_NEW]		= "new",
-		[NVME_CTRL_LIVE]	= "live",
-		[NVME_CTRL_ADMIN_ONLY]	= "only-admin",
-		[NVME_CTRL_RESETTING]	= "resetting",
-		[NVME_CTRL_CONNECTING]	= "connecting",
-		[NVME_CTRL_DELETING]	= "deleting",
-		[NVME_CTRL_DEAD]	= "dead",
-	};
-
-	if ((unsigned)ctrl->state < ARRAY_SIZE(state_name) &&
-	    state_name[ctrl->state])
-		return sprintf(buf, "%s\n", state_name[ctrl->state]);
+	const char *state_name = nvme_ctrl_state_name(ctrl);
+
+	if (state_name)
+		return sprintf(buf, "%s\n", state_name);
 
 	return sprintf(buf, "unknown state\n");
 }
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 5ee75b5ff83f..b3b13e465dc6 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -419,6 +419,7 @@ void nvme_complete_rq(struct request *req);
 bool nvme_cancel_request(struct request *req, void *data, bool reserved);
 bool nvme_change_ctrl_state(struct nvme_ctrl *ctrl,
 		enum nvme_ctrl_state new_state);
+const char *nvme_ctrl_state_name(struct nvme_ctrl *ctrl);
 int nvme_disable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
 int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap);
 int nvme_shutdown_ctrl(struct nvme_ctrl *ctrl);
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
