Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D1E50C6B
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 15:51:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WYthnC+k7x2BU4uAxJWoHOyuOoRB2kh5o3g7BvhtdSM=; b=AImBVQA3otaz6B
	e4h7S0uCqLAglbE/kUh5hXlfu3gH/kpmXrRZrsR66pj3wKE+sfyQRn9vlW9YDMmCH3pggtoN74uuJ
	9CWhJNU0x/WfugcYHlq9VJlYTYlX7Tv2MQ8UoscVT9yc+djqF0xaW/Gj5sN4Fe2Q0wQxvMXM9TEpw
	CHwQVnYbc9Sb+IQAt+L6CAYaTvSf9Jr894aLZ7O8GEvQaYWrs42DgysDO1tm1HucH0S0WwQOVkL6s
	DgbLBii//0Dq239yHhT8Y7QNfVBJ1DZMGsw77+xbElO6QR4Rp6psrKK24y3tZGaLwR5ivAl8f8XgU
	gMhYA6cw1V8aGPWD8lqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfPND-0002n6-Jp; Mon, 24 Jun 2019 13:51:07 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfPN4-0002mE-LS
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 13:50:59 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id E2349227A82; Mon, 24 Jun 2019 15:50:24 +0200 (CEST)
Date: Mon, 24 Jun 2019 15:50:24 +0200
From: Christoph Hellwig <hch@lst.de>
To: Jason Gunthorpe <jgg@ziepe.ca>
Subject: Re: [RFC PATCH 00/28] Removing struct page from P2PDMA
Message-ID: <20190624135024.GA11248@lst.de>
References: <20190620161240.22738-1-logang@deltatee.com>
 <CAPcyv4ijztOK1FUjLuFing7ps4LOHt=6z=eO=98HHWauHA+yog@mail.gmail.com>
 <20190620193353.GF19891@ziepe.ca> <20190624073126.GB3954@lst.de>
 <20190624134641.GA8268@ziepe.ca>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190624134641.GA8268@ziepe.ca>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_065058_855834_121C29C7 
X-CRM114-Status: UNSURE (   6.89  )
X-CRM114-Notice: Please train this message.
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

On Mon, Jun 24, 2019 at 10:46:41AM -0300, Jason Gunthorpe wrote:
> BTW, it is not just offset right? It is possible that the IOMMU can
> generate unique dma_addr_t values for each device?? Simple offset is
> just something we saw in certain embedded cases, IIRC.

Yes, it could.  If we are trying to do P2P between two devices on
different root ports and with the IOMMU enabled we'll generate
a new bus address for the BAR on the other side dynamically everytime
we map.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
