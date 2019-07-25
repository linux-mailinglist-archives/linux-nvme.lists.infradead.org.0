Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E3067536F
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 18:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xEM3rAn3dpDdZ3/6ASZDeQ/mcRFUvSZ+ZvllExa+xWw=; b=i7ImLOq3iRjqM3
	XI1MCXlprPXMULV3kKlNUO4V5+dJNKr3b+pNbXEdm9+PaMOfLyvmkQoWjErAhCurYk4FXRmSWqKF2
	agFefB2wfkealLb/llnbmyO+WwgY5o+/GW/8T4S+dmThEE+4A/ykPNk0p9ut2lyaqvL3PO1ghi1Bm
	TeGA5qASpiY6y4kxesI07IjmDwboXm1bVhl8GdUGMpvYnvZZUkWD+H/RLjks2rw/azqPI2ooYDtJd
	YcGZbSMmvL5xQ1/1e6hnn1c0iIzcpPDlfnlJlodt3gPxbVRrLEWTzdtU7j4Q6w8EDMKa8QdbqBz4e
	NhEgNqiQOfvpMTwMKw1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqgAu-00027j-Ax; Thu, 25 Jul 2019 16:01:00 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqgAe-00027D-Gb
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 16:00:46 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqgAQ-00081J-CN; Thu, 25 Jul 2019 10:00:31 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-12-logang@deltatee.com> <20190724063232.GB1804@lst.de>
 <7173a4dd-0c9c-48de-98cd-93513313fd8d@deltatee.com>
 <20190725061005.GB24875@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <fb39485a-2914-bac4-b249-e1f4ecc8d2be@deltatee.com>
Date: Thu, 25 Jul 2019 10:00:25 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725061005.GB24875@lst.de>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, epilmore@gigaio.com,
 dan.j.williams@intel.com, axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me,
 jgg@mellanox.com, Christian.Koenig@amd.com, bhelgaas@google.com,
 linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, hch@lst.de
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
X-CRM114-CacheID: sfid-20190725_090044_896713_025A3131 
X-CRM114-Status: GOOD (  19.01  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Eric Pilmore <epilmore@gigaio.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Stephen Bates <sbates@raithlin.com>,
 Christian Koenig <Christian.Koenig@amd.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-25 12:10 a.m., Christoph Hellwig wrote:
> On Wed, Jul 24, 2019 at 09:58:59AM -0600, Logan Gunthorpe wrote:
>>
>>
>> On 2019-07-24 12:32 a.m., Christoph Hellwig wrote:
>>>>  	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
>>>> +	struct pci_dev *client;
>>>> +	int dist;
>>>> +
>>>> +	client = find_parent_pci_dev(dev);
>>>> +	if (WARN_ON_ONCE(!client))
>>>> +		return 0;
>>>>  
>>>> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
>>>> +					client, NULL);
>>>
>>> Doing this on every mapping call sounds expensive..
>>
>> The result of this function is cached in an xarray (per patch 4) so, on
>> the hot path, it should just be a single xa_load() which should be a
>> relatively fast lookup which is similarly used for other hot path
>> operations.
> 
> We don't cache find_parent_pci_dev, though.  So we should probably
> export find_parent_pci_dev with a proper namespaces name and cache
> that in the caler.

Oh, yes, I'll take a look at this. Of the two callers: NVMe should be
easy we could just pass the PCI device instead of the struct device.
RDMA is significantly more unclear: would you add a pci_dev to struct
ib_device? Or maybe we should be able to simply rely on the fact that
the DMA device *must* be a PCI device and just use to_pci_dev() directly?

>>>
>>>> +	if (WARN_ON_ONCE(dist & P2PDMA_NOT_SUPPORTED))
>>>> +		return 0;
>>>> +
>>>> +	if (dist & P2PDMA_THRU_HOST_BRIDGE)
>>>> +		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
>>>> +	else
>>>> +		return __pci_p2pdma_map_sg(pgmap, dev, sg, nents);
>>>
>>> Can't we organize the values so that we can switch on the return
>>> value instead of doing flag checks?
>>
>> Sorry, I don't follow what you are saying here. If you mean for
>> upstream_bridge_distance() to just return how to map and not the
>> distance that would interfere with other uses of that function.
> 
> The point is that in the map path we don't even care about the
> distance.  I think we should just have a function that returns the
> P2PDMA_ values from the xarray (maybe also store it there as two
> values, but that isn't quite as important), and get rid of even
> the concept of distance in the map path. e.g.:
> 
> 	switch (pci_p2pdma_supported(pgmap->pci_p2pdma_provider, client))) {
> 	case P2PDMA_HOST_BRIDGE:
> 		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
> 	case P2PDMA_SWITCH:
> 		return __pci_p2pdma_map_sg(pgmap, dev, sg, nents);
> 	default:
> 		WARN_ON_ONCE(1);
> 		return 0;
> 	}

Ok, will change for v2.

Thanks,

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
