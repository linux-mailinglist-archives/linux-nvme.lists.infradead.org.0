Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1412687107
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 06:49:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=191ul7XP0MsbphMZRh3ztIAQKqX9NfwdcAjeCq4JJQA=; b=SONyCZm2R4vlt+
	irMS0/HC9ExSX4m46a05ygg4DcEA21inXgc/PgmYhrSuJ1skgvi/0jyhdj1fwefqDR1Hs/Ndt5dio
	Wn/p8p/C1lVxdetk0tWkAkW+jz7cnOiuWIe+1IBo5k8zpy7vI0JFSsDvqhALQGzUMXDVUc8vuYWRg
	Vw90TahSm6izk9bG0u3+cTD3TdDsYDNSlRpxwgIBbjgUPHfHSlZimrNAGabvIQswW0lJUVA3pDaQv
	8NB/Umu2vVqBVxTC0ZX5Iu1pqHUtIPqhHcoKx8iBudzfcXIcbtGkQ7tIZlxlmP2/Nr/VYDN8TC8YA
	RXZ7yMmBcAjo8Ci7QCeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvwqS-0003yY-Lm; Fri, 09 Aug 2019 04:49:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvwoH-00028T-3r
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 04:47:27 +0000
Received: from localhost (unknown [69.71.4.100])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4D9C22171F;
 Fri,  9 Aug 2019 04:47:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565326044;
 bh=hTAPEGIi1rHhRPOY3ncsOaTkodoHhRTWzQqYvg7NJCA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lOoQAKfrVjndl7kGwd5L/STLDwnMsu6L8YiB/DDuctN5GlsX8KOUyj3jmPg/W/Wm+
 6CnSV+1fv8bKLacwBT1+eIDQsYlVfzt5Mz6mYn/q9ZfKlU5FeGlzHVJlxjUOdo+Bvv
 5G+k4nK3ld5mN6N+x0ic1JAF6jC1Mawlrmp6Bh2k=
Date: Thu, 8 Aug 2019 23:47:13 -0500
From: Bjorn Helgaas <helgaas@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH v2 2/2] nvme-pci: Allow PCI bus-level PM to be used if
 ASPM is disabled
Message-ID: <20190809044713.GD7302@google.com>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain>
 <1921165.pTveHRX1Co@kreacher> <1870928.r7tBYyfqdz@kreacher>
 <20190808134356.GF151852@google.com>
 <CAJZ5v0h=nz8yXwOOGBUB9m1GtJPOqBwtNK7zXPNMJjzPhMWd9w@mail.gmail.com>
 <20190808183954.GG151852@google.com>
 <CAJZ5v0h95m=G2T_i7uSygK4H=VLH4Txte_ffKc5JBA33A=N76Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0h95m=G2T_i7uSygK4H=VLH4Txte_ffKc5JBA33A=N76Q@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_214725_361182_836A181E 
X-CRM114-Status: GOOD (  53.80  )
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

