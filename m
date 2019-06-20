Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 498594C6B8
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 07:15:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9suAfocYGGTnqTg6v9HAw8FAXDMDQttTncx/onfKw6s=; b=i1fnHnCTeXPc2E
	vFakrqUuwFUIjBqJr6P3huG+58X/uJFRax4jxpUoxWn4ZkSslekiDwWwnMM4mA71/ivrmiiQvFYDS
	r+rBQSSt6ORkcW+IKaJwYgZvxqkOhtcIEzRJ8KO5sDhIiF/nLlTzMzi5xxc7jGZUqxUZhYPVb4vtu
	5/KLJK3tL6/03UaZz1VRWM7pU/ZfQLq++jqTBYxkLnzesTsXUmN5+TFUYiG+meD0LG90V60DGzFWr
	naRtBZFzY9AZXCSGKwGxJHlg3b12QW2j7ccoq51SgoesmQ424cPLuo1zXNgrSfTsW24PqhdHHKmb4
	/pOLLk2pcGOwJ5OkShDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdpQ6-0003KA-Bo; Thu, 20 Jun 2019 05:15:34 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdpOg-0001Ga-0G
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 05:14:08 +0000
Received: by mail-pg1-x541.google.com with SMTP id w10so916902pgj.7
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 22:14:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GFXjPqL+0qPxXxdkcH5Jd69QZnXH/kaa1XrP1OoUn4s=;
 b=rXM0WrQAf8wh/Ut1GWen389pEnYBeLaC52f71oEA9quzRjszuO9eFL/MmhXmozPd/o
 emHWHnVAZbZhDBI+ISn/1Ddq+yg8+5OwyHjDKTGp++qnUibF7sMTia7yx4g9x/uKjY/P
 DatirOxqwKTEyQU5QScsDU+fsn+YchiQ1usqDAR/GZJUoOSOPatbIZUrjvltaCSeC9Ml
 IzL+wAtg3Onpps92Ke7/0zGQt5EN1JBG2f1ZmxuhUGFcEBaCMWfFoorckbcybhf+EsA9
 k2q6SAwEI/1tZW7Ys5+cf4SIzi9dS9SUKu7XL1vvHw4EpdCHtoMxxpteEA9VQHiiQE6v
 neKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GFXjPqL+0qPxXxdkcH5Jd69QZnXH/kaa1XrP1OoUn4s=;
 b=JOUyTVlMcVJhUBQCPup5nEAzlVIBK0uwaqgHCK+1iP36jDxBXQ27ebJMtUVTBkzMk8
 j7FHiGEUg9M6iJVnCwHDWEF35rEw1/P5mEyU4bi7AzI+V2X0Ly4UcKN7caBKX2goKsHn
 kS6nLz24radZXLdL4PPF7SqHeKabkO7M2mzHiFSUQfmQKMMdLgV42kShYmwUgAcAE4wg
 RkMwQwa9ALDekiW2Ffk970NFokk3KFkfQI+9cMdCDxaFkSjjcKDq1T+qdBYXJi3slUY8
 G7//Kwe0Ls3xQS4FLytsfbndMbTa4zJByarBhW6zDwwF4AkH4S7KGBgZF/cWuJagszWk
 SQPQ==
X-Gm-Message-State: APjAAAWC7a6j/FYEVrYWDVTv8dLUSKwX+nyU6ovF0wybPm0jdonU8eMX
 ojbOyUTxVVglS51dReel9oZNEQ==
X-Google-Smtp-Source: APXvYqxOcduo55fY2IQsg5k/jHG2k0li9ZK34FP2ZsoBw2FQYYQT38rQOgduKyU+Yltan1fUiTi4mA==
X-Received: by 2002:a63:f953:: with SMTP id q19mr11116518pgk.367.1561007644106; 
 Wed, 19 Jun 2019 22:14:04 -0700 (PDT)
