Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B594112D18
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Dec 2019 14:59:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+ll0oaOXp7ZEkKbWS3zRyNGwwK/HPi51VXvApTBobe0=; b=cbUD7E0c4Pffjq
	InNBT7UMV4K2bdqajCJu/3R3gbLYFlfHeyo/+F2pJo8SOFC6/HZatWGh4fwhvgjX5ILXqBnYkDZHC
	wCEOTAgyaLH36flgHEYKRG93T/Inicz1+c+pItXJpyGUwc8rOLi3kROWVPidu6Oj0CBFcdEdEoB6R
	xO/KdZuygjlDbrMA7yVnLF9kyMdDaeysAGabFq5vEIMYJFRUABvhvrAJRODd6vbJ7fho7jJBSJJ9N
	fLxTajmWo3+hBe5Q9wNetRrOOYBWwysGnKeuUI0iP5CLzTkYybCxh2bTIv7eBgsmPio7oWSomC5Cn
	Ejd2qguwBPH5tg9R7wNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icVBF-0001gT-Ch; Wed, 04 Dec 2019 13:59:01 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icVB9-0001fi-I1
 for linux-nvme@lists.infradead.org; Wed, 04 Dec 2019 13:58:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id E532568BFE; Wed,  4 Dec 2019 14:58:51 +0100 (CET)
Date: Wed, 4 Dec 2019 14:58:51 +0100
From: "hch@lst.de" <hch@lst.de>
To: "Sironi, Filippo" <sironi@amazon.de>
Subject: Re: [PATCHv2 2/2] nvme/pci: Mask device interrupts for threaded
 handlers
Message-ID: <20191204135851.GB31262@lst.de>
References: <20191202222058.2096-1-kbusch@kernel.org>
 <20191202222058.2096-3-kbusch@kernel.org>
 <1646A1C5-C2E3-46CD-9269-115601132C4B@amazon.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1646A1C5-C2E3-46CD-9269-115601132C4B@amazon.de>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_055855_745065_0C23CEC8 
X-CRM114-Status: UNSURE (   7.93  )
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
Cc: "sagi@grimberg.me" <sagi@grimberg.me>,
 "bigeasy@linutronix.de" <bigeasy@linutronix.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "ming.lei@redhat.com" <ming.lei@redhat.com>,
 "helgaas@kernel.org" <helgaas@kernel.org>, Keith Busch <kbusch@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Dec 04, 2019 at 10:10:05AM +0000, Sironi, Filippo wrote:
> > +	if (to_pci_dev(nvmeq->dev->dev)->msix_enabled)
> > +		__pci_msix_desc_mask_irq(irq_get_msi_desc(irq), 1);
> 
> Have you considered that __pci_msix_desc_mask_irq will cause
> a trap from guest to hypervisor mode when running virtualized?

As mentioned in my reply we need to route this through the irq chip
abstraction.  With that a PV irq chip handler doesn't need to trap if
it has smarter means available.

> > +	else
> > +		writel(1 << nvmeq->cq_vector, nvmeq->dev->bar + NVME_REG_INTMS);
> 
> What's stopping us from always using this method?

The fact that the NVMe spec doesn't specify it for MSI-X.  From section
3.1.3 of NVMe 1.4:

"This register is used to mask interrupts when using pin-based interrupts,
single message MSI, or multiple message MSI. When using MSI-X, the
interrupt mask table defined as part of MSI-X should be used to mask
interrupts. Host software shall not access this register when configured
for MSI-X; any accesses when configured for MSI-X is undefined. For
interrupt behavior requirements, refer to section 7.5."

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
