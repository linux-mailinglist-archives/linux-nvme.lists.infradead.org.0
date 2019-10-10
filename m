Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85DE1D29F4
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 14:48:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p02FfhOAEZGlfJPDFqWiZgbTR7VaW0APKKlPuh6zRt0=; b=fiFGoFZJV85OKj
	h8u8dpBWOk3vdzRL8FluBHlOh3aRv9Cma5S1cUEZequ6dAUswqBJR+ZzpTEw7kK9EkqmnW7rulKBO
	8sXcJNs90kydCXefR5T50AfhlIYDeoq3Z6Ks9t/JXoS0cQ9she4tJcxzoiAOyBGXaSLOkCezFZC0T
	BUo2RGmLQP60IesZxdIpQvCaCfJqVTkF+Xcd1JmyVZ/ysl796ZQPBa1hBJicHwoC742ft+/LqlUMb
	69Zw56pjAT28/XinNItv20GHU7Z9TdMsoQLnHNPutBRyKOvyPjXqGlC+nnNxmdpakULJImiY6EEoL
	08+0hUTy9cS6rbuFU2Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIXra-0005GD-Pe; Thu, 10 Oct 2019 12:48:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIXrM-0005B8-Fi
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 12:48:02 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DDE66206B6;
 Thu, 10 Oct 2019 12:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570711680;
 bh=OcutfbH2J4Mrok55YXxQjXQOL7Vow7GNs62fKAtdayw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ACGbf5WV9FgMZWWHlRDKH+X3xK5rYuizRPwXQReJAkUn1VC9XxSGgBBFZLhyw2Pee
 htQMV0v/XpiuMKE6r0ZvUpkxAH4YVgA+CrgGtA7IO4oOS66UhYRcARylrcNteIa/nC
 /eniu9haa7GStSNv0P3F4mKKBcA3E3sWfG9UDKw0=
From: Bjorn Helgaas <helgaas@kernel.org>
To: linux-pci@vger.kernel.org
Subject: [PATCH 1/1] PCI/ASPM: Remove pcie_aspm_enabled() unnecessary locking
Date: Thu, 10 Oct 2019 07:47:46 -0500
Message-Id: <20191010124746.2882-2-helgaas@kernel.org>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
In-Reply-To: <20191010124746.2882-1-helgaas@kernel.org>
References: <20191010124746.2882-1-helgaas@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_054800_557551_5C4100D0 
X-CRM114-Status: GOOD (  10.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Mario Limonciello <Mario.Limonciello@dell.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Bjorn Helgaas <bhelgaas@google.com>

The lifetime of the link_state structure (bridge->link_state) is not the
same as the lifetime of "bridge" itself.  The link_state is allocated by
pcie_aspm_init_link_state() after children of the bridge have been
enumerated, and it is deallocated by pcie_aspm_exit_link_state() after all
children of the bridge (but not the bridge itself) have been removed.

Previously pcie_aspm_enabled() acquired aspm_lock to ensure that
link_state was not deallocated while we're looking at it.  But the fact
that the caller of pcie_aspm_enabled() holds a reference to @pdev means
there's always at least one child of the bridge, which means link_state
can't be deallocated.

Remove the unnecessary locking in pcie_aspm_enabled().

Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
---
 drivers/pci/pcie/aspm.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/pcie/aspm.c b/drivers/pci/pcie/aspm.c
index 652ef23bba35..f5c7138a34aa 100644
--- a/drivers/pci/pcie/aspm.c
+++ b/drivers/pci/pcie/aspm.c
@@ -1172,20 +1172,20 @@ module_param_call(policy, pcie_aspm_set_policy, pcie_aspm_get_policy,
 /**
  * pcie_aspm_enabled - Check if PCIe ASPM has been enabled for a device.
  * @pdev: Target device.
+ *
+ * Relies on the upstream bridge's link_state being valid.  The link_state
+ * is deallocated only when the last child of the bridge (i.e., @pdev or a
+ * sibling) is removed, and the caller should be holding a reference to
+ * @pdev, so this should be safe.
  */
 bool pcie_aspm_enabled(struct pci_dev *pdev)
 {
 	struct pci_dev *bridge = pci_upstream_bridge(pdev);
-	bool ret;
 
 	if (!bridge)
 		return false;
 
-	mutex_lock(&aspm_lock);
-	ret = bridge->link_state ? !!bridge->link_state->aspm_enabled : false;
-	mutex_unlock(&aspm_lock);
-
-	return ret;
+	return bridge->link_state ? !!bridge->link_state->aspm_enabled : false;
 }
 EXPORT_SYMBOL_GPL(pcie_aspm_enabled);
 
-- 
2.23.0.581.g78d2f28ef7-goog


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
