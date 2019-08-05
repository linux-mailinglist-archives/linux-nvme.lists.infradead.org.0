Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1441381289
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 08:50:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JfD3fZymKIuVyCnMeE9Yg+UzqFenUnGFsATUD1kcFBM=; b=MmDNjIyoQvWVSX
	i+Fchqy8V9lLXkPVH8JM8HBcEkbtD2w/8H1Z825Bv7IkSRAzxpb1Xv4g7tSmYrMgDWimzMpcEFhU3
	f1gSyTm4mMx700SCcdFrQkLnA4NrKb4oPKbLC9xBQYodayfB6Ieq7s+caMetfa1VABWNZppvsRbum
	H36m1lHh9d+H1fYo8U5CCGk7Bu6BDzh/9lZn68RZwi4dPADKRJgOxQINsJfkavaeQKqophtTubfpb
	lFNb1vi87fpL8JsWo3Muoo7WMkedwh4Ce8NqPe5qqyLORee3tHwJFEyEvq8y9VcWiUQCujENOZvKF
	FV4SA/GtrgdNFnDu1+WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huWoU-0003vb-Uk; Mon, 05 Aug 2019 06:49:47 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huWoL-0003vC-Bm
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 06:49:38 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x756nNRm017042;
 Mon, 5 Aug 2019 01:49:24 -0500
Message-ID: <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for
 Apple 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Keith Busch <kbusch@kernel.org>
Date: Mon, 05 Aug 2019 16:49:23 +1000
In-Reply-To: <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
 <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_234937_553916_F7D6813A 
X-CRM114-Status: GOOD (  14.69  )
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
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-07-30 at 13:28 -0700, Benjamin Herrenschmidt wrote:
> > One problem is that we've an nvme parameter, io_queue_depth, that a user
> > could set to something less than 32, and then you won't be able to do
> > any IO. I'd recommend enforce the admin queue to QD1 for this device so
> > that you have more potential IO tags.
> 
> So I had a look and it's not that trivial. I would have to change
> a few things that use constants for the admin queue depth, such as
> the AEN tag etc...
> 
> For such a special case, I am tempted instead to do the much simpler:
> 
>         if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS) {
>                 if (dev->q_depth < (NVME_AQ_DEPTH + 2))
>                         dev->q_depth = NVME_AQ_DEPTH + 2;
>         }
> 
> In nvme_pci_enable() next to the existing q_depth hackery for other
> controllers.
> 
> Thoughts ?

Ping ? I had another look today and I don't feel like mucking around
with all the AQ size logic, AEN magic tag etc... just for that sake of
that Apple gunk. I'm happy to have it give up IO tags, it doesn't seem
to make much of a difference in practice anyway.

But if you feel strongly about it, then I'll implement the "proper" way
sometimes this week, adding a way to shrink the AQ down to something
like 3 (one admin request, one async event (AEN), and the empty slot)
by making a bunch of the constants involved variables instead.

This leas to a question: Wouldn't be be nicer/cleaner to make AEN be
tag 0 of the AQ ? That way we just include it as reserved tag ? Not a
huge different from what we do now, just a thought.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
