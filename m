Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2C755563
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 19:03:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T0p+Z5tX3xfaNW/4F630g9t/mClCavl3Fan6LIMEVDg=; b=MGvb7C1ARimbdE
	ZdE6pNkHCgD8m+3V7DoFXhPZfjXgL2d04UHxQGUjwRh+ygwPE8SZQZ4YRLxgIE7B2sYHKrh9vBH8A
	HTfym/TPdYdFPd3sMoKVlSFXBbTld6AhuM/WRAe9kE55k+aib0SqMVzLW+E/jMswTupoI+QcrvGGI
	ggAZjGQXiI/1diokg1FRa8mLdNI8fqigKlbTPEA+v6RKO97B3RNdo5hhsgeK3DaLEsITbbVYFSMRC
	bxpKRq4Ss8n49/ZKEzH/A2jQdIRmbmNp9eNukopSpuoYibYEcy1tlMlZHPyiwyus4uOcoHfSUHNhg
	nyeN7Lnx+6fPVsY5uDzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfoqM-0004Cg-QX; Tue, 25 Jun 2019 17:02:54 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfopJ-0003mF-0f
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 17:01:51 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id D3C0068B05; Tue, 25 Jun 2019 19:01:15 +0200 (CEST)
Date: Tue, 25 Jun 2019 19:01:15 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190625170115.GA9746@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
 <20190625072008.GB30350@lst.de>
 <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f0f002bf-2b94-cd18-d18f-5d0b08311495@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_100149_255795_CE9B001D 
X-CRM114-Status: GOOD (  19.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Jason Gunthorpe <jgg@ziepe.ca>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 09:57:52AM -0600, Logan Gunthorpe wrote:
> > You assume all addressing is done by the PCI bus address.  If a device
> > is addressing its own BAR there is no reason to use the PCI bus address,
> > as it might have much more intelligent schemes (usually bar + offset).
> 
> Yes, that will be a bit tricky regardless of what we do.

At least right now it isn't at all.  I've implemented support for
a draft NVMe proposal for that, and it basically boils down to this
in the p2p path:

	addr = sg_phys(sg);

	if (page->pgmap->dev == ctrl->dev && HAS_RELATIVE_ADDRESSING)
		addr -= ctrl->cmb_start_addr;

		// set magic flag in the SGL
	} else {
		addr -= pgmap->pci_p2pdma_bus_offset;
	}

without the pagemap it would require a range compare instead, which
isn't all that hard either.

> >>> Also duplicating the whole block I/O stack, including hooks all over
> >>> the fast path is pretty much a no-go.
> >>
> >> There was very little duplicate code in the patch set. (Really just the
> >> mapping code). There are a few hooks, but in practice not that many if
> >> we ignore the WARN_ONs. We might be able to work to reduce this further.
> >> The main hooks are: when we skip bouncing, when we skip integrity prep,
> >> when we split, and when we map. And the patchset drops the PCI_P2PDMA
> >> hook when we map. So we're talking about maybe three or four extra ifs
> >> that would likely normally be fast due to the branch predictor.
> > 
> > And all of those add code to the block layer fast path.
> 
> If we can't add any ifs to the block layer, there's really nothing we
> can do.

That is not what I said.  Of course we can.  But we rather have a
really good reason.  And adding a parallel I/O path violating the
highlevel model is not one.

> So then we're committed to using struct page for P2P?

Only until we have a significantly better soltution.  And I think
using physical address in some form instead of pages is that,
adding a parallel path with dma_addr_t is not, it actually is worse
than the current code in many respects.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
