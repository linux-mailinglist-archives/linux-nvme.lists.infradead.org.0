Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC8BA10C328
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 05:14:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ace7r20shPfrI9SX1Mw0DeDBG5el602UqhIZzzOIpU=; b=AeuTFK9W8vG5Rh
	MQl2XLKSORfMIfUINfQnsmKCo2PgczgSy/hMV6lRr6W3wHqXePOMu2NDT3/M8OTHeIQ/Rvo334nwb
	Y0ElHZLRaRf1vGSe8QSo9NvMsdAFgjWAtbbDzkzkGvmnyOoG519fy3ZO34Jlfg5+KzX2p9iy6WrH9
	l9DeWrINsEVxBp7Z7vqrV9EPn5Jj5qmPDc3Bcbdvd/e51uWy1lxN1tuzODVsVGQ4T4XToWnoXqnXL
	xQLB8L5xHXStSklepLIKaiuzJOhrnNZrEUkLRo9DX8Th3zaQEhsbyv86YNFx4CrpkBvLxlLo0Fbc5
	69R/0YcYeG7rv2sGE8NQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaBC4-0003LH-CP; Thu, 28 Nov 2019 04:14:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaBBz-0003Kr-JF
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 04:14:12 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3C0C621569;
 Thu, 28 Nov 2019 04:14:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574914451;
 bh=ZJ3hO4wjBPnDHSQbNVomh5d6uSP9lPxK1KevAolIUaQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=QuIYfASTYkiXIdT0FHVENxDwpbZ/j1vKAe7gngv+PTLXfBsx0sYE8RPQ3VU5xdaKp
 RKYBnReN5wC0WMsjZebclUo3R48PCaR9VN22L5skCUj1oqtswmwmKj+EnQ3Cy6XL6v
 U/DFkyULNJ2PCf2fc61rLU9HB3A3OcF1+trJuuRQ=
Date: Thu, 28 Nov 2019 13:14:04 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 2/4] nvme/pci: Mask legacy and MSI in threaded handler
Message-ID: <20191128041404.GB1947@redsun51.ssa.fujisawa.hgst.com>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-3-kbusch@kernel.org>
 <20191128033956.GD3277@ming.t460p>
 <20191128034817.GC1738@redsun51.ssa.fujisawa.hgst.com>
 <20191128035853.GF3277@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128035853.GF3277@ming.t460p>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_201411_656044_FFEF11E6 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, linux-nvme@lists.infradead.org,
 helgaas@kernel.org, Thomas Gleixner <tglx@linutronix.de>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 11:58:53AM +0800, Ming Lei wrote:
> On Thu, Nov 28, 2019 at 12:48:17PM +0900, Keith Busch wrote:
> > On Thu, Nov 28, 2019 at 11:39:56AM +0800, Ming Lei wrote:
> > > 923aa4c378f9("PCI/MSI: Set IRQCHIP_ONESHOT_SAFE for PCI-MSI irqchips"),
> > > then the question is that if interrupt mask is needed.
> > 
> > We don't want to use IRQF_ONESHOT for our MSI interrupts because that
> > will write to the MSI mask config register, which is a costly non-posted
> > transaction. The NVMe specific way uses much faster posted writes.
> 
> What I meant is that IRQF_ONESHOT isn't needed in case of IRQCHIP_ONESHOT_SAFE.
> 
> So it is reasonable to understand that interrupt mask isn't needed in the
> hard interrupt handler in case of IRQCHIP_ONESHOT_SAFE. That is
> basically what commit dc9b229a58dc("genirq: Allow irq chips to mark themself
> oneshot safe") does.

Hmm, it doesn't look like it's always safe. We have to stop the device
from generating MSIs for new completions somehow while the threaded
handler is running, otherwise those MSIs will be considered spurious
when the thread never gets a chance to increment desc->threads_handled.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
