Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCAF572FA
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 22:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UIcNd2bZgDtd3i93oJchHizcgDHpj6wwYxk1Se6mdGs=; b=SyO5e1sLYHb+iQ
	jX3NRFUqd93ILpKsvmWmcmGETkCibR5Sb/gTsDlkV9rog8XHrO+PjIfPueaAxW1GBJrLbv/m6sg8t
	Bl+PDXixYL26yyKhlQql3DCn9oz1bNtp0HVyinxWYdQEgFw3tVkFHXOU/g6v60fYESNIHYzuiPWvF
	Sz7XzveVZ/mmnehmn9+Cfd+RlxALZXvmw6g7sJMtMnoxbsKIYW1xletaym6wIsFwpn/82tINcopeU
	b4fElFav+9Oc0X9yOcvOmRRf1ua+1C7STEUiR248afCQ5KVHMhMoDB0cVslvz1w3Y5D1JlKvGaHb1
	L/ePDaRDiyS5ROGt+3Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgEo1-00077R-TA; Wed, 26 Jun 2019 20:46:13 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgEni-00076T-U1
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 20:45:56 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hgEnT-0002Rd-NS; Wed, 26 Jun 2019 14:45:40 -0600
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
 <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
 <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
Date: Wed, 26 Jun 2019 14:45:38 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190626202107.GA5850@ziepe.ca>
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
X-CRM114-CacheID: sfid-20190626_134555_342079_12F77630 
X-CRM114-Status: GOOD (  17.79  )
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



On 2019-06-26 2:21 p.m., Jason Gunthorpe wrote:
> On Wed, Jun 26, 2019 at 12:31:08PM -0600, Logan Gunthorpe wrote:
>>> we have a hole behind len where we could store flag.  Preferably
>>> optionally based on a P2P or other magic memory types config
>>> option so that 32-bit systems with 32-bit phys_addr_t actually
>>> benefit from the smaller and better packing structure.
>>
>> That seems sensible. The one thing that's unclear though is how to get
>> the PCI Bus address when appropriate. Can we pass that in instead of the
>> phys_addr with an appropriate flag? Or will we need to pass the actual
>> physical address and then, at the map step, the driver has to some how
>> lookup the PCI device to figure out the bus offset?
> 
> I agree with CH, if we go down this path it is a layering violation
> for the thing injecting bio's into the block stack to know what struct
> device they egress&dma map on just to be able to do the dma_map up
> front.

Not sure I agree with this statement. The p2pdma code already *must*
know and access the pci_dev of the dma device ahead of when it submits
the IO to know if it's valid to allocate and use P2P memory at all. This
is why the submitting driver has a lot of the information needed to map
this memory that the mapping driver does not.

> So we must be able to go from this new phys_addr_t&flags to some BAR
> information during dma_map.

> For instance we could use a small hash table of the upper phys addr
> bits, or an interval tree, to do the lookup.

Yes, if we're going to take a hard stance on this. But using an interval
tree (or similar) is a lot more work for the CPU to figure out these
mappings that may not be strictly necessary if we could just pass better
information down from the submitting driver to the mapping driver.

> The bar info would give the exporting struct device and any other info
> we need to make the iommu mapping.

Well, the IOMMU mapping is the normal thing the mapping driver will
always do. We'd really just need the submitting driver to, when
appropriate, inform the mapping driver that this is a pci bus address
and not to call dma_map_xxx(). Then, for special mappings for the CMB
like Christoph is talking about, it's simply a matter of doing a range
compare on the PCI Bus address and converting the bus address to a BAR
and offset.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
