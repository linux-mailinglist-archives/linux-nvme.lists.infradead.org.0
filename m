Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E5C85035A
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 09:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nCfb3MSN2KiI8tZU5sOthc5iPxFFMDTdUIR2gxFjuc=; b=BO1siKI2C7s/8s
	a1nUZBkj78RaorYDyFhrjFI8mvn0cWHKz97GwwbQq0v64If9hvUXN49Ff8bFOeyhleNxAvs7nKPV1
	xEHWs0ou7sA3SCqV5EcF1G1GZG/FM/l33NbKKJ1SBqQDI0BLWhquWfHPELot3agHQ5q7aztcpQGfs
	fq65hea7MABUtnM0IYBnCbRhJDGFhIICcyNFzRMklBfAdpe/+L3K1zYwlvmnWh9ZsCQPNKk9dBy4q
	w8tqjwLONSNRElDaJiS/+kG3JLETLhqBKLskUy8QJwe4yLGyq7WPRKu9A+pljp6TG3hioLFYlk9oz
	sb+9jdV6AnmUrcs+a79w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJP5-0001HB-6f; Mon, 24 Jun 2019 07:28:39 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJOr-0001Gg-DO
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 07:28:26 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 0DC7D68B02; Mon, 24 Jun 2019 09:27:53 +0200 (CEST)
Date: Mon, 24 Jun 2019 09:27:52 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190624072752.GA3954@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620161240.22738-1-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_002825_600222_363D8B6F 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is not going to fly.

For one passing a dma_addr_t through the block layer is a layering
violation, and one that I think will also bite us in practice.
The host physical to PCIe bus address mapping can have offsets, and
those offsets absolutely can be different for differnet root ports.
So with your caller generated dma_addr_t everything works fine with
a switched setup as the one you are probably testing on, but on a
sufficiently complicated setup with multiple root ports it can break.

Also duplicating the whole block I/O stack, including hooks all over
the fast path is pretty much a no-go.

I've been pondering for a while if we wouldn't be better off just
passing a phys_addr_t + len instead of the page, offset, len tuple
in the bio_vec, though.  If you look at the normal I/O path here
is what we normally do:

 - we get a page as input, either because we have it at hand (e.g.
   from the page cache) or from get_user_pages (which actually caculates
   it from a pfn in the page tables)
 - once in the bio all the merging decisions are based on the physical
   address, so we have to convert it to the physical address there,
   potentially multiple times
 - then dma mapping all works off the physical address, which it gets
   from the page at the start
 - then only the dma address is used for the I/O
 - on I/O completion we often but not always need the page again.  In
   the direct I/O case for reference counting and dirty status, in the
   file system also for things like marking the page uptodate

So if we move to a phys_addr_t we'd need to go back to the page at least
once.  But because of how the merging works we really only need to do
it once per segment, as we can just do pointer arithmerics do get the
following pages.  As we generally go at least once from a physical
address to a page in the merging code even a relatively expensive vmem_map
looks shouldn't be too bad.  Even more so given that the super hot path
(small blkdev direct I/O) can actually trivially cache the affected pages
as well.

Linus kinda hates the pfn approach, but part of that was really that
it was proposed for file system data, which we all found out really
can't work as-is without pages the hard way.  Another part probably
was potential performance issue, but between the few page lookups, and
the fact that using a single phys_addr_t instead of pfn/page + offset
should avoid quite a few calculations performance should not actually
be affected, although we'll have to be careful to actually verify that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
