Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 884DE4DA41
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 21:35:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=u0iU2yxoxib+sIkFTwcneDmq5dbrKz0SJRK+FGqxoa4=; b=UdttVhejjJbK1Q
	whuN5BtLPEHyuPp8dnfuJIuCxigOhRAV0kPs0a+30labuFmhqkPeoBV1oPPEn/Pro0jmRa+gUVjWx
	RYX3bZ3QyHhXBqfc6PWkR+8MvR9266EUUWjTZkp2XdknkgLzDvYLkM9Bgis/9SNe01bwsQ1NdFDkG
	/idpTi1zeSjlHoV7QRjymHAXmYzqa8y6lLu3UuSTfPuRbfy6ApVpoB12K0X34s1/5NsDqw4Qmte1A
	s0bI9bvZO0ZoNYZWSc5NdW1ZZdSTpnQhCM9f76j7FsKTpIS4pfmilB/VoRQKqXN6MaBw0IYc+oWaM
	OheDgcOfY2zKCc+8PySw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he2pr-0007iF-T7; Thu, 20 Jun 2019 19:35:04 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he2pa-0007gW-M4
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 19:34:53 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1he2pR-0006ue-MT; Thu, 20 Jun 2019 13:34:38 -0600
To: Dan Williams <dan.j.williams@intel.com>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <91eba9a0-27b4-08b4-7c12-86e24e1bfe85@deltatee.com>
Date: Thu, 20 Jun 2019 13:34:35 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, jgg@ziepe.ca, kbusch@kernel.org,
 sagi@grimberg.me, bhelgaas@google.com, hch@lst.de, axboe@kernel.dk,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, dan.j.williams@intel.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.4 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_URI_HASH autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_123452_439795_FFDD0AA5 
X-CRM114-Status: GOOD (  24.21  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma <linux-rdma@vger.kernel.org>,
 linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-20 12:45 p.m., Dan Williams wrote:
> On Thu, Jun 20, 2019 at 9:13 AM Logan Gunthorpe <logang@deltatee.com> wrote:
>>
>> For eons there has been a debate over whether or not to use
>> struct pages for peer-to-peer DMA transactions. Pro-pagers have
>> argued that struct pages are necessary for interacting with
>> existing code like scatterlists or the bio_vecs. Anti-pagers
>> assert that the tracking of the memory is unecessary and
>> allocating the pages is a waste of memory. Both viewpoints are
>> valid, however developers working on GPUs and RDMA tend to be
>> able to do away with struct pages relatively easily
> 
> Presumably because they have historically never tried to be
> inter-operable with the block layer or drivers outside graphics and
> RDMA.

Yes, but really there are three main sets of users for P2P right now:
graphics, RDMA and NVMe. And every time a patch set comes from GPU/RDMA
people they don't bother with struct page. I seem to be the only one
trying to push P2P with NVMe and it seems to be a losing battle.

> Please spell out the value, it is not immediately obvious to me
> outside of some memory capacity savings.

There are a few things:

* Have consistency with P2P efforts as most other efforts have been
avoiding struct page. Nobody else seems to want
pci_p2pdma_add_resource() or any devm_memremap_pages() call.

* Avoid all arch-specific dependencies for P2P. With struct page the IO
memory must fit in the linear mapping. This requires some work with
RISC-V and I remember some complaints from the powerpc people regarding
this. Certainly not all arches will be able to fit the IO region into
the linear mapping space.

* Remove a bunch of PCI P2PDMA special case mapping stuff from the block
layer and RDMA interface (which I've been hearing complaints over).

* Save the struct page memory that is largely unused (as you note).

>> Previously, there have been multiple attempts[1][2] to replace
>> struct page usage with pfn_t but this has been unpopular seeing
>> it creates dangerous edge cases where unsuspecting code might
>> run accross pfn_t's they are not ready for.
> 
> That's not the conclusion I arrived at because pfn_t is specifically
> an opaque type precisely to force "unsuspecting" code to throw
> compiler assertions. Instead pfn_t was dealt its death blow here:
> 
> https://lore.kernel.org/lkml/CA+55aFzON9617c2_Amep0ngLq91kfrPiSccdZakxir82iekUiA@mail.gmail.com/

Ok, well yes the special pages are what we've done for P2PDMA today. But
I don't think Linus's criticism really applies to what's in this RFC.
For starters, P2PDMA doesn't, and has have never, used struct page to
look up the reference count. PCI BARs have no relation to the cache so
there's no need to serialize their access but this can be done
before/after the DMA addresses are submitted to the block/rdma layer if
it was required.

In fact, the only thing the struct page is used for in the current
P2PDMA implementation is a single flag indicating it's special and needs
to be mapped in a special way.
> My primary concern with this is that ascribes a level of generality
> that just isn't there for peer-to-peer dma operations. "Peer"
> addresses are not "DMA" addresses, and the rules about what can and
> can't do peer-DMA are not generically known to the block layer.

Correct, but I don't think we should teach the block layer about these
rules. In the current code, the rules are enforced outside the block
layer before the bios are submitted and this patch set doesn't change
that. The driver orchestrating P2P will always have to check the rules
and derive addresses from them (as appropriate). With the RFC the block
layer then doesn't have to care and can just handle the DMA addresses
directly.

> At least with a side object there's a chance to describe / recall those
> restrictions as these things get passed around the I/O stack, but an
> undecorated "DMA" address passed through the block layer with no other
> benefit to any subsystem besides RDMA does not feel like it advances
> the state of the art.
> 
> Again, what are the benefits of plumbing this RDMA special case?

Because I don't think it is an RDMA special case.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
