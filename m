Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DAF2610DE7D
	for <lists+linux-nvme@lfdr.de>; Sat, 30 Nov 2019 19:10:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IZpqdYkKr3iSsJ9Na0pv+XQXLSM8gsij1Ej+Fw3sZ8U=; b=d/a7yF6Ol2zYCJ
	fi2aHhOqrtXuwhKTdbkccbGPhrOPHoWF5SW6jaME3OIBi8blyqv7m1OLx3I3YiLsyifzdYn2p0kZE
	vTtH/6FqrCBEztb2vwF0S5UiGugaQMpft7gSy8sbYzMCxTChsQfBolzOZiHmrDdK+JOtRouyW3tqw
	gJg/YzVGTfif5E2gTqt5qvnBPzIKRxLZefWtP76QUs9bm1lZUPtTy1CgqPpeVHwjR0aZs0P4o7gXz
	Ibz7I4uWQLvVHeHoJIxybH2rGsm1bBFKMjvLmdBCdrM3eNinqnAVYQq5wPsGTq10cRLnZHEKKlzxs
	Pkjq1rwC/nMA3CThupng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ib7CS-000116-Ux; Sat, 30 Nov 2019 18:10:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ib7CO-00010c-H0
 for linux-nvme@lists.infradead.org; Sat, 30 Nov 2019 18:10:29 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D0EC72075A;
 Sat, 30 Nov 2019 18:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575137427;
 bh=RVRF3pwWh41xQRM9pTXcv3/JoZI+2tVe922JMkZykNc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=O5REh3HuT3f2E7BLgekH7zghxS4xNNpwu9hmwc3VPqQmSvPRBAMmJGmpxJoykv4iQ
 d1SBBj1hvsyPf8q6M6DJZ/mzwnRJlHVa5ZsxjGEiuxDHBDKeYDDJ7KmII4XdsWpmuZ
 bbDWUTA5KHURtkFP+bRrrZjiQRBMeHVhJjfqjFNQ=
Date: Sun, 1 Dec 2019 03:10:20 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [PATCH 4/4] nvme/pci: Spin threaded interrupt completions
Message-ID: <20191130181020.GB5273@redsun51.ssa.fujisawa.hgst.com>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-5-kbusch@kernel.org>
 <20191129091302.bngxlcsbexiktqbk@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129091302.bngxlcsbexiktqbk@linutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_101028_594848_1BEB4247 
X-CRM114-Status: GOOD (  11.59  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: ming.lei@redhat.com, helgaas@kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 10:13:02AM +0100, Sebastian Andrzej Siewior wrote:
> On 2019-11-28 02:58:24 [+0900], Keith Busch wrote:
> > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > index 571b33b69c5f..9ec0933eb120 100644
> > --- a/drivers/nvme/host/pci.c
> > +++ b/drivers/nvme/host/pci.c
> > @@ -1042,9 +1042,15 @@ static irqreturn_t nvme_irq(int irq, void *data)
> >  	return ret;
> >  }
> >  
> > +static void nvme_irq_spin(int irq, void *data)
> > +{
> > +	while (nvme_irq(irq, data) != IRQ_NONE)
> > +		cond_resched();
> > +}
> 
> That interrupt thread runs at SCHED_FIFO prio 50 by default. You will
> not get anything with a lower priority running (including SCHED_OTHER).
> You won't get preempted by another FIFO thread at prio 50 so I *think*
> that cond_rechsched() won't let you schedule another task/IRQ thread
> running at prio 50 either.

Hm, if we're really spinning here, the current alternative is that
we'd run a cpu 100% in irq context, which has its own problems. If the
interrupt thread has other scheduler issues, I think that indicates
yet another task needs to handle completions. Perhaps escalate to the
irq_poll solution Sagi advocated for if the threaded handler observes
need_resched() is true.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
