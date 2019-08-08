Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE24085B91
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 09:30:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UFRSCaBZNzVMpW3kPdcS6+MvONSRL1PbhJf3dMgeFf4=; b=cMQdsKHSbgvw+c
	gg9nElHN+BZ7kCGI9bKfY1RakxU4LMB1EgxHOY8eS+rx13ZnmP9eGlFPVYfZ6zEIRiY3bMjMD4dyD
	9OvomK/xTjqwH/aiormvtmqxOMyenWIi5VHRGoLXbtaGxD0JH2OSQL77ODScCjms7Bfahc2rKwSos
	j4yZC6fBgd9+mhpTUPyjMOWpbJ1iZETtUX7iYqo8xSsPYa7u8wl6rmRkgPum3tUI77AVHYROkWJEm
	4GRyVP4q2gCJ6q0Z/6ekKW3ZcopMkAnNBVzcMoXfEvwC7CZbahdi3G7f3fCosv+uM4GI4faMqHMsC
	+E9iXXK2OwziFm8VD1OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcsH-0001TI-Rb; Thu, 08 Aug 2019 07:30:13 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcs0-0001LX-L4
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 07:29:58 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id BD4D468B02; Thu,  8 Aug 2019 09:29:47 +0200 (CEST)
Date: Thu, 8 Aug 2019 09:29:47 +0200
From: Christoph Hellwig <hch@lst.de>
To: Bjorn Helgaas <helgaas@kernel.org>
Subject: Re: [PATCH v2 13/14] PCI/P2PDMA: No longer require no-mmu for host
 bridge whitelist
Message-ID: <20190808072947.GB29852@lst.de>
References: <20190730163545.4915-1-logang@deltatee.com>
 <20190730163545.4915-14-logang@deltatee.com> <20190807055958.GC6627@lst.de>
 <20190807124259.GX151852@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190807124259.GX151852@google.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_002956_863062_8C7A33F9 
X-CRM114-Status: UNSURE (   8.48  )
X-CRM114-Notice: Please train this message.
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-rdma@vger.kernel.org,
 linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christian Koenig <Christian.Koenig@amd.com>,
 Jens Axboe <axboe@fb.com>, Jason Gunthorpe <jgg@mellanox.com>,
 Keith Busch <kbusch@kernel.org>, Dan Williams <dan.j.williams@intel.com>,
 Stephen Bates <sbates@raithlin.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>, Eric Pilmore <epilmore@gigaio.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 07, 2019 at 07:43:01AM -0500, Bjorn Helgaas wrote:
> On Wed, Aug 07, 2019 at 07:59:58AM +0200, Christoph Hellwig wrote:
> > no-mmu sounds stange, as we use that for linux ports without paging
> > hardware.  I think an "io" got lost somewhere..
> 
> I had already changed the subject to
> 
>   PCI/P2PDMA: Allow IOMMU for host bridge whitelist
> 
> but certainly open to better suggestions.

Maybe:

PCI/P2PDMA: Allow P2P transfers behind IOMMUs

?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
