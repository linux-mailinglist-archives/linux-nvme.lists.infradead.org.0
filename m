Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37B694C6B5
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 07:14:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=daWG2irtJpm7zmb0WM7fwm0a/yD1TlpIa7Mtm/K10wM=; b=R/BJG39d+GhAWy
	2j0mkq92fRlMMWqqqUkCT9m7ocJdB2YVAy6XpEmSfkfaZQTuJKRiwDmjn5zWE3LXoWdsPE1CnKLWO
	+/Nuk5p8Wk9wlmj9JjwPNwGUYc9SuG7eeLV5I18Lbk13r6YW9r3jDyQmrDCniU7a8rMGEChg61GWf
	OUkN9SnbkuBtqyiC/vETRZ4U0qeMwMLuo4OXdSiokJAJntWdOBTjfXSlu664U86mr+XofkgdhlE9T
	Zm6676G9FL5cgtNKqsFrjcgZQ1LTa3BM2BDZEyVDF2WtqLdlDTpjjppkhaCe3jkXHCXcYtZXtu5Ok
	rlwRtVhhnKQzH7U7Eecg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdpP2-0001PP-Op; Thu, 20 Jun 2019 05:14:28 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdpOU-00014V-Dd
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 05:13:55 +0000
Received: by mail-pf1-x444.google.com with SMTP id d126so975840pfd.2
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 22:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=endlessm-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=93pd9G4UIoBr8e0tvrz9C44+OnAylV1JTAk/uJtJYjk=;
 b=oo7A3kwoOK6VCYBLqyaL9S+XBir5vMHc4AzSTp8Dh5XTbhRQrmHlNiYhNXe8aGKimx
 J7RauecVI3mbpcEn0QVXx0N6NUZbX+Ep0D0uusXtSYABGaxjLighwAHdy8oNdTQoBoVC
 bcwaa/6qE+mARo3GHiwJ09fssO5Tz2Rs7U7+vmiddO6jvIzVbZLizwXBh4QwLJvLIv99
 eCwoXq9k1c352H1RevOjR81xKy88MLU9ASr0tGJv6T46ffidSBPOOwM2D2tGEIcMa2eb
 l5TmgW4nHdf/A+kBWA+B8mSiRBk3V5wJ7LTm8i7VxyhdGiDWc+qM8OErGKeGopbkU/r0
 bFnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=93pd9G4UIoBr8e0tvrz9C44+OnAylV1JTAk/uJtJYjk=;
 b=nAjf1iT7uFgXTCntRP1pwHb825wawLCkL7SyOaTfYUaLIxrd+49Li5kAMfWfnFBRWY
 LpijdMaqcjnv9QCNDuWvh4mHtOGZsxzsKr1nXT5nkndTSUXWKYd5EO4vW3hgHnXf2xfN
 hxcz5R/eb2CbgWblIh4R/lcIQIuqATFhJqjKWAn83/d3UTLKzSMWR1PHn6hPNtRngzwD
 8c3JAuqBRbqi2O8A4GaM6iBIgunAtiJJd4A5JlvCllGcM8FgH1Luc9jKmwiASHzE4HTO
 AM1OUGAhSga3sqTfleNod3Y0OpWa4nyysu95ygdCdwO9UCUagTwW9t4rCm0Ig0Ug8NcI
 mqxw==
X-Gm-Message-State: APjAAAUb5RXRZOPMYeq+3J5YbNqX62LupiAshyVzQS8viUxdInMb1mfg
 k1cmtoiHN+UnVSqsgHOCs/CF4w==
X-Google-Smtp-Source: APXvYqyUdnoXHD0MZr35aFY9ap745bjtRuh4g+87m2KYH4pWO+nAlZ1xGOtU603AW3GnIk1/gjmKYQ==
X-Received: by 2002:a62:e910:: with SMTP id j16mr27077606pfh.123.1561007633635; 
 Wed, 19 Jun 2019 22:13:53 -0700 (PDT)
Received: from limbo.local (123-204-46-122.static.seed.net.tw.
 [123.204.46.122])
 by smtp.gmail.com with ESMTPSA id j2sm26383423pfn.135.2019.06.19.22.13.49
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 22:13:53 -0700 (PDT)
From: Daniel Drake <drake@endlessm.com>
To: axboe@kernel.dk,
	kbusch@kernel.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH v2 2/5] nvme: rename "pci" operations to "mmio"
