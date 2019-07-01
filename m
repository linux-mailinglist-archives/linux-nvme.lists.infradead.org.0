Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 28B4B1801F
	for <lists+linux-nvme@lfdr.de>; Wed,  8 May 2019 21:00:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=DVTZffG94niunpoe6yAgAEVkzurL18YLZIWSOEEzsdY=; b=XKc
	wYegwiEAWnUJYoYNSAV/cmvtEWbEOi/WFiIBUCZjMXC6GVnRvlZspraJ2usltd3OMnsroNuJBHin8
	FWqEx2o+byLITBdTZjwE5Cf6lg+2KGBuARGEsfK7PyxyyTWGNGz1fRpX2fhrs1N73wxytzVHS1657
	Y22Vg2gRR5qo4tb8tChTDlF9Elf2G7ppWqsT1w1VpR9rxf34f0zFBNEkFY7EAZibvw8w+eL2IPYNn
	JbNUjCZIcDBR0p/Y6PTzzYARbXIKqvUjtq5CliVUMGKjlVVRGH90Z4UT1YYvMQ9gypN3K5HiNPoEb
	ulBbuACGoao92sAFRoWEvErPOlNRcyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORns-0006Tl-8O; Wed, 08 May 2019 19:00:32 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORnm-0006SZ-T4
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 19:00:29 +0000
Received: from 61-220-137-37.hinet-ip.hinet.net ([61.220.137.37]
 helo=localhost)
 by youngberry.canonical.com with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hORnL-0001aA-PC; Wed, 08 May 2019 19:00:00 +0000
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
To: keith.busch@intel.com,
	axboe@fb.com,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH] nvme-pci: Use non-operational power state instead of D3 on
 Suspend-to-Idle
Date: Thu,  9 May 2019 02:59:55 +0800
Message-Id: <20190508185955.11406-1-kai.heng.feng@canonical.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_120027_082785_ACA83BDD 
X-CRM114-Status: GOOD (  19.43  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
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
Cc: Kai-Heng Feng <kai.heng.feng@canonical.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Mario Limonciello <mario.limonciello@dell.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Several NVMes consume lots of power during Suspend-to-Idle.

According to the NVMe vendors, APST should be used and there are two
things that should be prevented:
- Controller shutdown (CC.SHN)
- PCI D3

I think that's because the Windows Modern Standby design document [1]
states below as a requirement:
"
Akin to AHCI PCIe SSDs, NVMe SSDs need to provide the host with a
non-operational power state that is comparable to DEVSLP (<5mW draw,
<100ms exit latency) in order to allow the host to perform appropriate
transitions into Modern Standby. Should the NVMe SSD not expose such a
non-operational power state, autonomous power state transitions (APST)
is the only other option to enter Modern Standby successfully.
"

D3 wasn't mentioned at all, though for some vendors D3 still put the
device into a low power state, others disable APST after trasition to
D3.

So instead of disabling NVMe controller in suspend callback we do the
following instead:
- Make sure all IRQs are quiesced
- Stop all queues
- Prevent the device entering D3
- Use memory barrier to make sure DMA operations are flushed on HMB devices

This patch has been verified on several different NVMes:
- Intel
- Hynix
- LiteOn
- Micron
- WDC
- Samsung
- Tohiba

With the new suspend routine, the laptop I tested use roughly 0.8W
under Suspend-to-Idle, and resume time is faster than the original
D3 scheme.

The only one exception so far is Toshiba XG5, which works with the old
suspend routine, so introduce a new quirk for XG5.
We are working with Toshiba to root cause the issue on XG5.

[1] https://docs.microsoft.com/en-us/windows-hardware/design/device-experiences/part-selection#ssd-storage

Tested-by: Lucien Kao <Lucien_kao@compal.com>
Tested-by: Mice Lin <mice_lin@wistron.com>
Tested-by: Jason Tan <LiangChuan.Tan@wdc.com>
Tested-by: Cody Liu (codyliu) <codyliu@micron.com>
Tested-by: Theodore Ts'o <tytso@mit.edu>
Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
Signed-off-by: Kai-Heng Feng <kai.heng.feng@canonical.com>
---
 drivers/nvme/host/core.c |   8 +++
 drivers/nvme/host/nvme.h |   8 +++
 drivers/nvme/host/pci.c  | 102 +++++++++++++++++++++++++++++++++++++--
 3 files changed, 115 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a6644a2c3ef7..929db749da98 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3903,6 +3903,14 @@ static inline void _nvme_check_size(void)
 	BUILD_BUG_ON(sizeof(struct nvme_directive_cmd) != 64);
 }
 