Received: from limbo.local (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.gmail.com with ESMTPSA id j2sm26383423pfn.135.2019.06.19.22.14.01
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 22:14:03 -0700 (PDT)
From: Daniel Drake <drake@endlessm.com>
To: axboe@kernel.dk,
	kbusch@kernel.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH v2 5/5] nvme: Intel AHCI remap support
Date: Thu, 20 Jun 2019 13:13:33 +0800
Message-Id: <20190620051333.2235-6-drake@endlessm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620051333.2235-1-drake@endlessm.com>
References: <20190620051333.2235-1-drake@endlessm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_221406_101319_63FF5DCE 
X-CRM114-Status: GOOD (  23.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-ide@vger.kernel.org,
 alex.williamson@redhat.com, hare@suse.de, bhelgaas@google.com,
 dan.j.williams@intel.com, linux@endlessm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Provide a platform driver for the nvme resources that may be remapped
behind an ahci bar on common Intel platforms. The implementation relies
on the standard nvme driver, but reimplements the nvme_dev_ops accordingly.

As the original NVMe PCI device is inaccessible, this driver is somewhat
limited: we always assume the device is present & online, can't
detect PCI errors, can't reset, power management is limited, etc.

A single shared legacy interrupt is used, although there is some
hope that MSI-X support could be added later.

Based on previous code by Dan Williams.

Signed-off-by: Daniel Drake <drake@endlessm.com>
---
 drivers/ata/Kconfig                  |   1 +
 drivers/nvme/host/Kconfig            |   3 +
 drivers/nvme/host/Makefile           |   3 +
 drivers/nvme/host/intel-ahci-remap.c | 185 +++++++++++++++++++++++++++
 drivers/nvme/host/pci.c              |  21 +--
 drivers/nvme/host/pci.h              |   9 ++
 6 files changed, 214 insertions(+), 8 deletions(-)
 create mode 100644 drivers/nvme/host/intel-ahci-remap.c

diff --git a/drivers/ata/Kconfig b/drivers/ata/Kconfig
index 6e82d66d7516..fb64e690d325 100644
--- a/drivers/ata/Kconfig
+++ b/drivers/ata/Kconfig
@@ -113,6 +113,7 @@ config SATA_AHCI_INTEL_NVME_REMAP
 	bool "AHCI: Intel Remapped NVMe device support"
 	depends on SATA_AHCI
 	depends on BLK_DEV_NVME
+	select NVME_INTEL_AHCI_REMAP
 	help
 	  Support access to remapped NVMe devices that appear in AHCI PCI
 	  memory space.
diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
index ec43ac9199e2..a8aefb18eb15 100644
--- a/drivers/nvme/host/Kconfig
+++ b/drivers/nvme/host/Kconfig
@@ -26,6 +26,9 @@ config NVME_MULTIPATH
 config NVME_FABRICS
 	tristate
 
+config NVME_INTEL_AHCI_REMAP
+	tristate
+
 config NVME_RDMA
 	tristate "NVM Express over Fabrics RDMA host driver"
 	depends on INFINIBAND && INFINIBAND_ADDR_TRANS && BLOCK
diff --git a/drivers/nvme/host/Makefile b/drivers/nvme/host/Makefile
index 8a4b671c5f0c..2010169880b7 100644
--- a/drivers/nvme/host/Makefile
+++ b/drivers/nvme/host/Makefile
@@ -8,6 +8,7 @@ obj-$(CONFIG_NVME_FABRICS)		+= nvme-fabrics.o
 obj-$(CONFIG_NVME_RDMA)			+= nvme-rdma.o
 obj-$(CONFIG_NVME_FC)			+= nvme-fc.o
 obj-$(CONFIG_NVME_TCP)			+= nvme-tcp.o
+obj-$(CONFIG_NVME_INTEL_AHCI_REMAP)	+= nvme-intel-ahci-remap.o
 
 nvme-core-y				:= core.o
 nvme-core-$(CONFIG_TRACING)		+= trace.o
@@ -24,3 +25,5 @@ nvme-rdma-y				+= rdma.o
 nvme-fc-y				+= fc.o
 
 nvme-tcp-y				+= tcp.o
+
+nvme-intel-ahci-remap-y			+= intel-ahci-remap.o
diff --git a/drivers/nvme/host/intel-ahci-remap.c b/drivers/nvme/host/intel-ahci-remap.c
new file mode 100644
index 000000000000..7194d9dd0016
--- /dev/null
+++ b/drivers/nvme/host/intel-ahci-remap.c
@@ -0,0 +1,185 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Intel AHCI remapped NVMe platform driver
+ *
+ * Copyright (c) 2011-2016, Intel Corporation.
+ * Copyright (c) 2019, Endless Mobile, Inc.
+ *
+ * Support platform devices created by the ahci driver, corresponding to
+ * NVMe devices that have been remapped into the ahci device memory space.
+ *
+ * This scheme is rather peculiar, as NVMe is inherently based on PCIe,
+ * however we only have access to the NVMe device MMIO space and an
+ * interrupt. Without access to the pci_device, many features are
+ * unavailable; this driver only intends to offer basic functionality.
+ */
+
+#include <linux/platform_device.h>
+#include <linux/interrupt.h>
+#include <linux/module.h>
+#include <linux/pm.h>
+#include "pci.h"
+
+struct ahci_remap_data {
+	atomic_t enabled;
+};
+
+static struct ahci_remap_data *to_ahci_remap_data(struct nvme_dev *dev)
+{
+	return dev->dev->platform_data;
+}
+
+static int ahci_remap_enable(struct nvme_dev *dev)
+{
+	int rc;
+	struct resource *res;
+	struct device *ddev = dev->dev;
+	struct device *parent = ddev->parent;
+	struct ahci_remap_data *adata = to_ahci_remap_data(dev);
+	struct platform_device *pdev = to_platform_device(ddev);
+
+	res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
+	if (!res)
+		return -ENXIO;
+
+	/* parent ahci device determines the dma mask */
+	if (dma_supported(parent, DMA_BIT_MASK(64)))
+		rc = dma_coerce_mask_and_coherent(ddev, DMA_BIT_MASK(64));
+	else if (dma_supported(parent, DMA_BIT_MASK(32)))
+		rc = dma_coerce_mask_and_coherent(ddev, DMA_BIT_MASK(32));
+	else
+		rc = -ENXIO;
+	if (rc)
+		return rc;
+
+	rc = nvme_enable(dev);
+	if (rc)
+		return rc;
+
+	atomic_inc(&adata->enabled);
+
+	return 0;
+}
+
+static int ahci_remap_is_enabled(struct nvme_dev *dev)
+{
+	struct ahci_remap_data *adata = to_ahci_remap_data(dev);
+
+	return atomic_read(&adata->enabled) > 0;
+}
+
+static void ahci_remap_disable(struct nvme_dev *dev)
+{
+	struct ahci_remap_data *adata = to_ahci_remap_data(dev);
+
+	if (ahci_remap_is_enabled(dev))
+		atomic_dec(&adata->enabled);
+}
+
+static int ahci_remap_is_offline(struct nvme_dev *dev)
+{
+	return 0;
+}
+
+static int ahci_remap_setup_irqs(struct nvme_dev *dev, int nr_io_queues)
+{
+	struct platform_device *pdev = to_platform_device(dev->dev);
+	struct nvme_queue *adminq = &dev->queues[0];
+	struct resource *res;
+
+	res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
+	if (!res)
+		return -ENXIO;
+
+	/* Deregister the admin queue's interrupt */
+	free_irq(res->start, adminq);
+
+	return min_t(int, resource_size(res), nr_io_queues);
+}
+
+static int ahci_remap_q_irq(struct nvme_queue *nvmeq)
+{
+	struct resource *res;
+	struct nvme_dev *dev = nvmeq->dev;
+	struct platform_device *pdev = to_platform_device(dev->dev);
+
+	res = platform_get_resource(pdev, IORESOURCE_IRQ, 0);
+	if (!res)
+		return -ENXIO;
+
+	if (resource_size(res) > nvmeq->qid)
+		return res->start + nvmeq->qid;
+
+	return res->start;
+}
+
+static const struct nvme_dev_ops ahci_remap_dev_ops = {
+	.enable			= ahci_remap_enable,
+	.disable		= ahci_remap_disable,
+	.setup_irqs		= ahci_remap_setup_irqs,
+	.q_irq			= ahci_remap_q_irq,
+	.is_enabled		= ahci_remap_is_enabled,
+	.is_offline		= ahci_remap_is_offline,
+};
+
+static void ahci_remap_shutdown(struct platform_device *pdev)
+{
+	struct nvme_dev *dev = platform_get_drvdata(pdev);
+
+	nvme_dev_disable(dev, true);
+}
+
+static int ahci_remap_remove(struct platform_device *pdev)
+{
+	nvme_remove(&pdev->dev);
+	pdev->dev.platform_data = NULL;
+
+	return 0;
+}
+
+static struct platform_device_id ahci_remap_id_table[] = {
+	{ .name = "intel_ahci_nvme", },
+	{},
+};
+MODULE_DEVICE_TABLE(platform, ahci_remap_id_table);
+
+static int ahci_remap_probe(struct platform_device *pdev)
+{
+	struct device *ddev = &pdev->dev;
+	struct ahci_remap_data *adata;
+	struct resource *res;
+
+	adata = devm_kzalloc(ddev, sizeof(*adata), GFP_KERNEL);
+	if (!adata)
+		return -ENOMEM;
+
+	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -ENXIO;
+
+	if (!devm_request_mem_region(ddev, res->start, resource_size(res),
+				dev_name(ddev)))
+		return -EBUSY;
+
+	ddev->platform_data = adata;
+
+	return nvme_probe(ddev, res, &ahci_remap_dev_ops, 0);
+}
+
+static SIMPLE_DEV_PM_OPS(ahci_remap_dev_pm_ops, nvme_suspend, nvme_resume);
+
+static struct platform_driver ahci_remap_driver = {
+	.driver		= {
+		.name	= "intel_ahci_nvme",
+		.pm     = &ahci_remap_dev_pm_ops,
+	},
+	.id_table	= ahci_remap_id_table,
+	.probe		= ahci_remap_probe,
+	.remove		= ahci_remap_remove,
+	.shutdown	= ahci_remap_shutdown,
+};
+
+module_platform_driver(ahci_remap_driver);
+MODULE_LICENSE("GPL v2");
+MODULE_AUTHOR("Intel Corporation");
+MODULE_AUTHOR("Daniel Drake <drake@endlessm.com>");
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bed6c91b6b7c..50e76eb9f859 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -84,7 +84,6 @@ static int poll_queues = 0;
 module_param_cb(poll_queues, &queue_count_ops, &poll_queues, 0644);
 MODULE_PARM_DESC(poll_queues, "Number of queues to use for polled IO.");
 
-static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown);
 static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode);
 
 static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
