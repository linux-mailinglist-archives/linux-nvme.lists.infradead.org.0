Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C81675557
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rny/UasLLbAUFxc/3e49ykvTfLMJ7KVfMCBm8PZpHwM=; b=hxYDF9j1BZnC2O
	wYhYFigc6H7WPw4jZWS2urnuA6S5ODDym4Aa1H50vWIWlTOmp/iy9nnJ6ilRZKhHSLAXX7AmYCPtU
	hIp2pIPYGyqSzk1amszV4yK5QUICE/CRnsi24lrFpTOnEgGyOtvztiIgTd1fmv9TBUuqmshRmcNsg
	E27Mmecb8s8cReCXjiGL87BEA88FNlzAuUKiZ8la7sS7hE9X7OgkMgHitAJgD6H6GnT6wZlLNmsUf
	K9C2NWSO/WeK7C1+g5pc3jkpDStuZe5ajV/PU3iAQaYDq/hdYUukK9vknLrhzWedUL+2KEl+eH70H
	QtTeLW5uClVxT8lH0Ofg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhSK-0008Kd-J8; Thu, 25 Jul 2019 17:23:04 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhSB-0008Jr-C8
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:22:57 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqhRz-0001I0-Mk; Thu, 25 Jul 2019 11:22:44 -0600
To: Jason Gunthorpe <jgg@mellanox.com>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-12-logang@deltatee.com> <20190724063232.GB1804@lst.de>
 <7173a4dd-0c9c-48de-98cd-93513313fd8d@deltatee.com>
 <20190725061005.GB24875@lst.de>
 <fb39485a-2914-bac4-b249-e1f4ecc8d2be@deltatee.com>
 <20190725163438.GF7450@mellanox.com>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <486e2a25-f6e6-75d4-a8b7-6a38fff8546a@deltatee.com>
Date: Thu, 25 Jul 2019 11:22:39 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725163438.GF7450@mellanox.com>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, epilmore@gigaio.com,
 dan.j.williams@intel.com, axboe@fb.com, kbusch@kernel.org, sagi@grimberg.me,
 Christian.Koenig@amd.com, bhelgaas@google.com, linux-rdma@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, hch@lst.de, jgg@mellanox.com
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
X-CRM114-CacheID: sfid-20190725_102255_752567_667F72D9 
X-CRM114-Status: GOOD (  16.23  )
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



On 2019-07-25 10:34 a.m., Jason Gunthorpe wrote:
> On Thu, Jul 25, 2019 at 10:00:25AM -0600, Logan Gunthorpe wrote:
>>
>>
>> On 2019-07-25 12:10 a.m., Christoph Hellwig wrote:
>>> On Wed, Jul 24, 2019 at 09:58:59AM -0600, Logan Gunthorpe wrote:
>>>>
>>>>
>>>> On 2019-07-24 12:32 a.m., Christoph Hellwig wrote:
>>>>>>  	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
>>>>>> +	struct pci_dev *client;
>>>>>> +	int dist;
>>>>>> +
>>>>>> +	client = find_parent_pci_dev(dev);
>>>>>> +	if (WARN_ON_ONCE(!client))
>>>>>> +		return 0;
>>>>>>  
>>>>>> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
>>>>>> +					client, NULL);
>>>>>
>>>>> Doing this on every mapping call sounds expensive..
>>>>
>>>> The result of this function is cached in an xarray (per patch 4) so, on
>>>> the hot path, it should just be a single xa_load() which should be a
>>>> relatively fast lookup which is similarly used for other hot path
>>>> operations.
>>>
>>> We don't cache find_parent_pci_dev, though.  So we should probably
>>> export find_parent_pci_dev with a proper namespaces name and cache
>>> that in the caler.
>>
>> Oh, yes, I'll take a look at this. Of the two callers: NVMe should be
>> easy we could just pass the PCI device instead of the struct device.
>> RDMA is significantly more unclear: would you add a pci_dev to struct
>> ib_device? Or maybe we should be able to simply rely on the fact that
>> the DMA device *must* be a PCI device and just use to_pci_dev() directly?
> 
> AFAIK you need to use the ib_device->dma_device and add some kind of
> is_pci_dev to make it safe

Yes, that's my thinking. The dma_device *should* be a PCI device. We can
just be sure by doing is_pci_dev() and failing the mapping if it is not.

So I *think* we should be able to simply replace the
find_parent_pci_dev() with:

if (!dev_is_pci(dev))
     return 0;

client = to_pci_dev(dev);

Which should be fast and reliable.

The alternative is to push this out into the caller which may have a bit
more information (like the nvme driver does).

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