+void nvme_enter_deepest(struct nvme_ctrl *ctrl)
+{
+	int ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ctrl->npss,
+				    NULL, 0, NULL);
+	if (ret)
+		dev_warn(ctrl->device, "failed to set deepest non-operational state (%d)\n", ret);
+}
+EXPORT_SYMBOL_GPL(nvme_enter_deepest);
 
 static int __init nvme_core_init(void)
 {
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 5ee75b5ff83f..ea40a83314ae 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -92,6 +92,11 @@ enum nvme_quirks {
 	 * Broken Write Zeroes.
 	 */
 	NVME_QUIRK_DISABLE_WRITE_ZEROES		= (1 << 9),
+
+	/*
+	 * Use D3 on S2I regardless of NPSS.
+	 */
+	NVME_QUIRK_USE_D3_ON_S2I		= (1 << 10),
 };
 
 /*
@@ -229,6 +234,7 @@ struct nvme_ctrl {
 	/* Power saving configuration */
 	u64 ps_max_latency_us;
 	bool apst_enabled;
+	bool suspend_to_idle;
 
 	/* PCIe only: */
 	u32 hmpre;
@@ -467,6 +473,8 @@ int nvme_delete_ctrl(struct nvme_ctrl *ctrl);
 int nvme_get_log(struct nvme_ctrl *ctrl, u32 nsid, u8 log_page, u8 lsp,
 		void *log, size_t size, u64 offset);
 
+void nvme_enter_deepest(struct nvme_ctrl *ctrl);
+
 extern const struct attribute_group *nvme_ns_id_attr_groups[];
 extern const struct block_device_operations nvme_ns_head_ops;
 
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 3e4fb891a95a..dea42b41f9a8 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -23,6 +23,7 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/sed-opal.h>
 #include <linux/pci-p2pdma.h>
+#include <linux/suspend.h>
 
 #include "trace.h"
 #include "nvme.h"
@@ -2828,12 +2829,98 @@ static void nvme_remove(struct pci_dev *pdev)
 }
 
 #ifdef CONFIG_PM_SLEEP
