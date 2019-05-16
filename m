Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E86D1FDDD
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 05:00:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Lbnoisu7wsWsL9OyQerxCJWX8ZYz3R8PiofE+mRd7Nk=; b=T6mE/lS/jnvmcE
	KzMzMhNIjdyfjz6Lyu1shM0ZflPE/zPRXVoCWqi7fgKNU2Ii7tq5NSQRKIGY2wiITz7Fc+07DmCRw
	xoVMisIBUZ+HvClU9scjWCfvFI5qNpRQWXLP5IlCTfFt+qvzVboEAv7sPjTv6Kq039Kb1OIHsxJJX
	PXz70zdwukT4zPFGBk3nE9FXbAND/jD6gIqRTJnAEcWAxbCHgAEYri24DHZzrUADp+DERd/5iE9oW
	REYleaG9ylsKQjtRAxgwy6nU9ksd71+1dllZz52Ybxllk5jz+5Vh3BwLZeb2Dbvjg2ZHkejmHuroj
	AIO4tXfXuQGhHysSDUlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR6dQ-0006ZD-Kn; Thu, 16 May 2019 03:00:44 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR6dM-0006YU-54
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 03:00:41 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 382A7C915BF0B1A9FCC0;
 Thu, 16 May 2019 11:00:29 +0800 (CST)
Received: from huawei.com (10.90.53.225) by DGGEMS411-HUB.china.huawei.com
 (10.3.19.211) with Microsoft SMTP Server id 14.3.439.0; Thu, 16 May 2019
 11:00:27 +0800
From: Yufen Yu <yuyufen@huawei.com>
To: <hch@lst.de>, <sagi@grimberg.me>, <keith.busch@intel.com>,
 <linux-nvme@lists.infradead.org>
Subject: [PATCH] nvme: fix memory leak for power latency tolerance req
Date: Thu, 16 May 2019 11:05:21 +0800
Message-ID: <20190516030521.40374-1-yuyufen@huawei.com>
X-Mailer: git-send-email 2.16.2.dirty
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_200040_425903_9411AC00 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: luto@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_init_ctrl() initialize latency tolerance controls and
kzalloc structdev_pm_qos_request 'req' in nvme_init_ctrl().
The only way to free the 'req' is nvme_init_identify(), when
apst is disable and prev_apst is enable.

But, prev_apst is disable when device probe, and we will
miss to free it when the device does't support APST.

To fix the problem, we call dev_pm_qos_update_user_latency_tolerance()
to nvme_init_identify() only when the device actually supports APST.
And it needs to be hidden when remove nvme ctrl.

Fixes: c5552fde102fc("nvme: Enable autonomous power state transitions")

Signed-off-by: Yufen Yu <yuyufen@huawei.com>
---
 drivers/nvme/host/core.c | 34 ++++++++++++++++++++++++----------
 1 file changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 15d114787d6a..e10756b7c13f 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2485,6 +2485,21 @@ static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
 	return ret;
 }
 
+static void nvme_expose_latency_tolerance(struct nvme_ctrl *ctrl)
+{
+	ctrl->device->power.set_latency_tolerance = nvme_set_latency_tolerance;
+	dev_pm_qos_update_user_latency_tolerance(ctrl->device,
+		min(default_ps_max_latency_us, (unsigned long)S32_MAX));
+
+	dev_pm_qos_expose_latency_tolerance(ctrl->device);
+}
+
+static void nvme_hide_latency_tolerance(struct nvme_ctrl *ctrl)
+{
+	ctrl->device->power.set_latency_tolerance = NULL;
+	dev_pm_qos_hide_latency_tolerance(ctrl->device);
+}
+
 /*
  * Initialize the cached copies of the Identify data and various controller
  * register in our nvme_ctrl structure.  This should be called as soon as
@@ -2643,9 +2658,9 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 		return ret;
 
 	if (ctrl->apst_enabled && !prev_apst_enabled)
-		dev_pm_qos_expose_latency_tolerance(ctrl->device);
+		nvme_expose_latency_tolerance(ctrl);
 	else if (!ctrl->apst_enabled && prev_apst_enabled)
-		dev_pm_qos_hide_latency_tolerance(ctrl->device);
+		nvme_hide_latency_tolerance(ctrl);
 
 	ret = nvme_configure_apst(ctrl);
 	if (ret < 0)
@@ -3687,6 +3702,13 @@ EXPORT_SYMBOL_GPL(nvme_start_ctrl);
 
 void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
 {
+	/*
+	 * If userspace latency tolerance have been exposed,
+	 * we need to hide it.
+	 */
+	if (ctrl->device->power.set_latency_tolerance)
+		nvme_hide_latency_tolerance(ctrl);
+
 	cdev_device_del(&ctrl->cdev, ctrl->device);
 }
 EXPORT_SYMBOL_GPL(nvme_uninit_ctrl);
@@ -3773,14 +3795,6 @@ int nvme_init_ctrl(struct nvme_ctrl *ctrl, struct device *dev,
 	if (ret)
 		goto out_free_name;
 
-	/*
-	 * Initialize latency tolerance controls.  The sysfs files won't
-	 * be visible to userspace unless the device actually supports APST.
-	 */
-	ctrl->device->power.set_latency_tolerance = nvme_set_latency_tolerance;
-	dev_pm_qos_update_user_latency_tolerance(ctrl->device,
-		min(default_ps_max_latency_us, (unsigned long)S32_MAX));
-
 	return 0;
 out_free_name:
 	kfree_const(ctrl->device->kobj.name);
-- 
2.16.2.dirty


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
