Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3008D6C438
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 03:30:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sqIWdAmh37dnuuN/XaSQEwVvT9Zgic31BTHSDoQqyjk=; b=gFEk87zvH0Rkbh
	CG7TBJbtZxuD5ja78zBuMH546Rn9qVLwUalbDkzJkLO71bLcGOp2FME2bPMgSjL3JhtdiX4deyfEZ
	sYOSfA+hWR/zMRmwIxE3qZ5GmGoG0YBjjlK59ka2p0Y0QuYixXb35uQUDaYyZf+jpN0htXEXj2blf
	fMyInuNAvivN5diutExVPZ0LRHAbyPVS5yR+5Vw+muMPc/L/lV33QBhaRfXfcnB3e/PAKqv8ifbpw
	gSm0kyEr8ya9D4Z5dRkdWcCxXkDoDXsBb+8yDCM0NI2JhCuynPUpEH1cdTcwnVmrXPMqlEJt5z5Ph
	W5TdQbN1NV6oZcKaxsWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvFL-00030m-FA; Thu, 18 Jul 2019 01:30:11 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvFC-0002QQ-Er
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 01:30:03 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6I1TwO8027916
 for <linux-nvme@lists.infradead.org>; Wed, 17 Jul 2019 20:29:59 -0500
Message-ID: <6e4b08daaa0482bd863b63cc5a85fa58ed871045.camel@kernel.crashing.org>
Subject: Re: Duplicate tag error with 5.2
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme <linux-nvme@lists.infradead.org>
Date: Thu, 18 Jul 2019 11:29:58 +1000
In-Reply-To: <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_183002_658894_695471CC 
X-CRM114-Status: GOOD (  11.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-07-18 at 11:13 +1000, Benjamin Herrenschmidt wrote:
> 
> Note: It seems to happen often during boot, when systemd starts all
> services... It looks like a service hangs for a few seconds (I see the
> systemd "waiting for service..." prompt show up for a bit, then the
> machine dies abruptly.
> 
> I have yet to find a way to reproduce this on a successfully booted
> system however. Once it's gone all the way, it's been stable so far, at
> least doing plenty of -j5 kernel compiles.
> 
> Trying various stressers now...
> 
> Also the tag number changes from occurrence to occurrence, no pattern.
> The IO queue depth is 129.

Allright, might have caught us red handed ... unless I'm missing a path
where we recycle IDs. So this is with 5.1.16. I've added printk's to
nvme_setup_cmd() and to nvme_process_cq() printing the command_id of
the commands we setup and the commands we find completions for.

Now, I dont' have a serial console or a working netconsole on that
thing, so I'm just copying the last few entries from a screenshot taken
with my phone camera...

 setup id 5
 setup id 37
 setup id 6
 setup id 4
 got id 37
 got id 6
 got id 4
 setup id 7
 setup id 5 <---- duplicate
 setup id 38
 got id 5 <--- probably completing the first one

At this point, we see a handful more setup id but no more interrupt nor
completion from the device, and it then abruptly kills the box.

Later, booting into MacOS, I retreived the log, and the duplicate tag
it's complaining about is ... guess what ? 5 !

Any idea what might be going on here ? Can we recycle tags via some
other path ?

Cheers,
Ben.
 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
