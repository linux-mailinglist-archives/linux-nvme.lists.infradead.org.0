Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E11B1118E52
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Dec 2019 17:57:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qYuRpzFdxaZs/Fy05Ws8PN3WHEaLff3Nx2ifX9FfkE0=; b=KehLtcNQHladrt
	1lSC9cQAY9/SJnYXL/isTTtgNvqFSVDaAexvLjSD8zwI0k3SfF5SM2qHIlKMPXeU4Y0kR3U+San4j
	n+mPidFTbyHtQUALK1TSwVh42UNjn4LcQBAFOw5vrwRTIXT3hAd47CxljeHT+uVsNX7tRUaDL81LF
	onAVkATqz02OhOil2cZcNjFJ8rVtK4YnUMHnfPnJnEbnIvsHZDhW7JiRC8CBABe8Bvp4aH4gq4epA
	Ob1Y3UXoLovmjy4AqjAUamrrvVvYCy3GJhcSXLigy7i+5pB34CDhbZ/0rAwi3n0roLZZ+Bx4nnTak
	2hfuagogaIKFBsLb+x0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieip1-0002yo-DQ; Tue, 10 Dec 2019 16:57:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieiow-0002yD-Ko
 for linux-nvme@lists.infradead.org; Tue, 10 Dec 2019 16:57:11 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E48662073D;
 Tue, 10 Dec 2019 16:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575997030;
 bh=ZcxpO8bo/3SkxK0u5kzWONkJwzLKEQB6kvgfzIqsjZU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=tEVSmZ1207Xa69bb7TVYci8YvMibx4g5HKoJD3cxbSr04SAxQPDDIvGfttsaNJuYC
 fkWcNRnRECjo837qecb23paVqqNbF/DFMinLoD6uRPUc3CJEFC6dUqb7GdBWCQej2V
 /1THml0dKc81DxLsLg//qCRVhmCV7wpMAsjgiok8=
Date: Wed, 11 Dec 2019 01:57:04 +0900
From: Keith Busch <kbusch@kernel.org>
To: Daniel Wagner <dwagner@suse.de>
Subject: Re: [PATCHv3 1/4] nvme/pci: Disable interrupts for threaded handler
Message-ID: <20191210165704.GB4424@redsun51.ssa.fujisawa.hgst.com>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-2-kbusch@kernel.org>
 <20191210151257.2a36ny3yy5tdohda@beryllium.lan>
 <20191210152840.xgpibkzex6mhnmne@linutronix.de>
 <20191210155433.GA4424@redsun51.ssa.fujisawa.hgst.com>
 <20191210164456.mdeff7xepsnw532j@beryllium.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191210164456.mdeff7xepsnw532j@beryllium.lan>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_085710_707907_9EF1DE9D 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: sagi@grimberg.me, Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com, tglx@linutronix.de,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 05:44:56PM +0100, Daniel Wagner wrote:
> On Wed, Dec 11, 2019 at 12:54:33AM +0900, Keith Busch wrote:
> > On Tue, Dec 10, 2019 at 04:28:40PM +0100, Sebastian Andrzej Siewior wrote:
> > > On 2019-12-10 16:12:57 [+0100], Daniel Wagner wrote:
> > > > On Tue, Dec 10, 2019 at 02:56:19AM +0900, Keith Busch wrote:
> > > > >  static irqreturn_t nvme_irq_check(int irq, void *data)
> > > > >  {
> > > > >  	struct nvme_queue *nvmeq = data;
> > > > > -	if (nvme_cqe_pending(nvmeq))
> > > > > -		return IRQ_WAKE_THREAD;
> > > > > -	return IRQ_NONE;
> > > > > +
> > > > > +	if (!nvme_cqe_pending(nvmeq))
> > > > > +		return IRQ_NONE;
> > > > 
> > > > IIRC, returning IRQ_NONE tells the irq core code that this is
> > > > an unhandled IRQ. If the core sees too many of them it will print
> > > > 'spurious irq' message. See __handle_irq_event_percpu,
> > > > handle_irq_event_percpu and note_interrupt
> > > 
> > > This is okay / intended. If nvme_cqe_pending() does not recognise that
> > > this interrupt belongs to that device then it should return IRQ_NONE.
> > 
> > Also note this patch doesn't change the condition when IRQ_NONE is
> > returned. We've been doing that since nvme's beginning, as it really is
> > a spurious interrupt from a likely malfunctioning device.
> 
> Sure, I am just a bit confused how IRQ_NONE is used. The comment on
> nvme_cqe_pending says "We read the CQE phase first to check if the
> rest of the entry is valid", which I read as "check if we have
> anything to do" and not "this irq doesn't belong to this queue".

Those two interpretations sound like the same thing to me. :)

The interrupt notifies the driver it has something to do, and reading
the CQE phase confirms whether or not that's true.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
