Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBCA95A393
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 20:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pl+RNwcvxlDVHxTZa8xo1eJapJzyGXDsco/S/xZR7RQ=; b=SerSP8YBHNYUls
	XqB3UPOyHJprPLJE8WGLajlNzo2NOnKf4ZexLhvGKROJ7aDyP4XJ7JoPDVwHbvmz5U3IcpFBixau3
	WymaKDpX7ZbIYP3kb/yI7bmUvAAWmiGjReOclJryCXPuAYwVwJRqBxaM5WMpyYcY5Jebh+BtT0fwg
	D4PCzSsGVwBHdWZKqj/+Eupt/BHjGSESJQ9wSpNkyCvLDXK6VEufvz7FQ9DX9E3mM71JwxDekdbvG
	54LqBBR0FY8tDDysZQhoH67LMfqSOOiBCgyGRllMA09uYwGvhuOMzf7wVwsvTH+uDhHBoyjs6zQeZ
	0aoYpdst+tjprBDDDIyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgvd9-0005vm-Tc; Fri, 28 Jun 2019 18:29:51 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgvd3-0005uM-10
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 18:29:47 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hgvct-0002Ln-NS; Fri, 28 Jun 2019 12:29:36 -0600
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
 <20190626210018.GB6392@ziepe.ca>
 <c25d3333-dcd5-3313-089b-7fbbd6fbd876@deltatee.com>
 <20190627063223.GA7736@ziepe.ca>
 <6afe4027-26c8-df4e-65ce-49df07dec54d@deltatee.com>
 <20190627163504.GB9568@ziepe.ca>
 <4894142c-3233-a3bb-f9a3-4a4985136e9b@deltatee.com>
 <20190628045705.GD3705@ziepe.ca>
 <8022a2a4-4069-d256-11da-e6d9b2ffbf60@deltatee.com>
 <20190628172926.GA3877@ziepe.ca>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <25a87c72-630b-e1f1-c858-9c8b417506fc@deltatee.com>
Date: Fri, 28 Jun 2019 12:29:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190628172926.GA3877@ziepe.ca>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 dan.j.williams@intel.com, bhelgaas@google.com, axboe@kernel.dk,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, hch@lst.de, jgg@ziepe.ca
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_112945_409331_E2E9E5E8 
X-CRM114-Status: GOOD (  31.05  )
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
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-28 11:29 a.m., Jason Gunthorpe wrote:
> On Fri, Jun 28, 2019 at 10:22:06AM -0600, Logan Gunthorpe wrote:
> 
>>> Why not?  If we have a 'bar info' structure that could have data
>>> transfer op callbacks, infact, I think we might already have similar
>>> callbacks for migrating to/from DEVICE_PRIVATE memory with DMA..
>>
>> Well it could, in theory be done, but It just seems wrong to setup and
>> wait for more DMA requests while we are in mid-progress setting up
>> another DMA request. Especially when the block layer has historically
>> had issues with stack sizes. It's also possible you might have multiple
>> bio_vec's that have to each do a migration and with a hook here they'd
>> have to be done serially.
> 
> *shrug* this is just standard bounce buffering stuff...

I don't know of any "standard" bounce buffering stuff that uses random
other device's DMA engines where appropriate.

>>> I think the best reason to prefer a uniform phys_addr_t is that it
>>> does give us the option to copy the data to/from CPU memory. That
>>> option goes away as soon as the bio sometimes provides a dma_addr_t.
>>
>> Not really. phys_addr_t alone doesn't give us a way to copy data. You
>> need a lookup table on that address and a couple of hooks.
> 
> Yes, I'm not sure how you envision using phys_addr_t without a
> lookup.. At the end of the day we must get the src and target 'struct
> device' in the dma_map area (at the minimum to compute the offset to
> translate phys_addr_t to dma_addr_t) and the only way to do that from
> phys_addr_t is via lookup??

I thought my other email to Christoph laid it out pretty cleanly...

>>> At least for RDMA, we do have some cases (like siw/rxe, hfi) where
>>> they sometimes need to do that copy. I suspect the block stack is
>>> similar, in the general case.
>>
>> But the whole point of the use cases I'm trying to serve is to avoid the
>> root complex. 
> 
> Well, I think this is sort of a seperate issue. Generically I think
> the dma layer should continue to work largely transparently, and if I
> feed in BAR memory that can't be P2P'd it should bounce, just like
> all the other DMA limitations it already supports. That is pretty much
> its whole purpose in life.

I disagree. It's one thing for the DMA layer to work around architecture
limitations like HighMem/LowMem and just do a memcpy when it can't
handle it -- it's whole different thing for the DMA layer to know about
the varieties of memory on different peripheral device's and the nuances
of how and when to transfer between them. I think the submitting driver
has the best information of when to do these transfers.

IMO the bouncing in the DMA layer isn't a desirable thing, it was a
necessary addition to work around various legacy platform issues and
have existing code still work correctly. It's always better for a driver
to allocate memory appropriate for the DMA than to just use random
memory and rely on it being bounced by the lower layer. For P2P, we
don't have existing code to worry about so I don't think a magic
automatic bouncing design is appropriate.

> The issue of having the caller optimize what it sends is kind of
> separate - yes you definately still need the egress DMA device to
> drive CMB buffer selection, and DEVICE_PRIVATE also needs it to decide
> if it should migrate or not.

Yes, but my contention is that I don't want to have to make these
decisions twice: once before I submit it to the block layer, then again
at mapping time.

> What I see as the question is how to layout the BIO. 
> 
> If we agree the bio should only have phys_addr_t then we need some
> 'bar info' (ie at least the offset) in the dma map and some 'bar info'
> (ie the DMA device) during the bio construciton.

Per my other email, it was phys_addr_t plus hints on how to map the
memory (bus address, dma_map_resource, or regular). This requires
exactly two flag bits in the bio_vec and no interval tree or hash table.
I don't want to have to pass bar info, other hooks, or anything like
that to the block layer.

> What you are trying to do is optimize the passing of that 'bar info'
> with a limited number of bits in the BIO.
> 
> A single flag means an interval tree, 4-8 bits could build a probably
> O(1) hash lookup, 64 bits could store a pointer, etc.

Well, an interval tree can get you the backing device for a given
phys_addr_t; however, for P2PDMA, we need a second lookup based on the
mapping device. This is because exactly how you map the data depends on
both devices. Currently I'm working on this for the existing
implementation and struct page gets me the backing device but I need
another xarray cache based on the mapping device to figure out exactly
how to map the memory. But none of this mess is required if we can just
pass the mapping hints through the block layer as flags (per my other
email) because the submitting driver should already know ahead of time
what it's trying to do.

> If we can spare 4-8 bits in the bio then I suggest a 'perfect hash
> table'. Assign each registered P2P 'bar info' a small 4 bit id and
> hash on that. It should be fast enough to not worry about the double
> lookup.

This feels like it's just setting us up to run into nasty limits based
on the number of bits we actually have. The number of bits in a bio_vec
will always be a precious resource. If I have a server chassis that
exist today with 24 NVMe devices, and each device has a CMB, I'm already
using up 6 of those bits. Then we might have DEVICE_PRIVATE and other
uses on top of that.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
