Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263D5757B1
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 21:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ib2dR7FZ4nfCR4zZFwpJLuoXdB1J+yy3cI2gFfRRf4M=; b=QYMMq3cJVRhajo
	df0bZ2r4Y/bp0PH/hn2nJNP1L9mRxC04mKHGSEivB0WR9jw2Ausbl5n2SVVQJXByK37Rym9nTdpeL
	uJZWlc+zuUqZHk5fr1poSLRqSlF3Ca9j2XZ0ZREpm6KZIEf2zoVP//j7mlKd1WVyF/IZJ2N/sCnrg
	qWyzz00kVFyZGyR9voKvU9lVnZojZqCnU33+/HsfqVPknzQyed2J698B7xg+h9RIfbu4uvq0PRx7p
	EI5tIpX/TWDVR2F1/KvjPHDolfoAnzm7/GHw/bmdG7AhnZrl5JhEzCC1GNfPP15yx1ONfCqSKsyFc
	Jm56Fe2IwI50by+lZ6Mw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqjEx-0007QS-Cd; Thu, 25 Jul 2019 19:17:23 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqjEp-0007Pz-2H
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 19:17:16 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqjEe-0003mV-J9; Thu, 25 Jul 2019 13:17:05 -0600
To: Jason Gunthorpe <jgg@mellanox.com>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-12-logang@deltatee.com>
 <20190725185830.GH7450@mellanox.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <cf61d237-8a8a-e3ac-a9df-466f20b63020@deltatee.com>
Date: Thu, 25 Jul 2019 13:17:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725185830.GH7450@mellanox.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, epilmore@gigaio.com,
 dan.j.williams@intel.com, axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me,
 Christian.Koenig@amd.com, hch@lst.de, bhelgaas@google.com,
 linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, jgg@mellanox.com
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/14] PCI/P2PDMA: dma_map P2PDMA map requests that
 traverse the host bridge
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_121715_431343_E7BDD8E6 
X-CRM114-Status: GOOD (  16.96  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 "linux-rdma@vger.kernel.org" <linux-rdma@vger.kernel.org>,
 "linux-pci@vger.kernel.org" <linux-pci@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Christian Koenig <Christian.Koenig@amd.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Stephen Bates <sbates@raithlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-25 12:58 p.m., Jason Gunthorpe wrote:
> On Mon, Jul 22, 2019 at 05:08:56PM -0600, Logan Gunthorpe wrote:
>> Any requests that traverse the host bridge will need to be mapped into
>> the IOMMU, so call dma_map_sg() inside pci_p2pdma_map_sg() when
>> appropriate.
>>
>> Similarly, call dma_unmap_sg() inside pci_p2pdma_unmap_sg().
>>
>> Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
>>  drivers/pci/p2pdma.c | 31 ++++++++++++++++++++++++++++++-
>>  1 file changed, 30 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
>> index 5f43f92f9336..76f51678342c 100644
>> +++ b/drivers/pci/p2pdma.c
>> @@ -830,8 +830,22 @@ int pci_p2pdma_map_sg_attrs(struct device *dev, struct scatterlist *sg,
>>  		int nents, enum dma_data_direction dir, unsigned long attrs)
>>  {
>>  	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
>> +	struct pci_dev *client;
>> +	int dist;
>> +
>> +	client = find_parent_pci_dev(dev);
>> +	if (WARN_ON_ONCE(!client))
>> +		return 0;
>>  
>> -	return __pci_p2pdma_map_sg(pgmap, dev, sg, nents);
>> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
>> +					client, NULL);
>> +	if (WARN_ON_ONCE(dist & P2PDMA_NOT_SUPPORTED))
>> +		return 0;
>> +
>> +	if (dist & P2PDMA_THRU_HOST_BRIDGE)
>> +		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
> 
> IIRC at this point the SG will have struct page references to the BAR
> memory - so (all?) the IOMMU drivers are able to handle P2P setup in
> this case?

Yes. The IOMMU drivers refer to the physical address for BAR which they
can get from the struct page. And this works fine today.

> Didn't you also have a patch to remove the struct page's for the BAR
> memory?  

Well that was an RFC that's not going anywhere in it's current form. I'd
still like to remove struct pages but that's going to take a while and
when that happens, this will have to be reworked. Probably to use
dma_map_resource() instead but will depend on the form the removal takes.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
