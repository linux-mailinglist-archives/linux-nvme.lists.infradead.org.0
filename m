Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35DA885D02
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 10:37:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kAfd1T/wmG4wwSC9jlGZKRRldeGlnTegNAnKwvB4J1o=; b=WUL3Jf9lP+vzb6
	4hbCZN6D/7TaT5HC6T38/JT0mqxLIIkBBlsDi4K0XwwQOE9RPLKg7cx9Nd7os8R15j2DQKqfikHd6
	oIt/HBWu+FcrCUdxVbbhjcXSKMArjf8pbX75hJxTpYdnjZnXGTaR1aPsW2SKVh8KT0aKBfunpLZZ7
	ALQw+KPF8lpzWQIqF9hB33ArEOrPoGHJq7uBn409UVj6pOKS4+VxP+fZc5YKE3ime+EDyGnIyi1GT
	kNdcVbyYj64ZuXqJwHUvLEcyz50gJ1726gWxlvSlNbfTcz69FdaGaZB6eYmKOXu2/1kbre8J1RUAw
	zdPj8MCbV/EThAPUXdeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvdv7-0002sU-CB; Thu, 08 Aug 2019 08:37:13 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvduf-0002ic-FD
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 08:36:47 +0000
Received: from 79.184.254.29.ipv4.supernova.orange.pl (79.184.254.29) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.275)
 id 20bffa7542b3d3cc; Thu, 8 Aug 2019 10:36:38 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH] nvme-pci: Allow PCI bus-level PM to be used if ASPM is
 disabled
Date: Thu, 08 Aug 2019 10:36:37 +0200
Message-ID: <2583975.4sIyE3leJj@kreacher>
In-Reply-To: <20190731221956.GB15795@localhost.localdomain>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher> <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_013645_811111_41ED5933 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PCI <linux-pci@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

One of the modifications made by commit d916b1be94b6 ("nvme-pci: use
host managed power state for suspend") was adding a pci_save_state()
call to nvme_suspend() in order to prevent the PCI bus-level PM from
being applied to the suspended NVMe devices, but if ASPM is not
enabled for the target NVMe device, that causes its PCIe link to stay
up and the platform may not be able to get into its optimum low-power
state because of that.

For example, if ASPM is disabled for the NVMe drive (PC401 NVMe SK
hynix 256GB) in my Dell XPS13 9380, leaving it in D0 during
suspend-to-idle prevents the SoC from reaching package idle states
deeper than PC3, which is way insufficient for system suspend.

To address this shortcoming, make nvme_suspend() check if ASPM is
enabled for the target device and fall back to full device shutdown
and PCI bus-level PM if that is not the case.

Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
Link: https://lore.kernel.org/linux-pm/2763495.NmdaWeg79L@kreacher/T/#t
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---

This is an update of the following patch:

https://patchwork.kernel.org/patch/11081791/

going with the subject matching the changes in the patch.

This also addresses style-related comments from Christoph and follows the
Keith's advice to use pci_upstream_bridge() to get to the upstream bridge
of the device.

Thanks!

---
 drivers/nvme/host/pci.c |   15 +++++++++++----
 drivers/pci/pcie/aspm.c |   20 ++++++++++++++++++++
 include/linux/pci.h     |    2 ++
 3 files changed, 33 insertions(+), 4 deletions(-)

Index: linux-pm/drivers/nvme/host/pci.c
===================================================================
--- linux-pm.orig/drivers/nvme/host/pci.c
+++ linux-pm/drivers/nvme/host/pci.c
@@ -2846,7 +2846,7 @@ static int nvme_resume(struct device *de
 	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
 	struct nvme_ctrl *ctrl = &ndev->ctrl;
 
-	if (pm_resume_via_firmware() || !ctrl->npss ||
+	if (ndev->last_ps == U32_MAX ||
 	    nvme_set_power_state(ctrl, ndev->last_ps) != 0)
 		nvme_reset_ctrl(ctrl);
 	return 0;
@@ -2859,6 +2859,8 @@ static int nvme_suspend(struct device *d
 	struct nvme_ctrl *ctrl = &ndev->ctrl;
 	int ret = -EBUSY;
 
+	ndev->last_ps = U32_MAX;
+
 	/*
 	 * The platform does not remove power for a kernel managed suspend so
 	 * use host managed nvme power settings for lowest idle power if
@@ -2866,8 +2868,14 @@ static int nvme_suspend(struct device *d
 	 * shutdown.  But if the firmware is involved after the suspend or the
 	 * device does not support any non-default power states, shut down the
 	 * device fully.
+	 *
+	 * If ASPM is not enabled for the device, shut down the device and allow
+	 * the PCI bus layer to put it into D3 in order to take the PCIe link
+	 * down, so as to allow the platform to achieve its minimum low-power
+	 * state (which may not be possible if the link is up).
 	 */
-	if (pm_suspend_via_firmware() || !ctrl->npss) {
+	if (pm_suspend_via_firmware() || !ctrl->npss ||
+	    !pcie_aspm_enabled(pdev)) {
 		nvme_dev_disable(ndev, true);
 		return 0;
 	}
@@ -2880,9 +2888,8 @@ static int nvme_suspend(struct device *d
 	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
 		goto unfreeze;
 
-	ndev->last_ps = 0;
 	ret = nvme_get_power_state(ctrl, &ndev->last_ps);
-	if (ret < 0)
+	if (ret < 0 || ndev->last_ps == U32_MAX)
 		goto unfreeze;
 
 	ret = nvme_set_power_state(ctrl, ctrl->npss);
Index: linux-pm/drivers/pci/pcie/aspm.c
===================================================================
--- linux-pm.orig/drivers/pci/pcie/aspm.c
+++ linux-pm/drivers/pci/pcie/aspm.c
@@ -1170,6 +1170,26 @@ static int pcie_aspm_get_policy(char *bu
 module_param_call(policy, pcie_aspm_set_policy, pcie_aspm_get_policy,
 	NULL, 0644);
 
+/*
+ * pcie_aspm_enabled - Return the mask of enabled ASPM link states.
+ * @pci_device: Target device.
+ */
+u32 pcie_aspm_enabled(struct pci_dev *pci_device)
+{
+	struct pci_dev *bridge = pci_upstream_bridge(pci_device);
+	u32 ret;
+
+	if (!bridge)
+		return 0;
+
+	mutex_lock(&aspm_lock);
+	ret = bridge->link_state ? bridge->link_state->aspm_enabled : 0;
+	mutex_unlock(&aspm_lock);
+
+	return ret;
+}
+
+
 #ifdef CONFIG_PCIEASPM_DEBUG
 static ssize_t link_state_show(struct device *dev,
 		struct device_attribute *attr,
Index: linux-pm/include/linux/pci.h
===================================================================
--- linux-pm.orig/include/linux/pci.h
+++ linux-pm/include/linux/pci.h
@@ -1567,8 +1567,10 @@ extern bool pcie_ports_native;
 
 #ifdef CONFIG_PCIEASPM
 bool pcie_aspm_support_enabled(void);
+u32 pcie_aspm_enabled(struct pci_dev *pci_device);
 #else
 static inline bool pcie_aspm_support_enabled(void) { return false; }
+static inline u32 pcie_aspm_enabled(struct pci_dev *pci_device) { return 0; }
 #endif
 
 #ifdef CONFIG_PCIEAER




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
