Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E92D415A66C
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Feb 2020 11:32:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qdm/bewAkf5dOl/61VYjZMVoe/cwV8//3ziqj9eyxEM=; b=RU0v8BFIxuEwsg
	ZACM50qUQFTci1B8PS/VSbUHNgOYSfh+6uMo3+GiEuhjdLI5+7fVgaP3cNHp/Ngx18N+Aey1Mv+Ae
	NRyQzBmKT0+DjjUubp24CsZld6NF6tyKoweUao74eWGiQYh7qQ91B+sDrqlwHbeX++HfiQma/xdQ0
	znYTTFlufeF+qfxvReFRzw6W0npWkzbFA4pbXSeoVMczfeUWZjlWXmIGTuUntUtpJhIAfVl3WuaRa
	TCC8MSXUv5fFxtz4SX1Fg/+zTIrmccBz9tSwIutBP/VojKncRdCSbTGLU6d7c4ZQQo1KkXxm8Boi1
	WlOTrguLw8cxC1ZM4iyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1pJv-0001af-Q9; Wed, 12 Feb 2020 10:32:39 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1pJi-0001VK-3A
 for linux-nvme@lists.infradead.org; Wed, 12 Feb 2020 10:32:27 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 12 Feb 2020 02:32:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,428,1574150400"; d="scan'208";a="251870324"
Received: from black.fi.intel.com ([10.237.72.28])
 by orsmga002.jf.intel.com with ESMTP; 12 Feb 2020 02:32:22 -0800
Received: by black.fi.intel.com (Postfix, from userid 1003)
 id 0D9E0193; Wed, 12 Feb 2020 12:32:21 +0200 (EET)
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH v1 2/2] nvme-pci: Convert to PCI_VDEVICE() macro for Apple
 devices
Date: Wed, 12 Feb 2020 12:32:19 +0200
Message-Id: <20200212103220.80680-2-andriy.shevchenko@linux.intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200212103220.80680-1-andriy.shevchenko@linux.intel.com>
References: <20200212103220.80680-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_023226_144237_F892C4C2 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Leif Liddy <leif.liddy@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Like for Intel devices use PCI_VDEVICE() macro to describe
Apple devices.

Besides that it's a luck that we got devices enumerated when
they are listed after class matching entry. So, move them above
and leave class matching entry the last in the ID table.

Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Cc: Leif Liddy <leif.liddy@gmail.com>
Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---
 drivers/nvme/host/pci.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 2c1c64a12024..b02951b19990 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -3095,14 +3095,17 @@ static const struct pci_device_id nvme_id_table[] = {
 	{ PCI_DEVICE(0x1cc1, 0x8201),   /* ADATA SX8200PNP 512GB */
 		.driver_data = NVME_QUIRK_NO_DEEPEST_PS |
 				NVME_QUIRK_IGNORE_DEV_SUBNQN, },
-	{ PCI_DEVICE_CLASS(PCI_CLASS_STORAGE_EXPRESS, 0xffffff) },
-	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2001),
-		.driver_data = NVME_QUIRK_SINGLE_VECTOR },
-	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
-	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2005),
+
+	/* Apple devices */
+	{ PCI_VDEVICE(APPLE, 0x2001),
+		.driver_data = NVME_QUIRK_SINGLE_VECTOR, },
+	{ PCI_VDEVICE(APPLE, 0x2003), },
+	{ PCI_VDEVICE(APPLE, 0x2005),
 		.driver_data = NVME_QUIRK_SINGLE_VECTOR |
 				NVME_QUIRK_128_BYTES_SQES |
-				NVME_QUIRK_SHARED_TAGS },
+				NVME_QUIRK_SHARED_TAGS, },
+
+	{ PCI_DEVICE_CLASS(PCI_CLASS_STORAGE_EXPRESS, 0xffffff) },
 	{ 0, }
 };
 MODULE_DEVICE_TABLE(pci, nvme_id_table);
-- 
2.25.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
