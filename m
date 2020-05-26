Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9215F1B4B1D
	for <lists+linux-nvme@lfdr.de>; Wed, 22 Apr 2020 18:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4gKf1Ct4K3Ts8VsqsL1aZp3bn4lqFrnN3hNnaOOCHAw=; b=nRSvPRd9kOawWb
	j1Z8GAWblaBNaFUPsKT0CDWH38keVrIVNA/fmGRzGToNI+IBJ5XimqqNtFVA3986pDXUFDQvriCZh
	Bi//3ritLym6s7AbnLjFWrw4AosAoyd22FDuzbKPArwFpQgWNVJXWyrkmDnhZb6wS2lx3EpNasjQU
	8LjIi2Qd4k4dAhFrsMvF35RC+dlxgPYmq8jVrte/bR+pN+BsKeqYyZZ5oA3wa0twAl5ySAgbuPWop
	CVGuOcSAEnF2TvnYi2MarCqBkel/0baIY32Xzqy6BtTfjQlwyd1CyFfAxvR+Ua1chR678mOlQGSmq
	H3LuAd2FzHrq4P8pEA6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRIh1-0002T8-G3; Wed, 22 Apr 2020 16:57:47 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92.3 #3 (Red
 Hat Linux)) id 1jRIgl-0002Em-57; Wed, 22 Apr 2020 16:57:31 +0000
Date: Wed, 22 Apr 2020 09:57:31 -0700
From: Christoph Hellwig <hch@infradead.org>
To: weiping zhang <zhangweiping@didichuxing.com>
Subject: Re: [PATCH] nvme: align io queue count with allocted nvme_queue in
 nvme_probe
Message-ID: <20200422165731.GA8218@infradead.org>
References: <20200410095719.GA4393@192.168.3.9>
 <188ad279-9211-9dca-3e6c-b5718ae6fc80@mellanox.com>
 <CAA70yB63bHGcFOzKPrLz+-bjHoEMQWiZEpFyoZ72rzDy9ZaO3Q@mail.gmail.com>
 <66add5c2-62b9-5c2d-977b-0499834b2b7a@mellanox.com>
 <CAA70yB7bkeSwQVjJ5rjGS3HxZtkraUY1FX9ZMHXH8FO6a-8omw@mail.gmail.com>
 <df0fa3a0-7764-bc1f-711d-d264fc4f444f@mellanox.com>
 <20200422083747.GA26915@infradead.org>
 <20200422092416.GA12930@192.168.3.9>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422092416.GA12930@192.168.3.9>
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
Cc: Jens Axboe <axboe@kernel.dk>, Weiping Zhang <zwp10758@gmail.com>,
 Weiping Zhang <zhangweiping@didiglobal.com>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@infradead.org>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Apr 22, 2020 at 05:24:27PM +0800, weiping zhang wrote:
> > The problem with PCIe is that we only have a per-controller interface
> > once the controller is probed.  So a global paramter that can be
> > changed, but only is sampled once at probe time seems the easiest to
> > me.  We could also allow a per-controller sysfs file that only takes
> > effect after a reset, which seems a little nicer, but adds a lot of
> > boilerplate for just being a little nicer, so I'm not entirely sure
> > if it is worth the effort.
> Hi Christoph,
> 
> Because in the real user case, the number of each type queue may
> not very suitable, it needs a ability to adjust them without hotplug.
> 
> If so, the nvme_dev needs record how many write/poll
> queues saved in nvme_probe, and then use them in reset flow.

When I wrote probe above I meant to include reset, sorry.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
