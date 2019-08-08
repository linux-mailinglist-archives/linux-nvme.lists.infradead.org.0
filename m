Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8595685DD4
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 11:06:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+0rAH1d8XtJBz0mtLMqLzphildQbe5a3qdviiCCX1E=; b=Wo2FuZXfOtu/Mv
	0IPyiQjKjNEpcR3McyCItNMou2/j+RYojqPHI6JxBLhAUDDcgVz/HeN6utBTI7dZgKeaGh8V02scG
	5IKxqee4ck5paIG6jCBKj+HYeYGnJs6AoYKY9DH9F1uby2jTQICXOB+8+xwvqGbbpj0VJ9+E0XBVl
	jCuvnl2+ik7t1v1+mRlzrqJgnqQaalEv3dY33BDkfWJgNJkJejnZhzzvMs48YHf0yukHUdNQ/CeG0
	aMlzxMDYgu8qc/RNPhxgDcOMJM2p2mUXQFpqSdWeQkZmqtT1/qxcp1ik1gZpG6p9uUAZhnNdy5qIW
	uoB5zjSyrn+4OMO22Plw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hveNc-0002Sj-3z; Thu, 08 Aug 2019 09:06:40 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hveNS-0002SP-IQ
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 09:06:31 +0000
Received: by mail-ot1-f68.google.com with SMTP id q20so115602467otl.0
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 02:06:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=34pNCA2fAatpNgW2gdL2L6PIclEzNScEt8bxwQ+wQhw=;
 b=bT/6WlLTt69ENWg7iCt4xJVEcv5iUrJPGkUxf4xWVrnXA8So4zn/Gzhlay+n6ZP2fh
 wYt7jS+WiRQFbq6IoYyAhcR4566aPvO+9iGyTU2+C7HULKnDl/zSKVMU+/cTbpUt3bBF
 S+IwgavibfMKv+mNl4qgFdQEz2fjunr7asyBfo3Iv1+4VXfHv2gWy7tI1JFmG5v19rxo
 YW4ssrv+bjwro9uVTiwpd/XbYllOZ0v6ssVbaNWRK4rp6RBomDmghi7aepDBWP60ksXZ
 Evto+mbIeTenYFFYhQ+kJVrMjXa+NpV2sO1IMujYCbfin3f1hUWs8s22WwC8+eXs/iL7
 V+8g==
X-Gm-Message-State: APjAAAUnhV76PC7+j+mUsFImyXa8DSJP+TRXoG/4qhqUzv91sTckMsOU
 KFKwRsIGH3La7WQ7W8JwQtJYOCOP/v3K3EYCCP8=
X-Google-Smtp-Source: APXvYqzj3UqThCxDGgQPBMBDcNMHtdPq2BpaEuppJuuyxhOKl1E6sX2FzFWUaJgpE/jjcNezeJuicOhA12ciL3iufCI=
X-Received: by 2002:aca:cdd3:: with SMTP id d202mr1665889oig.115.1565255189517; 
 Thu, 08 Aug 2019 02:06:29 -0700 (PDT)
MIME-Version: 1.0
References: <47415939.KV5G6iaeJG@kreacher>
 <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain> <2583975.4sIyE3leJj@kreacher>
 <20190808084804.GA31404@lst.de>
In-Reply-To: <20190808084804.GA31404@lst.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 8 Aug 2019 11:06:17 +0200
Message-ID: <CAJZ5v0hTJKPi1zfB_RjuZ415-JjmK2nVP7mss3npqoB3+Xvy4w@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: Allow PCI bus-level PM to be used if ASPM is
 disabled
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_020630_615679_A90DF9D7 
X-CRM114-Status: GOOD (  17.63  )
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
 Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Bjorn Helgaas <helgaas@kernel.org>, Keith Busch <kbusch@kernel.org>,
 Rajat Jain <rajatja@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 8, 2019 at 10:48 AM Christoph Hellwig <hch@lst.de> wrote:
>
> > -     ndev->last_ps = 0;
> >       ret = nvme_get_power_state(ctrl, &ndev->last_ps);
> > -     if (ret < 0)
> > +     if (ret < 0 || ndev->last_ps == U32_MAX)
>
> Is the intent of the magic U32_MAX check to see if the
> nvme_get_power_state failed at the nvme level?  In that case just
> checking for any non-zero return value from nvme_get_power_state might
> be the easier and more clear way to do it.

Now that I think of that, it appears redundant.  I'll drop it.

>
> > Index: linux-pm/drivers/pci/pcie/aspm.c
> > ===================================================================
> > --- linux-pm.orig/drivers/pci/pcie/aspm.c
> > +++ linux-pm/drivers/pci/pcie/aspm.c
>
> Shouldn't we split PCI vs nvme in two patches?

That can be done.

> > @@ -1170,6 +1170,26 @@ static int pcie_aspm_get_policy(char *bu
> >  module_param_call(policy, pcie_aspm_set_policy, pcie_aspm_get_policy,
> >       NULL, 0644);
> >
> > +/*
> > + * pcie_aspm_enabled - Return the mask of enabled ASPM link states.
> > + * @pci_device: Target device.
> > + */
> > +u32 pcie_aspm_enabled(struct pci_dev *pci_device)
>
> pcie_aspm_enabled sounds like it returns a boolean.  Shouldn't there be
> a mask or so in the name better documenting what it returns?

OK

> > +{
> > +     struct pci_dev *bridge = pci_upstream_bridge(pci_device);
> > +     u32 ret;
> > +
> > +     if (!bridge)
> > +             return 0;
> > +
> > +     mutex_lock(&aspm_lock);
> > +     ret = bridge->link_state ? bridge->link_state->aspm_enabled : 0;
> > +     mutex_unlock(&aspm_lock);
> > +
> > +     return ret;
> > +}
>
> I think this will need a EXPORT_SYMBOL_GPL thrown in so that modular
> nvme continues working.

Right, sorry.

> > +
> > +
> >  #ifdef CONFIG_PCIEASPM_DEBUG
>
> Nit: double blank line here.

Overlooked, will fix.

Thanks!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
