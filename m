Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D8A57378
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 23:18:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x9aai36Z7CXRsVM/8BebdFEd7ULFJR8eoNCJvDP2IUY=; b=F2OMzYVjxP/J5A
	308/yAMrJcCuFNUHt1oo0T/htNdhf1qhhS0+84zLKQ6Io9BkP/JJT9UXVDeyfbkvizBu0AI0st5r9
	6T9IohOUFy4xzc0m/rm0ES8AqHXtBUkAxUy8YEem9FBHS8sV5OHKEYGKGGCVELiknSIc5vs12pQ8y
	GwZuG57DbLE+sFIu7pHdIgtgYylKxFMSPeoNIXVH6dNFU/zGQLl3uMKIWbrq2wnftnr1Nmv9tmKuF
	NmbqSuwFFiwdxQ0ofdCNlU2bePfCkP7oaruYtNG8UqH28yzqKGgI66Gz2IGYVeQjxp4qgKo65y2UH
	vsoF2/tKNLfncguRry3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgFJ8-0000K2-Ai; Wed, 26 Jun 2019 21:18:22 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgFJ1-0000Jh-QU
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 21:18:17 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hgFIv-000310-0a; Wed, 26 Jun 2019 15:18:10 -0600
To: Jason Gunthorpe <jgg@ziepe.ca>
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
 <20190626210018.GB6392@ziepe.ca>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <c25d3333-dcd5-3313-089b-7fbbd6fbd876@deltatee.com>
Date: Wed, 26 Jun 2019 15:18:07 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190626210018.GB6392@ziepe.ca>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
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
X-CRM114-CacheID: sfid-20190626_141816_208499_BC38DFC9 
X-CRM114-Status: GOOD (  21.94  )
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
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Stephen Bates <sbates@raithlin.com>, linux-block@vger.kernel.org,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-26 3:00 p.m., Jason Gunthorpe wrote:
> On Wed, Jun 26, 2019 at 02:45:38PM -0600, Logan Gunthorpe wrote:
>>
>>
>> On 2019-06-26 2:21 p.m., Jason Gunthorpe wrote:
>>> On Wed, Jun 26, 2019 at 12:31:08PM -0600, Logan Gunthorpe wrote:
>>>>> we have a hole behind len where we could store flag.  Preferably
>>>>> optionally based on a P2P or other magic memory types config
>>>>> option so that 32-bit systems with 32-bit phys_addr_t actually
>>>>> benefit from the smaller and better packing structure.
>>>>
>>>> That seems sensible. The one thing that's unclear though is how to get
>>>> the PCI Bus address when appropriate. Can we pass that in instead of the
>>>> phys_addr with an appropriate flag? Or will we need to pass the actual
>>>> physical address and then, at the map step, the driver has to some how
>>>> lookup the PCI device to figure out the bus offset?
>>>
>>> I agree with CH, if we go down this path it is a layering violation
>>> for the thing injecting bio's into the block stack to know what struct
>>> device they egress&dma map on just to be able to do the dma_map up
>>> front.
>>
>> Not sure I agree with this statement. The p2pdma code already *must*
>> know and access the pci_dev of the dma device ahead of when it submits
>> the IO to know if it's valid to allocate and use P2P memory at all.
> 
> I don't think we should make drives do that. What if it got CMB memory
> on some other device?

Huh? A driver submitting P2P requests finds appropriate memory to use
based on the DMA device that will be doing the mapping. It *has* to. It
doesn't necessarily have control over which P2P provider it might find
(ie. it may get CMB memory from a random NVMe device), but it easily
knows the NVMe device it got the CMB memory for. Look at the existing
code in the nvme target.

>>> For instance we could use a small hash table of the upper phys addr
>>> bits, or an interval tree, to do the lookup.
>>
>> Yes, if we're going to take a hard stance on this. But using an interval
>> tree (or similar) is a lot more work for the CPU to figure out these
>> mappings that may not be strictly necessary if we could just pass better
>> information down from the submitting driver to the mapping driver.
> 
> Right, this is coming down to an optimization argument. I think there
> are very few cases (Basically yours) where the caller will know this
> info, so we need to support the other cases anyhow.

I disagree. I think it has to be a common pattern. A driver doing a P2P
transaction *must* find some device to obtain memory from (or it may be
itself)  and check if it is compatible with the device that's going to
be mapping the memory or vice versa. So no matter what we do, a driver
submitting P2P requests must have access to both the PCI device that's
going to be mapping the memory and the device that's providing the memory.

> I think with some simple caching this will become negligible for cases
> you care about

Well *maybe* it will be negligible performance wise, but it's also a lot
more complicated, code wise. Tree lookups will always be a lot more
expensive than just checking a flag.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
