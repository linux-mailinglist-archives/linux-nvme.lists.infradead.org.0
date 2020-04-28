Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 477C41BB2F6
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 02:33:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BS4bylHaJWTDNk1VR747b332acEj/tnyyU5gqTJWj2M=; b=KMATJo/Wv0eYDQ
	ztk7qfd0OTszbupq4CV2JIP8RWT4oqPjclFAHGtpQ2O0i+EmWM7QHynigYQOhWukSWD8xebX5X8St
	OTNthXBWElBi2u+GeQoHfp7kmk68sPjHn8E8ULBkZ/mVYBz8mEqj0/9GeqVJCRP430ghcxEoHn67s
	GrDJsFvG6dJLH5jQIlE1h0l3yH7lcmp5w4a4/HlvGHyiegf+cIN9yCiPje+G83cFpXMM+lEAtKPUk
	FBvK/bJigFufjpn33h+l/JzutxPhh/g2x53WxQ9jj72ZrHAn/qjF3iPCJNo5Q7JYqFGjzDQMU1RkR
	STMtQOLY8wTjtDMAMqUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTEBP-0000lp-FG; Tue, 28 Apr 2020 00:33:07 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTEB9-0000iQ-Hv
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 00:32:52 +0000
IronPort-SDR: jwMasN3MXOpIeZQPw3Eqfryr/6ETTtFyQf0AfE5kxLE8mgmtDMh0skRZ5vOq6mOA5AwCQTBGDM
 UKCTuNiOnvGA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 17:32:50 -0700
IronPort-SDR: S6siCG9eoW2gDi2go+lBLTfZ0I6oOsSrhS7as1w04pGxOS2bxIxLT4+UTXar1EAtw952ZV1v7r
 GTUljKNc4dnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,325,1583222400"; d="scan'208";a="367331794"
Received: from linux.intel.com ([10.54.29.200])
 by fmsmga001.fm.intel.com with ESMTP; 27 Apr 2020 17:32:49 -0700
Received: from debox1-hc.jf.intel.com (debox1-hc.jf.intel.com [10.54.75.159])
 by linux.intel.com (Postfix) with ESMTP id C52EB58081E;
 Mon, 27 Apr 2020 17:32:49 -0700 (PDT)
From: "David E. Box" <david.e.box@linux.intel.com>
To: rjw@rjwysocki.net, lenb@kernel.org, bhelgaas@google.com, kbusch@kernel.org,
 axboe@fb.com, hch@lst.de, sagi@grimberg.me
Subject: [PATCH 2/2] drivers/nvme: Add support for ACPI StorageD3Enable
 property
Date: Mon, 27 Apr 2020 17:32:14 -0700
Message-Id: <20200428003214.3764-3-david.e.box@linux.intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200428003214.3764-1-david.e.box@linux.intel.com>
References: <20200428003214.3764-1-david.e.box@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_173251_635679_37F1F782 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-nvme@lists.infradead.org, linux-acpi@vger.kernel.org,
 "David E. Box" <david.e.box@linux.intel.com>,
 Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

NVMe storage power management during suspend-to-idle, particularly on
laptops, has been inconsistent with some devices working with D3 while
others must rely on NVMe APST in order for power savings to be realized.
Currently the default is to use APST unless quirked to do otherwise.
However newer platforms, like Intel Comet Lake systems, may require NVMe
drives to use D3 in order for the PCIe ports to be properly power managed.
To make it easier for drivers to choose, these platforms may supply a
special "StorageD3Enable" _DSD property under the root port that the device
is attached to. If supplied, the driver must use D3 in order for the
platform to realize the deepest power savings in suspend-to-idle.

Add check of StorageD3Enable property during probe to use D3 as specified
by platform firmware.

Acked-by: Dan Williams <dan.j.williams@intel.com>
Link: https://docs.microsoft.com/en-us/windows-hardware/design/component-guidelines/power-management-for-storage-hardware-devices-intro
Signed-off-by: David E. Box <david.e.box@linux.intel.com>
---
 drivers/nvme/host/pci.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 4e79e412b276..4d67735975f6 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2777,6 +2777,13 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	quirks |= check_vendor_combination_bug(pdev);
 
+	/*
+	 * Platform requires storage device to use D3 for kernel managed
+	 * suspend.
+	 */
+	if (pdev->storage_d3)
+		quirks |= NVME_QUIRK_SIMPLE_SUSPEND;
+
 	/*
 	 * Double check that our mempool alloc size will cover the biggest
 	 * command we support.
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
