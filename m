Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0963F21621
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 11:18:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgPCWvcEwMHXTr9rGQmrfD8vLRfDjwIDvzYq866/7BE=; b=RyyBKw4E12MKwS
	xObezN/O0DWVen5H19MiwdV9S9McivlUen2TYkdXOjJ6gtwVsX86C1+7RzxOnhU3i4F85lENdIHaa
	oV1rBviLWiqBPomRq4RXoMrhIvIvLY6flVM7FapaTT0mUuFd/TLrPdORuCwqlMqw7zjJlz3vTODl8
	6Ym2fowidUi4q3BNUAgFf/GETM84UmoQalsez65mgpPSWzSvWOyIp9Z+heUMtJt0D52kcLHEMWtnX
	jf3+A2egeN6LZH/IMaUxOaaBJBFoXeUPHEhM1ilpa4KzQGdtKvYVRgD/iYUkZ4vPxeh8JYooc+VHn
	T4Q7401qggXM1gQIr/UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRZ0E-0005l5-HB; Fri, 17 May 2019 09:18:10 +0000
Received: from mail-oi1-f180.google.com ([209.85.167.180])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRZ08-0005jm-1N
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 09:18:05 +0000
Received: by mail-oi1-f180.google.com with SMTP id u199so4660404oie.5
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 02:18:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EsQIFGnEF8GVKyUFfBGQp+VJPR6qRYhzsJ2HH7I05O8=;
 b=exkiUrrKeFncHMdpTTu3DsdY35kFimIZ/rE0HakWr/ZVUAr6ioZIlzZ2AOpyZxsLDp
 CQwYRywyW0O8RG0+z+dVOxfryTUNftvrN7c5nRtGyC+GJ0SEpY0FtZdFoXsTY95ti/jy
 pY0dy0g7S5/CwRCWM33sKwX1pdSppeP8GkhJC6H+H+MnQZZKHQs4zNKx0TDtP9i0bZeb
 kTCsasvBdwdrBkzUjY2vvYiyovTCJ3VDjVRpW6QrMHkppGPsnfqemvSUTXWLEzhdkUx/
 cTezRtbmDEOoCY2GOAqgObM3OUY4UL9Zh9m1Wm90qrZNuSU8R16Hm1a2x5CbfmfLCiMY
 3BLQ==
X-Gm-Message-State: APjAAAX8LxWgeAL4UZuw8Xmjbn+5GM7hDDd2HjVTkGvgRj/liIsT4KxY
 S0Y3mf4dGZL5MGqm0gNN8b2qPTFY0bjF3nibmpw=
X-Google-Smtp-Source: APXvYqxJjoGkqlPyeNip+l9XeDKE6mZ42eN5TNb7kCbsn+6A22uS5p2LQOrpWqWJ74rSQxduhtFfjMX/scDVpC511g8=
X-Received: by 2002:aca:f444:: with SMTP id s65mr13324775oih.115.1558084682999; 
 Fri, 17 May 2019 02:18:02 -0700 (PDT)
MIME-Version: 1.0
References: <20190515163625.21776-6-keith.busch@intel.com>
 <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
 <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
 <20190516193822.GA23853@localhost.localdomain>
 <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
 <20190517090521.GA15509@lst.de>
In-Reply-To: <20190517090521.GA15509@lst.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 17 May 2019 11:17:52 +0200
Message-ID: <CAJZ5v0iL+ERE4Yy5yO8U2no194sRkvqNZHh5HsZXKvvHbxtk+g@mail.gmail.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_021804_082622_F48B716A 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.180 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 17, 2019 at 11:05 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Fri, May 17, 2019 at 10:39:19AM +0200, Rafael J. Wysocki wrote:
> > I forgot about one thing which is relevant here, sorry about that.
>
> While we got your attention, let me repeat two questions / requests
> that seem to have got lost:
>
>  (1) in what system power states are the devices not allowed to
>      every use DMA to access host memory?  Disabling the host memory
>      buffer for NVMe devices can be somewhat expensive, so we'd prefer
>      to only do that if we really have to

AFAICS, using DMA while creating a hibernation snapshot image of
memory would not be a good idea, so the host memory buffer should be
disabled during the "freeze" stage or hibernation (and it can be
re-enabled when that stage is complete).

Other than this I don't see hard reasons for disabling DMA transfers
unless that it a prerequisite for putting the device into D3.

>  (2) can we get some good kerneldoc comments for
>      pm_suspend_via_firmware and pm_suspend_via_s2idle explaining
>      when exactly they will return true, and how a driver can make
>      use of these facts?

I suppose so. :-)

That's in my list of things to do in fact.

>  Right now these appear a little too much black magic to be useful

Fair enough.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
