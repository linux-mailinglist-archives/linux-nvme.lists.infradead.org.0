Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1152862D0
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 15:16:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M3kwO3f0I9GunJTO9rqYbEbS93AL3GoQcY67ox+W1Fg=; b=f9VK1KiODP9aqU
	YJTut0oz3XcFOJgYtv+DgEv0+2gWysFTnJL4d817tvRDxHLhdrC+E1hLS60SwqycJ+bHTM/NfxJ6n
	kIczChRKqtGydadO4pg3nQZ3oDcnfvTx2oAtrPwfzyGaE7n1lx1U7RS9ItL7Wr/zpntxyd//W7Ggr
	rE7lFRfnY74Zoy3I6RTnx2MTDg7LNejJxcl6JRprJ1QJHDYendAfyASzNoXYipQKrl0wOpwdHkdM9
	m8k0e537wsgz8eD5iHdyg8spYaUJxjHE1pJzma1cMDWyuH1OD6kBxC1aoKcpaDwu3vebCHQPIdaBV
	9nmIOHK25PjMa9ljVe4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hviGp-0004h3-Kb; Thu, 08 Aug 2019 13:15:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hviGY-0004gB-Bb
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 13:15:39 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 56C4C21874;
 Thu,  8 Aug 2019 13:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565270137;
 bh=vFhZxVY8zznG2dSrxO7puCCAQ9KAh4AjZjZKA0nhTAw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NlMKMIrSlU6rvR+VXzY7/b5hTw+vgLbYitjwCvgf/5bMZmb+I9tIWmlPXVfLBBMaP
 PhegZYaNpANzQ9Pn7T34U2Ssj37aRI2b76KQ2vUqIZK9/OtHeNT9JNljA4J6KR96We
 n7MoKycWieK/kffMTmTVhIwawhbfkEj7SbA0UGMQ=
Date: Thu, 8 Aug 2019 08:15:36 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH v2 1/2] PCI: PCIe: ASPM: Introduce pcie_aspm_enabled_mask()
Message-ID: <20190808131536.GE151852@google.com>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain>
 <1921165.pTveHRX1Co@kreacher> <3714448.mG7dE8Q3Fs@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3714448.mG7dE8Q3Fs@kreacher>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_061538_434822_FC0C18BA 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PCI <linux-pci@vger.kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 12:06:52PM +0200, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> Add a function returning the mask of currently enabled ASPM link
> states for a given device.
> 
> It will be used by the NVMe driver to decide how to handle the
> device during system suspend.
> 
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> ---
> 
> -> v2:
>   * Move the PCI/PCIe ASPM changes to a separate patch.
>   * Add the _mask suffix to the new function name.
>   * Add EXPORT_SYMBOL_GPL() to the new function.
>   * Avoid adding an unnecessary blank line.
> 
> ---
>  drivers/pci/pcie/aspm.c |   20 ++++++++++++++++++++
>  include/linux/pci.h     |    3 +++
>  2 files changed, 23 insertions(+)
> 
> Index: linux-pm/drivers/pci/pcie/aspm.c
> ===================================================================
> --- linux-pm.orig/drivers/pci/pcie/aspm.c
> +++ linux-pm/drivers/pci/pcie/aspm.c
> @@ -1170,6 +1170,26 @@ static int pcie_aspm_get_policy(char *bu
>  module_param_call(policy, pcie_aspm_set_policy, pcie_aspm_get_policy,
>  	NULL, 0644);
>  
> +/*
> + * pcie_aspm_enabled_mask - Return the mask of enabled ASPM link states.
> + * @pci_device: Target device.
> + */
> +u32 pcie_aspm_enabled_mask(struct pci_dev *pci_device)
> +{
> +	struct pci_dev *bridge = pci_upstream_bridge(pci_device);
> +	u32 ret;
> +
> +	if (!bridge)
> +		return 0;
> +
> +	mutex_lock(&aspm_lock);
> +	ret = bridge->link_state ? bridge->link_state->aspm_enabled : 0;

This returns the "aspm_enabled" mask, but the values of that mask are
combinations of:

  ASPM_STATE_L0S_UP
  ASPM_STATE_L0S_DW
  ASPM_STATE_L1
  ...

which are defined internally in drivers/pci/pcie/aspm.c and not
visible to the caller of pcie_aspm_enabled_mask().  If there's no need
for the actual mask (the current caller doesn't seem to use it), maybe
this could be a boolean?

> +	mutex_unlock(&aspm_lock);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(pcie_aspm_enabled_mask);
> +
>  #ifdef CONFIG_PCIEASPM_DEBUG
>  static ssize_t link_state_show(struct device *dev,
>  		struct device_attribute *attr,
> Index: linux-pm/include/linux/pci.h
> ===================================================================
> --- linux-pm.orig/include/linux/pci.h
> +++ linux-pm/include/linux/pci.h
> @@ -1567,8 +1567,11 @@ extern bool pcie_ports_native;
>  
>  #ifdef CONFIG_PCIEASPM
>  bool pcie_aspm_support_enabled(void);
> +u32 pcie_aspm_enabled_mask(struct pci_dev *pci_device);
>  #else
>  static inline bool pcie_aspm_support_enabled(void) { return false; }
> +static inline u32 pcie_aspm_enabled_mask(struct pci_dev *pci_device)
> +{ return 0; }
>  #endif
>  
>  #ifdef CONFIG_PCIEAER
> 
> 
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
