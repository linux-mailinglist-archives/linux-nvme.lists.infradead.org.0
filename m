Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EEDD039C
	for <lists+linux-nvme@lfdr.de>; Wed,  9 Oct 2019 00:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPIqM5ArBj6phuzpIMBSioEmVw0oF1tXk73ovND1gdM=; b=S5oP5M6VMSRwvZ
	wsfQU38tfDrD/XBa1/JOfooohQ4PeRRo51+OVLGQ39bHr9Aw+alDQeDHRLDDo2B0fDwIFa03vLtLI
	pdLx00QKrAhCg1bsr9niOrGbN/7eSfdkNChjuJyx7aTWCk1j+cM9MD3qE9ybC6yiwwVluIktjQrhj
	rYtbsJ1KAR1r827fCg6r3k2jIkX07NqTTRG3Y1TD4wsM814FEL6g9UjxeFiysEFgHs7fPLNK3vg+l
	Yi1d6z6OeRCrN1qaEghnnBDda89tlShJwiYnByWogqJt21NTiHqZZPc0o8azIBm/z8VQ+0xq40dHZ
	73Bo2brpYP2D1pPceYqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHyNc-0007yW-Ea; Tue, 08 Oct 2019 22:54:56 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHyNW-0007xc-Tc
 for linux-nvme@lists.infradead.org; Tue, 08 Oct 2019 22:54:52 +0000
Received: by mail-oi1-f196.google.com with SMTP id w65so145176oiw.8
 for <linux-nvme@lists.infradead.org>; Tue, 08 Oct 2019 15:54:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=SggbRRKNXqQlH49P3KzPfRoT4FOY8o89Xl8C5FlY+KA=;
 b=Qw4DNlr94gb8psiItM7SHYSyLMCHhOdPx2vuoFUjTihjV0k3hCn9HTlFO39LFGFphx
 0ia/hP3HutBE3BUfg8e/Vodaptu8Y+9MrluPQzR6HZDvLvWmTciGSphCUiLQvBLhcm7e
 jd5rNdXdqwlaKTZuuGOY+oHKd4ITpyLQ+aE6iBSeK18DbZU8AaS4gFuxLKDExS7zKUql
 /A3nR0r431bnLSh6yzkKaw8EggfdRVA8QfWklwqt76k913LSZNAWoCemRWg16XKwg3Bv
 0jsOyPJhnONC9ziE8XkaLZgvSrFb18AVC7LkqYaHsbBhvd55+9mBcuxmaPrnBy0/JCRD
 EPFQ==
X-Gm-Message-State: APjAAAWB5CGZYiyEQAaM/TkPg+ZHIke1fVioX9mNvcZprR9TOeokM9HK
 LZgJcyix0KUhx9sE2xSPBOmrk+FhwA7YFLczJrk=
X-Google-Smtp-Source: APXvYqzAHIWDALJmWxny85y+zNIHc6fYu7ABhv0L9fiH6TsA/vMVV+jisYkSGZMtPlgYlfymiNkZrvEQvyEMSGQl7Vo=
X-Received: by 2002:aca:d706:: with SMTP id o6mr7215oig.57.1570575288501; Tue,
 08 Oct 2019 15:54:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAJZ5v0iL4Rv=AQ-Qnma=wWaqBBbOdfRqu9uS9Gesa-G75oQpzQ@mail.gmail.com>
 <20191008211656.GA163302@google.com>
