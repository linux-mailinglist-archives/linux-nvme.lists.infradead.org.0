Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0545D87115
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 06:51:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GEeSVuNTpEN4vumK1Z5qfTTo0bBvTYo0H8TAnD8s40g=; b=lsCIb7LthimiU3
	O4vZDOzK5MG3f/Oz/cTOkXQsyhRHlQLqUYdChQXEhimpxg7c7AJ51tiE16524dZyB8WflpxCtbn2P
	H1AJIJoJZoZfXQDTbGAKSygb+vkZVUNGzKkIprLpJgE7XZAl6h0+32uhg8sccI9kJATxd2527xR1d
	OHPfpvc+iQWXQdUXGtEwsLe/00AsfnTpWZuQbzcweKP7sCV4jPthAUIs6Ywe9dcKwUmLh5XWxvrt/
	0YYSx2/qWl5ZT89xzIDo2zf29KmCQ2xisnihqNi4YOj5FLl8RkTwa2v4WfwxdyMID/kEDsFqfhiL4
	4HCo0H17xBgBFA1+TN6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvwsB-0006Rq-1J; Fri, 09 Aug 2019 04:51:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvws1-0006RN-Dy
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 04:51:18 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A4972171F;
 Fri,  9 Aug 2019 04:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565326277;
 bh=UscCNqfBtTv94Eh7VjCme0SCZjD0JPyLgvJmYMx3GfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lqS+ENNlfxRG+eOO2xNd79wvwo0vxI1wk8SJaRQxLjR3SQIZWfk8dVCPsUcUOo4ni
 7yu7DmxYPQ/NkxxDX5h/DpggLwcOvhCAMgsI8wEAf7ggVdqQJsYvLHGnTbmPz00is4
 nt3xfsVdRDXyJe4xM4KA9cbSGTF+Fo5DE2gxwu40=
Date: Thu, 8 Aug 2019 23:50:58 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH v3 1/2] PCI: PCIe: ASPM: Introduce pcie_aspm_enabled()
Message-ID: <20190809045058.GE7302@google.com>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain>
 <2184247.yL3mcj2FRQ@kreacher> <1618955.HVa0YQSOW5@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1618955.HVa0YQSOW5@kreacher>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_215117_508227_FC0CE446 
X-CRM114-Status: GOOD (  19.22  )
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

s|PCI: PCIe: ASPM: Introduce pcie_aspm_enabled()|PCI/ASPM: Add pcie_aspm_enabled()|

to match previous history.

On Thu, Aug 08, 2019 at 11:55:07PM +0200, Rafael J. Wysocki wrote:
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> 
> Add a function checking whether or not PCIe ASPM has been enabled for
> a given device.
> 
> It will be used by the NVMe driver to decide how to handle the
> device during system suspend.
> 
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

Acked-by: Bjorn Helgaas <bhelgaas@google.com>

> ---
> 
> v2 -> v3:
>   * Make the new function return bool.
>   * Change its name back to pcie_aspm_enabled().
>   * Fix kerneldoc comment formatting.
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
> +/**
> + * pcie_aspm_enabled - Check if PCIe ASPM has been enabled for a device.
> + * @pci_device: Target device.
> + */
> +bool pcie_aspm_enabled(struct pci_dev *pci_device)

The typical name in this file is "pdev".

> +{
> +	struct pci_dev *bridge = pci_upstream_bridge(pci_device);
> +	bool ret;
> +
> +	if (!bridge)
> +		return false;
> +
> +	mutex_lock(&aspm_lock);
> +	ret = bridge->link_state ? !!bridge->link_state->aspm_enabled : false;
> +	mutex_unlock(&aspm_lock);
> +
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(pcie_aspm_enabled);
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
> +bool pcie_aspm_enabled(struct pci_dev *pci_device);
>  #else
>  static inline bool pcie_aspm_support_enabled(void) { return false; }
> +static inline bool pcie_aspm_enabled(struct pci_dev *pci_device)
> +{ return false; }
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
