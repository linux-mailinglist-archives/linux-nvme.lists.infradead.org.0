Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 054847333E
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 17:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDyv4JZeSCpKhruuJulupMxeV/+EhPzlL0NU93/AmT8=; b=kHEDQTDdtKwLGf
	xOW0mvFifVqXgkTfUKMVrg7WsaYcN6WTjpJaPriYSEBK70c9dALNTiDx26d5EAQ7HnegzAnNuRy9J
	DTykDEk0eCZIuZImv2Wpx6rCWx+3xDnbk0QChEeFD2QtXR+bw3NzRmBgmpa2QpZg/1xwcjQCIZk4S
	yVazyTrTT6GSdNWC1ibZXmAp3s2yhpNDpMWgGaVHVHtK8tj6PSEpFld+79AQhYnuFRFDGA0J9f6mD
	KZeZvjkw8DcSO0gYEM/ZVdsd1dpRgPpJVI0BZYSBlib0RulOmfJsfF/Vcl6fkg3ioNRyFL16lxfSb
	LNaZcLKwxaI6Z3c7fGQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJfi-0004IA-S5; Wed, 24 Jul 2019 15:59:18 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJfd-0004Hl-3M
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 15:59:14 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqJfR-0005E5-5g; Wed, 24 Jul 2019 09:59:02 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-12-logang@deltatee.com> <20190724063232.GB1804@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <7173a4dd-0c9c-48de-98cd-93513313fd8d@deltatee.com>
Date: Wed, 24 Jul 2019 09:58:59 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724063232.GB1804@lst.de>
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
X-CRM114-CacheID: sfid-20190724_085913_481641_9F637842 
X-CRM114-Status: GOOD (  15.47  )
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
>>  	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
>> +	struct pci_dev *client;
>> +	int dist;
>> +
>> +	client = find_parent_pci_dev(dev);
>> +	if (WARN_ON_ONCE(!client))
>> +		return 0;
>>  
>> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
>> +					client, NULL);
> 
> Doing this on every mapping call sounds expensive..

The result of this function is cached in an xarray (per patch 4) so, on
the hot path, it should just be a single xa_load() which should be a
relatively fast lookup which is similarly used for other hot path
operations.

> 
>> +	if (WARN_ON_ONCE(dist & P2PDMA_NOT_SUPPORTED))
>> +		return 0;
>> +
>> +	if (dist & P2PDMA_THRU_HOST_BRIDGE)
>> +		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
>> +	else
>> +		return __pci_p2pdma_map_sg(pgmap, dev, sg, nents);
> 
> Can't we organize the values so that we can switch on the return
> value instead of doing flag checks?

Sorry, I don't follow what you are saying here. If you mean for
upstream_bridge_distance() to just return how to map and not the
distance that would interfere with other uses of that function.

>>  }
>>  EXPORT_SYMBOL_GPL(pci_p2pdma_map_sg_attrs);
>>  
>> @@ -847,6 +861,21 @@ EXPORT_SYMBOL_GPL(pci_p2pdma_map_sg_attrs);
>>  void pci_p2pdma_unmap_sg_attrs(struct device *dev, struct scatterlist *sg,
>>  		int nents, enum dma_data_direction dir, unsigned long attrs)
>>  {
>> +	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
>> +	struct pci_dev *client;
>> +	int dist;
>> +
>> +	client = find_parent_pci_dev(dev);
>> +	if (!client)
>> +		return;
>> +
>> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
>> +					client, NULL);
> 
> And then we do it for every unmap again..

Yup, I don't think there's much else we can do here.

This is why I was fighting against doing lookups against the phys_addr_t
because that means you have to do these additional lookups.

My hope is if we can move to the phys_addr_t and flags as I described
here[1] we can get rid of these hot path lookups, but with the way
things are structured now this is necessary.

Logan

[1]
https://lore.kernel.org/linux-block/e63d0259-e17f-effe-b76d-43dbfda8ae3a@deltatee.com/


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
