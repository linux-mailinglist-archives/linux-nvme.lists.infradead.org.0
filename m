Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 414FC194C9
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 23:40:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L29Pm4kIikbDAdxjV/AcfIKeGoi6U7XMmE90CXTSyK8=; b=WUrZ20ru6tBQ39
	qjFLN61bXc09/oAV4fEo4XW0oqP5twiN7kPjJG2HcJr4/DGIYux1/z/80Osb1s6sJg/fHtGwCZEe+
	G9/Q0JLjAgzJWMtIuKXOr1J3P9TOIlqLT1wfJYvRHf3BfFzOxj7denm5FCP83kl7Ruc4AgWIdI3fV
	4U6oQdh/BroErFwjkcYuwUoUCGGoFoXvWUfYrD6NQ27fRgQPRL+9IiQIa8ZOJ5j7eIQ4h2c4c66/D
	o/Mj3AH9gJ5v3yAWKy/DnYwbfuwlnjYEKkz+SwCPDatJQfWE4xgSOH5Q/3dhaS80Be68phLv3JEs2
	jz2/8FrfhGXiOSQd6t7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOqlu-000101-EA; Thu, 09 May 2019 21:40:10 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOqln-0000MM-I2
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 21:40:04 +0000
Received: by mail-oi1-f194.google.com with SMTP id 203so3037263oid.13
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 14:40:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rWqUG/1Q13/Mgi8WYJUSOwOl7Nvw/G1FqiVogS2PJUU=;
 b=BVr3j4tncY0L62Jo26/n5qhUInqyNqfks4YEKRpvHgc7MjYOqBwioh/cTamf92cQ/j
 na3ebhQNBjMrTdylbk7phyGuTlFi5XAH1j1mz2MMTjiLEGcY0LMj0PH5+mrj0zv+y9Zi
 Z1Db68oz2hZwVcHi7fvTGUjUAgmc8+cBA+yCsAU6Wo1gTEKQk4/O9YXn4JS4V5A5swns
 BTmIkycUtyMWXd8BavzTUqxsnIRP3bWc4ydTSCya+Smd0KWx3a4hnIRnJdlo7m1SHdMW
 M8ov/R9HBabeQ+SlMATM4sQEc+O/YOqdb2xV9EH19ANLp5roB0eeLd4uR0wIkg4KXBcf
 t7uA==
X-Gm-Message-State: APjAAAV8/FQkbiFegaDy+MWyNAO87NFI16yHpc4uOxL6+uxccBv6UTmX
 VBTvJ2jkisXSw8kKfwe3sfwX0mafMxJ6qf9wBCU=
X-Google-Smtp-Source: APXvYqyKl5SlkcDFgO5vnRTd1pL4AcZ5QulP6DrlxtnNmeZsn1LLArtlg5CH58bHUEjFNoX4LuDOC98A5i+IaWekgTQ=
X-Received: by 2002:aca:f4c3:: with SMTP id s186mr2791143oih.68.1557438002008; 
 Thu, 09 May 2019 14:40:02 -0700 (PDT)
MIME-Version: 1.0
References: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <CAJZ5v0ivyByegTMzqdvxqRM2kyjcWmg-LktuwpQJETjMCzGJiw@mail.gmail.com>
 <20190509211608.GC9675@localhost.localdomain>
In-Reply-To: <20190509211608.GC9675@localhost.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 9 May 2019 23:39:50 +0200
Message-ID: <CAJZ5v0geQV2Z4SdnisPKgEKJY0kypjgd9bRmwaYvf2pp0Rw4dg@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_144003_601818_20A7305E 
X-CRM114-Status: GOOD (  20.43  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Jens Axboe <axboe@fb.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 11:21 PM Keith Busch <kbusch@kernel.org> wrote:
>
> On Thu, May 09, 2019 at 10:54:04PM +0200, Rafael J. Wysocki wrote:
> > On Thu, May 9, 2019 at 9:33 PM Keith Busch <kbusch@kernel.org> wrote:
> > >  #include <linux/io-64-nonatomic-lo-hi.h>
> > > @@ -2851,6 +2852,8 @@ static int nvme_suspend(struct device *dev)
> > >         struct pci_dev *pdev = to_pci_dev(dev);
> > >         struct nvme_dev *ndev = pci_get_drvdata(pdev);
> > >
> > > +       if (!pm_suspend_via_firmware())
> > > +               return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);
> >
> > You probably want to call pci_save_state(pdev) in the branch above to
> > prevent pci_pm_suspend_noirq() from calling pci_prepare_to_sleep()
> > going forward, so I would write this routine as
> >
> > if (pm_suspend_via_firmware()) {
> >         nvme_dev_disable(ndev, true);
> >         return 0;
> > }
> >
> > pci_save_state(pdev)
> > return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);
>
> Ah, good point. I'll make sure that's added and will wait to see hear if
> there's any other feedback.
>
> I am trying to test the paths by faking out PS capabilities, and have
> a question on how to force each:
>
> Running "rtcwake -m freeze ...", that takes the !pm_suspend_via_firmware()
> path as I expected.
>
> But trying to test the original path, I thought using "-m mem" would
> have been a suspend via firmware, but that is still returning false.
>
> Is that expected?

Yes, if s2idle is the default on that platform.  You should be able to
switch over to S3 by writing "deep" into /sys/power/mem_sleep as long
as it is supported on that platform at all.

> I've only tried this on one platform so far, so might
> just be this particular one is missing a firmware capability.

You can check that by looking into /sys/power/mem_sleep (if there is
only "[s2idle]" in there, S3 is not supported).

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