On Thu, Aug 08, 2019 at 10:41:56PM +0200, Rafael J. Wysocki wrote:
> On Thu, Aug 8, 2019, 20:39 Bjorn Helgaas <helgaas@kernel.org> wrote:
> > On Thu, Aug 08, 2019 at 04:47:45PM +0200, Rafael J. Wysocki wrote:
> > > On Thu, Aug 8, 2019 at 3:43 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > > On Thu, Aug 08, 2019 at 12:10:06PM +0200, Rafael J. Wysocki wrote:
> > > > > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > >
> > > > > One of the modifications made by commit d916b1be94b6 ("nvme-pci: use
> > > > > host managed power state for suspend") was adding a pci_save_state()
> > > > > call to nvme_suspend() in order to prevent the PCI bus-level PM from
> > > > > being applied to the suspended NVMe devices, but if ASPM is not
> > > > > enabled for the target NVMe device, that causes its PCIe link to stay
> > > > > up and the platform may not be able to get into its optimum low-power
> > > > > state because of that.
> > > > >
> > > > > For example, if ASPM is disabled for the NVMe drive (PC401 NVMe SK
> > > > > hynix 256GB) in my Dell XPS13 9380, leaving it in D0 during
> > > > > suspend-to-idle prevents the SoC from reaching package idle states
> > > > > deeper than PC3, which is way insufficient for system suspend.
> > > >
> > > > Just curious: I assume the SoC you reference is some part of the NVMe
> > > > drive?
> > >
> > > No, the SoC is what contains the Intel processor and PCH (formerly "chipset").
> > >
> > > > > To address this shortcoming, make nvme_suspend() check if ASPM is
> > > > > enabled for the target device and fall back to full device shutdown
> > > > > and PCI bus-level PM if that is not the case.
> > > > >
> > > > > Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
> > > > > Link: https://lore.kernel.org/linux-pm/2763495.NmdaWeg79L@kreacher/T/#t
> > > > > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > > ---
> > > > >
> > > > > -> v2:
> > > > >   * Move the PCI/PCIe ASPM changes to a separate patch.
> > > > >   * Do not add a redundant ndev->last_ps == U32_MAX check in nvme_suspend().
> > > > >
> > > > > ---
> > > > >  drivers/nvme/host/pci.c |   13 ++++++++++---
> > > > >  1 file changed, 10 insertions(+), 3 deletions(-)
> > > > >
> > > > > Index: linux-pm/drivers/nvme/host/pci.c
> > > > > ===================================================================
> > > > > --- linux-pm.orig/drivers/nvme/host/pci.c
> > > > > +++ linux-pm/drivers/nvme/host/pci.c
> > > > > @@ -2846,7 +2846,7 @@ static int nvme_resume(struct device *de
> > > > >       struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
> > > > >       struct nvme_ctrl *ctrl = &ndev->ctrl;
> > > > >
> > > > > -     if (pm_resume_via_firmware() || !ctrl->npss ||
> > > > > +     if (ndev->last_ps == U32_MAX ||
> > > > >           nvme_set_power_state(ctrl, ndev->last_ps) != 0)
> > > > >               nvme_reset_ctrl(ctrl);
> > > > >       return 0;
> > > > > @@ -2859,6 +2859,8 @@ static int nvme_suspend(struct device *d
> > > > >       struct nvme_ctrl *ctrl = &ndev->ctrl;
> > > > >       int ret = -EBUSY;
> > > > >
> > > > > +     ndev->last_ps = U32_MAX;
> > > > > +
> > > > >       /*
> > > > >        * The platform does not remove power for a kernel managed suspend so
> > > > >        * use host managed nvme power settings for lowest idle power if
> > > > > @@ -2866,8 +2868,14 @@ static int nvme_suspend(struct device *d
> > > > >        * shutdown.  But if the firmware is involved after the suspend or the
> > > > >        * device does not support any non-default power states, shut down the
> > > > >        * device fully.
> > > > > +      *
> > > > > +      * If ASPM is not enabled for the device, shut down the device and allow
> > > > > +      * the PCI bus layer to put it into D3 in order to take the PCIe link
> > > > > +      * down, so as to allow the platform to achieve its minimum low-power
> > > > > +      * state (which may not be possible if the link is up).
> > > > >        */
> > > > > -     if (pm_suspend_via_firmware() || !ctrl->npss) {
> > > > > +     if (pm_suspend_via_firmware() || !ctrl->npss ||
> > > > > +         !pcie_aspm_enabled_mask(pdev)) {
> > > >
> > > > This seems like a layering violation, in the sense that ASPM is
> > > > supposed to be hardware-autonomous and invisible to software.
> > >
> > > But software has to enable it.
> > >
> > > If it is not enabled, it will not be used, and that's what the check
> > > is about.
> > >
> > > > IIUC the NVMe device will go to the desired package idle state if
> > > > the link is in L0s or L1, but not if the link is in L0.  I don't
> > > > understand that connection; AFAIK that would be something outside
> > > > the scope of the PCIe spec.
> > >
> > > Yes, it is outside of the PCIe spec.
> > >
> > > No, this is not about the NVMe device, it is about the Intel SoC
> > > (System-on-a-Chip) the platform is based on.
> >
> > Ah.  So this problem could occur with any device, not just NVMe?  If
> > so, how do you address that?  Obviously you don't want to patch all
> > drivers this way.
> 
> It could, if the device was left in D0 during suspend, but drivers
> don't let devices stay in D0 during suspend as a rule, so this is all
> academic, except for the NVMe driver that has just started to do it in
> 5.3-rc1.
> 
> It has started to do that becasuse of what can be regarded as a
> hardware issue, but this does not even matter here.
> 
> > > The background really is commit d916b1be94b6 and its changelog is
> > > kind of misleading, unfortunately.  What it did, among other things,
> > > was to cause the NVMe driver to prevent the PCI bus type from
> > > applying the standard PCI PM to the devices handled by it in the
> > > suspend-to-idle flow.
> >
> > This is more meaningful to you than to most people because "applying
> > the standard PCI PM" doesn't tell us what that means in terms of the
> > device.  Presumably it has something to do with a D-state transition?
> > I *assume* a suspend might involve the D0 -> D3hot transition you
> > mention below?
> 
> By "standard PCI PM" I mean what pci_prepare_to_sleep() does. And yes,
> in the vast majority of cases the device goes from D0 to D3hot then.
> 
> > > The reason for doing that was a (reportedly) widespread failure to
> > > take the PCIe link down during D0 -> D3hot transitions of NVMe
> > > devices,
> >
> > I don't know any of the details, but "failure to take the link down
> > during D0 -> D3hot transitions" is phrased as though it might be a
> > hardware erratum.  If this *is* related to an NVMe erratum, that would
> > explain why you only need to patch the nvme driver, and it would be
> > useful to mention that in the commit log, since otherwise it sounds
> > like something that might be needed in other drivers, too.
> 
> Yes, that can be considered as an NVMe erratum and the NVMe driver has
> been *already* patched because of that in 5.3-rc1. [That's the commit
> mentioned in the changelog of the $subject patch.]
> 
> It effectively asks the PCI bus type to leave *all* devices handled by
> it in D0 during suspend-to-idle.  Already today.
> 
> I hope that this clarifies the current situation. :-)
> 
> > According to PCIe r5.0 sec 5.3.2, the only legal link states for D3hot
> > are L1, L2/L3 Ready.  So if you put a device in D3hot and its link
> > stays in L0, that sounds like a defect.  Is that what happens?
> 
> For some devices that's what happens. For some other devices the state
> of the link in D3hot appears to be L1 or L2/L3 Ready (as per the spec)
> and that's when the $subject patch makes a difference.
> ...

> Now, say an NVMe device works in accordance with the spec, so when it
> goes from D0 to D3hot, its PCIe link goes into L1 or L2/L3 Ready.  As
> of 5.3-rc1 or later it will be left in D0 during suspend-to-idle
> (because that's how the NVMe driver works), so its link state will
> depend on whether or not ASPM is enabled for it.  If ASPM is enabled
> for it, the final state of its link will depend on how deep ASPM is
> allowed to go, but if ASPM is not enabled for it, its link will remain
> in L0.
> 
> This means, however, that by allowing that device to go into D3hot
> when ASPM is not enabled for it, the energy used by the system while
> suspended can be reduced, because the PCIe link of the device will
> then go to L1 or L2/L3 Ready.  That's exactly what the $subject patch
> does.
> 
> Is this still not convincing enough?

It's not a matter of being convincing, it's a matter of dissecting and
analyzing this far enough so it makes sense to someone who hasn't
debugged the problem.  Since we're talking about ASPM being enabled,
that really means making the connections to specific PCIe situations.

I'm not the nvme maintainer, so my only interest in this is that it
was really hard for me to figure out how pcie_aspm_enabled() is
related to pm_suspend_via_firmware() and ctrl->npss.

But I think it has finally percolated through.  Here's my
understanding; see it has any connection with reality:

  Prior to d916b1be94b6 ("nvme-pci: use host managed power state for
  suspend"), suspend always put the NVMe device in D3hot.

  After d916b1be94b6, when it's possible, suspend keeps the NVMe
  device in D0 and uses NVMe-specific power settings because it's
  faster to change those than to do D0 -> D3hot -> D0 transitions.

  When it's not possible (either the device doesn't support
  NVMe-specific power settings or platform firmware has to be
  involved), we use D3hot as before.

  So now we have these three cases for suspending an NVMe device:

    1  D0 + no ASPM + NVMe power setting
    2  D0 +    ASPM + NVMe power setting
    3  D3hot

  Prior to d916b1be94b6, we always used case 3.  After d916b1be94b6,
  we used case 1 or 2 whenever possible (we didn't know which).  Case
  2 seemed acceptable, but the power consumption in case 1 was too
  high.

  This patch ("nvme-pci: Allow PCI bus-level PM to be used if ASPM is
  disabled") would replace case 1 with case 3 to reduce power
  consumption.

AFAICT we don't have a way to compute the relative power consumption
of these cases.  It's possible that even case 2 would use more power
than case 3.  You can empirically determine that this patch makes the
right trade-offs for the controllers you care about, but I don't think
it's clear that this will *always* be the case, so in that sense I
think pcie_aspm_enabled() is being used as part of a heuristic.

Bjorn

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
