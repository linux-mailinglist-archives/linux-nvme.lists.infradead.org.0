Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92B2E86BCB
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:42:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p/t12OLsN6blJpMU1xhJzD3trbRP96GDSCcPc4ZlBtc=; b=RVbLUPzif4VqGL
	fE9XQ0vsbRa4o4qHofxY3eU095KUf5S9WJJrf5LTkR5NVDWTKMj7boCRXWhxDu2uUrLeHZOet1VIg
	bJqm3gC2JmddQ3xMPTCatN6PqRUGDeU/IcBiH1apuEt9EMd9LE4TbUzpmKs/ZKLgjMvYPV0MVUoc8
	/7RRJPl21cex8DZSoACFRJgKzbykZMysZnjYkiRhRd8Dk1F0wfTcIWmZN6Al6Z+rUdhHCtp0kdL3n
	/d+OP4yWBjGbFxeuy9VZs9rBb8C7U2jF4SmfJz8GEZKjUQ9BRecT217tNQHbOd7xZSgAvXK40rlDT
	j1cR9qQ/VlGIR1N0m+eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpEu-0006Hx-8h; Thu, 08 Aug 2019 20:42:24 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpEf-00063Y-5N
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 20:42:12 +0000
Received: by mail-ot1-f66.google.com with SMTP id s20so58557004otp.4
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 13:42:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=dPx3oxQe9mnn97sFiVMnQ+/paC/GNRx7B//ee5f5G+w=;
 b=seaqvVGCG66/VLtzH9kjwnx2vV4pzL75AIiSaWG2zKArq3EHrjXqnqFGweAp0s74GM
 uijsz0cTEuO84RA70isgAnXaQdJbWARQYjeuM64b9zpQpb1JNlAfFoblsEIEfz3v3rD2
 SVobOfPVAiyvGPT9ol1szv/RyZ4Z6y+hjioAKqZSP0+RoaPGcTv67M79CRGbj56J5Zhj
 7pIiS6+3NssgZqoNf4MyYBRqY3tzWcD3vcfn4BIcx+/7/7nUTp/PPghEF+gJB6MT9xu/
 HthBGMy49iQ1a/Ptg540E3FrMOrPTKddkS6XgUAKED73uUT3LDA1RzfVYCSlUB2pAoEO
 vLMg==
X-Gm-Message-State: APjAAAWyP3k8U2cEmQz4/KTXqfyCKpoAJ9mPvatZcQNm4FyM5hD44m0S
 +tmQPnO7h8FL35YwWudCO+W0Hvevkr0rmHPgVXk=
X-Google-Smtp-Source: APXvYqwI9N0vho3Kstoj/H4iMj4aMw65wU5o8DrhhcaHfjfCflP5uRJ/sVsJbHZuSDGKa7kedtXjfG4YYWD9/H6BxTQ=
X-Received: by 2002:aca:5a41:: with SMTP id o62mr4004626oib.110.1565296927852; 
 Thu, 08 Aug 2019 13:42:07 -0700 (PDT)
MIME-Version: 1.0
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain> <1921165.pTveHRX1Co@kreacher>
 <1870928.r7tBYyfqdz@kreacher> <20190808134356.GF151852@google.com>
 <CAJZ5v0h=nz8yXwOOGBUB9m1GtJPOqBwtNK7zXPNMJjzPhMWd9w@mail.gmail.com>
 <20190808183954.GG151852@google.com>
