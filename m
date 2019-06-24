Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AF7D51B7E
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 21:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yz554UfUyYD2bUj1Xgu+/cSblUmYVMvi1yiYmjlW0I4=; b=lVdbD/pNnvDqba
	Y/LZOibjTEgiUAfQfLIqSqoHWEVUEHrerLtXFsJNnPrIyg6p7b3k2tuytv1hoRJdQdH183vwiQtx6
	TmlnffHt8gYXKkkRI1J3WX79fsDKEorAm7ky5/2ntNXk1C50xdXxvVkWboSJrz9Ew8Pzby8MaHNgR
	uOxGODIStw2ZgXieOfcGPa6y/ldNzUH9WJG75WAWxdLpDR9AQYxEEffsSRu/1w0p6d3aeRH5L0zlj
	IJ6ALdBVKEEeHR8cfT2jKKrBXnPaifYuvIRk69VZMzIPCOOHZfE/yfOGLWKR1WFuYf7CpCBsBK00l
	HzgTifFHQcJ0doJEg7ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfUmP-0001iZ-Kz; Mon, 24 Jun 2019 19:37:29 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfUmJ-0001hm-6d
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 19:37:24 +0000
Received: from guinness.priv.deltatee.com ([172.16.1.162])
 by ale.deltatee.com with esmtp (Exim 4.89)
 (envelope-from <logang@deltatee.com>)
 id 1hfUm8-0002Af-EH; Mon, 24 Jun 2019 13:37:13 -0600
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca> <20190624073126.GB3954@lst.de>
 <20190624134641.GA8268@ziepe.ca> <20190624135024.GA11248@lst.de>
 <20190624135550.GB8268@ziepe.ca>
 <7210ba39-c923-79ca-57bb-7cf9afe21d54@deltatee.com>
 <20190624181632.GC8268@ziepe.ca>
 <bbd81ef9-b4f7-3ba7-7f93-85f602495e19@deltatee.com>
 <20190624185444.GD8268@ziepe.ca>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <980b6d6b-0232-51b6-5aae-03fa8e7fc8e5@deltatee.com>
Date: Mon, 24 Jun 2019 13:37:10 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190624185444.GD8268@ziepe.ca>
Content-Language: en-CA
X-SA-Exim-Connect-IP: 172.16.1.162
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 bhelgaas@google.com, axboe@kernel.dk, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-kernel@vger.kernel.org,
 dan.j.williams@intel.com, hch@lst.de, jgg@ziepe.ca
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_123723_581754_F3973ECC 
X-CRM114-Status: GOOD (  12.35  )
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
 linux-rdma <linux-rdma@vger.kernel.org>, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-06-24 12:54 p.m., Jason Gunthorpe wrote:
> On Mon, Jun 24, 2019 at 12:28:33PM -0600, Logan Gunthorpe wrote:
> 
>>> Sounded like this series does generate the dma_addr for the correct
>>> device..
>>
>> This series doesn't generate any DMA addresses with dma_map(). The
>> current p2pdma code ensures everything is behind the same root port and
>> only uses the pci bus address. This is valid and correct, but yes it's
>> something to expand upon.
> 
> I think if you do this it still has to be presented as the same API
> like dma_map that takes in the target device * and produces the device
> specific dma_addr_t

Yes, once we consider the case where it can go through the root complex,
we will need an API similar to dma_map(). We got rid of that API because
it wasn't yet required or used by anything and, per our best practices,
we don't add features that aren't used as that is more confusing for
people reading/reworking the code.

> Otherwise this whole thing is confusing and looks like *all* of it can
> only work under the switch assumption

Hopefully it'll be clearer once we do the work to map for going through
the root complex. It's not that confusing to me. But it's all orthogonal
to the dma_addr_t through the block layer concept.

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