In-Reply-To: <20191008211656.GA163302@google.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 9 Oct 2019 00:54:37 +0200
Message-ID: <CAJZ5v0j-uSM2gheHViommWcrSaLVfzbwV3M7OOWz3GyzhHSwRA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] PCI: PCIe: ASPM: Introduce pcie_aspm_enabled()
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_155450_955400_0AA4CA08 
X-CRM114-Status: GOOD (  30.22  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Oct 8, 2019 at 11:16 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Tue, Oct 08, 2019 at 11:27:51AM +0200, Rafael J. Wysocki wrote:
> > On Tue, Oct 8, 2019 at 12:34 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
> > > On Thu, Aug 08, 2019 at 11:55:07PM +0200, Rafael J. Wysocki wrote:
> > > > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > >
> > > > Add a function checking whether or not PCIe ASPM has been enabled for
> > > > a given device.
> > > >
> > > > It will be used by the NVMe driver to decide how to handle the
> > > > device during system suspend.
> > > >
> > > > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > > > ---
> > > >
> > > > v2 -> v3:
> > > >   * Make the new function return bool.
> > > >   * Change its name back to pcie_aspm_enabled().
> > > >   * Fix kerneldoc comment formatting.
> > > >
> > > > -> v2:
> > > >   * Move the PCI/PCIe ASPM changes to a separate patch.
> > > >   * Add the _mask suffix to the new function name.
> > > >   * Add EXPORT_SYMBOL_GPL() to the new function.
> > > >   * Avoid adding an unnecessary blank line.
> > > >
> > > > ---
> > > >  drivers/pci/pcie/aspm.c |   20 ++++++++++++++++++++
> > > >  include/linux/pci.h     |    3 +++
> > > >  2 files changed, 23 insertions(+)
> > > >
> > > > Index: linux-pm/drivers/pci/pcie/aspm.c
> > > > ===================================================================
> > > > --- linux-pm.orig/drivers/pci/pcie/aspm.c
> > > > +++ linux-pm/drivers/pci/pcie/aspm.c
> > > > @@ -1170,6 +1170,26 @@ static int pcie_aspm_get_policy(char *bu
> > > >  module_param_call(policy, pcie_aspm_set_policy, pcie_aspm_get_policy,
> > > >       NULL, 0644);
> > > >
> > > > +/**
> > > > + * pcie_aspm_enabled - Check if PCIe ASPM has been enabled for a device.
> > > > + * @pci_device: Target device.
> > > > + */
> > > > +bool pcie_aspm_enabled(struct pci_dev *pci_device)
> > > > +{
> > > > +     struct pci_dev *bridge = pci_upstream_bridge(pci_device);
> > > > +     bool ret;
> > > > +
> > > > +     if (!bridge)
> > > > +             return false;
> > > > +
> > > > +     mutex_lock(&aspm_lock);
> > > > +     ret = bridge->link_state ? !!bridge->link_state->aspm_enabled : false;
> > > > +     mutex_unlock(&aspm_lock);
> > >
> > > Why do we need to acquire aspm_lock here?  We aren't modifying
> > > anything, and I don't think we're preventing a race.  If this races
> > > with another thread that changes aspm_enabled, we'll return either the
> > > old state or the new one, and I think that's still the case even if we
> > > don't acquire aspm_lock.
> >
> > Well, if we can guarantee that pci_remove_bus_device() will never be
> > called in parallel with this helper, then I agree, but can we
> > guarantee that?
>
> Hmm, yeah, I guess that's the question.  It's not a race with another
> thread changing aspm_enabled; the potential race is with another
> thread removing the last child of "bridge", which will free the
> link_state and set bridge->link_state = NULL.
>
> I think it should be safe to call device-related PCI interfaces if
> you're holding a reference to the device, e.g., from a driver bound to
> the device or a sysfs accessor.  Since we call pcie_aspm_enabled(dev)
> from a driver bound to "dev", another thread should not be able to
> remove "dev" while we're using it.
>
> I know that's a little hand-wavey, but if it weren't true, I think
> we'd have a lot more locking sprinkled everywhere in the PCI core than
> we do.
>
> This has implications for Heiner's ASPM sysfs patches because we're
> currently doing this in sysfs accessors:
>
>   static ssize_t aspm_attr_show_common(struct device *dev, ...)
>   {
>     ...
>     link = pcie_aspm_get_link(pdev);
>
>     mutex_lock(&aspm_lock);
>     enabled = link->aspm_enabled & state;
>     mutex_unlock(&aspm_lock);
>     ...
>   }
>
> I assume sysfs must be holding a reference that guarantees "dev" is
> valid througout this code, and therefore we should not need to hold
> aspm_lock.

In principle, pcie_aspm_enabled() need not be called via sysfs.

In the particular NVMe use case, it is called from the driver's own PM
callback, so it would be safe without the locking AFAICS.

I guess it is safe to drop the locking from there, but then it would
be good to mention in the kerneldoc that calling it is only safe under
the assumption that the link_state object cannot go away while it is
running.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
