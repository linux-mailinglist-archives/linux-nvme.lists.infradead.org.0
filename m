Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDC321FC55
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 23:39:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=j3sEajFOCcoqVLOziNYREdYYSx/nTTwUUCbYqtSOQnE=; b=R79
	gLtNIfbp/V4FIG4AtjYlWXa64iCFdjGrzYEqNY4+EmJvoEij/fnvNUDzcDfrvC2kzLb/h20dZVZIk
	2OZanDjV4adxQtYBPLQxcrI1A3XzJvnNVRYBQzvzKCdGCYywwHSz8b0y1TOJiCE2S4xov1+TWSedw
	mgs/C2v4n7OprBjedpjbtl0dG5ctKLBuNKcoAADOV8zV7pUz1q2Dx35v8sQJMV6RYPGJYjqN4obBM
	xuD7wRikbTogyNQ2TI7noBWFYgK0X/g/bvQU4KnOn7vGMCqVIBVWg2F8fDA306vj3yTqq7yIxHsY1
	rxJ7ud3eOxXGmSuED71laI4raq0dodg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR1cL-0007uS-Ke; Wed, 15 May 2019 21:39:17 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR1cF-0007u7-R9
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 21:39:13 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 14:39:10 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga001.jf.intel.com with ESMTP; 15 May 2019 14:39:09 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH RFC] nvme: Common subsys and controller instances IDA
Date: Wed, 15 May 2019 15:33:51 -0600
Message-Id: <20190515213351.22190-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_143911_923362_C32CE857 
X-CRM114-Status: GOOD (  14.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The controller char device name used to be a subset of all its
namespace block device names, but that's not true when we name block
devices for their parent subsystem. It's long been the case that the
numerals appended to our device handles are simply the first unique
number available. They do not have any more significance in relations
to other devices with simpler numeric prefixes.

However, this disconnect has led to some very unfortunate situations
where people assume the old behavior, and accidently have lost data
because they issue admin commands to the wrong device. For example,
I want to format /dev/nvme0n1 and /dev/nvme0n2, so I'll run:

  # nvme format /dev/nvme0

to hit up all namespaces attached to nvme0. The problem is that nvme0's
namespaces may not even be those desired namespaces, and now I've lost
data on devices I wished to preserve.

So here's a solution that no one will like: pull subsystem and controller
instances from the same IDA so that there won't be any namespace block
devices with a matching controller handle name. While this does nothing
to clear up device relationships, this will force the user to think
really hard about what they're doing and avoid such mistakes.

Signed-off-by: Keith Busch <keith.busch@intel.com>
---
 drivers/nvme/host/core.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a6644a2c3ef7..1d17732267f0 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -80,7 +80,6 @@ EXPORT_SYMBOL_GPL(nvme_reset_wq);
 struct workqueue_struct *nvme_delete_wq;
 EXPORT_SYMBOL_GPL(nvme_delete_wq);
 
-static DEFINE_IDA(nvme_subsystems_ida);
 static LIST_HEAD(nvme_subsystems);
 static DEFINE_MUTEX(nvme_subsystems_lock);
 
@@ -2247,7 +2246,7 @@ static void nvme_init_subnqn(struct nvme_subsystem *subsys, struct nvme_ctrl *ct
 
 static void __nvme_release_subsystem(struct nvme_subsystem *subsys)
 {
-	ida_simple_remove(&nvme_subsystems_ida, subsys->instance);
+	ida_simple_remove(&nvme_instance_ida, subsys->instance);
 	kfree(subsys);
 }
 
@@ -2366,7 +2365,7 @@ static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
 	subsys = kzalloc(sizeof(*subsys), GFP_KERNEL);
 	if (!subsys)
 		return -ENOMEM;
-	ret = ida_simple_get(&nvme_subsystems_ida, 0, 0, GFP_KERNEL);
+	ret = ida_simple_get(&nvme_instance_ida, 0, 0, GFP_KERNEL);
 	if (ret < 0) {
 		kfree(subsys);
 		return ret;
@@ -3958,7 +3957,6 @@ static int __init nvme_core_init(void)
 
 static void __exit nvme_core_exit(void)
 {
-	ida_destroy(&nvme_subsystems_ida);
 	class_destroy(nvme_subsys_class);
 	class_destroy(nvme_class);
 	unregister_chrdev_region(nvme_chr_devt, NVME_MINORS);
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
