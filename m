Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94861192F8
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 21:34:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+FxkXctVUtAtahSNRlqld/EYgPI4ZjUMqNtRcls6Fdc=; b=exumP2Mh3q5Aj3
	uQWzHuhLsPRNdy6GkR7qV5h4+87X2ZdmZKXMX7ueuwJnIPyR47US5whF0oEr3RkwBpOcdaj8N1KiN
	kFE63WTaqN8kBKJRwyIGHm+zDq2een8VQPGqHd8wHdVpWH3Wn1viEHQ/qr/La97ZNT7CRm+E6IIKg
	NfyHtr+AqKvYzCacujvhGwaNnNZ0bN+Yks4seCPpChKoyeGUlEZ0Cge0GjrDU1mc9IVIRkZPLbH9+
	glfrXZzvs8h+wvUEgQCgYfv3DhZQ7mBIfuGE7898IeFKBrqdnqcHeDGZ1Y23I0gZEAujA8FMxuOlG
	aP94eyZJhdiDs6YqKQdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOonu-0006Yd-9M; Thu, 09 May 2019 19:34:06 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOonW-00069e-NC
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 19:33:54 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 12:33:41 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by FMSMGA003.fm.intel.com with ESMTP; 09 May 2019 12:33:39 -0700
Date: Thu, 9 May 2019 13:28:08 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario.Limonciello@dell.com
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Message-ID: <20190509192807.GB9675@localhost.localdomain>
References: <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_123343_316286_62E8C474 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: keith.busch@intel.com, rafael.j.wysocki@intel.com, sagi@grimberg.me,
 linux-pm@vger.kernel.org, rafael@kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, axboe@fb.com, kai.heng.feng@canonical.com,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 06:57:34PM +0000, Mario.Limonciello@dell.com wrote:
> No, current Windows versions don't transition to D3 with inbox NVME driver.
> You're correct, it's explicit state transitions even if APST was enabled
> (as this patch is currently doing as well).

The proposed patch does too much, and your resume latency will be worse
off for doing an unnecessary controller reset.

The following should be all that's needed if the device is spec
compliant. The resume part isn't necessary if npss is non-operational, but
we're not saving that info, and it shouldn't hurt to be explicit anyway.

I don't have any PS capable devices, so this is just compile tested.

---
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 6265d9225ec8..ce8b9bc949b9 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1132,6 +1132,22 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
 	return ret;
 }
 
+int nvme_set_power(struct nvme_ctrl *ctrl, unsigned npss)
+{
+	int ret;
+
+	mutex_lock(&ctrl->scan_lock);
+	nvme_start_freeze(ctrl);
+	nvme_wait_freeze(ctrl);
+	ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, npss, NULL, 0,
+				NULL);
+	nvme_unfreeze(ctrl);
+	mutex_unlock(&ctrl->scan_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(nvme_set_power);
+
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 {
 	u32 q_count = (*count - 1) | ((*count - 1) << 16);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 527d64545023..f2be6aad9804 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -459,6 +459,7 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 		unsigned timeout, int qid, int at_head,
 		blk_mq_req_flags_t flags, bool poll);
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
+int nvme_set_power(struct nvme_ctrl *ctrl, unsigned npss);
 void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
 int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
 int nvme_reset_ctrl_sync(struct nvme_ctrl *ctrl);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index a90cf5d63aac..2c4154cb4e79 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -18,6 +18,7 @@
 #include <linux/mutex.h>
 #include <linux/once.h>
 #include <linux/pci.h>
+#include <linux/suspend.h>
 #include <linux/t10-pi.h>
 #include <linux/types.h>
 #include <linux/io-64-nonatomic-lo-hi.h>
@@ -2851,6 +2852,8 @@ static int nvme_suspend(struct device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
+	if (!pm_suspend_via_firmware())
+		return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);
 	nvme_dev_disable(ndev, true);
 	return 0;
 }
@@ -2860,6 +2863,8 @@ static int nvme_resume(struct device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
+	if (!pm_suspend_via_firmware())
+		return nvme_set_power(&ndev->ctrl, 0);
 	nvme_reset_ctrl(&ndev->ctrl);
 	return 0;
 }
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
