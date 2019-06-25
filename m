Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A0B75243C
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 09:19:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nPJZsuXnS9GXEaXj+Xujd24vTuMVOLQaBZYH1yv3oo=; b=rxMkci5GE2DFIc
	aE0vxmOzW/OnGGvkwbdpx+Hr6PDx9CHZ6AqpJUrQLVt/6ZD2VhDpbQ9Xk2u+H5QJyt7thLnkb7ZEp
	WTpQhLREqh3dCKfhUC+8jCy2cHbjaFgAphzaYSUttYB92pzY/TtpyAeWiO0vySmeKTjdqkoW78upd
	Qi8TzkjFjdYWB85+lqzAuyZMv6/ocNQxebb9YkDYeLeidYE6oYhKkeBIHlaQmXWNG7JFU7nte3yZS
	9otZWyCIttkMKrxaaTLRQYoF64X07be4DujCNPruxP3O9CLOmHEvOAgguQDBxXz9cxOgROWMrezdq
	LipXvG0Mx0ou1z1QH+xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hffjN-0000LE-75; Tue, 25 Jun 2019 07:19:05 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hffjE-0000Kn-Co
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 07:18:57 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 0E82368B02; Tue, 25 Jun 2019 09:18:24 +0200 (CEST)
Date: Tue, 25 Jun 2019 09:18:23 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190625071823.GA30350@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca> <20190624073126.GB3954@lst.de>
 <20190624134641.GA8268@ziepe.ca>
 <1041d2c6-f22c-81f2-c141-fb821b35c0c1@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1041d2c6-f22c-81f2-c141-fb821b35c0c1@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_001856_586043_0C529FA6 
X-CRM114-Status: GOOD (  10.70  )
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <kbusch@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-rdma <linux-rdma@vger.kernel.org>,
 linux-pci@vger.kernel.org,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Jason Gunthorpe <jgg@ziepe.ca>,
 Bjorn Helgaas <bhelgaas@google.com>, Dan Williams <dan.j.williams@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Jun 24, 2019 at 10:10:16AM -0600, Logan Gunthorpe wrote:
> Yes, that's correct. The intent was to invert it so the dma_map could
> happen at the start of the process so that P2PDMA code could be called
> with all the information it needs to make it's decision on how to map;
> without having to hook into the mapping process of every driver that
> wants to participate.

And that just isn't how things work in layering.  We need to keep
generating the dma addresses in the driver in the receiving end, as
there are all kinds of interesting ideas how we do that.  E.g. for the
Mellanox NICs addressing their own bars is not done by PCIe bus
addresses but by relative offsets.  And while NVMe has refused to go
down that route in the current band aid fix for CMB addressing I suspect
it will sooner or later have to do the same to deal with the addressing
problems in a multiple PASID world.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