+static void nvme_do_suspend_to_idle(struct pci_dev *pdev)
+{
+	struct nvme_dev *ndev = pci_get_drvdata(pdev);
+
+	pdev->dev_flags |= PCI_DEV_FLAGS_NO_D3;
+	ndev->ctrl.suspend_to_idle = true;
+
+	nvme_start_freeze(&ndev->ctrl);
+	nvme_wait_freeze_timeout(&ndev->ctrl, NVME_IO_TIMEOUT);
+	nvme_stop_queues(&ndev->ctrl);
+
+	nvme_enter_deepest(&ndev->ctrl);
+
+	if (ndev->ctrl.queue_count > 0) {
+		nvme_disable_io_queues(ndev);
+		nvme_poll_irqdisable(&ndev->queues[0], -1);
+	}
+
+	nvme_suspend_io_queues(ndev);
+	nvme_suspend_queue(&ndev->queues[0]);
+	pci_free_irq_vectors(pdev);
+
+	blk_mq_tagset_busy_iter(&ndev->tagset, nvme_cancel_request, &ndev->ctrl);
+	blk_mq_tagset_busy_iter(&ndev->admin_tagset, nvme_cancel_request, &ndev->ctrl);
+
+	/* Make sure all HMB DMA operations are done */
+	mb();
+}
+
+static int nvme_do_resume_from_idle(struct pci_dev *pdev)
+{
+	struct nvme_dev *ndev = pci_get_drvdata(pdev);
+	int result;
+
+	pdev->dev_flags &= ~PCI_DEV_FLAGS_NO_D3;
+	ndev->ctrl.suspend_to_idle = false;
+
+	result = pci_alloc_irq_vectors(pdev, 1, 1, PCI_IRQ_ALL_TYPES);
+	if (result < 0)
+		goto out;
+
+	result = nvme_pci_configure_admin_queue(ndev);
+	if (result)
+		goto out;
+
+	result = nvme_alloc_admin_tags(ndev);
+	if (result)
+		goto out;
+
+	ndev->ctrl.max_hw_sectors = NVME_MAX_KB_SZ << 1;
+	ndev->ctrl.max_segments = NVME_MAX_SEGS;
+	mutex_unlock(&ndev->shutdown_lock);
+
+	result = nvme_init_identify(&ndev->ctrl);
+	if (result)
+		goto out;
+
+	result = nvme_setup_io_queues(ndev);
+	if (result)
+		goto out;
+
+	if (ndev->online_queues < 2) {
+		dev_warn(ndev->ctrl.device, "IO queues not created\n");
+		nvme_kill_queues(&ndev->ctrl);
+		nvme_remove_namespaces(&ndev->ctrl);
+	} else {
+		nvme_start_queues(&ndev->ctrl);
+		nvme_wait_freeze(&ndev->ctrl);
+		nvme_dev_add(ndev);
+		nvme_unfreeze(&ndev->ctrl);
+	}
+
+	nvme_start_ctrl(&ndev->ctrl);
+
+	return 0;
+
+ out:
+	nvme_remove_dead_ctrl(ndev, result);
+	return result;
+}
+
 static int nvme_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
-	nvme_dev_disable(ndev, true);
+	if (IS_ENABLED(CONFIG_ACPI) && pm_suspend_via_s2idle() &&
+	    ndev->ctrl.npss && !(ndev->ctrl.quirks & NVME_QUIRK_USE_D3_ON_S2I))
+		nvme_do_suspend_to_idle(pdev);
+	else
+		nvme_dev_disable(ndev, true);
+
 	return 0;
 }
 
@@ -2841,9 +2928,16 @@ static int nvme_resume(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
+	int result = 0;
 
-	nvme_reset_ctrl(&ndev->ctrl);
-	return 0;
+	if (ndev->ctrl.suspend_to_idle) {
+		result = nvme_do_resume_from_idle(pdev);
+		if (result)
+			dev_warn(dev, "failed to resume from idle state (%d)\n", result);
+	} else
+		nvme_reset_ctrl(&ndev->ctrl);
+
+	return result;
 }
 #endif
 
@@ -2921,6 +3015,8 @@ static const struct pci_device_id nvme_id_table[] = {
 	{ PCI_VDEVICE(INTEL, 0x5845),	/* Qemu emulated controller */
 		.driver_data = NVME_QUIRK_IDENTIFY_CNS |
 				NVME_QUIRK_DISABLE_WRITE_ZEROES, },
+	{ PCI_DEVICE(0x1179, 0x0116),	/* Toshiba XG5 */
+		.driver_data = NVME_QUIRK_USE_D3_ON_S2I, },
 	{ PCI_DEVICE(0x1bb1, 0x0100),   /* Seagate Nytro Flash Storage */
 		.driver_data = NVME_QUIRK_DELAY_BEFORE_CHK_RDY, },
 	{ PCI_DEVICE(0x1c58, 0x0003),	/* HGST adapter */
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
