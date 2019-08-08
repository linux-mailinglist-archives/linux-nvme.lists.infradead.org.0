Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CCBA86CDA
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 23:59:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3WZHIosMHOWfMclDOwpeK69dMsEzhJ1rj1Ih6FiZ3gg=; b=uNrcgkUHzaXiNi
	kyxJGh5yLpS7/sJ+40s+/uOFQ/o4jRv1Bk3GS2SugsbkrFlfZ8M+uoaUgTfzewCxfqcN3TcRyOWmC
	rHO5LDYhpOr7IOeg1PZAojE+fQRW0cllQnsmCNrVidu6BEufnEnFwawzQCW3XK3YDiFkEtmHGvBIQ
	z8orxzmOzZMBB5fxjQjZH9W71FzGNDvljqYEmCaxVVeXYhV50tgzYaZ7BTOJcc5DFHzLJyEp9pAW1
	/0CKWh+1kkNTsHgH+8s+u4yIPtnyDP3jzrujCAiX6VMbnRN+c3zZAJFSnN80gzPgGor0g7trhIK/j
	HFGaFH00L6sRPMX47giA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqRF-0005Ha-3L; Thu, 08 Aug 2019 21:59:13 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqR1-00059v-Bs
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 21:59:00 +0000
Received: from 79.184.254.29.ipv4.supernova.orange.pl (79.184.254.29) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.275)
 id 198204becd846193; Thu, 8 Aug 2019 23:58:52 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH v3 2/2] nvme-pci: Allow PCI bus-level PM to be used if ASPM is
 disabled
Date: Thu, 08 Aug 2019 23:58:38 +0200
Message-ID: <4856352.pThfM6cRGE@kreacher>
In-Reply-To: <2184247.yL3mcj2FRQ@kreacher>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain> <2184247.yL3mcj2FRQ@kreacher>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_145859_570857_F6326ECD 
X-CRM114-Status: GOOD (  18.05  )
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
call to nvme_suspend() so as to instruct the PCI bus type to leave
devices handled by the nvme driver in D0 during suspend-to-idle.
That was done with the assumption that ASPM would transition the
device's PCIe link into a low-power state when the device became
inactive.  However, if ASPM is disabled for the device, its PCIe
link will stay in L0 and in that case commit d916b1be94b6 is likely
to cause the energy used by the system while suspended to increase.

Namely, if the device in question works in accordance with the PCIe
specification, putting it into D3hot causes its PCIe link to go to
L1 or L2/L3 Ready, which is lower-power than L0.  Since the energy
used by the system while suspended depends on the state of its PCIe
link (as a general rule, the lower-power the state of the link, the
less energy the system will use), putting the device into D3hot
during suspend-to-idle should be more energy-efficient that leaving
it in D0 with disabled ASPM.

For this reason, avoid leaving NVMe devices with disabled ASPM in D0
during suspend-to-idle.  Instead, shut them down entirely and let
the PCI bus type put them into D3.

Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
Link: https://lore.kernel.org/linux-pm/2763495.NmdaWeg79L@kreacher/T/#t
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---

v2 -> v3:
  * Modify the changelog to describe the rationale for this patch in
    a less confusing and more convincing way.

-> v2:
  * Move the PCI/PCIe ASPM changes to a separate patch.
  * Do not add a redundant ndev->last_ps == U32_MAX check in nvme_suspend().

---
 drivers/nvme/host/pci.c |   13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

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
@@ -2880,7 +2888,6 @@ static int nvme_suspend(struct device *d
 	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
 		goto unfreeze;
 
-	ndev->last_ps = 0;
 	ret = nvme_get_power_state(ctrl, &ndev->last_ps);
 	if (ret < 0)
 		goto unfreeze;




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
