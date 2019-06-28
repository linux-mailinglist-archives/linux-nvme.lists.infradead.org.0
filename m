Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DF6659D14
	for <lists+linux-nvme@lfdr.de>; Fri, 28 Jun 2019 15:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26U4zlAD4BQuUYL7HD+8E5KQs8Gd5tpuX3DVVYeZVGw=; b=FcNCWMh9ivD7+S
	EJ4/GBoNwqq4bPw+t/KJh1gB1Y1GKT32H476+ZeGEVojps0CfJmBBNn6ZbogvjQtS69mp+ciQUWaC
	fPJKkmyBG5oeJB40C/gkwdGPwncr54Om6kK7WHahQLXNeZnrgbVH6zAi6TiqqUpoa/U1N8RMvE5ua
	/246K8IUTPhe8yakuyrcChK0CTWTGQml0wWQzRrZVgdintVickQPM6/dw7UXNur3sNeS9oHDaB+t9
	vCru4FWXm4q5sXgoBiugIJIKZqs/vk69FbRkotqgARSJQJeGXKgo+8toPJWyiLjPvpQYJrq/FqsWk
	fG1rDl7ucPRnItyXtLmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgr5e-0007Lt-BY; Fri, 28 Jun 2019 13:38:58 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgr5P-0007Kd-9X
 for linux-nvme@lists.infradead.org; Fri, 28 Jun 2019 13:38:45 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8BA79227A81; Fri, 28 Jun 2019 15:38:37 +0200 (CEST)
Date: Fri, 28 Jun 2019 15:38:37 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190628133837.GA3801@lst.de>
References: <20190625170115.GA9746@lst.de>
 <41235a05-8ed1-e69a-e7cd-48cae7d8a676@deltatee.com>
 <20190626065708.GB24531@lst.de>
 <c15d5997-9ba4-f7db-0e7a-a69e75df316c@deltatee.com>
 <20190626202107.GA5850@ziepe.ca>
 <8a0a08c3-a537-bff6-0852-a5f337a70688@deltatee.com>
 <20190627090843.GB11548@lst.de>
 <89889319-e778-7772-ab36-dc55b59826be@deltatee.com>
 <20190627170027.GE10652@lst.de>
 <e63d0259-e17f-effe-b76d-43dbfda8ae3a@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e63d0259-e17f-effe-b76d-43dbfda8ae3a@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_063843_630822_511B977F 
X-CRM114-Status: GOOD (  20.17  )
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

On Thu, Jun 27, 2019 at 12:00:35PM -0600, Logan Gunthorpe wrote:
> > It is not.  (c) is fundamentally very different as it is not actually
> > an operation that ever goes out to the wire at all, and which is why the
> > actual physical address on the wire does not matter at all.
> > Some interfaces like NVMe have designed it in a way that it the commands
> > used to do this internal transfer look like (b2), but that is just their
> > (IMHO very questionable) interface design choice, that produces a whole
> > chain of problems.
> 
> >From the mapping device's driver's perspective yes, but from the
> perspective of a submitting driver they would be the same.

With your dma_addr_t scheme it won't be the same, as you'd need
a magic way to generate the internal addressing and stuff it into
the dma_addr_t.  With a phys_addr_t based scheme they should basically
be all the same.

> Yes, you did suggest them. But what I'm trying to suggest is we don't
> *necessarily* need the lookup. For demonstration purposes only, a
> submitting driver could very roughly potentially do:
> 
> struct bio_vec vec;
> dist = pci_p2pdma_dist(provider_pdev, mapping_pdev);
> if (dist < 0) {
>      /* use regular memory */
>      vec.bv_addr = virt_to_phys(kmalloc(...));
>      vec.bv_flags = 0;
> } else if (dist & PCI_P2PDMA_THRU_HOST_BRIDGE) {
>      vec.bv_addr = pci_p2pmem_alloc_phys(provider_pdev, ...);
>      vec.bv_flags = BVEC_MAP_RESOURCE;
> } else {
>      vec.bv_addr = pci_p2pmem_alloc_bus_addr(provider_pdev, ...);
>      vec.bv_flags = BVEC_MAP_BUS_ADDR;
> }

That doesn't look too bad, except..

> -- And a mapping driver would roughly just do:
> 
> dma_addr_t dma_addr;
> if (vec.bv_flags & BVEC_MAP_BUS_ADDR) {
>      if (pci_bus_addr_in_bar(mapping_pdev, vec.bv_addr, &bar, &off))  {
>           /* case (c) */
>           /* program the DMA engine with bar and off */

Why bother with that here if we could also let the caller handle
that? pci_p2pdma_dist() should be able to trivially find that out
based on provider_dev == mapping_dev.

> The real difficulty here is that you'd really want all the above handled
> by a dma_map_bvec() so it can combine every vector hitting the IOMMU
> into a single continuous IOVA -- but it's hard to fit case (c) into that
> equation. So it might be that a dma_map_bvec() handles cases (a), (b1)
> and (b2) and the mapping driver has to then check each resulting DMA
> vector for pci_bus_addr_in_bar() while it is programming the DMA engine
> to deal with case (c).

I'd do it the other way around.  pci_p2pdma_dist is used to find
the p2p type.  The p2p type is stuff into the bio_vec, and we then:

 (1) manually check for case (c) in driver for drivers that want to
     treat it different from (b)
 (2) we then have a dma mapping wrapper that checks the p2p type
     and does the right thing for the rest.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
