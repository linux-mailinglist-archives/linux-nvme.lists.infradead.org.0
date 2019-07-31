Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 45AA77D138
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 00:33:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7lCk345f/aLapDQ+7zuQYkjpFiUi0HhkYjyFgUJ4gbU=; b=OUCriiT01HwW6B
	IYBZjSoaoMESvgjUKIZL3z1qVJgJzddLoc7vfSYbL8UWpzj02IuEu0z2WYxAhGq0SQxtl9fmUBcC9
	de5fGgN/Gxk2tL/YafhBuZ1LoQt9jv0/2mPtqeyieDzfNoSfIj0t+Nypnsg7nWGVCHktyWYMjNNQl
	P284gIXfIizvQrE75PjEGHYOYVhYN7afhemg+pZm2a3dRWkU+FcNC3f8QzcTY+KT3NxhjpSZqPmGb
	i/YmZkBd6mxb6kD/klkWXYLgn2c6eqDnFO7sh+u5disMl2UpZ4e4ZhN4HN9Bu2G6wKZHOJmc+gk+s
	2viWqKmiNMFC1IoKvEsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsxAB-0000Bb-0W; Wed, 31 Jul 2019 22:33:39 +0000
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsxA6-0000Ah-0P
 for linux-nvme@lists.infradead.org; Wed, 31 Jul 2019 22:33:35 +0000
Received: by mail-oi1-f194.google.com with SMTP id m202so52039275oig.6
 for <linux-nvme@lists.infradead.org>; Wed, 31 Jul 2019 15:33:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=VaXwfXqQ6zKWmX/DQNzZhY9vhSL25uLPNg24lm+Z3A8=;
 b=QpetznkNR/O0kCS42eqJZkewVf1Z1Nt+cuaxCXN/oVeNLUoQkVEy8RDv7bGVgbjd+1
 z2W1M4NhxkEn+FThWfAmk4XpC9pX9vAo2+G/4gT6TsWjCg9ouZf9hj1v+jKRPYBCKdNJ
 VOIqtxZ6PKyt77hSTAaM/6yBldD7k9wwgnLWkYZyTLlbEwZ6jfYC9IL0feEcwv2i0zUd
 dXHD1vi8Gq1hPN3Dl4yyCF93e1WZBgneIyuYpmukR0jSjPQLB0nva57ECo8URxMFHJjz
 StYxk+GaktyRJsRXJWR1TXz95v+zKfP1tINGvaJgDrNuJ9i3JrkZXrgz/HIDRFuXWfLo
 5wXQ==
X-Gm-Message-State: APjAAAXWHM3l0iEj/MRk2/OP39q0gwMFN5GXuN8D9HJO3CaSyXHB5kNN
 PbhoIDG8+eTLmaxcH2VqfkVyLOmzIhagrrs1K3A=
X-Google-Smtp-Source: APXvYqy8K7rZdrHVIEm+dsJBeW1kcKphsprmEu9CobF2YPMA7ZXivzELY8vw8GCI9RouGZeDmDxamMQKdzwozZVARMY=
X-Received: by 2002:aca:5a41:: with SMTP id o62mr60704040oib.110.1564612412985; 
 Wed, 31 Jul 2019 15:33:32 -0700 (PDT)
MIME-Version: 1.0
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher> <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
 <20190730213114.GK13948@localhost.localdomain>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain>
In-Reply-To: <20190731221956.GB15795@localhost.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 1 Aug 2019 00:33:20 +0200
Message-ID: <CAJZ5v0hxYGBXau39sb80MQ8jbZZCzH0JU2DYZvn9JOtYT2+30g@mail.gmail.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_153334_054523_2A089D27 
X-CRM114-Status: GOOD (  16.19  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 1, 2019 at 12:22 AM Keith Busch <kbusch@kernel.org> wrote:
>
> On Wed, Jul 31, 2019 at 11:25:51PM +0200, Rafael J. Wysocki wrote:
> >
> > A couple of remarks if you will.
> >
> > First, we don't know which case is the majority at this point.  For
> > now, there is one example of each, but it may very well turn out that
> > the SK Hynix BC501 above needs to be quirked.
> >
> > Second, the reference here really is 5.2, so if there are any systems
> > that are not better off with 5.3-rc than they were with 5.2, well, we
> > have not made progress.  However, if there are systems that are worse
> > off with 5.3, that's bad.  In the face of the latest findings the only
> > way to avoid that is to be backwards compatible with 5.2 and that's
> > where my patch is going.  That cannot be achieved by quirking all
> > cases that are reported as "bad", because there still may be
> > unreported ones.
>
> I have to agree. I think your proposal may allow PCI D3cold,

Yes, it may.

> In which case we do need to reintroduce the HMB handling.

Right.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
