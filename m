Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83CD71FA505
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 02:23:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DrvfEh+asW0dIxKw2QCwAOeXBFE0RIdv7RgOI7gFxBo=; b=odTgsIWKtKbbPQ
	Qv/n6vHakO1GHOEkqbDqMWWR2tRRvaNDguddfsmrqZIrq2J2n9ooV+8l/VMJU5LqvZz2YFYXids4+
	SuKrNzQL/pLNRhvGi5s5xfpDWrANfluv0Rv5cEgk9vqoVdsD9yrqndcdr6SNEPEJ5bGJyEim85mXr
	MdpnKK5i36p8rl6MnNQN3e+lnRNzYGk9aO/aXe1r0zocOJ5kjOz9r0Pu7dkPf+OuGcH7VJw3RUZXx
	k+lqX7AolSQNn4F1l3BdFKa0ZRszhb1bQ/GhKRUhn+rmW3mKjcMFYhUHDhf/dx1lY9m7vvsiI10O4
	n0uyZKgNz7uxtk1Mpdcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkzNi-0001XJ-1F; Tue, 16 Jun 2020 00:23:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkzNd-0001Wh-8l
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 00:23:10 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED85B206DB;
 Tue, 16 Jun 2020 00:23:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592266988;
 bh=x4XbOR8pMjazCjZM6zR0zLswPWVCFJKMdigE3w/Q5U8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=LOohzSy+FNV/FjACeZvhlLxu0NHJgPGJm7zOv7Aq9sLD/SJVzP7zk0Gtzd/tbXkxZ
 fB1QsOn/419YJ2SwzCHIKs4uxWuANORf4C6glT0QP7l+FstEv9DDn4JZiQoAYVAIMD
 6qIkYb/7a3pfbLb+qaOv6bXPmXtLLnmDrBHeNK6Y=
Date: Mon, 15 Jun 2020 17:23:06 -0700
From: Keith Busch <kbusch@kernel.org>
To: Chris Walker <christopher.walker@gmail.com>
Subject: Re: [PATCH] nvme: Quirk for Samsung PM1733 controllers
Message-ID: <20200616002306.GB520528@dhcp-10-100-145-180.wdl.wdc.com>
References: <1592262742-103431-1-git-send-email-christopher.walker@gmail.com>
 <20200615234208.GA520528@dhcp-10-100-145-180.wdl.wdc.com>
 <CAFD1iUqfki3O9HibUiy4hiYYwp-MEN+3ZogYfe8MUgdd2YZEqA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAFD1iUqfki3O9HibUiy4hiYYwp-MEN+3ZogYfe8MUgdd2YZEqA@mail.gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_172309_329749_194AA683 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 15, 2020 at 07:53:02PM -0400, Chris Walker wrote:
> On Mon, Jun 15, 2020 at 7:42 PM Keith Busch <kbusch@kernel.org> wrote:
> 
> > On Mon, Jun 15, 2020 at 05:12:22PM -0600, christopher.walker@gmail.com
> > wrote:
> > > From: Christopher Walker <christopher.walker@gmail.com>
> > >
> > > Accommodate the drive-ready times of Samsung 1733 controllers, which
> > > range from 2s for the 2TB model up to 4s for the 16TB model.
> >
> > Wait, why is this necessary? We poll on the drive to tell us it's ready.
> > What is the hard-coded delay table doing here?
> >
> > The original "delay" quirk was introduced to work-around a dodgy
> > controller that would break if MMIO happened too soon after toggling
> > CC.EN. This patch doesn't sound like that, so what exactly is it working
> > around?
> >
> 
> I was extrapolating from the quirk added for the 1725 series since the
> symptom here is the same  ... without this delay, on hot plug we
> consistently see:
> ...
> Jun 13 17:51:42 s-lmo-gaz25a kernel: blk_update_request: critical target
> error, dev nvme2n1, sector 0 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
> Jun 13 17:51:42 s-lmo-gaz25a kernel: Buffer I/O error on dev nvme2n1,
> logical block 0, async page read
> Jun 13 17:51:42 s-lmo-gaz25a kernel: blk_update_request: critical target
> error, dev nvme2n1, sector 0 op 0x0:(READ) flags 0x0 phys_seg 1 prio class 0
> Jun 13 17:51:42 s-lmo-gaz25a kernel: Buffer I/O error on dev nvme2n1,
> logical block 0, async page read
> Jun 13 17:51:42 s-lmo-gaz25a kernel: nvme2n1: unable to read partition
> table
> 
> and no partition /dev devices are present.

Okay, so it's one of those types of nvme controllers that report "ready"
then only return "not ready" error status for an arbitrary amount of
time. The technical committee is considering how to get rid of this
arbitrary wait, either with existing mechanisms or something new. We'll
have to wait to see how they decide.

In the meantime for drives behaving like this, the quirk delay should
have come *after* nvme_wait_ready() rather than before since namespace
readiness happens after controller ready. The currently existing quirks
appear to be wrongly applied to most of the controllers using them.
AFAIK, only one controller ever existed that actually needs the delay
before wait_ready().

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
