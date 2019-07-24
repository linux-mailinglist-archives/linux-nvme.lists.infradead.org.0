Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A88F73357
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 18:06:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kdWb7Q9fFzh97qA969X0fVUhmpQtS/9MkXeww5tSL8E=; b=pJIIJbWwnUWhU9
	GIGVh5vjlsLuurxC5by/DsSZiiC0Qt1+SxOe+aaWapB38BWbEFSGVohfkOlG25iM75p/vWN/WgytW
	SbkLeF6VUwib67LHlFaRncuO/G4RP4hJcPJnEVIJPYrU2OKLcusdNLkRbY+qfG2jFiUOmuytl8Yut
	WqNm8377IwLpYcinFc2b5YpaGRFigKZDkVR3ix5FRbR3vP5UBGHPCiJgfpIwMg85yR4PEYpdplP8d
	AEr+lWYqP/ntIp2Ued7pFOHQGPOBp3oEBs5RtFIHhu8vmdndiKgr8rf9Y0PwYXK+pY0GpqCPsN6e7
	KEUvTcFMen/Eb45wUgYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJmt-000838-0o; Wed, 24 Jul 2019 16:06:43 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJmm-00082Y-TP
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 16:06:38 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqJmb-0005ZT-8c; Wed, 24 Jul 2019 10:06:26 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-15-logang@deltatee.com> <20190724063235.GC1804@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <57e8fc1a-de70-fb65-5ef1-ffa2b95c73a6@deltatee.com>
Date: Wed, 24 Jul 2019 10:06:22 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724063235.GC1804@lst.de>
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
Subject: Re: [PATCH 14/14] PCI/P2PDMA: Introduce pci_p2pdma_[un]map_resource()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_090637_288712_154131D4 
X-CRM114-Status: GOOD (  15.85  )
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



On 2019-07-24 12:32 a.m., Christoph Hellwig wrote:
>> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
>> index baf476039396..20c834cfd2d3 100644
>> --- a/drivers/pci/p2pdma.c
>> +++ b/drivers/pci/p2pdma.c
>> @@ -874,6 +874,91 @@ void pci_p2pdma_unmap_sg_attrs(struct device *dev, struct scatterlist *sg,
>>  }
>>  EXPORT_SYMBOL_GPL(pci_p2pdma_unmap_sg_attrs);
>>  
>> +static pci_bus_addr_t pci_p2pdma_phys_to_bus(struct pci_dev *dev,
>> +		phys_addr_t start, size_t size)
>> +{
>> +	struct pci_host_bridge *bridge = pci_find_host_bridge(dev->bus);
>> +	phys_addr_t end = start + size;
>> +	struct resource_entry *window;
>> +
>> +	resource_list_for_each_entry(window, &bridge->windows) {
>> +		if (window->res->start <= start && window->res->end >= end)
>> +			return start - window->offset;
>> +	}
>> +
>> +	return DMA_MAPPING_ERROR;
> 
> This does once again look very expensive for something called in the
> hot path.

Yes. This is the downside of dealing only with a phys_addr_t: we have to
look up against it. Unfortunately, I believe it's possible for different
BARs on a device to be in different windows, so something like this is
necessary unless we already know the BAR the phys_addr_t belongs to. It
might probably be sped up a bit by storing the offsets of each bar
instead of looping through all the bridge windows, but I don't think it
will get you *that* much.

As this is an example with no users, the answer here will really depend
on what the use-case is doing. If they can lookup, ahead of time, the
mapping type and offset then they don't have to do this work on the hot
path and it means that pci_p2pdma_map_resource() is simply not a
suitable API.

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
