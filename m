Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CF786CD6
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 23:59:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzhHuxeNfGQql8lG2rYlNCeaqDv8lw5HvQynKWoM1Pw=; b=rKdrmPaX4TzCy2
	QLCdxAOASJpXwmGNrlWXqIIN6XkUSSO6Sskjzi+liYiAGowSfUchc7asfyfQxB/9sHwUlMTUy07Ff
	RFy/LBe6bH48WJ8jSAwhZzeRwkGVk5gCvUqsb4qs4+FKAoVhQ9jTb9Ls20cXDqcaY1Sl4aIRiWBf4
	MAP8X/wAPtzImDRmfqc0NA1dG6U6+ByQla4qDnenCJQBBuQobb0ayiN9RJZdVKbjeCBjuYOnc5C0f
	oAkAt7BUG6pfs7/TQpdY1bGrWBvCCRg3QZxZhsladZWpPYvfaRfvgAjHdsuojhfCUw2MqPGjf3Kpr
	c9Hz9dTyE0XnZbhZb+JQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqR6-0005CR-Kl; Thu, 08 Aug 2019 21:59:04 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqR1-00059u-Bs
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 21:59:00 +0000
Received: from 79.184.254.29.ipv4.supernova.orange.pl (79.184.254.29) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.275)
 id 2d19d8ad48c4b56a; Thu, 8 Aug 2019 23:58:53 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: linux-nvme <linux-nvme@lists.infradead.org>
Subject: [PATCH v3 1/2] PCI: PCIe: ASPM: Introduce pcie_aspm_enabled()
Date: Thu, 08 Aug 2019 23:55:07 +0200
Message-ID: <1618955.HVa0YQSOW5@kreacher>
In-Reply-To: <2184247.yL3mcj2FRQ@kreacher>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain> <2184247.yL3mcj2FRQ@kreacher>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_145859_571014_11662493 
X-CRM114-Status: GOOD (  10.28  )
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

Add a function checking whether or not PCIe ASPM has been enabled for
a given device.

It will be used by the NVMe driver to decide how to handle the
device during system suspend.

Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---

v2 -> v3:
  * Make the new function return bool.
  * Change its name back to pcie_aspm_enabled().
  * Fix kerneldoc comment formatting.

-> v2:
  * Move the PCI/PCIe ASPM changes to a separate patch.
  * Add the _mask suffix to the new function name.
  * Add EXPORT_SYMBOL_GPL() to the new function.
  * Avoid adding an unnecessary blank line.

---
 drivers/pci/pcie/aspm.c |   20 ++++++++++++++++++++
 include/linux/pci.h     |    3 +++
 2 files changed, 23 insertions(+)

Index: linux-pm/drivers/pci/pcie/aspm.c
===================================================================
--- linux-pm.orig/drivers/pci/pcie/aspm.c
+++ linux-pm/drivers/pci/pcie/aspm.c
@@ -1170,6 +1170,26 @@ static int pcie_aspm_get_policy(char *bu
 module_param_call(policy, pcie_aspm_set_policy, pcie_aspm_get_policy,
 	NULL, 0644);
 
+/**
+ * pcie_aspm_enabled - Check if PCIe ASPM has been enabled for a device.
+ * @pci_device: Target device.
+ */
+bool pcie_aspm_enabled(struct pci_dev *pci_device)
+{
+	struct pci_dev *bridge = pci_upstream_bridge(pci_device);
+	bool ret;
+
+	if (!bridge)
+		return false;
+
+	mutex_lock(&aspm_lock);
+	ret = bridge->link_state ? !!bridge->link_state->aspm_enabled : false;
+	mutex_unlock(&aspm_lock);
+
+	return ret;
+}
+EXPORT_SYMBOL_GPL(pcie_aspm_enabled);
+
 #ifdef CONFIG_PCIEASPM_DEBUG
 static ssize_t link_state_show(struct device *dev,
 		struct device_attribute *attr,
Index: linux-pm/include/linux/pci.h
===================================================================
--- linux-pm.orig/include/linux/pci.h
+++ linux-pm/include/linux/pci.h
@@ -1567,8 +1567,11 @@ extern bool pcie_ports_native;
 
 #ifdef CONFIG_PCIEASPM
 bool pcie_aspm_support_enabled(void);
+bool pcie_aspm_enabled(struct pci_dev *pci_device);
 #else
 static inline bool pcie_aspm_support_enabled(void) { return false; }
+static inline bool pcie_aspm_enabled(struct pci_dev *pci_device)
+{ return false; }
 #endif
 
 #ifdef CONFIG_PCIEAER




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
