Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2CF985D3D
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 10:48:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Q4rCGbliT2cqA0MLSr1jU10XP6LD51xTpUfXIHD4Bc=; b=uv51lV8aZVoN1t
	yenuzkRbMLHzJHzJCw0FOeWiXbJbTYV6VsSAV+kkNR54gycn7gXj9YQZIFDPTB1XrztOuMFTPL04u
	WklF7YES7JnAjnvyPMa18S9WfyoNtrxQG0f21Lsm4qM4P+yOzgnFt5BkpGct0w7jDEEk0CSiqtSCA
	awFjD/V1yGIBYamkv/0eQq1N2hgIfDUieerhavQEbwnPS2OpiuC/P0if6emByERJLWNSzS71cDc+o
	6fsdKT/+6WxRnZUrj1d7iqUSnrVyJQOOSbVo9xdBSzIG4dFzY+GtC0jPGdP8daCyOcVIoeNGTg97T
	x/TNmh7oKUvbKhxNfCPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hve5u-0007O0-Dc; Thu, 08 Aug 2019 08:48:22 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hve5k-0007My-Ku
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 08:48:14 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id B571D68BFE; Thu,  8 Aug 2019 10:48:04 +0200 (CEST)
Date: Thu, 8 Aug 2019 10:48:04 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH] nvme-pci: Allow PCI bus-level PM to be used if ASPM is
 disabled
Message-ID: <20190808084804.GA31404@lst.de>
References: <47415939.KV5G6iaeJG@kreacher>
 <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain> <2583975.4sIyE3leJj@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2583975.4sIyE3leJj@kreacher>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_014812_838005_F1DAA3D9 
X-CRM114-Status: GOOD (  12.94  )
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

> -     ndev->last_ps = 0;
>       ret = nvme_get_power_state(ctrl, &ndev->last_ps);
> -     if (ret < 0)
> +     if (ret < 0 || ndev->last_ps == U32_MAX)

Is the intent of the magic U32_MAX check to see if the
nvme_get_power_state failed at the nvme level?  In that case just
checking for any non-zero return value from nvme_get_power_state might
be the easier and more clear way to do it.

> Index: linux-pm/drivers/pci/pcie/aspm.c
> ===================================================================
> --- linux-pm.orig/drivers/pci/pcie/aspm.c
> +++ linux-pm/drivers/pci/pcie/aspm.c

Shouldn't we split PCI vs nvme in two patches?

> @@ -1170,6 +1170,26 @@ static int pcie_aspm_get_policy(char *bu
>  module_param_call(policy, pcie_aspm_set_policy, pcie_aspm_get_policy,
>  	NULL, 0644);
>  
> +/*
> + * pcie_aspm_enabled - Return the mask of enabled ASPM link states.
> + * @pci_device: Target device.
> + */
> +u32 pcie_aspm_enabled(struct pci_dev *pci_device)

pcie_aspm_enabled sounds like it returns a boolean.  Shouldn't there be
a mask or so in the name better documenting what it returns?

> +{
> +	struct pci_dev *bridge = pci_upstream_bridge(pci_device);
> +	u32 ret;
> +
> +	if (!bridge)
> +		return 0;
> +
> +	mutex_lock(&aspm_lock);
> +	ret = bridge->link_state ? bridge->link_state->aspm_enabled : 0;
> +	mutex_unlock(&aspm_lock);
> +
> +	return ret;
> +}

I think this will need a EXPORT_SYMBOL_GPL thrown in so that modular
nvme continues working.

> +
> +
>  #ifdef CONFIG_PCIEASPM_DEBUG

Nit: double blank line here.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
