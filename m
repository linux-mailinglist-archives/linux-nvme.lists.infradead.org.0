Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A4FE220FC9
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 22:56:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wJCtEzR4JYiWC2W99gYQoQzcoez9fuyujR88q/KI/KM=; b=t5k+Fdlcywh9ul
	hMmzIFzj5ios/lhWhKnIy2pJz+rxtqZCWK7UNxdXn8rMSIyrXg92BoEJUvZtqGBnK3xACcl3jKjM7
	GiDQs+K1neZpPOQhzvuw3rTmsKsnIoOb5BjlNHWBs3y9rAmM1t4oGEY1mv1VC7RGHoVig76LG2Azf
	ENtvaJrDJTlAMrgEUJ3QMTMgII5pPp7wxKznZKZNS1bBxvv9JWSpUZYDyUHSzpeDgwMpnCHRA5DnH
	rjABnirnDnfE60LpnKz8qk3O7ARV9nCXeW6Ft51f5qFW2sUY/K69XwjhfyI0GMyL7so59c6KralaR
	XSk2/zHWXB0ducMoj+YQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRNQP-0004Ve-Mq; Thu, 16 May 2019 20:56:25 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRNQL-0004VL-Id
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 20:56:22 +0000
Received: by mail-ot1-f68.google.com with SMTP id i8so4728334oth.10
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 13:56:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=84wYF500hXyqHuKLkt58uTS4NZuOsQolStWYe1KQTlg=;
 b=f1Ej6pkoVs4T/1XGLpPqtlZSD2bUPT9RpqggzFrNyo38ciOGApWm6nHPzAwUg3jRRB
 hPc1esTakeHJzAY4lu1HnCu1j6jACYyKEmFaKJ58Eux1ReIXutUKoTReGG5r8ybD1WLG
 hGKNVV9Mtrhjr0bhYNZk2E/nSI3Mt6+stI80X0xhiN3wYkHRCKIa37EGvzPj8y9LOoO/
 19pMK2dbyirxfLJjOEjs32eI4ooRAYTcddgGH/PodLlimPpci+oe19q9hYEZWEn4lowH
 3QW2qgOrqFp3gIdB9OfkZBKo0pQvtMc8cBglgdVxyvnS2v736ngQ/gj9n96FCxoeC2cD
 wxdw==
X-Gm-Message-State: APjAAAVwLznpPmawB47BqN5Gk3vzlaXBtZjmdv4ysGYbyd+4jv3+bZdd
 dE4F8BQ7QSlhHAHChOqzJUdScDy0zJC+K4dY2XY=
X-Google-Smtp-Source: APXvYqxQa4CbY1HLOWFqIPgApZwD2nktZgp4omC+vEhaeYU3tE8gbnXlmH4Pj98DA+QJvPhjh405MrG5nESqM1i5KME=
X-Received: by 2002:a9d:6b98:: with SMTP id b24mr1787252otq.189.1558040179264; 
 Thu, 16 May 2019 13:56:19 -0700 (PDT)
MIME-Version: 1.0
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
 <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
 <20190516193822.GA23853@localhost.localdomain>
 <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
In-Reply-To: <20190516203950.GB23853@localhost.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 16 May 2019 22:56:07 +0200
Message-ID: <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_135621_616454_7014FF7B 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 10:45 PM Keith Busch <kbusch@kernel.org> wrote:
>
> On Thu, May 16, 2019 at 10:25:47PM +0200, Rafael J. Wysocki wrote:
> > On Thu, May 16, 2019 at 9:43 PM Keith Busch <kbusch@kernel.org> wrote:
> > > If we're going to replace our SIMPLE_DEV_PM_OPS as Rafael suggests,
> > > might as well add a .suspend_noirq callback. We can just save the
> > > state again to work around this too.
> >
> > Relax, pretty please.  Saving the state again shouldn't be necessary.
> >
> > Let's first understand what's going on.
>
> Hah, okay fair enough.
>
> FWIW, I've tried current mainline on two different platforms and I see
> only the expected number of calls to pci_pm_suspend_noirq, so everything
> works for me.

And I don't see why it might not work anywhere else other than a
kernel source hacked into pieces or a platform with fundamental
problems. :-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
