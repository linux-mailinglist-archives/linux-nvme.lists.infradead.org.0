Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9BCD5A007
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 17:55:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N4ihTlhH4X6hHkDpbfge8AO6pXes9IZhb/abZPhyT64=; b=W8cFMSQmI4gtfh
	7FODPXc8tAKrw8I0Mb+mTCJ3nR9y2AwKf+Cx4EdXaSgbt9pd6AxZIanoHffp2AgqV+cAz5jknMBat
	Q1wERjSotvU7TzX3ur8v6Hc8ms76GYgcISLzu7v6nf10QY3CDkyjgAGSnSK46zKt63PYTLoRhfz5S
	Vpu8D1awebukAlpHTKzUUAP+CZmBIQZovA63zfZq40aR6Dbcr+M5iXFmLjHel5Qmvo0w/Ij1gVbGw
	NgW0b0EJirfnJK8TCLf+clmhp3F5psLba8BlDh9s9TGQZThus4aNpYJeVNXkiSRKImZ+eVGgNUchW
	Awxag2w5PcCVobg8KskQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgtDG-0002t6-2R; Fri, 28 Jun 2019 15:54:58 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgtD7-0002rH-SM
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 15:54:51 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hgtCs-0008QY-EA; Fri, 28 Jun 2019 09:54:35 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
 <20190627090843.GB11548@lst.de>
 <89889319-e778-7772-ab36-dc55b59826be@deltatee.com>
 <20190627170027.GE10652@lst.de>
 <e63d0259-e17f-effe-b76d-43dbfda8ae3a@deltatee.com>
 <20190628133837.GA3801@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <10b2b013-5b2e-f642-9524-9551809c03a3@deltatee.com>
Date: Fri, 28 Jun 2019 09:54:27 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190628133837.GA3801@lst.de>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 dan.j.williams@intel.com, bhelgaas@google.com, axboe@kernel.dk,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, jgg@ziepe.ca, hch@lst.de
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_085450_257660_F75EA3FC 
X-CRM114-Status: GOOD (  23.61  )
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



On 2019-06-28 7:38 a.m., Christoph Hellwig wrote:
> On Thu, Jun 27, 2019 at 12:00:35PM -0600, Logan Gunthorpe wrote:
>>> It is not.  (c) is fundamentally very different as it is not actually
>>> an operation that ever goes out to the wire at all, and which is why the
>>> actual physical address on the wire does not matter at all.
>>> Some interfaces like NVMe have designed it in a way that it the commands
>>> used to do this internal transfer look like (b2), but that is just their
>>> (IMHO very questionable) interface design choice, that produces a whole
>>> chain of problems.
>>
>> >From the mapping device's driver's perspective yes, but from the
>> perspective of a submitting driver they would be the same.
> 
> With your dma_addr_t scheme it won't be the same, as you'd need
> a magic way to generate the internal addressing and stuff it into
> the dma_addr_t.  With a phys_addr_t based scheme they should basically
> be all the same.

Yes, I see the folly in the dma_addr_t scheme now. I like the
phys_addr_t ideas we have been discussing.

>> Yes, you did suggest them. But what I'm trying to suggest is we don't
>> *necessarily* need the lookup. For demonstration purposes only, a
>> submitting driver could very roughly potentially do:
>>
>> struct bio_vec vec;
>> dist = pci_p2pdma_dist(provider_pdev, mapping_pdev);
>> if (dist < 0) {
>>      /* use regular memory */
>>      vec.bv_addr = virt_to_phys(kmalloc(...));
>>      vec.bv_flags = 0;
>> } else if (dist & PCI_P2PDMA_THRU_HOST_BRIDGE) {
>>      vec.bv_addr = pci_p2pmem_alloc_phys(provider_pdev, ...);
>>      vec.bv_flags = BVEC_MAP_RESOURCE;
>> } else {
>>      vec.bv_addr = pci_p2pmem_alloc_bus_addr(provider_pdev, ...);
>>      vec.bv_flags = BVEC_MAP_BUS_ADDR;
>> }
> 
> That doesn't look too bad, except..
> 
>> -- And a mapping driver would roughly just do:
>>
>> dma_addr_t dma_addr;
>> if (vec.bv_flags & BVEC_MAP_BUS_ADDR) {
>>      if (pci_bus_addr_in_bar(mapping_pdev, vec.bv_addr, &bar, &off))  {
>>           /* case (c) */
>>           /* program the DMA engine with bar and off */
> 
> Why bother with that here if we could also let the caller handle
> that? pci_p2pdma_dist() should be able to trivially find that out
> based on provider_dev == mapping_dev.

True, in fact pci_p2pdma_dist() should return 0 in that case.

Though the driver will still have to do a range compare to figure out
which BAR the address belongs to and find the offset.

>> The real difficulty here is that you'd really want all the above handled
>> by a dma_map_bvec() so it can combine every vector hitting the IOMMU
>> into a single continuous IOVA -- but it's hard to fit case (c) into that
>> equation. So it might be that a dma_map_bvec() handles cases (a), (b1)
>> and (b2) and the mapping driver has to then check each resulting DMA
>> vector for pci_bus_addr_in_bar() while it is programming the DMA engine
>> to deal with case (c).
> 
> I'd do it the other way around.  pci_p2pdma_dist is used to find
> the p2p type.  The p2p type is stuff into the bio_vec, and we then:
> 
>  (1) manually check for case (c) in driver for drivers that want to
>      treat it different from (b)
>  (2) we then have a dma mapping wrapper that checks the p2p type
>      and does the right thing for the rest.

Sure, that could make sense.

I imagine there's a lot of details that are wrong or could be done
better in my example. The purpose of it was just to demonstrate that we
can do it without a lookup in an interval tree on the physical address.

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
