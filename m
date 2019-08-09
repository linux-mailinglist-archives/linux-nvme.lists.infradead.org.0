Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01C95873AC
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 10:01:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=06lzfBvuOfxM7y4XVlC9JvSsidhF/lPO3QjFU+dgfRs=; b=qRKY9Ihrd/qyyp
	URICnwZ6fm/MZSSqtgWkkD10AnvV2xX3poOUmmnMAMB4tpydPBtiREfxWUonjTcFxxBSp+4sS4LAh
	e028n0hePskb/1O4rXWb8qY72j51pIdbSXAGqtcbV0zLybWVDaIY2bJ2hya5HdkJrac2k1A5Dv29Q
	JmWHvTP5ctIUYVCyDs9MdOLFFzH/gbYE6cu9rR47p9UqJnae1Mk9NQM/JpKM9/PYeOgnSN/etyJ8K
	lE1w3ZDxP+ZrQ6J9v3YbgEpZuFW0qiVepJswrmg4pMQsqnBpvK5CQ3Y7toLob+tfg5cs3z+Kb5aYh
	3rC7wR9HucJBVts3tz9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvzph-0001S7-UD; Fri, 09 Aug 2019 08:01:05 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvzpV-0001RQ-7u
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 08:00:54 +0000
Received: by mail-ot1-f66.google.com with SMTP id r21so123407776otq.6
 for <linux-nvme@lists.infradead.org>; Fri, 09 Aug 2019 01:00:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=MvmuOMegXGyoZoAVbYJEjhJdJHb/HkNFFGNS7y3IwZI=;
 b=ER5xnxV4STR21NUoHNhxnRqHpZORiz6Hs7AUgFal+7pYb2Pm7NRzY/TIoiT3OnJFFo
 CPDkVsNOqQMtlPNhiSg+iZQnz1nwY0NSnhCFnNrRC3Gz+UDYAxeF4GNsISMHnI47GxZx
 wB5fAAPraCYhvxRiUn0RlPoFP3b2+taAkOWMypWH0tJ8C8Elspf9+JKq4lJ6prsfegtT
 AGFKYGNpcHYtCOm80i0ULwsF3npCRE6mY5VQITLb3FFIMYVaywv59l94ofUMSHDU+Z3j
 H/w6zBuLjstvf8R6MKp8jLEIROgg0Mlvj3BoZXrRqTUeCw1hbcmM1MKoPrASjM8ez/Sh
 D0vQ==
X-Gm-Message-State: APjAAAXJKClxO9p3jexBvK2ozRkcNXrfOEnnhkxe9BjFxreCIeSVvNFq
 OjcOWp7fRQc6GvQKQu/GpiaMRN8DCrKbt09p+Ok=
X-Google-Smtp-Source: APXvYqybdxurf5JCgFnVgFRlNNteHx+/jN3ZkSQs93AnC48rBlzxUL09kEEXqLZe0rOCiS9V4aor+P2ybINju+sDcVs=
X-Received: by 2002:a9d:6b96:: with SMTP id b22mr17340509otq.262.1565337651853; 
 Fri, 09 Aug 2019 01:00:51 -0700 (PDT)
MIME-Version: 1.0
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <20190731221956.GB15795@localhost.localdomain> <2184247.yL3mcj2FRQ@kreacher>
 <1618955.HVa0YQSOW5@kreacher> <20190809045058.GE7302@google.com>
In-Reply-To: <20190809045058.GE7302@google.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 9 Aug 2019 10:00:41 +0200
Message-ID: <CAJZ5v0jZiKDrq_Mzxf_evbkYYxyEZGgkbn7NRNJX9AepONbABg@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] PCI: PCIe: ASPM: Introduce pcie_aspm_enabled()
To: Bjorn Helgaas <helgaas@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_010053_287122_4600D66E 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
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

On Fri, Aug 9, 2019 at 6:51 AM Bjorn Helgaas <helgaas@kernel.org> wrote:
>
> s|PCI: PCIe: ASPM: Introduce pcie_aspm_enabled()|PCI/ASPM: Add pcie_aspm_enabled()|

Will change.

>
> to match previous history.
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
>
> Acked-by: Bjorn Helgaas <bhelgaas@google.com>

Thanks!

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
>
> The typical name in this file is "pdev".

OK, will change.

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
> > +
> > +     return ret;
> > +}
> > +EXPORT_SYMBOL_GPL(pcie_aspm_enabled);
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
> > +bool pcie_aspm_enabled(struct pci_dev *pci_device);
> >  #else
> >  static inline bool pcie_aspm_support_enabled(void) { return false; }
> > +static inline bool pcie_aspm_enabled(struct pci_dev *pci_device)
> > +{ return false; }
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