Date: Thu, 20 Jun 2019 13:13:30 +0800
Message-Id: <20190620051333.2235-3-drake@endlessm.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620051333.2235-1-drake@endlessm.com>
References: <20190620051333.2235-1-drake@endlessm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_221354_465492_D3FD7A9A 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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

From: Dan Williams <dan.j.williams@intel.com>

In preparation for adding a platform_device nvme host, rename to a more
generic "mmio" prefix.

Signed-off-by: Dan Williams <dan.j.williams@intel.com>
Signed-off-by: Daniel Drake <drake@endlessm.com>
---
 drivers/nvme/host/pci.c | 28 ++++++++++++++--------------
 1 file changed, 14 insertions(+), 14 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 524d6bd6d095..42990b93349d 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1108,7 +1108,7 @@ static int nvme_poll(struct blk_mq_hw_ctx *hctx)
 	return found;
 }
 
-static void nvme_pci_submit_async_event(struct nvme_ctrl *ctrl)
+static void nvme_mmio_submit_async_event(struct nvme_ctrl *ctrl)
 {
 	struct nvme_dev *dev = to_nvme_dev(ctrl);
 	struct nvme_queue *nvmeq = &dev->queues[0];
@@ -2448,7 +2448,7 @@ static void nvme_release_prp_pools(struct nvme_dev *dev)
 	dma_pool_destroy(dev->prp_small_pool);
 }
 
-static void nvme_pci_free_ctrl(struct nvme_ctrl *ctrl)
+static void nvme_mmio_free_ctrl(struct nvme_ctrl *ctrl)
 {
 	struct nvme_dev *dev = to_nvme_dev(ctrl);
 
@@ -2610,42 +2610,42 @@ static void nvme_remove_dead_ctrl_work(struct work_struct *work)
 	nvme_put_ctrl(&dev->ctrl);
 }
 
-static int nvme_pci_reg_read32(struct nvme_ctrl *ctrl, u32 off, u32 *val)
+static int nvme_mmio_reg_read32(struct nvme_ctrl *ctrl, u32 off, u32 *val)
 {
 	*val = readl(to_nvme_dev(ctrl)->bar + off);
 	return 0;
 }
 
-static int nvme_pci_reg_write32(struct nvme_ctrl *ctrl, u32 off, u32 val)
+static int nvme_mmio_reg_write32(struct nvme_ctrl *ctrl, u32 off, u32 val)
 {
 	writel(val, to_nvme_dev(ctrl)->bar + off);
 	return 0;
 }
 
-static int nvme_pci_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
+static int nvme_mmio_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
 {
 	*val = readq(to_nvme_dev(ctrl)->bar + off);
 	return 0;
 }
 
-static int nvme_pci_get_address(struct nvme_ctrl *ctrl, char *buf, int size)
+static int nvme_mmio_get_address(struct nvme_ctrl *ctrl, char *buf, int size)
 {
 	struct pci_dev *pdev = to_pci_dev(to_nvme_dev(ctrl)->dev);
 
 	return snprintf(buf, size, "%s", dev_name(&pdev->dev));
 }
 
-static const struct nvme_ctrl_ops nvme_pci_ctrl_ops = {
+static const struct nvme_ctrl_ops nvme_mmio_ctrl_ops = {
 	.name			= "pcie",
 	.module			= THIS_MODULE,
 	.flags			= NVME_F_METADATA_SUPPORTED |
 				  NVME_F_PCI_P2PDMA,
-	.reg_read32		= nvme_pci_reg_read32,
-	.reg_write32		= nvme_pci_reg_write32,
-	.reg_read64		= nvme_pci_reg_read64,
-	.free_ctrl		= nvme_pci_free_ctrl,
-	.submit_async_event	= nvme_pci_submit_async_event,
-	.get_address		= nvme_pci_get_address,
+	.reg_read32		= nvme_mmio_reg_read32,
+	.reg_write32		= nvme_mmio_reg_write32,
+	.reg_read64		= nvme_mmio_reg_read64,
+	.free_ctrl		= nvme_mmio_free_ctrl,
+	.submit_async_event	= nvme_mmio_submit_async_event,
+	.get_address		= nvme_mmio_get_address,
 };
 
 static int nvme_dev_map(struct nvme_dev *dev)
@@ -2758,7 +2758,7 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 		goto release_pools;
 	}
 
-	result = nvme_init_ctrl(&dev->ctrl, &pdev->dev, &nvme_pci_ctrl_ops,
+	result = nvme_init_ctrl(&dev->ctrl, &pdev->dev, &nvme_mmio_ctrl_ops,
 			quirks);
 	if (result)
 		goto release_mempool;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
