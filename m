Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35CE36B61B
	for <lists+linux-nvme@lfdr.de>; Wed, 17 Jul 2019 07:51:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4KWkt1hu8mZ3KIq3qjmhoRNLrkI4kE6CeidR8g+AvsA=; b=b57bZpY3vwa/WR
	oiRgsm0vCBQnbNy7D/kmjf9POl8awtxzZCIpbPrF+zyS9CRctbYepSKx5abanQvb5OtG0vCSR07ga
	OgKRZCe/DDxZSZNypm7g+ZoJTt4uoucXRvt/s86masHfTTLHFJyE1+gvSgUUm+qRYU4GQ4ToqsLCp
	9vDSp90XKnEAi9WKGEMx46IWzYlq2Gfnamw0gcSUQEp+FDbTbkGdpLWGVWUAEvKn/ssVWSbO1Hwiv
	ixiXPVMus4ej/mZTs1arZE0BZuXyLkZMDo9VvxoC9hTzD9z8o3ehDfQuvYFtMxBXKshml4K6RRQJA
	YD75xiWZ+A0sCWyyFSOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hncqM-0003c8-7K; Wed, 17 Jul 2019 05:51:10 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hncqD-0003b7-KZ
 for linux-nvme@lists.infradead.org; Wed, 17 Jul 2019 05:51:03 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6H5osCZ012174;
 Wed, 17 Jul 2019 00:50:55 -0500
Message-ID: <aa50364acad30e8fcffa93e33e6794bfe65ba66b.camel@kernel.crashing.org>
Subject: Re: nvme-5.3 ssd performance regression
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Wed, 17 Jul 2019 15:50:54 +1000
In-Reply-To: <20190717044041.GB4755@lst.de>
References: <798a3907573b910fbb102036afe3dfc1405fb353.camel@kernel.crashing.org>
 <CACVXFVP8w3mzQ8XVgeif=Nq3kyiZopS0XDB+-c2x5CcT9V3djA@mail.gmail.com>
 <6863e5fa43409c370395cc66e7499dd7c150c497.camel@kernel.crashing.org>
 <20190717042646.GA4583@lst.de>
 <a510b276a5c94fa79ec86dfde78fcbc0edb06053.camel@kernel.crashing.org>
 <20190717044041.GB4755@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_225101_834878_155BB68C 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
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
Cc: Jens Axboe <axboe@fb.com>, Ming Lei <tom.leiming@gmail.com>,
 linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 2019-07-17 at 06:40 +0200, Christoph Hellwig wrote:


http://git.infradead.org/users/hch/misc.git/shortlog/refs/heads/dma-max-mapping-size-fix
> > 
> > With or without
> > 
> >  "nvme-pci: limit max_hw_sectors based on the DMA max mapping size"
> > 
> > ?
> 
> With.  Just pull in the branch :)

Ah oops :-) Brain not engaged clearly ...

I'll get back to you when I get past the lockups caused by the Intel
graphic driver... Something is trying to do synchronous module loads
from async init calls and its' not happy.

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
