Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5962482AE5
	for <lists+linux-nvme@lfdr.de>; Tue,  6 Aug 2019 07:24:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wqmQ1wt0Ra3oXgVN04F4vOfO8IRqxCtzIzJhBwpi8DM=; b=HfROQ35h50fxX0
	MGBq8XA8g1QuSHtwGYx4h8wRcZetafzh7IkgEmxGLXpChI88PLQ5bGryDJ3Ln3N/VSOyMat/cUi14
	cFQQmgValC4r1T6dCx+2r1COA/so4GxJ4u/LarZOFwSLfTA72lWiLzlVbIRl6q2Q92HdnWjHp7uDK
	ONr/nq6csf1/l7sIuYgeCpzatjodE0DucWfGbjgN2QImgy7RZRF1Xl1gE4VbAtyJiDHM5b4/Et7b7
	B3XxSVdU4s6U+rBpqd+FwMCUBSP2hh1/VlOWqVKJQ9gruY9tB4P/EZMRkFUF+tmoh9ks5/X+JXXFt
	OU2H2KICHgsv4kYdVu3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hurxo-0005S5-2o; Tue, 06 Aug 2019 05:24:48 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurxi-0005Rl-6O
 for linux-nvme@lists.infradead.org; Tue, 06 Aug 2019 05:24:43 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x765OKnm016656;
 Tue, 6 Aug 2019 00:24:21 -0500
Message-ID: <198e51f1454720f15f0570e98203834eed11893f.camel@kernel.crashing.org>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for
 Apple 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Keith Busch <keith.busch@intel.com>
Date: Tue, 06 Aug 2019 15:24:19 +1000
In-Reply-To: <20190805134907.GC18647@localhost.localdomain>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
 <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
 <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
 <20190805134907.GC18647@localhost.localdomain>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_222442_388965_CB765E99 
X-CRM114-Status: GOOD (  10.98  )
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
 Paul Pawlowski <paul@mrarm.io>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 2019-08-05 at 07:49 -0600, Keith Busch wrote:
> > Ping ? I had another look today and I don't feel like mucking around
> > with all the AQ size logic, AEN magic tag etc... just for that sake of
> > that Apple gunk. I'm happy to have it give up IO tags, it doesn't seem
> > to make much of a difference in practice anyway.
> > 
> > But if you feel strongly about it, then I'll implement the "proper" way
> > sometimes this week, adding a way to shrink the AQ down to something
> > like 3 (one admin request, one async event (AEN), and the empty slot)
> > by making a bunch of the constants involved variables instead.
> 
> I don't feel too strongly about it. I think your patch is fine, so
> 
> Acked-by: Keith Busch <keith.busch@intel.com>

Thanks, I'll fold the test and respin this week.

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
