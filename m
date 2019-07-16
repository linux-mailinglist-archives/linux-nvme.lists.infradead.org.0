Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3C3E6A237
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 08:23:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L9QlluuaRN/+uKnChbUrVn/BPjD6Ym7GSZ5Cen0H90c=; b=FZeUQVBBEs2BPI
	IJoQD0KBabG8yp5wiHia+U0PIJMZ6Li0aN3xQkNXCBHaWe2YNa58aEyUhSp6Lsr3NkBtjsRUjJHJv
	nbX1B0nexUerCvhbujwNlehhxDgWql6J1gzfw2qSc0rMR/H0buYzxwXDl3JTdcPk2IVzQTnbclDKA
	uOLc8EkaTcqwk/bcZwoj7JUt7eDqMqYDWbYbqWwr+aWTHs9wc23fExGvGZihu/1pea6r63N7fKq9e
	eHix7hVSd09rZ/nlwqnEXTinv9Fy4bF3xkAryl1ZGTlFc6JW/vTeAzIQWbBbWdTvID8NiyprGrR5A
	3GulHwZuEgw95s+Y6msg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnGrs-0001YK-6A; Tue, 16 Jul 2019 06:23:16 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnGrj-0001Y0-3g
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 06:23:08 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6G6Mxw6010843;
 Tue, 16 Jul 2019 01:23:00 -0500
Message-ID: <00c4f41415c94e18dce0e8a3ff60991edc3aba9d.camel@kernel.crashing.org>
Subject: Re: [PATCH 3/3] nvme: Add support for Apple 2018+ models
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Christoph Hellwig <hch@lst.de>
Date: Tue, 16 Jul 2019 16:22:59 +1000
In-Reply-To: <20190716060623.GC29414@lst.de>
References: <20190716004649.17799-1-benh@kernel.crashing.org>
 <20190716004649.17799-3-benh@kernel.crashing.org>
 <20190716060623.GC29414@lst.de>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_232307_302788_0FCEDF90 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: Jens Axboe <axboe@fb.com>, Keith Busch <kbusch@kernel.org>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Paul Pawlowski <paul@mrarm.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 2019-07-16 at 08:06 +0200, Christoph Hellwig wrote:
> 
> >  /*
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index 54b35ea4af88..ab2358137419 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -2080,6 +2080,9 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
> >  	dev->io_queues[HCTX_TYPE_DEFAULT] = 1;
> >  	dev->io_queues[HCTX_TYPE_READ] = 0;
> >  
> > +	if (dev->ctrl.quirks & NVME_QUIRK_SINGLE_VECTOR)
> > +		irq_queues = 1;
> > +
> >  	return pci_alloc_irq_vectors_affinity(pdev, 1, irq_queues,
> >  			      PCI_IRQ_ALL_TYPES | PCI_IRQ_AFFINITY, &affd);
> 
> Callin pci_alloc_irq_vectors_affinity in this case seems a bit
> pointless, but if this works for you I'd rather keep it as-is for now
> if this works for you.

It seems to work and it's simpler that way. The original patch was
grabbing all the interrupts then hacking the queues to all use vector 0
(well there's only one IO queue). The above is a bit cleaner imho.

Cheers,
Ben.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
