Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8152912AD6
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 11:44:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=GA8/WKiXF/xBoluYXWox5woIPt3L6uMqJf7BS29Lphg=; b=OUF
	bjJOXqkh4qvXEMvJBenRd3F6C/gbF+TFhpekxwnwQ96pFqT/8Eg3fDaNtlcByj3wcVEPxC5+CrbFc
	MPrpRhyGfC9/7tqNGlCedQ4JSf2dT5oFIfm8Uz/721mav7fNitQKG9vzsB3cuwI4JL2q0bnrbqJKR
	KkVEpa0pkn2PDNXCo73ttJcVkt37WswOAZonckzD9gG5p08ZH3i0mwDev9NM6TyW4ZG8nnHTmlxZn
	+8c7t3N+2YAzrtBW9L8K72/3eI5a0/iJb9L2ou60CfETd3A8AkJoSwUST3SWaKko6sDV/DAUgGiIO
	m5duF3o8LXWvG5GF8/KJQx6vRDua1Lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMUjl-0000jO-Ib; Fri, 03 May 2019 09:44:13 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMUjg-0000if-KZ
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 09:44:10 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 36AB7AD72;
 Fri,  3 May 2019 09:44:05 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvme-fc: use separate work queue to avoid warning
Date: Fri,  3 May 2019 11:43:52 +0200
Message-Id: <20190503094352.17923-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_024408_822828_9FC62725 
X-CRM114-Status: GOOD (  14.82  )
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When tearing down a controller the following warning is issued:

WARNING: CPU: 0 PID: 30681 at ../kernel/workqueue.c:2418 check_flush_dependency

This happens as the err_work workqueue item is scheduled on the
system workqueue (which has WQ_MEM_RECLAIM not set), but is flushed
from a workqueue which has WQ_MEM_RECLAIM set.

Fix this by providing an FC-NVMe specific workqueue.

Fixes: 4cff280a5fcc ("nvme-fc: resolve io failures during connect")
Cc: James Smart <james.smart@broadcom.com>
Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/fc.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 143c2b81ffc5..a1080fa4b046 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -204,7 +204,7 @@ static LIST_HEAD(nvme_fc_lport_list);
 static DEFINE_IDA(nvme_fc_local_port_cnt);
 static DEFINE_IDA(nvme_fc_ctrl_cnt);
 
-
+static struct workqueue_struct *nvme_fc_wq;
 
 /*
  * These items are short-term. They will eventually be moved into
@@ -2060,7 +2060,7 @@ nvme_fc_error_recovery(struct nvme_fc_ctrl *ctrl, char *errmsg)
 	 */
 	if (ctrl->ctrl.state == NVME_CTRL_CONNECTING) {
 		active = atomic_xchg(&ctrl->err_work_active, 1);
-		if (!active && !schedule_work(&ctrl->err_work)) {
+		if (!active && !queue_work(nvme_fc_wq, &ctrl->err_work)) {
 			atomic_set(&ctrl->err_work_active, 0);
 			WARN_ON(1);
 		}
@@ -3406,6 +3406,10 @@ static int __init nvme_fc_init_module(void)
 {
 	int ret;
 
+	nvme_fc_wq = alloc_workqueue("nvme_fc_wq", WQ_MEM_RECLAIM, 0);
+	if (!nvme_fc_wq)
+		return -ENOMEM;
+
 	/*
 	 * NOTE:
 	 * It is expected that in the future the kernel will combine
@@ -3423,7 +3427,7 @@ static int __init nvme_fc_init_module(void)
 	ret = class_register(&fc_class);
 	if (ret) {
 		pr_err("couldn't register class fc\n");
-		return ret;
+		goto out_destroy_wq;
 	}
 
 	/*
@@ -3447,6 +3451,9 @@ static int __init nvme_fc_init_module(void)
 	device_destroy(&fc_class, MKDEV(0, 0));
 out_destroy_class:
 	class_unregister(&fc_class);
+out_destroy_wq:
+	destroy_workqueue(nvme_fc_wq);
+
 	return ret;
 }
 
@@ -3463,6 +3470,7 @@ static void __exit nvme_fc_exit_module(void)
 
 	device_destroy(&fc_class, MKDEV(0, 0));
 	class_unregister(&fc_class);
+	destroy_workqueue(nvme_fc_wq);
 }
 
 module_init(nvme_fc_init_module);
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
