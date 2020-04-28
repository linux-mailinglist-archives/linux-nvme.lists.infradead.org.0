Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 296931BB2F9
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 02:35:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5X7SD88YXeafa0i97SgDRfKVsi0ySuRbo9sQ+1b2sNo=; b=DfFM4C6YBWKqTk
	sfIqAFpopxOgKCwqGi7/Q5sLrQy70Ro6JBNYnFSG0tL7nrmQZK0JFXeXI0bH2ZeLsPwm7ZoT8G6ly
	RAkB9jQN67hDQ8zfgeiMfn+Y1wSL2G1EhkSnh5f+frGEjSPJq6W3JeG95nDS88AZ76zzKsDgVLd5O
	3XzwZ0/yyYVvKIP5pzDw/vF41KLLvbumv1gbT6churu6+J1zhSysnIw3YZrru+cDmgCvFlqmDJpcB
	mHqfSv9sh+BylRB+qHEtHnzNluhduafaI7rHPBZktcxHzKHYdqI1SkxL/oXhYrgnHqQL5Trfd3fYq
	h0cIvrUACDC1Oj/wjRbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTED9-00023N-Cj; Tue, 28 Apr 2020 00:34:55 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTED4-0000iO-SO
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 00:34:52 +0000
IronPort-SDR: 1nrXiSMspLOggU5QVPc30Fk718qMp8BL8o/jFpcnMHrDDWBVngr55McSXhyrPGC4yftnOx7MwZ
 E4F9oQXDaeHA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Apr 2020 17:32:49 -0700
IronPort-SDR: lBQl9HB+Bjlc4ebtztBGRLJrNoDj+JSiAJk5fsXKUOGRNmgqvn0zEzFk1Tu7dEYA7LmXv6D9mr
 GHn4do8gGo+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,325,1583222400"; d="scan'208";a="404503975"
Received: from linux.intel.com ([10.54.29.200])
 by orsmga004.jf.intel.com with ESMTP; 27 Apr 2020 17:32:49 -0700
Received: from debox1-hc.jf.intel.com (debox1-hc.jf.intel.com [10.54.75.159])
 by linux.intel.com (Postfix) with ESMTP id B16885807CA;
 Mon, 27 Apr 2020 17:32:49 -0700 (PDT)
From: "David E. Box" <david.e.box@linux.intel.com>
To: rjw@rjwysocki.net, lenb@kernel.org, bhelgaas@google.com, kbusch@kernel.org,
 axboe@fb.com, hch@lst.de, sagi@grimberg.me
Subject: [PATCH 0/2] Add support for StorageD3Enable _DSD property
Date: Mon, 27 Apr 2020 17:32:12 -0700
Message-Id: <20200428003214.3764-1-david.e.box@linux.intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_173450_928060_1B629AA6 
X-CRM114-Status: GOOD (  10.73  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-acpi@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, "David E. Box" <david.e.box@linux.intel.com>,
 linux-pci@vger.kernel.org
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
    
The first patch adds the new _DSD GUID and fowards the property through the
pci/acpi layer to the pci device.

The second patch adds support for the property to the nvme driver.

David E. Box (2):
  pci: Add ACPI StorageD3Enable _DSD support
  drivers/nvme: Add support for ACPI StorageD3Enable property

 drivers/acpi/property.c |  3 +++
 drivers/nvme/host/pci.c |  7 ++++++
 drivers/pci/pci-acpi.c  | 47 +++++++++++++++++++++++++++++++++++++++++
 drivers/pci/pci.c       |  6 ++++++
 drivers/pci/pci.h       |  4 ++++
 include/linux/pci.h     |  1 +
 6 files changed, 68 insertions(+)

-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