In-Reply-To: <20190808183954.GG151852@google.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 8 Aug 2019 22:41:56 +0200
Message-ID: <CAJZ5v0h95m=G2T_i7uSygK4H=VLH4Txte_ffKc5JBA33A=N76Q@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] nvme-pci: Allow PCI bus-level PM to be used if
 ASPM is disabled
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_134209_232989_8E9AB1C3 
X-CRM114-Status: GOOD (  46.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 "Rafael J. Wysocki" <rafael@kernel.org>,
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

On Thu, Aug 8, 2019, 20:39 Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Thu, Aug 08, 2019 at 04:47:45PM +0200, Rafael J. Wysocki wrote:
> > On Thu, Aug 8, 2019 at 3:43 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > On Thu, Aug 08, 2019 at 12:10:06PM +0200, Rafael J. Wysocki wrote:
> > > > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > >
> > > > One of the modifications made by commit d916b1be94b6 ("nvme-pci: use
> > > > host managed power state for suspend") was adding a pci_save_state()
> > > > call to nvme_suspend() in order to prevent the PCI bus-level PM from
> > > > being applied to the suspended NVMe devices, but if ASPM is not
> > > > enabled for the target NVMe device, that causes its PCIe link to stay
> > > > up and the platform may not be able to get into its optimum low-power
> > > > state because of that.
> > > >
> > > > For example, if ASPM is disabled for the NVMe drive (PC401 NVMe SK
> > > > hynix 256GB) in my Dell XPS13 9380, leaving it in D0 during
> > > > suspend-to-idle prevents the SoC from reaching package idle states
> > > > deeper than PC3, which is way insufficient for system suspend.
> > >
> > > Just curious: I assume the SoC you reference is some part of the NVMe
> > > drive?
> >
> > No, the SoC is what contains the Intel processor and PCH (formerly "chipset").
> >
> > > > To address this shortcoming, make nvme_suspend() check if ASPM is
> > > > enabled for the target device and fall back to full device shutdown
> > > > and PCI bus-level PM if that is not the case.
> > > >
> > > > Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
> > > > Link: https://lore.kernel.org/linux-pm/2763495.NmdaWeg79L@kreacher/T/#t
> > > > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > ---
> > > >
> > > > -> v2:
> > > >   * Move the PCI/PCIe ASPM changes to a separate patch.
> > > >   * Do not add a redundant ndev->last_ps == U32_MAX check in nvme_suspend().
> > > >
> > > > ---
> > > >  drivers/nvme/host/pci.c |   13 ++++++++++---
> > > >  1 file changed, 10 insertions(+), 3 deletions(-)
> > > >
> > > > Index: linux-pm/drivers/nvme/host/pci.c
> > > > ===================================================================
> > > > --- linux-pm.orig/drivers/nvme/host/pci.c
> > > > +++ linux-pm/drivers/nvme/host/pci.c
> > > > @@ -2846,7 +2846,7 @@ static int nvme_resume(struct device *de
> > > >       struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
> > > >       struct nvme_ctrl *ctrl = &ndev->ctrl;
> > > >
> > > > -     if (pm_resume_via_firmware() || !ctrl->npss ||
> > > > +     if (ndev->last_ps == U32_MAX ||
> > > >           nvme_set_power_state(ctrl, ndev->last_ps) != 0)
> > > >               nvme_reset_ctrl(ctrl);
> > > >       return 0;
> > > > @@ -2859,6 +2859,8 @@ static int nvme_suspend(struct device *d
> > > >       struct nvme_ctrl *ctrl = &ndev->ctrl;
> > > >       int ret = -EBUSY;
> > > >
> > > > +     ndev->last_ps = U32_MAX;
> > > > +
> > > >       /*
> > > >        * The platform does not remove power for a kernel managed suspend so
> > > >        * use host managed nvme power settings for lowest idle power if
> > > > @@ -2866,8 +2868,14 @@ static int nvme_suspend(struct device *d
> > > >        * shutdown.  But if the firmware is involved after the suspend or the
> > > >        * device does not support any non-default power states, shut down the
> > > >        * device fully.
> > > > +      *
> > > > +      * If ASPM is not enabled for the device, shut down the device and allow
> > > > +      * the PCI bus layer to put it into D3 in order to take the PCIe link
> > > > +      * down, so as to allow the platform to achieve its minimum low-power
> > > > +      * state (which may not be possible if the link is up).
> > > >        */
> > > > -     if (pm_suspend_via_firmware() || !ctrl->npss) {
> > > > +     if (pm_suspend_via_firmware() || !ctrl->npss ||
> > > > +         !pcie_aspm_enabled_mask(pdev)) {
> > >
> > > This seems like a layering violation, in the sense that ASPM is
> > > supposed to be hardware-autonomous and invisible to software.
> >
> > But software has to enable it.
> >
> > If it is not enabled, it will not be used, and that's what the check
> > is about.
> >
> > > IIUC the NVMe device will go to the desired package idle state if
> > > the link is in L0s or L1, but not if the link is in L0.  I don't
> > > understand that connection; AFAIK that would be something outside
> > > the scope of the PCIe spec.
> >
> > Yes, it is outside of the PCIe spec.
> >
> > No, this is not about the NVMe device, it is about the Intel SoC
> > (System-on-a-Chip) the platform is based on.
>
> Ah.  So this problem could occur with any device, not just NVMe?  If
> so, how do you address that?  Obviously you don't want to patch all
> drivers this way.

It could, if the device was left in D0 during suspend, but drivers
don't let devices stay in D0 during suspend as a rule, so this is all
academic, except for the NVMe driver that has just started to do it in
5.3-rc1.

It has started to do that becasuse of what can be regarded as a
hardware issue, but this does not even matter here.

>
> > The background really is commit d916b1be94b6 and its changelog is
> > kind of misleading, unfortunately.  What it did, among other things,
> > was to cause the NVMe driver to prevent the PCI bus type from
> > applying the standard PCI PM to the devices handled by it in the
> > suspend-to-idle flow.
>
> This is more meaningful to you than to most people because "applying
> the standard PCI PM" doesn't tell us what that means in terms of the
> device.  Presumably it has something to do with a D-state transition?
> I *assume* a suspend might involve the D0 -> D3hot transition you
> mention below?

By "standard PCI PM" I mean what pci_prepare_to_sleep() does. And yes,
in the vast majority of cases the device goes from D0 to D3hot then.

>
> > The reason for doing that was a (reportedly) widespread failure to
> > take the PCIe link down during D0 -> D3hot transitions of NVMe
> > devices,
>
> I don't know any of the details, but "failure to take the link down
> during D0 -> D3hot transitions" is phrased as though it might be a
> hardware erratum.  If this *is* related to an NVMe erratum, that would
> explain why you only need to patch the nvme driver, and it would be
> useful to mention that in the commit log, since otherwise it sounds
> like something that might be needed in other drivers, too.

Yes, that can be considered as an NVMe erratum and the NVMe driver has
been *already* patched because of that in 5.3-rc1. [That's the commit
mentioned in the changelog of the $subject patch.]

It effectively asks the PCI bus type to leave *all* devices handled by
it in D0 during suspend-to-idle.  Already today.

I hope that this clarifies the current situation. :-)

>
> According to PCIe r5.0 sec 5.3.2, the only legal link states for D3hot
> are L1, L2/L3 Ready.  So if you put a device in D3hot and its link
> stays in L0, that sounds like a defect.  Is that what happens?

For some devices that's what happens. For some other devices the state
of the link in D3hot appears to be L1 or L2/L3 Ready (as per the spec)
and that's when the $subject patch makes a difference.

The underlying principle is that the energy used by the system while
suspended depends on the states of all of the PCIe links and the
deeper the link state, the less energy the system will use.

Now, say an NVMe device works in accordance with the spec, so when it
goes from D0 to D3hot, its PCIe link goes into L1 or L2/L3 Ready.  As
of 5.3-rc1 or later it will be left in D0 during suspend-to-idle
(because that's how the NVMe driver works), so its link state will
depend on whether or not ASPM is enabled for it.  If ASPM is enabled
for it, the final state of its link will depend on how deep ASPM is
allowed to go, but if ASPM is not enabled for it, its link will remain
in L0.

This means, however, that by allowing that device to go into D3hot
when ASPM is not enabled for it, the energy used by the system while
suspended can be reduced, because the PCIe link of the device will
then go to L1 or L2/L3 Ready.  That's exactly what the $subject patch
does.

Is this still not convincing enough?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
