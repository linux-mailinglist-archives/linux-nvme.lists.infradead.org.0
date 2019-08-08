Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42FB864C3
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 16:49:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hIhvd+U/T7l1d/5i6FN3/mIuar6oyq+O3zqwIcqu19E=; b=rJlarIOMlKxT9P
	dU42e7iPKxigkmsxRetehzpY38aTZJ8g7ErYVEKjOXp/QLstSmsGr8NIxAG2ep/o6xwct8fh0o/3t
	nomgoHcZFOuXJMQtoTF5JzkilDOYUNX7Z1iGWnoHm7Bcgc5v1Z/9MYpdtiBpOKXAB/HgXy5nIqdxb
	ac5x/HzkczzYOG3UIG2Q9giJwe9effsebMuKSE75Hq1ImYrSMatWMqoviXNgdd9daOn/Qpq6f7knu
	cY/9xoWC6dp0nI0qsBBmSXyb1jL8ysuFsq2eQKmF4KlE19dzS8af6LedZ2YmrYAn1FCkMDckvpdbF
	YY+xmpXKtL4V3dqa8l6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvjiw-0004w4-L0; Thu, 08 Aug 2019 14:49:02 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvjio-0004v9-Qk
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 14:48:56 +0000
Received: by mail-ot1-f68.google.com with SMTP id b7so69388382otl.11
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 07:48:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=caUqW1nXomqfVjusrC+uUr1xTT4+ugnM/o3XPle10NY=;
 b=Jkgz+f1NQH2x4y/XDhOR+IeQyF0cmWaSKLmP1670XSFRvpe8InafMuTohptStXPZ1C
 b4+/1tNRLceZmnSUqScX3hH/g3JUbfU+vT/iSA07VREnUtHMHFsXVlIARVe/u5Vtf+Yc
 t/+bFAiLsCvvo96NlF51HSZTrY2rwzXpBA8rrkQZt52ANzZAeSWoScFZaO0/wgw+U3lf
 VKgr2OjnjwVcYifHhNWEwLur1Pj7lk39TyIRRIdCrVJvNgP5y0dmj92qMJqR14rKYZ9U
 zODad71XDo/0QZptqn+hRhAjuNylhuKZR2ivWVeXyJnF8zOgB5WCfzh8773pkeH8fZ4f
 SiiA==
X-Gm-Message-State: APjAAAUrVCn0jYEHv29JSH7cjosqhmaj0KO/D6uEYkqW2IQVdZkkNOJG
 GnA1hx1SJSaSmZWHzNEGiGof2w9JBYYsLN3GdhA=
X-Google-Smtp-Source: APXvYqzwi1A/BvfGLyfn7w7S85oFN2mOEJoA3/6P3esAa5V9Bgq00NAFIeHcYu1B5uIbd0r9EO1m9doSsXNbCAXyztM=
X-Received: by 2002:aca:cdd3:: with SMTP id d202mr2617816oig.115.1565275733346; 
 Thu, 08 Aug 2019 07:48:53 -0700 (PDT)
MIME-Version: 1.0
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain> <1921165.pTveHRX1Co@kreacher>
 <3714448.mG7dE8Q3Fs@kreacher> <20190808131536.GE151852@google.com>
In-Reply-To: <20190808131536.GE151852@google.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 8 Aug 2019 16:48:42 +0200
Message-ID: <CAJZ5v0gMzVYdC-xZYLWYmBZ-a3-R8LND=11YJFCXdzrtyyZW=Q@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] PCI: PCIe: ASPM: Introduce pcie_aspm_enabled_mask()
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_074854_864103_CDAF13ED 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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

On Thu, Aug 8, 2019 at 3:15 PM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> On Thu, Aug 08, 2019 at 12:06:52PM +0200, Rafael J. Wysocki wrote:
> > From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> >
> > Add a function returning the mask of currently enabled ASPM link
> > states for a given device.
> >
> > It will be used by the NVMe driver to decide how to handle the
> > device during system suspend.
> >
> > Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> > ---
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
> > +/*
> > + * pcie_aspm_enabled_mask - Return the mask of enabled ASPM link states.
> > + * @pci_device: Target device.
> > + */
> > +u32 pcie_aspm_enabled_mask(struct pci_dev *pci_device)
> > +{
> > +     struct pci_dev *bridge = pci_upstream_bridge(pci_device);
> > +     u32 ret;
> > +
> > +     if (!bridge)
> > +             return 0;
> > +
> > +     mutex_lock(&aspm_lock);
> > +     ret = bridge->link_state ? bridge->link_state->aspm_enabled : 0;
>
> This returns the "aspm_enabled" mask, but the values of that mask are
> combinations of:
>
>   ASPM_STATE_L0S_UP
>   ASPM_STATE_L0S_DW
>   ASPM_STATE_L1
>   ...
>
> which are defined internally in drivers/pci/pcie/aspm.c and not
> visible to the caller of pcie_aspm_enabled_mask().  If there's no need
> for the actual mask (the current caller doesn't seem to use it), maybe
> this could be a boolean?

Yes, it can be a boolean.

>
> > +     mutex_unlock(&aspm_lock);
> > +
> > +     return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(pcie_aspm_enabled_mask);
> > +
> >  #ifdef CONFIG_PCIEASPM_DEBUG
> >  static ssize_t link_state_show(struct device *dev,
> >               struct device_attribute *attr,
> > Index: linux-pm/include/linux/pci.h
> > ===================================================================
> > --- linux-pm.orig/include/linux/pci.h
> > +++ linux-pm/include/linux/pci.h
> > @@ -1567,8 +1567,11 @@ extern bool pcie_ports_native;
> >
> >  #ifdef CONFIG_PCIEASPM
> >  bool pcie_aspm_support_enabled(void);
> > +u32 pcie_aspm_enabled_mask(struct pci_dev *pci_device);
> >  #else
> >  static inline bool pcie_aspm_support_enabled(void) { return false; }
> > +static inline u32 pcie_aspm_enabled_mask(struct pci_dev *pci_device)
> > +{ return 0; }
> >  #endif
> >
> >  #ifdef CONFIG_PCIEAER
> >
> >
> >

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
