Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBC128142
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 17:32:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5VEDFFVFq0UZ70Ln4QZ81mhgJd9Wl/4JmKjSpsaH4Ko=; b=pxWzmV2Ve7mrv12bh0St+t/ZV/
	OkyZUyLW9YtgL40FFqNyRdTpeWRpQcTo99nHFVbU9gqwdItGeLYxexchn1eEMTQBC/rMHz5XReFBg
	Cv53/gTPPoQpQSxvaOTPj9Mhm9UTAU5XZWzTBqJN7zPwwqJxyKcpauQFcPwC4WyAnVZ+TN0r7+lNn
	miuPxYAOPIea0AWEBk+GF84tAE0382zxRbluQywWi+qw3mC9SBZ5IRCpdc8zE9UTCfm2uCJhtsjQ8
	e4s2ZJzGBodMAF85Mzitgi2r9ShDtNG+Dz35vdmHX7QAfeUFcmLzauAPQ3Z4UHtypW0uJ+OiPSLIx
	Gr6GgWOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpi7-0007kV-6w; Thu, 23 May 2019 15:32:51 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTphv-0007d5-J3
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 15:32:41 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 08:32:38 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 23 May 2019 08:32:37 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCHv3 2/2] nvme-pci: Use host managed power state for suspend
Date: Thu, 23 May 2019 09:27:35 -0600
Message-Id: <20190523152735.15052-2-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20190523152735.15052-1-keith.busch@intel.com>
References: <20190523152735.15052-1-keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_083239_684236_02950F65 
X-CRM114-Status: GOOD (  17.96  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
v2 -> v3:

  Removed the HMB handling. We've determined this is not be
  necessary in a s2i state.

  Splitting PM ops (Rafael)

  Incorporated improvements from Christoph

 drivers/nvme/host/pci.c | 96 +++++++++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 93 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 599065ed6a32..47da55abb56b 100644
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
 
@@ -2829,16 +2831,94 @@ static void nvme_remove(struct pci_dev *pdev)
 }
 
 #ifdef CONFIG_PM_SLEEP
+static int nvme_get_power_state(struct nvme_ctrl *ctrl, u32 *ps)
+{
+	return nvme_get_features(ctrl, NVME_FEAT_POWER_MGMT, 0, NULL, 0, ps);
+}
+
+static int nvme_set_power_state(struct nvme_ctrl *ctrl, u32 ps)
+{
+	return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0, NULL);
+}
+
+static int nvme_resume(struct device *dev)
+{
+	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
+	struct nvme_ctrl *ctrl = &ndev->ctrl;
+
+	if (pm_resume_via_firmware() || !ctrl->npss ||
+	    nvme_set_power_state(ctrl, ndev->last_ps) != 0)
+		nvme_reset_ctrl(ctrl);
+	return 0;
+}
+
 static int nvme_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
+	struct nvme_ctrl *ctrl = &ndev->ctrl;
+	int ret = -EBUSY;
+
+	/*
+	 * The platform does not remove power for a kernel managed suspend so
+	 * use host managed nvme power settings for lowest idle power if
+	 * possible. This should have quicker resume latency than a full device
+	 * shutdown.  But if the firmware is involved after the suspend or the
+	 * device does not support any non-default power states, shut down the
+	 * device fully.
+	 */
+	if (pm_suspend_via_firmware() || !ctrl->npss) {
+		nvme_dev_disable(ndev, true);
+		return 0;
+	}
+
+	nvme_start_freeze(ctrl);
+	nvme_wait_freeze(ctrl);
+	nvme_sync_queues(ctrl);
+
+	if (ctrl->state != NVME_CTRL_LIVE &&
+	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
+		goto unfreeze;
+
+	ndev->last_ps = 0;
+	ret = nvme_get_power_state(ctrl, &ndev->last_ps);
+	if (ret < 0)
+		goto unfreeze;
+
+	ret = nvme_set_power_state(ctrl, ctrl->npss);
+	if (ret < 0)
+		goto unfreeze;
+
+	if (ret) {
+		/*
+		 * Clearing npss forces a controller reset on resume. The
+		 * correct value will be resdicovered then.
+		 */
+		nvme_dev_disable(ndev, true);
+		ctrl->npss = 0;
+		ret = 0;
+		goto unfreeze;
+	}
+	/*
+	 * A saved state prevents pci pm from generically controlling the
+	 * device's power. If we're using protocol specific settings, we don't
+	 * want pci interfering.
+	 */
+	pci_save_state(pdev);
+unfreeze:
+	nvme_unfreeze(ctrl);
+	return ret;
+}
+
+static int nvme_simple_suspend(struct device *dev)
+{
+	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
 
 	nvme_dev_disable(ndev, true);
 	return 0;
 }
 
-static int nvme_resume(struct device *dev)
+static int nvme_simple_resume(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
@@ -2846,9 +2926,19 @@ static int nvme_resume(struct device *dev)
 	nvme_reset_ctrl(&ndev->ctrl);
 	return 0;
 }
-#endif
 
-static SIMPLE_DEV_PM_OPS(nvme_dev_pm_ops, nvme_suspend, nvme_resume);
+const struct dev_pm_ops nvme_dev_pm_ops = {
+	.suspend	= nvme_suspend,
+	.resume		= nvme_resume,
+	.freeze		= nvme_simple_suspend,
+	.thaw		= nvme_simple_resume,
+	.poweroff	= nvme_simple_suspend,
+	.restore	= nvme_simple_resume,
+};
+
+#else
+#define nvme_dev_pm_ops		NULL
+#endif
 
 static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
 						pci_channel_state_t state)
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
