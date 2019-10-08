Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09ECECF605
	for <lists+linux-nvme@lfdr.de>; Tue,  8 Oct 2019 11:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ddKYq5av0/l9UA97Q+bPWwRNqZmaMlqx1Bd/bY/2/+k=; b=g4ulWQrAhqMD52
	yajNqDK6eDO45MCztdLv4xwHGV5qwqUDLqY91Xz/aCOt4Tm+bFGgnU98pS4ylJj0+PnrfexQ1AiAZ
	r+j338aEMGiomgXFTMq6n9t5INdmhDAxdk/8RF9bKRMOtAwcMnTaK4foWzB8Kx307E0Ag+HcqUo8i
	kMc+U2fRsF7Jf4pAQR5RKvZJrp7dq40IrCY/Phs34MvS/TmQO85WvawUcar2+FFvnJvSwyQkffzSO
	udfySRiQg7VR6GGPAUyFB/sY6i7/MJrQGk8SsswxD4TKmZCGYFqwqG2WK8ie1Ytux3ao3Nz/uU3KC
	9R5k2GZC1SzOlkyhC+Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHlmx-0000Jn-Hc; Tue, 08 Oct 2019 09:28:15 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHlmr-0000IZ-68
 for linux-nvme@lists.infradead.org; Tue, 08 Oct 2019 09:28:10 +0000
Received: by mail-ot1-f67.google.com with SMTP id y39so13458760ota.7
 for <linux-nvme@lists.infradead.org>; Tue, 08 Oct 2019 02:28:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=QKKY+n0fqxvornYxomfHtDCFFUAFeT4prYVwRJVInPM=;
 b=QKh5EZglBfL78jKIrhvft5D3A7k/XFqkGDEfkIEeaMiint7RU7dVIoy67vJdKpQwAl
 4JUwo8lm5DXrpuMAg+kWs2fwTlbaWwaFraGsShRUk8R02U6MsV1wDjPdSyezvQgGwgux
 j27RJdZXYIVPN5xVRZQ/Uw+exUaEWve8TZ3vtflFXxhCV30LcMsu9riO2TgFMnda8wvP
 HlFBAm+oFQH9Ge9zugN2IFIL7x2gqjRJIeRlNVDhvAOAaD/hbYVbnDBPbnzzT11bRJ+m
 SyxOUNmggVxHIpQD8/WxFn3scA7vkBHHf7IZGncS+WeJI5khVHMOq+FNxq8dknOpvAAm
 5Hpg==
X-Gm-Message-State: APjAAAV/gYmV0cPqSTtDKEMHJ00BkSURFFtXR44DAtHcBg2UQXH73m26
 SSAeX9sBkbgciYn82Z3EECpci1nHpnX7fwRaBmw=
X-Google-Smtp-Source: APXvYqwQBIjj/f9VAfJwpHSCImUUYHgrpGtnMscXEcYAppVnL05e8hrF/hWaXl6pQAYZTJGneIWYEkNVNtdguXb8Mqg=
X-Received: by 2002:a9d:664:: with SMTP id 91mr3454984otn.189.1570526882896;
 Tue, 08 Oct 2019 02:28:02 -0700 (PDT)
MIME-Version: 1.0
References: <1618955.HVa0YQSOW5@kreacher> <20191007223428.GA72605@google.com>
In-Reply-To: <20191007223428.GA72605@google.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 8 Oct 2019 11:27:51 +0200
Message-ID: <CAJZ5v0iL4Rv=AQ-Qnma=wWaqBBbOdfRqu9uS9Gesa-G75oQpzQ@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] PCI: PCIe: ASPM: Introduce pcie_aspm_enabled()
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_022809_228961_B5226562 
X-CRM114-Status: GOOD (  20.16  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Tue, Oct 8, 2019 at 12:34 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> [+cc Heiner]
>
> On Thu, Aug 08, 2019 at 11:55:07PM +0200, Rafael J. Wysocki wrote:
> > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >
> > Add a function checking whether or not PCIe ASPM has been enabled for
> > a given device.
> >
> > It will be used by the NVMe driver to decide how to handle the
> > device during system suspend.
> >
> > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > ---
> >
> > v2 -> v3:
> >   * Make the new function return bool.
> >   * Change its name back to pcie_aspm_enabled().
> >   * Fix kerneldoc comment formatting.
> >
> > -> v2:
> >   * Move the PCI/PCIe ASPM changes to a separate patch.
> >   * Add the _mask suffix to the new function name.
> >   * Add EXPORT_SYMBOL_GPL() to the new function.
> >   * Avoid adding an unnecessary blank line.
> >
> > ---
> >  drivers/pci/pcie/aspm.c |   20 ++++++++++++++++++++
> >  include/linux/pci.h     |    3 +++
> >  2 files changed, 23 insertions(+)
> >
> > Index: linux-pm/drivers/pci/pcie/aspm.c
> > ===================================================================
> > --- linux-pm.orig/drivers/pci/pcie/aspm.c
> > +++ linux-pm/drivers/pci/pcie/aspm.c
> > @@ -1170,6 +1170,26 @@ static int pcie_aspm_get_policy(char *bu
> >  module_param_call(policy, pcie_aspm_set_policy, pcie_aspm_get_policy,
> >       NULL, 0644);
> >
> > +/**
> > + * pcie_aspm_enabled - Check if PCIe ASPM has been enabled for a device.
> > + * @pci_device: Target device.
> > + */
> > +bool pcie_aspm_enabled(struct pci_dev *pci_device)
> > +{
> > +     struct pci_dev *bridge = pci_upstream_bridge(pci_device);
> > +     bool ret;
> > +
> > +     if (!bridge)
> > +             return false;
> > +
> > +     mutex_lock(&aspm_lock);
> > +     ret = bridge->link_state ? !!bridge->link_state->aspm_enabled : false;
> > +     mutex_unlock(&aspm_lock);
>
> Why do we need to acquire aspm_lock here?  We aren't modifying
> anything, and I don't think we're preventing a race.  If this races
> with another thread that changes aspm_enabled, we'll return either the
> old state or the new one, and I think that's still the case even if we
> don't acquire aspm_lock.

Well, if we can guarantee that pci_remove_bus_device() will never be
called in parallel with this helper, then I agree, but can we
guarantee that?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
