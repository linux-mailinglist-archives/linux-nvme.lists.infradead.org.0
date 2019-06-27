Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D738B58721
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 18:31:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NHpaxejc8kyR7r6JT0tjK3feaqMgbDhE7+jLAWFpR4o=; b=JAAGiOVDYQ+wSb
	C0VhJlXob1UJrF7fp/n+WZncusLSZYqZNza40weBS3C31390taepaCPqyAi0+UIkkNoLVVEwGb1YR
	anEFdhgI4EsHZieAUA9aTdlBbJgzDVQ4aSnurWHkAwKtU97V9E2Xo2GRMql1gOsnv83ax0YO7/eQv
	jCK33Ks0dprDoYHTvaFBLz31eZ+kdN52WwnnFzrJjhKEU/vRS7qmeX4r++RXs3IYPa6FCYgbJBsFI
	wD2S1z/aubhoXMXd5LoefLNkPK77ueS5x4YNgNra4waDC8+yTSeCHMwCzwTVT81j9AQ19JufjkI1P
	Hg1wCBIVWSNPNOy1wptg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXIa-00075S-Q7; Thu, 27 Jun 2019 16:31:00 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXIS-00074u-5W
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 16:30:53 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hgXIL-0002lS-36; Thu, 27 Jun 2019 10:30:46 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
 <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
 <20190627090843.GB11548@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <89889319-e778-7772-ab36-dc55b59826be@deltatee.com>
Date: Thu, 27 Jun 2019 10:30:42 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190627090843.GB11548@lst.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 dan.j.williams@intel.com, bhelgaas@google.com, axboe@kernel.dk,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, jgg@ziepe.ca, hch@lst.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE autolearn=ham autolearn_force=no
 version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_093052_544410_532D4A60 
X-CRM114-Status: GOOD (  17.87  )
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
 Jason Gunthorpe <jgg@ziepe.ca>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-27 3:08 a.m., Christoph Hellwig wrote:
> On Wed, Jun 26, 2019 at 02:45:38PM -0600, Logan Gunthorpe wrote:
>>> The bar info would give the exporting struct device and any other info
>>> we need to make the iommu mapping.
>>
>> Well, the IOMMU mapping is the normal thing the mapping driver will
>> always do. We'd really just need the submitting driver to, when
>> appropriate, inform the mapping driver that this is a pci bus address
>> and not to call dma_map_xxx(). Then, for special mappings for the CMB
>> like Christoph is talking about, it's simply a matter of doing a range
>> compare on the PCI Bus address and converting the bus address to a BAR
>> and offset.
> 
> Well, range compare on the physical address.  We have a few different
> options here:
> 
>  (a) a range is normal RAM, DMA mapping works as usual
>  (b) a range is another devices BAR, in which case we need to do a
>      map_resource equivalent (which really just means don't bother with
>      cache flush on non-coherent architectures) and apply any needed
>      offset, fixed or iommu based

Well I would split this into two cases: (b1) ranges in another device's
BAR that will pass through the root complex and require a map_resource
equivalent and (b2) ranges in another device's bar that don't pass
through the root complex and require applying an offset to the bus
address. Both require rather different handling and the submitting
driver should already know ahead of time what type we have.

>  (c) a range points to a BAR on the acting device. In which case we
>      don't need to DMA map at all, because no dma is happening but just an
>      internal transfer.  And depending on the device that might also require
>      a different addressing mode

I think (c) is actually just a special case of (b2). Any device that has
a special protocol for addressing the local BAR can just do a range
compare on the address to determine if it's local or not. Devices that
don't have a special protocol for this would handle both (c) and (b2)
the same.

> I guess it might make sense to just have a block layer flag that (b) or
> (c) might be contained in a bio.  Then we always look up the data
> structure, but can still fall back to (a) if nothing was found.  That
> even allows free mixing and matching of memory types, at least as long
> as they are contained to separate bio_vec segments.

IMO these three cases should be reflected in flags in the bio_vec. We'd
probably still need a queue flag to indicate support for mapping these,
but a flag on the bio that indicates special cases *might* exist in the
bio_vec and the driver has to do extra work to somehow distinguish the
three types doesn't seem useful. bio_vec flags also make it easy to
support mixing segments from different memory types.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
