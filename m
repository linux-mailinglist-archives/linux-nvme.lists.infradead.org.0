Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC7121F8D4
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 18:42:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=8SGHdiE8YlMd+Rdfy2aR0QD51Flp8vzkfr6u9RNs+p0=; b=YSOTGKIaAjrWposqBbi2NQ7TlB
	YOlaXo23T63deRpyLb/3xKF/wubftNPkRFGUNO/GN+fCum1tTpgQVeB2/dOgzO8R/19xeUPCkb4aT
	mnERa4YVdkH9IHJejcG/AhbsvqylpELoxAhQsz90UcAUnNPfpViNiEh8iB9nS3e9UGvbxurvYyQi/
	2mTEhEPi2s00NSz9VoN/JXs15ZvvaJWWH7T75QVb8bvoOuxNMDGG9+uDJWHcoxi8hotJRUsRPi/fe
	TIfZ+yWNOg2KhnelIudJXzbApqa04Dy2GhFtW4TgeXV1A3MYXKuWJkbvOFzQ1sdxinzqP0mBlLz0R
	NXvoAJNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQwzA-0007Ns-Dq; Wed, 15 May 2019 16:42:32 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQwyX-0006fd-0j
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 16:41:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 15 May 2019 09:41:49 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 15 May 2019 09:41:49 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Date: Wed, 15 May 2019 10:36:25 -0600
Message-Id: <20190515163625.21776-6-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20190515163625.21776-1-keith.busch@intel.com>
References: <20190515163625.21776-1-keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_094153_238470_FCA7CFBD 
X-CRM114-Status: GOOD (  16.68  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>,
 Kai Heng Feng <kai.heng.feng@canonical.com>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Rafael Wysocki <rafael@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The nvme pci driver prepares its devices for power loss during suspend
by shutting down the controllers. The power setting is deferred to
pci driver's power management before the platform removes power. The
suspend-to-idle mode, however, does not remove power.

NVMe devices that implement host managed power settings can achieve
lower power and better transition latencies than using generic PCI power
settings. Try to use this feature if the platform is not involved with
the suspend. If successful, restore the previous power state on resume.

Cc: Mario Limonciello <Mario.Limonciello@dell.com>
Cc: Kai Heng Feng <kai.heng.feng@canonical.com>
Signed-off-by: Keith Busch <keith.busch@intel.com>
---
v1 -> v2:

  Split prep patches for the get features

  Ensure queued and dispatch IO completes before attempting to set the low
  power state. This also required a sync to ensure that nothing timed
  out or reset the controller while we attempted the intermittent queue freeze.

  Disable HMB if enabled. It is not clear this should be necessary except
  through empirical reports.

 drivers/nvme/host/pci.c | 80 +++++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 599065ed6a32..42d5c6369803 100644
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
@@ -116,6 +117,7 @@ struct nvme_dev {
 	u32 cmbsz;
 	u32 cmbloc;
 	struct nvme_ctrl ctrl;
+	u32 last_ps;
 
 	mempool_t *iod_mempool;
 
@@ -2829,11 +2831,87 @@ static void nvme_remove(struct pci_dev *pdev)
 }
 
 #ifdef CONFIG_PM_SLEEP
+static int nvme_deep_state(struct nvme_dev *dev)
+{
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
+	struct nvme_ctrl *ctrl = &dev->ctrl;
+	int ret = -EBUSY;;
+
+	nvme_start_freeze(ctrl);
+	nvme_wait_freeze(ctrl);
+	nvme_sync_queues(ctrl);
+
+	if (ctrl->state != NVME_CTRL_LIVE &&
+	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
+		goto unfreeze;
+
+	if (dev->host_mem_descs) {
+		ret = nvme_set_host_mem(dev, 0);
+		if (ret < 0)
+			goto unfreeze;
+	}
+
+	dev->last_ps = 0;
+	ret = nvme_get_features(ctrl, NVME_FEAT_POWER_MGMT, 0, NULL, 0,
+				&dev->last_ps);
+	if (ret < 0)
+		goto unfreeze;
+
+	ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, dev->ctrl.npss,
+				NULL, 0, NULL);
+	if (ret < 0)
+		goto unfreeze;
+
+	if (ret) {
+		/*
+		 * Clearing npss forces a controller reset on resume. The
+		 * correct value will be resdicovered then.
+		 */
+		ctrl->npss = 0;
+		nvme_dev_disable(dev, true);
+		ret = 0;
+		goto unfreeze;
+	}
+
+	/*
+	 * A saved state prevents pci pm from generically controlling the
+	 * device's power. We're using protocol specific settings so we don't
+	 * want pci interfering.
+	 */
+	pci_save_state(pdev);
+unfreeze:
+	nvme_unfreeze(ctrl);
+	return ret;
+}
+
+static int nvme_make_operational(struct nvme_dev *dev)
+{
+	struct nvme_ctrl *ctrl = &dev->ctrl;
+	int ret;
+
+	ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, dev->last_ps,
+				NULL, 0, NULL);
+	if (ret)
+		goto reset;
+
+	if (dev->host_mem_descs) {
+		ret = nvme_setup_host_mem(dev);
+		if (ret)
+			goto reset;
+	}
+	return 0;
+reset:
+	nvme_reset_ctrl(ctrl);
+	return 0;
+}
+
 static int nvme_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
+	if (!pm_suspend_via_firmware() && ndev->ctrl.npss)
+		return nvme_deep_state(ndev);
 	nvme_dev_disable(ndev, true);
 	return 0;
 }
@@ -2843,6 +2921,8 @@ static int nvme_resume(struct device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
+	if (!pm_resume_via_firmware() && ndev->ctrl.npss)
+		return nvme_make_operational(ndev);
 	nvme_reset_ctrl(&ndev->ctrl);
 	return 0;
 }
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
