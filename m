Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8600A6CA12
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 09:40:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=abgPXKCW28DpIemmZ9UDFWNLxRadKYxyY6XsbEZv9tg=; b=sMFZ56O+XrtD6j
	iKYS7jNcHmh/B8twUiowQMBRi4YRYBBSiYOqyh58u+59uIl3zW6m+4rNpwGObagd3Yrsbvq+ybjA/
	aLYuyEi7YVUpI3lZMitWeKmP3lF5mK4rYGo+5OLOze9UXGIRI9Z7cmSB+rKXbg7M0gz38ILcnF75Y
	W/Fb6V2bjDkxOvUFnEhjvbDrn+JplGTdZwtuDG3J+myhdPaXexhWqNIhvrrTDyms0PSseOHUrHP+z
	S9x4FOR3p9CoS4/fB127phA90+TtY+2dfBHW0mkp1sqS1SH8nfbUHqGlBeSSE5RXGfQGTm6+Rqxp6
	T9R9txquCxzA3T4Dolfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ho11R-0008Es-Dj; Thu, 18 Jul 2019 07:40:14 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ho118-0008EA-QJ
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 07:39:56 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6I7do1E010086;
 Thu, 18 Jul 2019 02:39:51 -0500
Message-ID: <c7235187d44618bc6636da0968c8037aebf50742.camel@kernel.crashing.org>
Subject: Re: Duplicate tag error with 5.2
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Damien Le Moal <Damien.LeMoal@wdc.com>, Keith Busch <keith.busch@gmail.com>
Date: Thu, 18 Jul 2019 17:39:50 +1000
In-Reply-To: <BYAPR04MB58169C5A4EF8DFB10C5C2148E7C80@BYAPR04MB5816.namprd04.prod.outlook.com>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
 <CAOSXXT6Z=zEpWqac2k1ydk2LynAEtFr-4jXJVCtTa5yn8H7f3Q@mail.gmail.com>
 <ee8eb3c8855942eb22391dd6137f3b969abce303.camel@kernel.crashing.org>
 <f5de042adc383df7cb040859f13ce92412977467.camel@kernel.crashing.org>
 <8936e370b7ae272c8810780ee26ae3cebc8525b9.camel@kernel.crashing.org>
 <BYAPR04MB58169C5A4EF8DFB10C5C2148E7C80@BYAPR04MB5816.namprd04.prod.outlook.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_003954_997224_B74C30CD 
X-CRM114-Status: GOOD (  15.82  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-07-18 at 07:13 +0000, Damien Le Moal wrote:
> > I can trigger the problem easily now running smartctl -c /dev/nvme0n1
> > and doing a bit of IOs. It seems to happen when the IO and Admin queue
> > use the same tag.
> 
> So isn't it that you are getting a completion cqe for an admin queue command in
> an IO completion queue ? Or the reverse ? Given how weird this NVMe device seems
> to be, it may be a possibility. In addition to the command ID (tag), if you
> print the cqe queue ID (le16_to_cpu(cqe->sq_id)), what do you see ?

Ah I can add code to validate that it's coming into the right queue,
good idea.

> > I verified after the crash, going to MacOS and getting the log from the
> > T2 chip, that the tag it complains about *is* the one that we happened
> > to have used accross both queues at the point where it dies.
> > 
> > Now, I am not that familiar with the tag management/allocation code,
> > how hard would it be to split the tags accross the queues ? I suppose I
> > could easily add a quirk to do +32 to the tags used on the IO queue...
> 
> The admin queue has its own tagset (nvme_dev->admin_tagset), separate from IO
> queues (nvme_dev->tagset). So I do not see how this would solve the problem.

I can easily do that by offsetting command_id locally to pci.c but
doing just that didn't completely fix it. It just made it much harder
to hit. I suspect they might also not like tags > 128, so I've added a
hack to clamp the IO queue depth to 64 as well, it's still running,
I'll let it run overnight (smartctl in a loop + dd's)

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
