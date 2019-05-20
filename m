Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5155422C2F
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 08:37:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=T2635B3b8q4cHZimf7kQGLgwPv5sMINNCAdF2BfppL4=; b=iPOt6bCP9iv0a5Cv98w2kfHMBr
	RjXwOOgpyHuqAZx9n6NL43GuOIGwi7cwrexPty7f8YPi0BF/fn4OPRG5yaNeh0sTyXYxbu/QKQl8x
	0onL93fygUCZS7gUt6geIAymfHERiiRXSOnapHz/DOvVzPvxlEGEQVslrkO+rR0AOLO9SC6abkYi0
	BCWq8Z5w+5vqnjZx0rHAGdT+5D6Vaq3XWIYiPGTa1peone0k1xRzMgxNtCIQtVPXLOn9gjn/8Crz8
	4hjDFzIeJAhgVZ5mBPKekRdAkdqwoWu++c3lbrF9RBRuyU6AHQ5LepyCAERHSLqlM50JfAyFYo3YK
	TcnIzqWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbv3-0008BY-Hm; Mon, 20 May 2019 06:37:09 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbuS-0007Yf-Cx
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 06:36:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 93470ADBE;
 Mon, 20 May 2019 06:36:26 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 1/4] nvme: separate out nvme_ctrl_state_name()
Date: Mon, 20 May 2019 08:36:21 +0200
Message-Id: <20190520063624.50338-2-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190520063624.50338-1-hare@suse.de>
References: <20190520063624.50338-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_233632_585722_F3D45E40 
X-CRM114-Status: GOOD (  12.52  )
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

Separate out nvme_ctrl_state_name() to return the controller state
as a string.

Signed-off-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/core.c | 37 ++++++++++++++++++++++---------------
 drivers/nvme/host/nvme.h |  1 +
 2 files changed, 23 insertions(+), 15 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index c2e4fa694f79..bd1bc7fcbcde 100644
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
+	return "unknown state";
+}
+EXPORT_SYMBOL_GPL(nvme_ctrl_state_name);
+
 static void nvme_free_ns_head(struct kref *ref)
 {
 	struct nvme_ns_head *head =
@@ -2989,21 +3008,9 @@ static ssize_t nvme_sysfs_show_state(struct device *dev,
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
-
-	return sprintf(buf, "unknown state\n");
+	const char *state_name = nvme_ctrl_state_name(ctrl);
+
+	return sprintf(buf, "%s\n", state_name);
 }
 
 static DEVICE_ATTR(state, S_IRUGO, nvme_sysfs_show_state, NULL);
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
