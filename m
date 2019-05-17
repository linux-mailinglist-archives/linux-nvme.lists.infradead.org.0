Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AD02216F8
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 12:34:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OLhToqJi+AZCxT3NNWgLc6nHoJG2Hwju1o9W5AUtlNU=; b=FmpPnMN0Rt85Xw
	LPYTe7Hw0mg2wNrWvstEA/A87krbC2qUdQoIdxepTTKc4NPdotrJP1S3KmelrFjeKGql4yNJQDsUZ
	KPBc3BCASMII8m7voWHkLcz4NSMLyt1U9hWIZy6hjgrYtdr2/HLYxGJQUvoTlKz06gm0ls4RjVtXz
	oOnNFy0Pi7y6zZl+P5EGFLPB9MvBJoRPpY6vVAvYsclMrq1daep9Md04vkVxD8RG8amWN/VQsJ/fq
	3LcQCMDMmteo3PkBtRJVWgyusUU1ghQo2UBevf9h9fQwglGN28SwuN+fEZ+L7y5GCeJbBSJqCxsp3
	8G48tDnIxeoMcaq3SSSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRaCD-0000r2-7C; Fri, 17 May 2019 10:34:37 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRaC8-0000qh-HR
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 10:34:33 +0000
Received: by mail-oi1-f195.google.com with SMTP id v2so4797073oie.6
 for <linux-nvme@lists.infradead.org>; Fri, 17 May 2019 03:34:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=jTw0a/NAaxlD+t+uxO4dto5QlYuVjfg5AR7uC8zjFEA=;
 b=XrDlbEgkXOdJ9oQueEpNJrvLtNkzHH/Db8NHJTHXVvyWn0f0VBEhpECfxiHM0Ld6Eg
 uKx3hnkXogYtlZfvPSwUO9Wnud0x8i8O45DQhutPvAFQcJwCub9ewCswzlD0jdryJ7e0
 u2gl8HLRLaYYrThq8l/FfVJ8TwNSFaQJppNKln4WnFxAVzvm9mJpzrFYrA5amJ1jYBAY
 u/aQzYGlWEcvjvzmM+zf4bMLb22Ntarj0hLGHelboDKlrhLNsFcmDyHFjFQHFXidOF38
 rYAQK11BaeZErwZr1IhN6babq4Uav1fvageTB5a8jpXRXqE7jR7AwY6MVE6pmFBYMXKl
 u1Hg==
X-Gm-Message-State: APjAAAWwo1Fuk4N9HSMRaJnrirr8LlUn9VdwmeRcaVuLNbFGAGDPSEqJ
 5qtzP5mKRbMELHsmQG52CY/5QEr8cU234WNkETA=
X-Google-Smtp-Source: APXvYqwnzkIcJWaNrKMenuerGUa6hc/rWB75R9tjZIuBg1jaezsEzEBKz1xvYJzS1Oya21JfIPGJ+pFJdDHqgArsCz4=
X-Received: by 2002:aca:f444:: with SMTP id s65mr13502882oih.115.1558089271494; 
 Fri, 17 May 2019 03:34:31 -0700 (PDT)
MIME-Version: 1.0
References: <20190516142657.GD23333@localhost.localdomain>
 <70235CA3-0FBB-4A06-996F-647A0D95C6D0@canonical.com>
 <64e8e0252a4042b99dd3d0def15b1780@AUSX13MPC105.AMER.DELL.COM>
 <20190516193822.GA23853@localhost.localdomain>
 <CAJZ5v0gBQVjy70CbA6CzkkjsGQYGeO6fDjJimvadM5_oq=3qeA@mail.gmail.com>
 <20190516203950.GB23853@localhost.localdomain>
 <CAJZ5v0hZSiQuuq2+P+uLd3uE=ruuTW+5DmAdjqcr39=7poUe-g@mail.gmail.com>
 <CAJZ5v0j0V10BYrME=KU1AJXGDMRUFFHiZEHQnsXhNJGPZKBSUw@mail.gmail.com>
 <20190517090521.GA15509@lst.de>
 <CAJZ5v0iL+ERE4Yy5yO8U2no194sRkvqNZHh5HsZXKvvHbxtk+g@mail.gmail.com>
 <20190517093516.GA17006@lst.de>
In-Reply-To: <20190517093516.GA17006@lst.de>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Fri, 17 May 2019 12:34:19 +0200
Message-ID: <CAJZ5v0gLqL7GUjwz5F8=9Fc-W2n3FRzbbB2L8udaXgN4Vsd8-Q@mail.gmail.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_033432_572661_95F992A4 
X-CRM114-Status: GOOD (  12.94  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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

On Fri, May 17, 2019 at 11:35 AM Christoph Hellwig <hch@lst.de> wrote:
>
> On Fri, May 17, 2019 at 11:17:52AM +0200, Rafael J. Wysocki wrote:
> > AFAICS, using DMA while creating a hibernation snapshot image of
> > memory would not be a good idea, so the host memory buffer should be
> > disabled during the "freeze" stage or hibernation (and it can be
> > re-enabled when that stage is complete).
>
> Once we'd disable the HMB the harm is done, so no point in re-enabling it.

But after the "freeze" stage the image may need to be written to the
device, so I guess it would be useful to enable the HMB for that?

> What would this mean in terms of ops?  Only disable in freeze_noirq?

It can be disabled in any of the "freeze" callbacks (freeze,
freeze_late, freeze_irq) where it makes most sense.  I also would
re-enable it in the complementary "thaw" one, in case the device will
be used to store the image.

> Or stick to the simple ops and find another helper that indicates we are doing a hibernation?

There are no helpers for that, it needs to be done manually, sort of.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
