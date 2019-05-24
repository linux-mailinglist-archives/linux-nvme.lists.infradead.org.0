Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E3B29FD1
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 22:26:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=GA+sG6FP+uDj4keBFZ5Actw9uLmN1oueYFAKxNwxOCQ=; b=A94XjPPDtAGvINhwyoWfbYIrWL
	rqwU18vmkDpFVV5QqokiVNlzH/G2wtgHZqFAiH+XlXHtjlJ1XkL8mjNJiahoi4ioD7IX/bivZjQNW
	fITijlRUmH0iIlhoJYRgVtltVGqTFBDqFTfKh3+Ljzr4ECX7fB9wA9t/WdfcIfAnoV509AY5gbr96
	f1MtXZ/Eg7tLqzyXZCqnUFeJHXoMpCo1wa4QjWqTeFGj1C5ceokFXf4knHRRkHAr6vyyaRce/Hbzj
	9qmg/YiCRzB7C54Mrm/GxpIdqGLSQfwSmdI2dk5G+xAMi3NO/6uf3K8YlhUqpAH318wuKeFnizV/q
	jXUg7I1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGlW-0006Uv-Su; Fri, 24 May 2019 20:26:12 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGl8-00067L-77
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 20:25:47 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 13:25:44 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 24 May 2019 13:25:44 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH 3/3] nvme: quiesce admin queue for fw activation
Date: Fri, 24 May 2019 14:20:36 -0600
Message-Id: <20190524202036.17265-4-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20190524202036.17265-1-keith.busch@intel.com>
References: <20190524202036.17265-1-keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_132546_279714_AB9EFC26 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
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
Cc: Keith Busch <kbusch@kernel.org>, Bart Van Assche <bvanassche@acm.org>,
 Ming Lei <ming.lei@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <kbusch@kernel.org>

The controller's admin queue processing is paused during firmware
activation, just like IO queues. Quiesce these, and inform the syslog
this uncommon event is happening.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 96dac2292897..5a6d27823f7f 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3604,7 +3604,10 @@ static void nvme_fw_act_work(struct work_struct *work)
 		fw_act_timeout = jiffies +
 				msecs_to_jiffies(admin_timeout * 1000);
 
+	dev_info(ctrl->device, "processing paused for fw activation\n");
 	nvme_stop_queues(ctrl);
+	blk_mq_quiesce_queue(ctrl->admin_q);
+
 	while (nvme_ctrl_pp_status(ctrl)) {
 		if (time_after(jiffies, fw_act_timeout)) {
 			dev_warn(ctrl->device,
@@ -3619,7 +3622,10 @@ static void nvme_fw_act_work(struct work_struct *work)
 	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
 		return;
 
+	dev_info(ctrl->device, "processing resumed\n");
+	blk_mq_unquiesce_queue(ctrl->admin_q);
 	nvme_start_queues(ctrl);
+
 	/* read FW slot information to clear the AER */
 	nvme_get_fw_slot_info(ctrl);
 }
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
