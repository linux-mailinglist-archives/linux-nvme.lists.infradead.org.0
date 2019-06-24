Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 861B35037C
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 09:32:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l+np91J2OyoOJiMtqIQzxLU/E9voprWLLswORO2DTEo=; b=j3n+P9VarirRHt
	8uTlw8/fAHMWdR+KLQ2bxOzOA/A7aPNFtrvEV3OmH0Rs8vJ4sGyKobadj0RYqH35eyuwwHsisXXS9
	xeRkyzliNpI3UMqaGMiq+GXYhXEPCrPBs4LhXRCaalKjZneVWmmIWGYHlRVyK8/k+FJjG0FlwUmxL
	2OM9uZm8/HwLKXk3BndE18Am3ox6Zi2x/wADaQdmR3ertuiZovWrVqnRzeJwHTi41s2zAa47uKz0p
	xBiB+p88QVeDUkpSK0qcVdPLlvrjUOxjy3Jdp/uQdnXXy02Gdq109MFxen2Hei6kbCdY4nKqt+DHg
	FQULLgta3ueLKoi23KOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJSf-00042f-5w; Mon, 24 Jun 2019 07:32:21 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJSI-0003vf-Rw
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 07:32:00 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 03A7A68B02; Mon, 24 Jun 2019 09:31:27 +0200 (CEST)
Date: Mon, 24 Jun 2019 09:31:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190624073126.GB3954@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620193353.GF19891@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003159_279810_0DB57F31 
X-CRM114-Status: GOOD (  13.36  )
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
 linux-rdma <linux-rdma@vger.kernel.org>, linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 04:33:53PM -0300, Jason Gunthorpe wrote:
> > My primary concern with this is that ascribes a level of generality
> > that just isn't there for peer-to-peer dma operations. "Peer"
> > addresses are not "DMA" addresses, and the rules about what can and
> > can't do peer-DMA are not generically known to the block layer.
> 
> ?? The P2P infrastructure produces a DMA bus address for the
> initiating device that is is absolutely a DMA address. There is some
> intermediate CPU centric representation, but after mapping it is the
> same as any other DMA bus address.
> 
> The map function can tell if the device pair combination can do p2p or
> not.

At the PCIe level there is no such thing as a DMA address, it all
is bus address with MMIO and DMA in the same address space (without
that P2P would have not chance of actually working obviously).  But
that bus address space is different per "bus" (which would be an
root port in PCIe), and we need to be careful about that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
