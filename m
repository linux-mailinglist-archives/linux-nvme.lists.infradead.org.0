Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3066652447
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 09:20:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OIpHEzyFGE3UpNpiFBul9D8EVS8rxdAMzzUH+dTp/wM=; b=rDu/8D7nvsFcUf
	3lIpmrP8mw2AwKrgicFufwWpV2RAkqcsP1YvLtktap6d6jGw03/7HQiefM73J4LxveOUAIJmBiVV4
	BUDfqsSTXQGT/QaiwWQe3LiZV574HAQ0HCt8E8GJqEoaop57FlAr263dtFcLi5Y5DZ/YS0WBuCB72
	oVJFa3lmiLaQ5XedwBjvMZUB0zWUtublGnmQJRkWcR0Z1hL7faDQkwQNTTdNeWOchlHDUbfyxortA
	ptciVVBfxgtasJCICto9YiObfeYW+MZ12MTIsJZBuGL0YuwN2KerKrNsmvvg3DfjYTeNrsqU4fv91
	nftA9nIHRRyUmivQTSyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffl4-00023J-Uf; Tue, 25 Jun 2019 07:20:51 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffkv-00022R-MO
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 07:20:43 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 4CE0068B02; Tue, 25 Jun 2019 09:20:09 +0200 (CEST)
Date: Tue, 25 Jun 2019 09:20:08 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190625072008.GB30350@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
 <20190624072752.GA3954@lst.de>
 <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <558a27ba-e7c9-9d94-cad0-377b8ee374a6@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_002041_883426_799BD00D 
X-CRM114-Status: GOOD (  18.59  )
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

On Mon, Jun 24, 2019 at 10:07:56AM -0600, Logan Gunthorpe wrote:
> > For one passing a dma_addr_t through the block layer is a layering
> > violation, and one that I think will also bite us in practice.
> > The host physical to PCIe bus address mapping can have offsets, and
> > those offsets absolutely can be different for differnet root ports.
> > So with your caller generated dma_addr_t everything works fine with
> > a switched setup as the one you are probably testing on, but on a
> > sufficiently complicated setup with multiple root ports it can break.
> 
> I don't follow this argument. Yes, I understand PCI Bus offsets and yes
> I understand that they only apply beyond the bus they're working with.
> But this isn't *that* complicated and it should be the responsibility of
> the P2PDMA code to sort out and provide a dma_addr_t for. The dma_addr_t
> that's passed through the block layer could be a bus address or it could
> be the result of a dma_map_* request (if the transaction is found to go
> through an RC) depending on the requirements of the devices being used.

You assume all addressing is done by the PCI bus address.  If a device
is addressing its own BAR there is no reason to use the PCI bus address,
as it might have much more intelligent schemes (usually bar + offset).
> 
> > Also duplicating the whole block I/O stack, including hooks all over
> > the fast path is pretty much a no-go.
> 
> There was very little duplicate code in the patch set. (Really just the
> mapping code). There are a few hooks, but in practice not that many if
> we ignore the WARN_ONs. We might be able to work to reduce this further.
> The main hooks are: when we skip bouncing, when we skip integrity prep,
> when we split, and when we map. And the patchset drops the PCI_P2PDMA
> hook when we map. So we're talking about maybe three or four extra ifs
> that would likely normally be fast due to the branch predictor.

And all of those add code to the block layer fast path.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
