Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D23382AED
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 07:26:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wn3qIagkL20tx9Yzd69aYRvQ5xQ/huI1ftfH/WD1jto=; b=dyHdzfjHScNUUt
	AGFbecRdMpHvPQMc+XjwnUDRpq0df61y4vmV8vGNLLOl7+dWq4knhsFv/jkJ3vzU04zPwiBlY4b8T
	+4BByo67wSn5yXaIQz68g9OxZrawJYVpvplL8B8gk1c1TiHK4+0zoAI52JW9ENl/tkkgtL23qw1Pk
	iijCZa7thMtiU4TYk3cwovDZtbXDOj7RqhaEs28Y1Ejemcn0m1sYVi3/mrjc1oL/4gf2RccSzaijP
	AbmBETZr6e+pbRDHDPpv1n/pYH0QG+f04VXDh1+tv743V9FoWw9JQ/iTCish+FotpTiimQSPtSH4p
	AUOgt4IJebyCdlAKV/IA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurzS-0006r6-MM; Tue, 06 Aug 2019 05:26:30 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurzM-0006qn-N5
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 05:26:26 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x765Q3Pp016845;
 Tue, 6 Aug 2019 00:26:04 -0500
Message-ID: <590ea33755f29ffd8549a4681b9ad9f041fc506a.camel@kernel.crashing.org>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for
 Apple 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Sagi Grimberg <sagi@grimberg.me>, Keith Busch <keith.busch@intel.com>
Date: Tue, 06 Aug 2019 15:26:03 +1000
In-Reply-To: <40a6acc2-beae-3e36-ca20-af5801038a1e@grimberg.me>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
 <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
 <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
 <20190805134907.GC18647@localhost.localdomain>
 <40a6acc2-beae-3e36-ca20-af5801038a1e@grimberg.me>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_222624_904653_45EF8AF2 
X-CRM114-Status: GOOD (  16.80  )
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Paul Pawlowski <paul@mrarm.io>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2019-08-05 at 11:27 -0700, Sagi Grimberg wrote:
> > > Ping ? I had another look today and I don't feel like mucking
> > > around
> > > with all the AQ size logic, AEN magic tag etc... just for that
> > > sake of
> > > that Apple gunk. I'm happy to have it give up IO tags, it doesn't
> > > seem
> > > to make much of a difference in practice anyway.
> > > 
> > > But if you feel strongly about it, then I'll implement the
> > > "proper" way
> > > sometimes this week, adding a way to shrink the AQ down to
> > > something
> > > like 3 (one admin request, one async event (AEN), and the empty
> > > slot)
> > > by making a bunch of the constants involved variables instead.
> > 
> > I don't feel too strongly about it. I think your patch is fine, so
> > 
> > Acked-by: Keith Busch <keith.busch@intel.com>
> 
> Should we pick this up for 5.3-rc?

Well, if you are talking about just this patch, it's not needed unless
you also merge the rest of the Apple T2 support patches, which some
people I'm sure would like but I think Christoph is a bit cold feet
about (I don't care either way).

If you are talking about the whole series, give me a day or two to
respin with the added check that Keith requested (I believe his ack is
for a respin with the check so setting the IO queue too small doesn't
kill the driver).

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
