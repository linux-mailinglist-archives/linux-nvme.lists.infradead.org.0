Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 204BC5180D
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 18:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=afgu0rgX55qPEYOuBa5dpqajY/PhEAupkkMeplr4m5Q=; b=p/m0hbdbpz+FTt
	6dRN827H3fMBaDZythM3ynlNFTp6R6FHqonZv2i/oPVF98NDKNxojufWGrraslcAYY+qKqaibddT8
	L09b/GQfbNaDUMuveh8Y1NfuTEN9e6l+meXKHtmb5uRQpu08KdFg0r5n4ixFY1K8njYZlXoH0CVQz
	yod3XddaEXz8q+ufaGKTMVTJioKmuv3jWAD8QOIUYMUsLeSfxAbAEIoef1joT/5YxK8SUyOAqb0D2
	d02RAGJFrfcX0BXsq5NVSq1iW7/hVvcMrQ62pzyV9nfyNu8HWoBP9dMmt5HUg1hryFTsfNr86TDkF
	QsNeyUu5x2MPSHgy06Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfRW6-0004Aa-ID; Mon, 24 Jun 2019 16:08:26 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfRVz-0004A1-0G
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 16:08:20 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hfRVf-0007f9-UM; Mon, 24 Jun 2019 10:08:00 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190624072752.GA3954@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
Date: Mon, 24 Jun 2019 10:07:56 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624072752.GA3954@lst.de>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, jgg@ziepe.ca, kbusch@kernel.org,
 sagi@grimberg.me, dan.j.williams@intel.com, bhelgaas@google.com,
 axboe@kernel.dk, linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, hch@lst.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_090819_095032_CDFA7091 
X-CRM114-Status: GOOD (  26.81  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-24 1:27 a.m., Christoph Hellwig wrote:
> This is not going to fly.
> 
> For one passing a dma_addr_t through the block layer is a layering
> violation, and one that I think will also bite us in practice.
> The host physical to PCIe bus address mapping can have offsets, and
> those offsets absolutely can be different for differnet root ports.
> So with your caller generated dma_addr_t everything works fine with
> a switched setup as the one you are probably testing on, but on a
> sufficiently complicated setup with multiple root ports it can break.

I don't follow this argument. Yes, I understand PCI Bus offsets and yes
I understand that they only apply beyond the bus they're working with.
But this isn't *that* complicated and it should be the responsibility of
the P2PDMA code to sort out and provide a dma_addr_t for. The dma_addr_t
that's passed through the block layer could be a bus address or it could
be the result of a dma_map_* request (if the transaction is found to go
through an RC) depending on the requirements of the devices being used.

> Also duplicating the whole block I/O stack, including hooks all over
> the fast path is pretty much a no-go.

There was very little duplicate code in the patch set. (Really just the
mapping code). There are a few hooks, but in practice not that many if
we ignore the WARN_ONs. We might be able to work to reduce this further.
The main hooks are: when we skip bouncing, when we skip integrity prep,
when we split, and when we map. And the patchset drops the PCI_P2PDMA
hook when we map. So we're talking about maybe three or four extra ifs
that would likely normally be fast due to the branch predictor.

> I've been pondering for a while if we wouldn't be better off just
> passing a phys_addr_t + len instead of the page, offset, len tuple
> in the bio_vec, though.  If you look at the normal I/O path here
> is what we normally do:
> 
>  - we get a page as input, either because we have it at hand (e.g.
>    from the page cache) or from get_user_pages (which actually caculates
>    it from a pfn in the page tables)
>  - once in the bio all the merging decisions are based on the physical
>    address, so we have to convert it to the physical address there,
>    potentially multiple times
>  - then dma mapping all works off the physical address, which it gets
>    from the page at the start
>  - then only the dma address is used for the I/O
>  - on I/O completion we often but not always need the page again.  In
>    the direct I/O case for reference counting and dirty status, in the
>    file system also for things like marking the page uptodate
> 
> So if we move to a phys_addr_t we'd need to go back to the page at least
> once.  But because of how the merging works we really only need to do
> it once per segment, as we can just do pointer arithmerics do get the
> following pages.  As we generally go at least once from a physical
> address to a page in the merging code even a relatively expensive vmem_map
> looks shouldn't be too bad.  Even more so given that the super hot path
> (small blkdev direct I/O) can actually trivially cache the affected pages
> as well.

I've always wondered why it wasn't done this way. Passing around a page
pointer *and* an offset always seemed less efficient than just a
physical address. If we did do this, the proposed dma_addr_t and
phys_addr_t paths through the block layer could be a lot more similar as
things like the split calculation could work on either address type.
We'd just have to prevent bouncing and integrity and change have a hook
on how it's mapped.

> Linus kinda hates the pfn approach, but part of that was really that
> it was proposed for file system data, which we all found out really
> can't work as-is without pages the hard way.  Another part probably
> was potential performance issue, but between the few page lookups, and
> the fact that using a single phys_addr_t instead of pfn/page + offset
> should avoid quite a few calculations performance should not actually
> be affected, although we'll have to be careful to actually verify that.

Yes, I'd agree that removing the offset should make things simpler. But
that requires changing a lot of stuff and doesn't really help what I'm
trying to do.

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
