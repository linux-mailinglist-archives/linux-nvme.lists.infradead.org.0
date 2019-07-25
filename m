Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B069A74D84
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 13:50:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzw437FZPvI7HwglNztNfenSomK4ocgkkwTDRUoPlkM=; b=ArXQVBRC+2S+SU
	MzXRibGd0yMJT9T8iTAPwY2SffiI35E+w6tJm//knBojbf4eEOL69y5pnTo3EB+nLDPaakmT/JkYD
	HU+DSCqEMFBIjz6W/6RE9OmR00IZPrupP0x5PHNe7Wd2OrukFcYU7oN6dk0vrC+7xkceUIFprYJUd
	WDJilWtaeMXnSS6sKAZRGog09v7y9pQZAlmdUfKaFCE4kZSVnxCgXJoSZid2LiFh6katVC34lIpOp
	NEWoYF4vsroobjyGh1/RQlgexy+iWgcJYOt9K5IfwiCXyP+U89EkXaskEsPeTNu5a0lukNitUwpcj
	kV8QR9c4wAFXpqYZTYxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqcGm-0003kv-By; Thu, 25 Jul 2019 11:50:48 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqcGg-0003k8-C5
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 11:50:43 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3990468BFE; Thu, 25 Jul 2019 13:50:40 +0200 (CEST)
Date: Thu, 25 Jul 2019 13:50:38 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH 14/14] PCI/P2PDMA: Introduce pci_p2pdma_[un]map_resource()
Message-ID: <20190725115038.GC31065@lst.de>
References: <20190722230859.5436-1-logang@deltatee.com>
 <20190722230859.5436-15-logang@deltatee.com> <20190724063235.GC1804@lst.de>
 <57e8fc1a-de70-fb65-5ef1-ffa2b95c73a6@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <57e8fc1a-de70-fb65-5ef1-ffa2b95c73a6@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_045042_562199_A460BC25 
X-CRM114-Status: GOOD (  14.73  )
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
 Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 Jason Gunthorpe <jgg@mellanox.com>, Stephen Bates <sbates@raithlin.com>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Eric Pilmore <epilmore@gigaio.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Jul 24, 2019 at 10:06:22AM -0600, Logan Gunthorpe wrote:
> Yes. This is the downside of dealing only with a phys_addr_t: we have to
> look up against it. Unfortunately, I believe it's possible for different
> BARs on a device to be in different windows, so something like this is
> necessary unless we already know the BAR the phys_addr_t belongs to. It
> might probably be sped up a bit by storing the offsets of each bar
> instead of looping through all the bridge windows, but I don't think it
> will get you *that* much.
> 
> As this is an example with no users, the answer here will really depend
> on what the use-case is doing. If they can lookup, ahead of time, the
> mapping type and offset then they don't have to do this work on the hot
> path and it means that pci_p2pdma_map_resource() is simply not a
> suitable API.

Ok.  So lets just keep this out as an RFC and don't merge it until an
actual concrete user shows up.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
