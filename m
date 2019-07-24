Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E83973311
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 17:50:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1KYTJGcsHRuboeFtAlbbR4jlFkFlkvhtYzkusgr148=; b=pmAVyM0brhng4j
	FaqmDheQdbq/bSALOXxJ9xX9xDrgwPYNk2HQOeJXdps2xKK0c23vWAOZrgsH9dhcz/s0nApUGMqdw
	1IyL74PDjVn7lFKr7zhJNYOWLDBvTp5N9j13mijfB6f+/vFFwEIyis+5PWARx9QigoT/ELgURverm
	ANRaRNqIPX/FYcw8Q619qonVIDZ2kkR8olAqhEczmWYVBRRL4yt5GTc3U9W+xefF0lYf4GBcj0fvX
	ahnwAtOFSlim5DOxzUkg2FY6BjbyE0jQIEFdT6gSAgWTm80ugA5S1IcPdyyCHikrJUBssQ8xnwVFw
	EjTxowOYvDn1qKGldLQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqJXI-0000p7-NV; Wed, 24 Jul 2019 15:50:36 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqJXC-0000nZ-M9
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 15:50:32 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqJWv-00057X-JI; Wed, 24 Jul 2019 09:50:14 -0600
To: Christoph Hellwig <hch@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-8-logang@deltatee.com> <20190724063229.GA1804@lst.de>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <818e465d-3e57-b425-2431-e330a43fe7bd@deltatee.com>
Date: Wed, 24 Jul 2019 09:50:03 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190724063229.GA1804@lst.de>
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
Subject: Re: [PATCH 07/14] PCI/P2PDMA: Add the provider's pci_dev to the
 dev_pgmap struct
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_085030_766784_3B009A04 
X-CRM114-Status: GOOD (  11.36  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
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
> On Mon, Jul 22, 2019 at 05:08:52PM -0600, Logan Gunthorpe wrote:
>> diff --git a/drivers/pci/p2pdma.c b/drivers/pci/p2pdma.c
>> index 143e11d2a5c3..70c262b7c731 100644
>> --- a/drivers/pci/p2pdma.c
>> +++ b/drivers/pci/p2pdma.c
>> @@ -168,6 +168,7 @@ int pci_p2pdma_add_resource(struct pci_dev *pdev, int bar, size_t size,
>>  	pgmap->res.end = pgmap->res.start + size - 1;
>>  	pgmap->res.flags = pci_resource_flags(pdev, bar);
>>  	pgmap->type = MEMORY_DEVICE_PCI_P2PDMA;
>> +	pgmap->pci_p2pdma_provider = pdev;
>>  	pgmap->pci_p2pdma_bus_offset = pci_bus_address(pdev, bar) -
>>  		pci_resource_start(pdev, bar);
> 
> I think we need to bite the bullet and move the PCIe P2P specific
> information out of struct dev_pagemap and into a pci-specific structure
> that embedds struct dev_pagemap.

OK, I was going to do that, but you just removed the p2p specific page
map. ;)

I'll change this for a v2.

Logan


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