@@ -2262,7 +2261,7 @@ static int nvme_dev_add(struct nvme_dev *dev)
 	return 0;
 }
 
-static int nvme_enable(struct nvme_dev *dev)
+int nvme_enable(struct nvme_dev *dev)
 {
 	dev->ctrl.cap = lo_hi_readq(dev->bar + NVME_REG_CAP);
 
@@ -2273,6 +2272,7 @@ static int nvme_enable(struct nvme_dev *dev)
 
 	return 0;
 }
+EXPORT_SYMBOL_GPL(nvme_enable);
 
 static int nvme_pci_enable(struct nvme_dev *dev)
 {
@@ -2356,7 +2356,7 @@ static bool nvme_pci_is_present(struct nvme_dev *dev)
 	return pci_device_is_present(to_pci_dev(dev->dev));
 }
 
-static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
+void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 {
 	bool dead = true, freeze = false;
 
@@ -2405,6 +2405,7 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 	}
 	mutex_unlock(&dev->shutdown_lock);
 }
+EXPORT_SYMBOL_GPL(nvme_dev_disable);
 
 static int nvme_setup_prp_pools(struct nvme_dev *dev)
 {
@@ -2683,8 +2684,8 @@ static void nvme_async_probe(void *data, async_cookie_t cookie)
 	nvme_put_ctrl(&dev->ctrl);
 }
 
