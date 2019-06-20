Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3724D991
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 20:39:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HP76ahXABjPLjSbogfUbvlEnv6Ln4B7sfcFlx4NrYw8=; b=hijxMYGIJSps2Q
	b/jI3LPM1NbLXKES5Z8Eek/MCseovKW1LsRAMhwabAQ9MD36RTgzrhpz2sDtzj7x3hOaiSyN/UILO
	Q9PNbHXqgcEawsgLGK8WKspIDu0qbxj3JCWRwdvonxIzgH8JnbH7LtZQJw6M3uQWOrt3Y3pzLlMrE
	fF2Tc8st76SwHQrb4zORFWW3x98xe1DisDScY942xNar+ppS9fw5tysGvH8L4mqTRx+RyvUM02CaJ
	xLaGfOIUoiy2/07yCHOaFPAXm/0N5dQ3d3eJl2ftVi5qIs7+Mlq+RK5uUYHneEZUQy8HXpHOpUFPB
	kfogw/5K3xd7dkOlC0oQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he1xT-000396-S1; Thu, 20 Jun 2019 18:38:51 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he1x8-00030E-Pu
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 18:38:33 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1he1ws-000641-Jx; Thu, 20 Jun 2019 12:38:15 -0600
To: Jason Gunthorpe <jgg@ziepe.ca>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190620161240.22738-5-logang@deltatee.com>
 <20190620172347.GE19891@ziepe.ca>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <6e4caa21-a148-00d1-a46f-18517fb744d6@deltatee.com>
Date: Thu, 20 Jun 2019 12:38:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190620172347.GE19891@ziepe.ca>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: sbates@raithlin.com, kbusch@kernel.org, sagi@grimberg.me,
 dan.j.williams@intel.com, bhelgaas@google.com, hch@lst.de, axboe@kernel.dk,
 linux-rdma@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org,
 linux-kernel@vger.kernel.org, jgg@ziepe.ca
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [RFC PATCH 04/28] block: Never bounce dma-direct bios
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_113831_268955_D2185832 
X-CRM114-Status: GOOD (  19.38  )
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



On 2019-06-20 11:23 a.m., Jason Gunthorpe wrote:
> On Thu, Jun 20, 2019 at 10:12:16AM -0600, Logan Gunthorpe wrote:
>> It is expected the creator of the dma-direct bio will ensure the
>> target device can access the DMA address it's creating bios for.
>> It's also not possible to bounce a dma-direct bio seeing the block
>> layer doesn't have any way to access the underlying data behind
>> the DMA address.
>>
>> Thus, never bounce dma-direct bios.
> 
> I wonder how feasible it would be to implement a 'dma vec' copy
> from/to? 

> That is about the only operation you could safely do on P2P BAR
> memory. 
> 
> I wonder if a copy implementation could somehow query the iommu layer
> to get a kmap of the memory pointed at by the dma address so we don't
> need to carry struct page around?

That sounds a bit nasty. First we'd have to determine what the
dma_addr_t points to; and with P2P it may be a bus address or it may be
an IOVA address and it would probably have to be based on whether the
IOVA is reserved or not (PCI bus addresses should all be reserved).
Second, if it is an IOVA then the we'd have to get the physical address
back from the IOMMU tables and hope we can then get it back to a
sensible kernel mapping -- and if it points to a PCI bus address we'd
then have to somehow get back to the kernel mapping which could be
anywhere in the VMALLOC region as we no longer have the linear mapping
that struct page provides.

I think if we need access to the memory, then this is the wrong approach
and we should keep struct page or try pfn_t so we can map the memory in
a way that would perform better.

In theory, I could relatively easily do the same thing I did for dma_vec
but with a pfn_t_vec. Though we'd still have the problem of determining
virtual address from physical address for memory that isn't linearly
mapped. We'd probably have to introduce some arch-specific thing to
linearly map an io region or something which may be possible on some
arches on not on others (same problems we have with struct page).

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
