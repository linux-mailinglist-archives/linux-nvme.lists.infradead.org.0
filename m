Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7401D849E7
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 12:44:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l2NzMxBBgrRo3IgVs3l6tLq5h5ejY4jm0lJ5Hoe9KWk=; b=tKydwxT470fenT
	m+wAlHcw8XsKNiD1/VmHB/gYV8giYuFkKPhbsw8bbaz+35zhv6RG5l8nVLCHBaTsjBDEyslZhKjhm
	Llnt4vD5rI5XQ1ytcWDcueXC87wPB5LV/Z++/yz8JYS31q0qjrMGpxdvY0I1s6Co4492EPVz2QUTB
	abRvhd2d8qRn4ifmDMnBBeqYg/C8Mg8C2mwISJW+vFqqJ3Ee71E38iOHtsg3KENKLRieJaYeRN+jE
	YGnjgEy/kIEe2tpcIGrefVNq73F+o/kbANd9snhzrOcKq327+PVnwgB/AIOFajHF+OGfbA1RbrQI6
	xZAa3GVXxpDLFUZnHgUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvJQO-0007EV-8U; Wed, 07 Aug 2019 10:44:08 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvJQE-0007Dr-5N
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 10:43:59 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 998CC68AFE; Wed,  7 Aug 2019 12:43:53 +0200 (CEST)
Date: Wed, 7 Aug 2019 12:43:53 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH] nvme-pci: Do not prevent PCI bus-level PM from being used
Message-ID: <20190807104353.GA11356@lst.de>
References: <47415939.KV5G6iaeJG@kreacher>
 <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain> <1893355.EP2830DdO9@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1893355.EP2830DdO9@kreacher>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_034358_356011_6675D69F 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PCI <linux-pci@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> +	if (pm_suspend_via_firmware() || !ctrl->npss || !pcie_aspm_enabled(pdev)) {



> +	mutex_lock(&aspm_lock);
> +	aspm_enabled = bridge->link_state ? bridge->link_state->aspm_enabled : 0;

Please fix the overly long lines..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
