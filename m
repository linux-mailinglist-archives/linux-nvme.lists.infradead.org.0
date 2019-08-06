Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57C6582AF4
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 07:27:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1ZsqcDfuKv71TrguDMb8rMN2OFPOnwIO3i9AkaGcqqA=; b=SX4Ucg41kMGHlk
	2wYTGaJ2iGzdlVYBxvgsh1e+PA6ceug0bVUnS0yzZFIzwuvD3LHeeJWWh0VWjyGIQDvgupThYHUmL
	d2/hF4mFTf0GoZVdF1NGVVUISeo1KFvUqPJARZJsnxmR0r0MDJxwhzx5qIgYs1lrg8MKDYEqDNWW/
	oF8xntjxjlACjmh8CFf1gC7ZhbU9KDSN56JLvPEFKC8vmRVCtCfM9OcMeB6Dkt4JQb/NDU1L8sOIG
	JH6ffdnFoP6b+QV+Bd4Ap9p1M0zf73txwcxjlmy6FG7YOCe+2/gzNH4ZZBg8u6Huh30EMg3/+Hym4
	PWszgTUx29zHklk3vLsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hus00-00078r-86; Tue, 06 Aug 2019 05:27:04 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurzs-00078V-RI
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 05:26:58 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x765Qc1C016879;
 Tue, 6 Aug 2019 00:26:39 -0500
Message-ID: <eda217b2572c94a1811ef8a1a0fe214a502b942e.camel@kernel.crashing.org>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for
 Apple 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Sagi Grimberg <sagi@grimberg.me>, Jens Axboe <axboe@fb.com>, Keith Busch
 <keith.busch@intel.com>
Date: Tue, 06 Aug 2019 15:26:38 +1000
In-Reply-To: <de65f6f8-afb5-ce54-eb8a-b04b2e59628b@grimberg.me>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
 <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
 <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
 <20190805134907.GC18647@localhost.localdomain>
 <40a6acc2-beae-3e36-ca20-af5801038a1e@grimberg.me>
 <caa04d02-05a0-dd1f-2072-df41a21f2aa8@fb.com>
 <f34af208-2707-f326-0451-354a8b482586@grimberg.me>
 <de65f6f8-afb5-ce54-eb8a-b04b2e59628b@grimberg.me>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_222657_031293_62716D6E 
X-CRM114-Status: GOOD (  17.27  )
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Paul Pawlowski <paul@mrarm.io>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2019-08-05 at 13:07 -0700, Sagi Grimberg wrote:
> > > > > > Ping ? I had another look today and I don't feel like mucking around
> > > > > > with all the AQ size logic, AEN magic tag etc... just for that sake of
> > > > > > that Apple gunk. I'm happy to have it give up IO tags, it doesn't seem
> > > > > > to make much of a difference in practice anyway.
> > > > > > 
> > > > > > But if you feel strongly about it, then I'll implement the "proper" 
> > > > > > way
> > > > > > sometimes this week, adding a way to shrink the AQ down to something
> > > > > > like 3 (one admin request, one async event (AEN), and the empty slot)
> > > > > > by making a bunch of the constants involved variables instead.
> > > > > 
> > > > > I don't feel too strongly about it. I think your patch is fine, so
> > > > > 
> > > > > Acked-by: Keith Busch <keith.busch@intel.com>
> > > > 
> > > > Should we pick this up for 5.3-rc?
> > > 
> > > No, it's not a regression fix. Queue it up for 5.4 instead.
> > 
> > OK, will queue it up for nvme-5.4
> 
> Doesn't apply..
> 
> Ben, can you please respin a patch that applies on nvme-5.4?
> 
> http://git.infradead.org/nvme.git/shortlog/refs/heads/nvme-5.4

Sure, will do in the next couple of days !

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
