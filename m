Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9500757F00
	for <lists+linux-nvme@lfdr.de>; Thu, 27 Jun 2019 11:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Xljwe+AP7Yvrgiy3ZNE26LK+0D022L8zkqz8ZW84mck=; b=UWbGQ6lXufnb4S
	LkglGy+ArFnmNRO+Wax7YF+YjLAZfwWcazmBJGCc10xe5sWKCd4sKzmra2Yn+Fndt48J4ty4dFw/B
	yRFe5jXQEoGoYLJNf8FMg1EjTTMVw236m3BDCcw/F8VtS4sgJEB/dZdCxusMp89EMlIAgcbgvQt8z
	o0cyXATkwTg1itF3EfUT/MHuVwcJIeevWQeGYEKRsEC1+oQviWgu6WXSpFJBg5G6kHr4I29grpKTv
	dJnaEIRF+2rlNXiFsLoCPV7b4GYu0gxlj7k0ebyx8wBhCsl0MW4vX2pddsyAGNeV5olqzSNK3497O
	djsHRo0LN8aWo8NPVHNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgQQG-000376-VQ; Thu, 27 Jun 2019 09:10:29 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgQP6-0002tF-Se
 for linux-nvme@lists.infradead.org; Thu, 27 Jun 2019 09:09:19 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 7C50668B20; Thu, 27 Jun 2019 11:08:43 +0200 (CEST)
Date: Thu, 27 Jun 2019 11:08:43 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190627090843.GB11548@lst.de>
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
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_020917_076524_AF4296AF 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jun 26, 2019 at 02:45:38PM -0600, Logan Gunthorpe wrote:
> > The bar info would give the exporting struct device and any other info
> > we need to make the iommu mapping.
> 
> Well, the IOMMU mapping is the normal thing the mapping driver will
> always do. We'd really just need the submitting driver to, when
> appropriate, inform the mapping driver that this is a pci bus address
> and not to call dma_map_xxx(). Then, for special mappings for the CMB
> like Christoph is talking about, it's simply a matter of doing a range
> compare on the PCI Bus address and converting the bus address to a BAR
> and offset.

Well, range compare on the physical address.  We have a few different
options here:

 (a) a range is normal RAM, DMA mapping works as usual
 (b) a range is another devices BAR, in which case we need to do a
     map_resource equivalent (which really just means don't bother with
     cache flush on non-coherent architectures) and apply any needed
     offset, fixed or iommu based
 (c) a range points to a BAR on the acting device. In which case we
     don't need to DMA map at all, because no dma is happening but just an
     internal transfer.  And depending on the device that might also require
     a different addressing mode

I guess it might make sense to just have a block layer flag that (b) or
(c) might be contained in a bio.  Then we always look up the data
structure, but can still fall back to (a) if nothing was found.  That
even allows free mixing and matching of memory types, at least as long
as they are contained to separate bio_vec segments.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
