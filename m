Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FB93868EA
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 20:40:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RbkM89htHLb4Nkq4ERiuP6GfJpATGwRUxFxlHTEKkWI=; b=d0t8y3NYTKjzWT
	Q09cxYV0uTL59yGUTy/jg+N4pwgniWHj0aEwuv0nfTdBcD/ox15E3ac0sKVVZnJsVL9D1Q/jOfwMA
	u3uKvi30YOjwnmVX0eGP1Rn4yP/03aCCn1fBAH5YHs1vQHx7jt2djKEyOyrVmwjQyHQ+EowK2nntd
	b7zje3+bWwjsi/8Sd3VPmRWeAPhnIYWCQfcOKX1qMlNGNXy5ZLX5proWT5C82at40CCFNBHBp1kOJ
	oKveIyF9tppKSf3BAvMM1gda4f1fe8gfa9BursgaFtIBz6x0184E5e76l6YUI6WMIPiZ2/5PmXndR
	neapdsvrThpAXyDjxcGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvnKZ-0003zH-2S; Thu, 08 Aug 2019 18:40:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvnKP-0003yB-58
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 18:39:59 +0000
Received: from localhost (unknown [150.199.191.185])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6AD54217F4;
 Thu,  8 Aug 2019 18:39:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565289595;
 bh=d9WMpQ18wPaCSAl8L9q4LyWOMnhWyCQuXribMUhFASA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=VLKCzjDUC3356BGnBZagIOCZpjp2vhuMYe4MLA4mTTkR0HgQFZF6gLfdRTOl49FLd
 WHvw0chHRhV1oAOfBAEKvh1u2D4ZOM65d6++xx/Kye5j/kXgyPSxneH38I63jG2LBY
 0Ne2IAExBivEosxfHb105LMY82xFMH3FVfnkb6Ic=
Date: Thu, 8 Aug 2019 13:39:54 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH v2 2/2] nvme-pci: Allow PCI bus-level PM to be used if
 ASPM is disabled
Message-ID: <20190808183954.GG151852@google.com>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain>
 <1921165.pTveHRX1Co@kreacher> <1870928.r7tBYyfqdz@kreacher>
 <20190808134356.GF151852@google.com>
 <CAJZ5v0h=nz8yXwOOGBUB9m1GtJPOqBwtNK7zXPNMJjzPhMWd9w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0h=nz8yXwOOGBUB9m1GtJPOqBwtNK7zXPNMJjzPhMWd9w@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_113957_243269_6A3A2EB2 
