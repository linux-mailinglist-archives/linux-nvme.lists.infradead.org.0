Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1236926970
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 19:53:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CNhNrYquBdPlkbfVsR9rtMxldcP/QZ4gVmXDFpyY3ME=; b=QCM+isX5z/+3YbtNcnIOdalUw7
	r1OnB9PmCa7Qdva86S3k0xZ4Xhoqrc7Z721kk9yyKSBiqJN+0rKvztBJzQWSbRBHmKfyfJlKBOZiC
	hfkQYC+K5JcdWnWSR8NyrrfICQPYh9ft/Lo9tYaIGL9PHfReeMjz+0XYjiDiQARV9Cp1ausZlUP4e
	JndMfEdrOTJ++4NpfOROsmuttw7S1MdSVAwZDRkuahe7Lp6NdUSx+jrIPWMr0s6wfc8QR0K3jZ3K9
	G2cmsThhQjLpKvrUVfhNTUOuq3QdVA5hkV70Bgb+4MDmdyC4MVHGdaxhsqm4em34jAf5s/xNvRkvV
	RRvW1Z5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVQr-0002oL-7B; Wed, 22 May 2019 17:53:41 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVQU-0002TP-3r
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 17:53:19 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 10:53:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,500,1549958400"; d="scan'208";a="174471736"
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2019 10:53:15 -0700
From: Keith Busch <keith.busch@intel.com>
To: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org
Subject: [PATCH 2/2] nvme: reset request timeouts during fw activation
Date: Wed, 22 May 2019 11:48:12 -0600
Message-Id: <20190522174812.5597-3-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20190522174812.5597-1-keith.busch@intel.com>
References: <20190522174812.5597-1-keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_105318_202787_F9E1AFFE 
X-CRM114-Status: GOOD (  10.97  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <ming.lei@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The nvme controller may pause command processing during firmware
activation. The driver will quiesce queues during this time, but commands
dispatched prior to the notification will not be processed until the
hardware completes this activation.

We do not want those requests to time out while the hardware is in
this paused state as we don't expect those commands to complete during
this time, and that handling will interfere with the firmware activation
process.

In addition to quiescing the queues, halt timeout detection during the
paused state and reset the dispatched request deadlines when the hardware
exists that state. This action applies to IO and admin queues.

Signed-off-by: Keith Busch <keith.busch@intel.com>
---
 drivers/nvme/host/core.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 1b7c2afd84cb..37a9a66ada22 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -89,6 +89,7 @@ static dev_t nvme_chr_devt;
 static struct class *nvme_class;
 static struct class *nvme_subsys_class;
 
+static void nvme_reset_queues(struct nvme_ctrl *ctrl);
 static int nvme_revalidate_disk(struct gendisk *disk);
 static void nvme_put_subsystem(struct nvme_subsystem *subsys);
 static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
@@ -3605,6 +3606,11 @@ static void nvme_fw_act_work(struct work_struct *work)
 				msecs_to_jiffies(admin_timeout * 1000);
 
 	nvme_stop_queues(ctrl);
+	nvme_sync_queues(ctrl);
+
+	blk_mq_quiesce_queue(ctrl->admin_q);
+	blk_sync_queue(ctrl->admin_q);
+
 	while (nvme_ctrl_pp_status(ctrl)) {
 		if (time_after(jiffies, fw_act_timeout)) {
 			dev_warn(ctrl->device,
@@ -3618,7 +3624,12 @@ static void nvme_fw_act_work(struct work_struct *work)
 	if (ctrl->state != NVME_CTRL_LIVE)
 		return;
 
+	blk_mq_reset_rqs(ctrl->admin_q);
+	blk_mq_unquiesce_queue(ctrl->admin_q);
+
+	nvme_reset_queues(ctrl);
 	nvme_start_queues(ctrl);
+
 	/* read FW slot information to clear the AER */
 	nvme_get_fw_slot_info(ctrl);
 }
@@ -3901,6 +3912,15 @@ void nvme_start_queues(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_start_queues);
 
+static void nvme_reset_queues(struct nvme_ctrl *ctrl)
+{
+	struct nvme_ns *ns;
+
+	down_read(&ctrl->namespaces_rwsem);
+	list_for_each_entry(ns, &ctrl->namespaces, list)
+		blk_mq_reset_rqs(ns->queue);
+	up_read(&ctrl->namespaces_rwsem);
+}
 
 void nvme_sync_queues(struct nvme_ctrl *ctrl)
 {
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
