Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E41D86363
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 15:44:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LpikOE9IhXbYmSnGA/AwFO2IqfGOp1NzvXpqfAZxCeg=; b=aP6nJYRKh0o0pJ
	0Q5BaiZjQ2vyLC11AD6f3iym1cjewxaWf6s8qfFYa9wHl563rYTnoH+AL8Tt7iQzLDSTIz/15BF9z
	/ed45CMhOFGEMjdfPmQt9nqkhsCV3HjYA1TnrWuJhOXwin6EuNoS6EofM2WMynxFzOlqHVQkSC9V6
	aVpzWVkoFJuseD1IbUy6FucfHYjxCobHHrRJq7g6p6QyNO+/ZgnrSsNSEutv8Fj2WmQnDF0u9GjAU
	NtnaCJ+cBmIdIJBO2V3UidkSCW7iUKVAS2UbYOYFQvQvk1DOzms0vgGHGDUu2l3t6748KG0vXVEU1
	jaiThUOyog+2vNqTlPtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvii4-0005JP-CR; Thu, 08 Aug 2019 13:44:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvihx-0005Iy-Sd
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 13:43:59 +0000
Received: from localhost (173-25-83-245.client.mchsi.com [173.25.83.245])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 282CF2171F;
 Thu,  8 Aug 2019 13:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565271837;
 bh=33CZ8BCc/mP1hiNi8EJruOyKiaf5ldXoU8hbOOmln90=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jBGWMNbI+dfk1O1v2vrc4xhe2sxk55BGLecr95BrhBBrk8yReX3iy63K9/xXPIxfx
 XHiLJ5BLVTBxFxUnsiDVOXkj2YITt6XXw0KAhxsT2DeGM1JpYGgm493RDtJubKrXrJ
 riT9Oxg2+qwT4GGg9Hrm7srReHQpK75/WJheLbTA=
Date: Thu, 8 Aug 2019 08:43:56 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [PATCH v2 2/2] nvme-pci: Allow PCI bus-level PM to be used if
 ASPM is disabled
Message-ID: <20190808134356.GF151852@google.com>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain>
 <1921165.pTveHRX1Co@kreacher> <1870928.r7tBYyfqdz@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1870928.r7tBYyfqdz@kreacher>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_064357_974892_09E259F1 
X-CRM114-Status: GOOD (  28.99  )
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

On Thu, Aug 08, 2019 at 12:10:06PM +0200, Rafael J. Wysocki wrote:
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

Just curious: I assume the SoC you reference is some part of the NVMe
drive?

> To address this shortcoming, make nvme_suspend() check if ASPM is
> enabled for the target device and fall back to full device shutdown
> and PCI bus-level PM if that is not the case.
> 
> Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
> Link: https://lore.kernel.org/linux-pm/2763495.NmdaWeg79L@kreacher/T/#t
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> ---
> 
> -> v2:
>   * Move the PCI/PCIe ASPM changes to a separate patch.
>   * Do not add a redundant ndev->last_ps == U32_MAX check in nvme_suspend().
> 
> ---
>  drivers/nvme/host/pci.c |   13 ++++++++++---
>  1 file changed, 10 insertions(+), 3 deletions(-)
> 
> Index: linux-pm/drivers/nvme/host/pci.c
> ===================================================================
> --- linux-pm.orig/drivers/nvme/host/pci.c
> +++ linux-pm/drivers/nvme/host/pci.c
> @@ -2846,7 +2846,7 @@ static int nvme_resume(struct device *de
>  	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
>  	struct nvme_ctrl *ctrl = &ndev->ctrl;
>  
> -	if (pm_resume_via_firmware() || !ctrl->npss ||
> +	if (ndev->last_ps == U32_MAX ||
>  	    nvme_set_power_state(ctrl, ndev->last_ps) != 0)
>  		nvme_reset_ctrl(ctrl);
>  	return 0;
> @@ -2859,6 +2859,8 @@ static int nvme_suspend(struct device *d
>  	struct nvme_ctrl *ctrl = &ndev->ctrl;
>  	int ret = -EBUSY;
>  
> +	ndev->last_ps = U32_MAX;
> +
>  	/*
>  	 * The platform does not remove power for a kernel managed suspend so
>  	 * use host managed nvme power settings for lowest idle power if
> @@ -2866,8 +2868,14 @@ static int nvme_suspend(struct device *d
>  	 * shutdown.  But if the firmware is involved after the suspend or the
>  	 * device does not support any non-default power states, shut down the
>  	 * device fully.
> +	 *
> +	 * If ASPM is not enabled for the device, shut down the device and allow
> +	 * the PCI bus layer to put it into D3 in order to take the PCIe link
> +	 * down, so as to allow the platform to achieve its minimum low-power
> +	 * state (which may not be possible if the link is up).
>  	 */
> -	if (pm_suspend_via_firmware() || !ctrl->npss) {
> +	if (pm_suspend_via_firmware() || !ctrl->npss ||
> +	    !pcie_aspm_enabled_mask(pdev)) {

This seems like a layering violation, in the sense that ASPM is
supposed to be hardware-autonomous and invisible to software.

IIUC the NVMe device will go to the desired package idle state if the
link is in L0s or L1, but not if the link is in L0.  I don't
understand that connection; AFAIK that would be something outside the
scope of the PCIe spec.

The spec (PCIe r5.0, sec 5.4.1.1.1 for L0s, 5.4.1.2.1 for L1) is
careful to say that when the conditions are right, devices "should"
enter L0s but it is never mandatory, or "may" enter L1.

And this patch assumes that if ASPM is enabled, the link will
eventually go to L0s or L1.  Because the PCIe spec doesn't mandate
that transition, I think this patch makes the driver dependent on
device-specific behavior.

>  		nvme_dev_disable(ndev, true);
>  		return 0;
>  	}
> @@ -2880,7 +2888,6 @@ static int nvme_suspend(struct device *d
>  	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
>  		goto unfreeze;
>  
> -	ndev->last_ps = 0;
>  	ret = nvme_get_power_state(ctrl, &ndev->last_ps);
>  	if (ret < 0)
>  		goto unfreeze;
> 
> 
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