-static int nvme_probe(struct device *ddev, struct resource *res,
-		      const struct nvme_dev_ops *ops, unsigned long quirks)
+int nvme_probe(struct device *ddev, struct resource *res,
+	       const struct nvme_dev_ops *ops, unsigned long quirks)
 {
 	int node, result = -ENOMEM;
 	struct nvme_dev *dev;
@@ -2771,6 +2772,7 @@ static int nvme_probe(struct device *ddev, struct resource *res,
 	kfree(dev);
 	return result;
 }
+EXPORT_SYMBOL_GPL(nvme_probe);
 
 static void nvme_pci_release_regions(void *data)
 {
@@ -2822,7 +2824,7 @@ static void nvme_pci_shutdown(struct pci_dev *pdev)
  * state. This function must not have any dependencies on the device state in
  * order to proceed.
  */
-static void nvme_remove(struct device *ddev)
+void nvme_remove(struct device *ddev)
 {
 	struct nvme_dev *dev = dev_get_drvdata(ddev);
 
@@ -2847,6 +2849,7 @@ static void nvme_remove(struct device *ddev)
 	nvme_release_prp_pools(dev);
 	nvme_put_ctrl(&dev->ctrl);
 }
+EXPORT_SYMBOL_GPL(nvme_remove);
 
 static void nvme_pci_remove(struct pci_dev *pdev)
 {
@@ -2854,21 +2857,23 @@ static void nvme_pci_remove(struct pci_dev *pdev)
 }
 
 #ifdef CONFIG_PM_SLEEP
-static int nvme_suspend(struct device *dev)
+int nvme_suspend(struct device *dev)
 {
 	struct nvme_dev *ndev = dev_get_drvdata(dev);
 
 	nvme_dev_disable(ndev, true);
 	return 0;
 }
+EXPORT_SYMBOL_GPL(nvme_suspend);
 
-static int nvme_resume(struct device *dev)
+int nvme_resume(struct device *dev)
 {
 	struct nvme_dev *ndev = dev_get_drvdata(dev);
 
 	nvme_reset_ctrl(&ndev->ctrl);
 	return 0;
 }
+EXPORT_SYMBOL_GPL(nvme_resume);
 #endif
 
 static SIMPLE_DEV_PM_OPS(nvme_dev_pm_ops, nvme_suspend, nvme_resume);
diff --git a/drivers/nvme/host/pci.h b/drivers/nvme/host/pci.h
index 7e4d73a22876..ffe017cc1c9b 100644
--- a/drivers/nvme/host/pci.h
+++ b/drivers/nvme/host/pci.h
@@ -8,6 +8,7 @@
 #define __NVME_PCI_H__
 #include <linux/blk-mq.h>
 #include <linux/device.h>
+#include "nvme.h"
 
 struct nvme_queue;
 struct nvme_dev;
@@ -133,4 +134,12 @@ struct nvme_queue {
 	struct completion delete_done;
 };
 
+int nvme_probe(struct device *ddev, struct resource *res,
+		const struct nvme_dev_ops *ops, unsigned long quirks);
+void nvme_remove(struct device *ddev);
+int nvme_enable(struct nvme_dev *dev);
+void nvme_dev_disable(struct nvme_dev *dev, bool shutdown);
+int nvme_suspend(struct device *dev);
+int nvme_resume(struct device *dev);
+
 #endif /* __NVME_PCI_H__ */
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
