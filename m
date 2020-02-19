Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 131EF164863
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 16:21:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kYm7FkgdFKXqWHR1miRugO6nCeQhi7G7ksg49VFDEqo=; b=Au3GPpih7NRa6q
	xV/y/JToQkTqK82weT9su+TEtAdzuCp7mu9GcmQf7LTUyWCqEO4QK5BgRMyM3nq4vn4U2mRVyNmmK
	epC25itYGOgTpPrmO7zREDJeealxR0EStGzIhj2j9D04rxac5LoqVuKPdhWlGifsz75zfQs+037GI
	lnSVJFHfIwaSD9/py/4/o/N+0e2Xar3d4rtZZ90pZKlOuDuqerdDdci9gm3/6A3/yQ3Md7nvhvWsp
	7KaL3A//a0u3Ox/gHk1cIJbfiE63SmIq2vctV39O024QZ0H38J/lpqnYsdjbh8uyIs4po6whqbIJt
	Gyz4auvChQxZOwC6qpAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4RAL-00058z-A5; Wed, 19 Feb 2020 15:21:33 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4RAB-000589-EL
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 15:21:26 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 4536968B20; Wed, 19 Feb 2020 16:21:20 +0100 (CET)
Date: Wed, 19 Feb 2020 16:21:20 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme: fix uninitialized-variable warning
Message-ID: <20200219152120.GA18253@lst.de>
References: <20200107214215.935781-1-arnd@arndb.de>
 <20200130150451.GA25427@infradead.org>
 <CAK8P3a0EgfQkrSr77jE12Wm_NKemEZ1rFZLMcVhkAuu1cwOOWQ@mail.gmail.com>
 <20200130154815.GA2463@infradead.org>
 <20200213195106.GA8256@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213195106.GA8256@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_072123_631448_599DB074 
X-CRM114-Status: GOOD (  15.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Oleksandr Natalenko <oleksandr@redhat.com>, Jens Axboe <axboe@fb.com>,
 Sagi Grimberg <sagi@grimberg.me>, Arnd Bergmann <arnd@arndb.de>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@infradead.org>,
 Marta Rybczynska <mrybczyn@kalray.eu>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Feb 14, 2020 at 04:51:06AM +0900, Keith Busch wrote:
> On Thu, Jan 30, 2020 at 07:48:15AM -0800, Christoph Hellwig wrote:
> > On Thu, Jan 30, 2020 at 04:36:48PM +0100, Arnd Bergmann wrote:
> > > > This one is just gross.  I think we'll need to find some other fix
> > > > that doesn't obsfucate the code as much.
> > > 
> > > Initializing the nvme_result in nvme_features() would do it, as would
> > > setting it in the error path in __nvme_submit_sync_cmd() -- either
> > > way the compiler cannot be confused about whether it is initialized
> > > later on.
> > 
> > Given that this is outside the hot path we can just zero the whole
> > structure before submitting the I/O.
> 
> I think this should be okay:

This looks good.  Can you send a formal patch?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
