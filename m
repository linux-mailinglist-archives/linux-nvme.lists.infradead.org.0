Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A901EA8A
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 11:00:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ZDhm9UmKZWZlZsmcwQcNrzaF5nwrbY0OJQAd0S4OZ0=; b=hvqCNy/64e+VCv
	mjrRjbgKzDSOnJRHCAxCc5u7xJUBiD92t47TkDZBGIeVuI+cdB5hBmr/bxkCtAWtU3PBHVZgJxGtv
	fDUygWvrk/FfbBMGaNmOGfGYrxQXztKj57n251v0lA8OuGOgd6/ueCWs/6T4nyTYeYnwGTaGMssx2
	vgzrusZSZEXutL5nxZlGmrYVA1OzGncZyNMfDy0G9fm1G5uCaCb6ykRBa2HuvEPq3RVa75zGl9adh
	7s6/T4CU+UcQpquO90f6B82wWwsmMgXjoWO97+deIDn4NuYxtUCxziYTn+O+kOmCBnsMqOTpId2I7
	JqlTn6R9s/MgBpXVXVMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQplr-0000Pi-19; Wed, 15 May 2019 09:00:19 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQpll-0000PG-Sv
 for linux-nvme@lists.infradead.org; Wed, 15 May 2019 09:00:15 +0000
Received: by mail-oi1-f195.google.com with SMTP id a132so1278156oib.2
 for <linux-nvme@lists.infradead.org>; Wed, 15 May 2019 02:00:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=lrqj6jKrkXcRwqIiYwyrhsIxd6bZvvZrh2+SSoZ20J0=;
 b=sv1jYqk78xmTIMBB05lcVlAcPpncJVhyHeKvYAwKTusO0knLRXTLV5xBboL+qfSGE5
 0EbznV7pjOAhbyi6ntVoBOvuLq2jIlXlgJifj7/YJD7vxnViDrHex52+mqsbrf6WPNnW
 UJhcQGFWDX2niExTL+YmdnEZekrPFwtM4dMLLRUfi2gGsCS5uJSwm+Idqg7nKdkLt+zm
 DugC5abZAP5DqZ1rkhd16Q47AawEshmm6gz9lT1t4VYNg+YoNhvoyeTFHDOW283eG/Y9
 jFYybKDR1iVzR0sV25Zy47xbBQEuk3ulQ+uis0IfHyVpHpw6LjJ/7ky7PNpVLcT2K1xC
 nD4Q==
X-Gm-Message-State: APjAAAWidobuSkWbAsYCq2AuO2cjyrkqKP+O1bKMGpJDFHR1TyYvHigt
 E9CVov5YhqWx6+0CBn1fu1yRey8UiU8Q+SysM+Q=
X-Google-Smtp-Source: APXvYqwHaBsNdrxgMt9H08QfD06eGXj4HaMnSdWMvb9W72y+vEGR3kUnlh0NIou/5pP1CEOGRrXrlsI/Ydn/lftSsq8=
X-Received: by 2002:aca:f4c3:: with SMTP id s186mr5432131oih.68.1557910812335; 
 Wed, 15 May 2019 02:00:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143741.GA25500@lst.de>
 <b12ff66f8c224e4199ff1b90ed6bc393@AUSX13MPC105.AMER.DELL.COM>
 <20190513145522.GA15421@localhost.localdomain>
 <d69ff7154191492eaa8f55535a7effa5@AUSX13MPC105.AMER.DELL.COM>
 <20190513150458.GA15437@localhost.localdomain>
 <CAJZ5v0g3cCYK3rAQn09pCr7LMrRr=zQy_ceaEB5AKhVx604YgA@mail.gmail.com>
 <20190514221609.GC19977@localhost.localdomain>
