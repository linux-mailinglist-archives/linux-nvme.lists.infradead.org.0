Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF2507B458
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 22:29:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AHhIR5BuluDb4guEYR5XxKfr3ukvn2GJmrz7nzYd26I=; b=imZvpH4Wre7JsS
	e6HfwEIHMavwCUKPSDZcDvLOLXcZTwLd+vadImFKiGbe/+1jpbk1umP14t5nms9f6d5NWc0nMrize
	CLtahgKXVqWhgFD33drAUniXOoGCPc0Y8zhQs03Vy0WEL31dCUwiA1ht7zvr/prbMANdbFHpZJJd2
	8bCGvJ1K0KG8MZ1qUIaONuFRDbA2D1QQraTNI1sgmhGzxXvQM5wigLPspiUUkwxRZGBdbAyPMPNLP
	0mQakgKUMHB8lIzfw8sFvMduuIScOz5w/1R1+oTXSGE4IWXL3zrZQNh0bubfo0gBB6AaIS6nLsDz6
	6lFEJ8rzfTFbFMcGDyFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsYkC-0007zZ-9Z; Tue, 30 Jul 2019 20:29:12 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsYk7-0007zE-36
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 20:29:08 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6UKSwii027076;
 Tue, 30 Jul 2019 15:28:58 -0500
Message-ID: <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for
 Apple 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Keith Busch <kbusch@kernel.org>
Date: Tue, 30 Jul 2019 13:28:57 -0700
In-Reply-To: <20190730153044.GA13948@localhost.localdomain>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_132907_282603_B6C6EE70 
X-CRM114-Status: GOOD (  15.17  )
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

On Tue, 2019-07-30 at 09:30 -0600, Keith Busch wrote:
> On Fri, Jul 19, 2019 at 03:31:02PM +1000, Benjamin Herrenschmidt wrote:
> > From 8dcba2ef5b1466b023b88b4eca463b30de78d9eb Mon Sep 17 00:00:00 2001
> > From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Date: Fri, 19 Jul 2019 15:03:06 +1000
> > Subject: 
> > 
> > Another issue with the Apple T2 based 2018 controllers seem to be
> > that they blow up (and shut the machine down) if there's a tag
> > collision between the IO queue and the Admin queue.
> > 
> > My suspicion is that they use our tags for their internal tracking
> > and don't mix them with the queue id. They also seem to not like
> > when tags go beyond the IO queue depth, ie 128 tags.
> > 
> > This adds a quirk that marks tags 0..31 of the IO queue reserved
> > 
> > Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > ---
> 
> One problem is that we've an nvme parameter, io_queue_depth, that a user
> could set to something less than 32, and then you won't be able to do
> any IO. I'd recommend enforce the admin queue to QD1 for this device so
> that you have more potential IO tags.

So I had a look and it's not that trivial. I would have to change
a few things that use constants for the admin queue depth, such as
the AEN tag etc...

For such a special case, I am tempted instead to do the much simpler:

	if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS) {
		if (dev->q_depth < (NVME_AQ_DEPTH + 2))
			dev->q_depth = NVME_AQ_DEPTH + 2;
	}

In nvme_pci_enable() next to the existing q_depth hackery for other
controllers.

Thoughts ?

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
