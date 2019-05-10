Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 227181A49B
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 23:35:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=uFcdq04J5prnD3lxCBttke1nga35FTvmXX4ozd8neek=; b=Zfm
	rhzkQvfI7TF0ksN1F51iKuRJW0tKEIPLdBVU0WVMOZSmxZHtd6XXdY/mtoLzpm5ht7KHH1jdVMT4V
	wKRIDgFmM4HEgPRs73U4gO70pmN2Pyh7ofIWSqvGieAEiN/hvLD4C9Cg15DUN6LuezMpXmiY45D0C
	dH0RIPzgYOxi9hM0BS0zo9eUpuvAi6zcI3sH8O4mIzkvjLZK69gnLV+M2cEAC62Vp4h+1U1CnQK6i
	wuNh+T0eNp4Evu8Y4IgLu+qqgtoSTxSLcBQwH8tXgdGj+ezf7duYswyZQvP1UpqzfhNCW4+J2SsXM
	p4vQl+eJldtl8fg3jTfL3RIwtOOeAiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPDAf-0001Pl-D2; Fri, 10 May 2019 21:35:13 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPDAZ-0000zd-Ut
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 21:35:09 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 14:35:06 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by fmsmga005.fm.intel.com with ESMTP; 10 May 2019 14:35:05 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH] nvme/pci: Use host managed power state for suspend
Date: Fri, 10 May 2019 15:29:37 -0600
Message-Id: <20190510212937.11661-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_143508_051492_34CE1CCE 
X-CRM114-Status: GOOD (  19.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
Cc: linux-pm <linux-pm@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 lkml <linux-kernel@vger.kernel.org>, Keith Busch <keith.busch@intel.com>,
 Kai Heng Feng <kai.heng.feng@canonical.com>,
 Rafael Wysocki <rafael@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The nvme pci driver prepares its devices for power loss during suspend
by shutting down the controllers, and the power setting is deferred to
pci driver's power management before the platform removes power. The
suspend-to-idle mode, however, does not remove power.

NVMe devices that implement host managed power settings can achieve
lower power and better transition latencies than using generic PCI
power settings. Try to use this feature if the platform is not involved
with the suspend. If successful, restore the previous power state on
resume.

Cc: Mario Limonciello <Mario.Limonciello@dell.com>
Cc: Kai Heng Feng <kai.heng.feng@canonical.com>
Signed-off-by: Keith Busch <keith.busch@intel.com>
---
Disclaimer: I've tested only on emulation faking support for the feature.

General question: different devices potentially have divergent values
for power consumption and transition latencies. Would it be useful to
allow a user tunable setting to select the desired target power state
instead of assuming the lowest one?

 drivers/nvme/host/core.c | 27 ++++++++++++++++++++++++
 drivers/nvme/host/nvme.h |  2 ++
 drivers/nvme/host/pci.c  | 53 ++++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 82 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a6644a2c3ef7..eb3640fd8838 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1132,6 +1132,33 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
 	return ret;
 }
 
+int nvme_set_power(struct nvme_ctrl *ctrl, unsigned ps)
+{
+	return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0, NULL);
+}
+EXPORT_SYMBOL_GPL(nvme_set_power);
+
+int nvme_get_power(struct nvme_ctrl *ctrl, u32 *result)
+{
+	struct nvme_command c;
+	union nvme_result res;
+	int ret;
+
+	if (!result)
+		return -EINVAL;
+
+	memset(&c, 0, sizeof(c));
+	c.features.opcode = nvme_admin_get_features;
+	c.features.fid = cpu_to_le32(NVME_FEAT_POWER_MGMT);
+
+	ret = __nvme_submit_sync_cmd(ctrl->admin_q, &c, &res,
+			NULL, 0, 0, NVME_QID_ANY, 0, 0, false);
+	if (ret >= 0)
+		*result = le32_to_cpu(res.u32);
+	return ret;
+}
+EXPORT_SYMBOL_GPL(nvme_get_power);
+
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
 {
 	u32 q_count = (*count - 1) | ((*count - 1) << 16);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 5ee75b5ff83f..eaa571ac06d2 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -459,6 +459,8 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
 		unsigned timeout, int qid, int at_head,
 		blk_mq_req_flags_t flags, bool poll);
 int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
+int nvme_set_power(struct nvme_ctrl *ctrl, unsigned ps);
+int nvme_get_power(struct nvme_ctrl *ctrl, u32 *result);
 void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
 int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
 int nvme_reset_ctrl_sync(struct nvme_ctrl *ctrl);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 3e4fb891a95a..0d5d91e5b293 100644
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
 
@@ -2828,11 +2830,59 @@ static void nvme_remove(struct pci_dev *pdev)
 }
 
 #ifdef CONFIG_PM_SLEEP
+static int nvme_deep_state(struct nvme_dev *dev)
+{
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
+	int ret;
+
+	/*
+	 * Save the current power state in case a user tool set a power policy
+	 * for this device. We'll restore that state on resume.
+	 */
+	dev->last_ps = 0;
+	ret = nvme_get_power(&dev->ctrl, &dev->last_ps);
+
+	/*
+	 * Return the error to halt suspend if the driver either couldn't
+	 * submit a command or didn't see a response.
+	 */
+	if (ret < 0)
+		return ret;
+
+	ret = nvme_set_power(&dev->ctrl, dev->ctrl.npss);
+	if (ret < 0)
+		return ret;
+
+	if (!ret) {
+		/*
+		 * A saved state prevents pci pm from generically controlling
+		 * the device's power. We're using protocol specific settings
+		 * so we don't want pci interfering.
+		 */
+		pci_save_state(pdev);
+	} else {
+		/*
+		 * The drive failed the low power request. Fallback to device
+		 * shutdown and clear npss to force a controller reset on
+		 * resume. The value will be rediscovered during reset.
+		 */
+		dev->ctrl.npss = 0;
+		nvme_dev_disable(dev, true);
+	}
+	return 0;
+}
+
 static int nvme_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
+	/*
+	 * Try to use nvme if the device supports host managed power settings
+	 * and platform firmware is not involved.
+	 */
+	if (!pm_suspend_via_firmware() && ndev->ctrl.npss)
+		return nvme_deep_state(ndev);
 	nvme_dev_disable(ndev, true);
 	return 0;
 }
@@ -2842,6 +2892,9 @@ static int nvme_resume(struct device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
+	if (!pm_resume_via_firmware() && ndev->ctrl.npss)
+		if (nvme_set_power(&ndev->ctrl, ndev->last_ps) == 0)
+			return 0;
 	nvme_reset_ctrl(&ndev->ctrl);
 	return 0;
 }
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
