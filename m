Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 839B3746E4
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 08:10:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f1YH6k6f45/ZtvTfMTfyMHzbuHGxrXozpBHfLzhASB8=; b=sPSzg4xAL3d7f5
	7eIWu2H0+ook3OonD0+/+1DsEP3L8vXjG8uC5vAWBJ1Tc159Z3ahJJb9Ri+D/y2VzuvYtNhOr8isw
	x+vNqkY/WhiZl4ejawI0S2Zb4zKdHPwV8xOD83JUiGHyziGh+JatQX+G4E5Ns8i5JMDjfK4EKj6H6
	b9CTPDwSndXicO/P2sBVEJwGRjI8IYowuhAnlBbrf/ElOt1HXkFH3lVU2DK1v7KTCY2zxyL3eTC+v
	G65tdWtTqi6EiT6sovePeJW5EIWDrFjfQ9R4Js9LKZX3i6C7R6F1I000bSD6Lg3k1S2d/gkED3Bno
	CLQGie5HL2wzd8gwSAFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqWxL-000816-8a; Thu, 25 Jul 2019 06:10:23 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqWx7-0007vb-8T
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 06:10:10 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 0ECA268B20; Thu, 25 Jul 2019 08:10:06 +0200 (CEST)
Date: Thu, 25 Jul 2019 08:10:05 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 11/14] PCI/P2PDMA: dma_map P2PDMA map requests that
 traverse the host bridge
Message-ID: <20190725061005.GB24875@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-12-logang@deltatee.com> <20190724063232.GB1804@lst.de>
 <7173a4dd-0c9c-48de-98cd-93513313fd8d@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7173a4dd-0c9c-48de-98cd-93513313fd8d@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_231009_453143_3B2E5B70 
X-CRM114-Status: GOOD (  16.74  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christian Koenig <Christian.Koenig@amd.com>,
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Stephen Bates <sbates@raithlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 09:58:59AM -0600, Logan Gunthorpe wrote:
> 
> 
> On 2019-07-24 12:32 a.m., Christoph Hellwig wrote:
> >>  	struct dev_pagemap *pgmap = sg_page(sg)->pgmap;
> >> +	struct pci_dev *client;
> >> +	int dist;
> >> +
> >> +	client = find_parent_pci_dev(dev);
> >> +	if (WARN_ON_ONCE(!client))
> >> +		return 0;
> >>  
> >> +	dist = upstream_bridge_distance(pgmap->pci_p2pdma_provider,
> >> +					client, NULL);
> > 
> > Doing this on every mapping call sounds expensive..
> 
> The result of this function is cached in an xarray (per patch 4) so, on
> the hot path, it should just be a single xa_load() which should be a
> relatively fast lookup which is similarly used for other hot path
> operations.

We don't cache find_parent_pci_dev, though.  So we should probably
export find_parent_pci_dev with a proper namespaces name and cache
that in the caler.

> > 
> >> +	if (WARN_ON_ONCE(dist & P2PDMA_NOT_SUPPORTED))
> >> +		return 0;
> >> +
> >> +	if (dist & P2PDMA_THRU_HOST_BRIDGE)
> >> +		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
> >> +	else
> >> +		return __pci_p2pdma_map_sg(pgmap, dev, sg, nents);
> > 
> > Can't we organize the values so that we can switch on the return
> > value instead of doing flag checks?
> 
> Sorry, I don't follow what you are saying here. If you mean for
> upstream_bridge_distance() to just return how to map and not the
> distance that would interfere with other uses of that function.

The point is that in the map path we don't even care about the
distance.  I think we should just have a function that returns the
P2PDMA_ values from the xarray (maybe also store it there as two
values, but that isn't quite as important), and get rid of even
the concept of distance in the map path. e.g.:

	switch (pci_p2pdma_supported(pgmap->pci_p2pdma_provider, client))) {
	case P2PDMA_HOST_BRIDGE:
		return dma_map_sg_attrs(dev, sg, nents, dir, attrs);
	case P2PDMA_SWITCH:
		return __pci_p2pdma_map_sg(pgmap, dev, sg, nents);
	default:
		WARN_ON_ONCE(1);
		return 0;
	}

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