In-Reply-To: <20190514221609.GC19977@localhost.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Wed, 15 May 2019 11:00:01 +0200
Message-ID: <CAJZ5v0hrzV+cz+112sfgJ1eNznuf5oLH+kpFwhQb5VA05EAS2g@mail.gmail.com>
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_020013_955831_DE5BD1D5 
X-CRM114-Status: GOOD (  32.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
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
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 15, 2019 at 12:21 AM Keith Busch <kbusch@kernel.org> wrote:
>
> On Tue, May 14, 2019 at 10:04:22AM +0200, Rafael J. Wysocki wrote:
> > On Mon, May 13, 2019 at 5:10 PM Keith Busch <kbusch@kernel.org> wrote:
> > >
> > > On Mon, May 13, 2019 at 03:05:42PM +0000, Mario.Limonciello@dell.com wrote:
> > > > This system power state - suspend to idle is going to freeze threads.
> > > > But we're talking a multi threaded kernel.  Can't there be a timing problem going
> > > > on then too?  With a disk flush being active in one task and the other task trying
> > > > to put the disk into the deepest power state.  If you don't freeze the queues how
> > > > can you guarantee that didn't happen?
> > >
> > > But if an active data flush task is running, then we're not idle and
> > > shouldn't go to low power.
> >
> > To be entirely precise, system suspend prevents user space from
> > running while it is in progress.  It doesn't do that to kernel
> > threads, at least not by default, though, so if there is a kernel
> > thread flushing the data, it needs to be stopped or suspended somehow
> > directly in the system suspend path.  [And yes, system suspend (or
> > hibernation) may take place at any time so long as all user space can
> > be prevented from running then (by means of the tasks freezer).]
> >
> > However, freezing the queues from a driver ->suspend callback doesn't
> > help in general and the reason why is hibernation.  Roughly speaking,
> > hibernation works in two steps, the first of which creates a snapshot
> > image of system memory and the second one writes that image to
> > persistent storage.  Devices are resumed between the two steps in
> > order to make it possible to do the write, but that would unfreeze the
> > queues and let the data flusher run.  If it runs, it may cause the
> > memory snapshot image that has just been created to become outdated
> > and restoring the system memory contents from that image going forward
> > may cause corruption to occur.
> >
> > Thus freezing the queues from a driver ->suspend callback should not
> > be relied on for correctness if the same callback is used for system
> > suspend and hibernation, which is the case here.  If doing that
> > prevents the system from crashing, it is critical to find out why IMO,
> > as that may very well indicate a broader issue, not necessarily in the
> > driver itself.
> >
> > But note that even if the device turns out to behave oddly, it still
> > needs to be handled, unless it may be prevented from shipping to users
> > in that shape.  If it ships, users will face the odd behavior anyway.
>
> Thanks for all the information. I'll take another shot at this, should
> have it posted tomorrow.
>
> It's mostly not a problem to ensure enqueued and dispatched requests are
> completed before returning from our suspend callback. I originally had
> that behavior and backed it out when I thought it wasn't necessary. So
> I'll reintroduce that. I'm not sure yet how we may handle kernel tasks
> that are about to read/write pages, but haven't yet enqueued their
> requests.

That is a hard problem in general.

Currently, there are two ways to prevent a kernel thread from running
across hibernation.  One of them is to freeze it with the help of the
tasks freezer, but that isn't nice.  The second one would be to
register a PM notifier with register_pm_notifier() and then stop the
thread on the PM_HIBERNATION_PREPARE events (and restart it on the
PM_POST_HIBERNATION and PM_POST_RESTORE events).  The drawback here
is, though, that PM_HIBERNATION_PREPARE is signaled before freezing
user space which may produce some deadlock scenarios in principle if
anything in user space may be blocked waiting for the stopped kernel
thread.

It may be necessary to add PM_HIBERNATION/SUSPEND_POSTFREEZE and
_PRETHAW events to the PM notifier for that, which will be signaled
after running the tasks freezer and before unfreezing tasks,
respectively.  Or something else to that effect.

If you need something like that, please let me know and I will prepare
a core patch to add it.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
