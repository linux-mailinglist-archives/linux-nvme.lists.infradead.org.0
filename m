Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 174C084937
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 12:14:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OGdI8mO5V6XPiw03yrXpa/NYmbOYqCCrlck2pWZAzKo=; b=g9kXaSdwwnrIO5
	DgWMeUBd/psH4kjCrY7Zar9i1oPqd/3bhdZXcJFL+KwCdwcJPi08LpZIeJb/xBl/2R4yt1txUcvaI
	/4BuWHrucfJukUVFVfB5C9liFdITDuPTFK9DyJwqEHkQ5DIJRqZDLre727R+0UONP0ruhN9IFpbPQ
	PKofjfMjwDgez2XTPkyI5yq2fc8I08sPRI5KLdu+dscZUgvKr+L3m19qD9K5N+9TyVRMuNXmy0Ubv
	WMifwivl6M/kCkxRmWnNXfjX7UlFGFyF9Id282JM5653DGRm7qEURt5aaunuNHzQbWLZEcdP38eIo
	CXWIhNXoonl69LdkSJaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIxf-0004KC-6t; Wed, 07 Aug 2019 10:14:27 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIxP-0004JK-ER
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 10:14:13 +0000
Received: from 79.184.254.29.ipv4.supernova.orange.pl (79.184.254.29) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.275)
 id 015a7a6c70140c25; Wed, 7 Aug 2019 12:14:08 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-pci: Do not prevent PCI bus-level PM from being used
Date: Wed, 07 Aug 2019 12:14:08 +0200
Message-ID: <2081634.8PS0KMhuBW@kreacher>
In-Reply-To: <1893355.EP2830DdO9@kreacher>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain> <1893355.EP2830DdO9@kreacher>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_031411_645651_929BA787 
X-CRM114-Status: GOOD (  11.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PCI <linux-pci@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wednesday, August 7, 2019 11:53:44 AM CEST Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> One of the modifications made by commit d916b1be94b6 ("nvme-pci: use
> host managed power state for suspend") was adding a pci_save_state()
> call to nvme_suspend() in order to prevent the PCI bus-level PM from
> being applied to the suspended NVMe devices, but if ASPM is not
> enabled for the target NVMe device, that causes its PCIe link to stay
> up and the platform may not be able to get into its optimum low-power
> state because of that.
> 
> For example, if ASPM is disabled for the NVMe drive (PC401 NVMe SK
> hynix 256GB) in my Dell XPS13 9380, leaving it in D0 during
> suspend-to-idle prevents the SoC from reaching package idle states
> deeper than PC3, which is way insufficient for system suspend.
> 
> To address this shortcoming, make nvme_suspend() check if ASPM is
> enabled for the target device and fall back to full device shutdown
> and PCI bus-level PM if that is not the case.
> 
> Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
> Link: https://lore.kernel.org/linux-pm/2763495.NmdaWeg79L@kreacher/T/#t
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> ---

I should have used a better subject for this patch.

I'll resend it with a changed subject later, but for now I would like to collect
opinions about it (if any).

Cheers!




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