X-CRM114-Status: GOOD (  44.62  )
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
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 08, 2019 at 04:47:45PM +0200, Rafael J. Wysocki wrote:
> On Thu, Aug 8, 2019 at 3:43 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > On Thu, Aug 08, 2019 at 12:10:06PM +0200, Rafael J. Wysocki wrote:
> > > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > >
> > > One of the modifications made by commit d916b1be94b6 ("nvme-pci: use
> > > host managed power state for suspend") was adding a pci_save_state()
> > > call to nvme_suspend() in order to prevent the PCI bus-level PM from
> > > being applied to the suspended NVMe devices, but if ASPM is not
> > > enabled for the target NVMe device, that causes its PCIe link to stay
> > > up and the platform may not be able to get into its optimum low-power
> > > state because of that.
> > >
> > > For example, if ASPM is disabled for the NVMe drive (PC401 NVMe SK
> > > hynix 256GB) in my Dell XPS13 9380, leaving it in D0 during
> > > suspend-to-idle prevents the SoC from reaching package idle states
> > > deeper than PC3, which is way insufficient for system suspend.
> >
> > Just curious: I assume the SoC you reference is some part of the NVMe
> > drive?
> 
> No, the SoC is what contains the Intel processor and PCH (formerly "chipset").
> 
> > > To address this shortcoming, make nvme_suspend() check if ASPM is
> > > enabled for the target device and fall back to full device shutdown
> > > and PCI bus-level PM if that is not the case.
> > >
> > > Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
> > > Link: https://lore.kernel.org/linux-pm/2763495.NmdaWeg79L@kreacher/T/#t
> > > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > ---
> > >
> > > -> v2:
> > >   * Move the PCI/PCIe ASPM changes to a separate patch.
> > >   * Do not add a redundant ndev->last_ps == U32_MAX check in nvme_suspend().
> > >
> > > ---
> > >  drivers/nvme/host/pci.c |   13 ++++++++++---
> > >  1 file changed, 10 insertions(+), 3 deletions(-)
> > >
> > > Index: linux-pm/drivers/nvme/host/pci.c
> > > ===================================================================
> > > --- linux-pm.orig/drivers/nvme/host/pci.c
> > > +++ linux-pm/drivers/nvme/host/pci.c
> > > @@ -2846,7 +2846,7 @@ static int nvme_resume(struct device *de
> > >       struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
> > >       struct nvme_ctrl *ctrl = &ndev->ctrl;
> > >
> > > -     if (pm_resume_via_firmware() || !ctrl->npss ||
> > > +     if (ndev->last_ps == U32_MAX ||
> > >           nvme_set_power_state(ctrl, ndev->last_ps) != 0)
> > >               nvme_reset_ctrl(ctrl);
> > >       return 0;
> > > @@ -2859,6 +2859,8 @@ static int nvme_suspend(struct device *d
> > >       struct nvme_ctrl *ctrl = &ndev->ctrl;
> > >       int ret = -EBUSY;
> > >
> > > +     ndev->last_ps = U32_MAX;
> > > +
> > >       /*
> > >        * The platform does not remove power for a kernel managed suspend so
> > >        * use host managed nvme power settings for lowest idle power if
> > > @@ -2866,8 +2868,14 @@ static int nvme_suspend(struct device *d
> > >        * shutdown.  But if the firmware is involved after the suspend or the
> > >        * device does not support any non-default power states, shut down the
> > >        * device fully.
> > > +      *
> > > +      * If ASPM is not enabled for the device, shut down the device and allow
> > > +      * the PCI bus layer to put it into D3 in order to take the PCIe link
> > > +      * down, so as to allow the platform to achieve its minimum low-power
> > > +      * state (which may not be possible if the link is up).
> > >        */
> > > -     if (pm_suspend_via_firmware() || !ctrl->npss) {
> > > +     if (pm_suspend_via_firmware() || !ctrl->npss ||
> > > +         !pcie_aspm_enabled_mask(pdev)) {
> >
> > This seems like a layering violation, in the sense that ASPM is
> > supposed to be hardware-autonomous and invisible to software.
> 
> But software has to enable it.
> 
> If it is not enabled, it will not be used, and that's what the check
> is about.
> 
> > IIUC the NVMe device will go to the desired package idle state if
> > the link is in L0s or L1, but not if the link is in L0.  I don't
> > understand that connection; AFAIK that would be something outside
> > the scope of the PCIe spec.
> 
> Yes, it is outside of the PCIe spec.
> 
> No, this is not about the NVMe device, it is about the Intel SoC
> (System-on-a-Chip) the platform is based on.

Ah.  So this problem could occur with any device, not just NVMe?  If
so, how do you address that?  Obviously you don't want to patch all
drivers this way.

> The background really is commit d916b1be94b6 and its changelog is
> kind of misleading, unfortunately.  What it did, among other things,
> was to cause the NVMe driver to prevent the PCI bus type from
> applying the standard PCI PM to the devices handled by it in the
> suspend-to-idle flow.  

This is more meaningful to you than to most people because "applying
the standard PCI PM" doesn't tell us what that means in terms of the
device.  Presumably it has something to do with a D-state transition?
I *assume* a suspend might involve the D0 -> D3hot transition you
mention below?

> The reason for doing that was a (reportedly) widespread failure to
> take the PCIe link down during D0 -> D3hot transitions of NVMe
> devices,

I don't know any of the details, but "failure to take the link down
during D0 -> D3hot transitions" is phrased as though it might be a
hardware erratum.  If this *is* related to an NVMe erratum, that would
explain why you only need to patch the nvme driver, and it would be
useful to mention that in the commit log, since otherwise it sounds
like something that might be needed in other drivers, too.

According to PCIe r5.0 sec 5.3.2, the only legal link states for D3hot
are L1, L2/L3 Ready.  So if you put a device in D3hot and its link
stays in L0, that sounds like a defect.  Is that what happens?

Obviously I'm still confused.  I think it would help if you could
describe the problem in terms of the specific PCIe states involved
(D0, D3hot, L0, L1, L2, L3, etc) because then the spec would help
explain what's happening.

> which then prevented the platform from going into a deep enough
> low-power state while suspended (because it was not sure whether or
> not the NVMe device was really "sufficiently" inactive).  [I guess I
> should mention that in the changelog of the $subject patch.]  So the
> idea was to put the (NVMe) device into a low-power state internally
> and then let ASPM take care of the PCIe link.
> 
> Of course, that can only work if ASPM is enabled at all for the
> device in question, even though it may not be sufficient as you say
> below.
> 
> > The spec (PCIe r5.0, sec 5.4.1.1.1 for L0s, 5.4.1.2.1 for L1) is
> > careful to say that when the conditions are right, devices
> > "should" enter L0s but it is never mandatory, or "may" enter L1.
> >
> > And this patch assumes that if ASPM is enabled, the link will
> > eventually go to L0s or L1.
> 
> No, it doesn't.
> 
> It avoids failure in the case in which it is guaranteed to happen
> (disabled ASPM) and that's it.
> 
> > Because the PCIe spec doesn't mandate that transition, I think
> > this patch makes the driver dependent on device-specific behavior.
> 
> IMO not really.  It just adds a "don't do it if you are going to
> fail" kind of check.
> 
> >
> > >               nvme_dev_disable(ndev, true);
> > >               return 0;
> > >       }
> > > @@ -2880,7 +2888,6 @@ static int nvme_suspend(struct device *d
> > >           ctrl->state != NVME_CTRL_ADMIN_ONLY)
> > >               goto unfreeze;
> > >
> > > -     ndev->last_ps = 0;
> > >       ret = nvme_get_power_state(ctrl, &ndev->last_ps);
> > >       if (ret < 0)
> > >               goto unfreeze;
> > >
> > >
> > >

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
