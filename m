Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B050867B0
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 19:07:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B3mh3zFm6/3sHV/J285WHRh+jtohxmp6Jbd8TuLipFY=; b=Sv2gyGpGZaHGmC
	zKIX6fCwy/7E5npvffH0Z1UIhycl7rUJXcZtOdcTxxEi+jBIm4h6pNn7Bk3CO1hPR3PsSaPeMq+CS
	XydLQnr4e8vyQyG+bUmmAewF2CTKi6Xk1/fHw+l7A3GpzUtuxOB45/8CoKb2VZPGItYAppD8sY3kO
	POwmrLrQtPkxj40OzJVpusfh4IKcel/FzDQVr0NoAp01LvE5EKWW51foIYwrnf7ON4SUOyeSKrZLC
	Igj4Uj7DoN2qiVETx7cQHq3OXIJlSxojDg/ElLVbVXlnxbIuP17+xazGwKJAW4To5f9+SiKKiqUBH
	LiwOwFyP9yhRzoCBb6eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvlsk-0003Gg-AP; Thu, 08 Aug 2019 17:07:18 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvlsc-0003ER-Jb
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 17:07:12 +0000
Received: by mail-ot1-f67.google.com with SMTP id r21so115496248otq.6
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 10:07:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=ARqNURKzyY/2pv9kl0jf6GLnPWlYlVLfWEiji5JD+Cw=;
 b=k00ENsm512pk6nxbxKLN0l/oOi1hZM8GtK1CbH5YTnRy2i0u3mTPsPreO5DLxsA8wX
 fNyOH4+Bqe3h3LSzOZqw8Zqr7KmkTAebzUB6lytTt3xvwCGro4IIdc6iGCd67ShlPYSv
 /4Xq1C/CFZnVjzQoRDAB46t2XHV6Q4o8uQvKlr3PWhV18UIvqWziB9JbvIbI3UPu8yRX
 d46VpvBOMaiLbPIEmCdlUndPEa9J2R/g54tdMLLLklUkfsa/72nI1qtsnAEeWIMhXmYl
 /fyuV5iUp8PHDUloOYBwEosco5xFtWxmeie7LUDcfKT4WND4+a9LMrSbeufs0t8Zm5V6
 W7UA==
X-Gm-Message-State: APjAAAXE1a+DcHtBQppMULeovvTayz4t4XMdN/3m2bbcUsnbOAoFETnO
 sJthk78b73kE80VNcVCssvEeaXjJkofEt+0qTBLUb7l+
X-Google-Smtp-Source: APXvYqxKQjrWNqdYgtwv6uf02uNQamTdoSoBuHKNMXECbC/m2b9pI1UYwInAJhCmYRrXvoGGIyRPFzVsb7d/7r10wWc=
X-Received: by 2002:aca:cdd3:: with SMTP id d202mr3044755oig.115.1565284029519; 
 Thu, 08 Aug 2019 10:07:09 -0700 (PDT)
MIME-Version: 1.0
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain> <1921165.pTveHRX1Co@kreacher>
 <1870928.r7tBYyfqdz@kreacher> <20190808134356.GF151852@google.com>
 <CAJZ5v0h=nz8yXwOOGBUB9m1GtJPOqBwtNK7zXPNMJjzPhMWd9w@mail.gmail.com>
In-Reply-To: <CAJZ5v0h=nz8yXwOOGBUB9m1GtJPOqBwtNK7zXPNMJjzPhMWd9w@mail.gmail.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 8 Aug 2019 19:06:58 +0200
Message-ID: <CAJZ5v0jJBceekiOmBUJsAJZRkLYgzuUjoNBpdO_uBoh0RY7EmQ@mail.gmail.com>
Subject: Re: [PATCH v2 2/2] nvme-pci: Allow PCI bus-level PM to be used if
 ASPM is disabled
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_100710_699767_1CC40FDF 
X-CRM114-Status: GOOD (  39.63  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 4:47 PM Rafael J. Wysocki <rafael@kernel.org> wrote:
>
> On Thu, Aug 8, 2019 at 3:43 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
> >
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
> If it is not enabled, it will not be used, and that's what the check is about.
>
> > IIUC the NVMe device will go to the desired package idle state if the
> > link is in L0s or L1, but not if the link is in L0.  I don't
> > understand that connection; AFAIK that would be something outside the
> > scope of the PCIe spec.
>
> Yes, it is outside of the PCIe spec.
>
> No, this is not about the NVMe device, it is about the Intel SoC
> (System-on-a-Chip) the platform is based on.
>
> The background really is commit d916b1be94b6 and its changelog is kind
> of misleading, unfortunately.  What it did, among other things, was to
> cause the NVMe driver to prevent the PCI bus type from applying the
> standard PCI PM to the devices handled by it in the suspend-to-idle
> flow.  The reason for doing that was a (reportedly) widespread failure
> to take the PCIe link down during D0 -> D3hot transitions of NVMe
> devices, which then prevented the platform from going into a deep
> enough low-power state while suspended (because it was not sure
> whether or not the NVMe device was really "sufficiently" inactive).
> [I guess I should mention that in the changelog of the $subject
> patch.]  So the idea was to put the (NVMe) device into a low-power
> state internally and then let ASPM take care of the PCIe link.
>
> Of course, that can only work if ASPM is enabled at all for the device
> in question, even though it may not be sufficient as you say below.
>
> > The spec (PCIe r5.0, sec 5.4.1.1.1 for L0s, 5.4.1.2.1 for L1) is
> > careful to say that when the conditions are right, devices "should"
> > enter L0s but it is never mandatory, or "may" enter L1.
> >
> > And this patch assumes that if ASPM is enabled, the link will
> > eventually go to L0s or L1.
>
> No, it doesn't.
>
> It avoids failure in the case in which it is guaranteed to happen
> (disabled ASPM) and that's it.

IOW, after commit d916b1be94b6 and without this patch, nvme_suspend()
*always* assumes ASPM to take the device's PCIe link down, which
obviously is not going to happen if ASPM is disabled for that device.

The rationale for this patch is to avoid the obvious failure.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
