Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F110A10ED84
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 17:51:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yeY44liFEAT47wNIlD7YkpTSKqcoXSNZ6ajPlddfja0=; b=XPIn6wEHpSIPu0
	/Y87l9C4pxmQKM9D+RFlF+v3dX8rSoLLWQLUO9mtrlIJK9uJhsNZvhMrW0v5bHYnaYXJ2zC3kxrxv
	0ZMDrqdHC/7EHSPyHN1drxRY8CPrt6IqNd6r3BP7Gqu9vz4spROpRM9T5KevRGCm+2e72DuYg8bj+
	vwMriehADNUqaff+GJyobmS8MCV82vt26Zbc/ikka9WmGZdQoSCiW0htRZtR5fDRGrSMuppN62k83
	ZZ4BOvz87XSHPvSwGBl7qCy0/F5WU8OFTZMlFg/2TqcyrXvIJYFZUb6gYTe5JFe3O2CXHvntUCoWl
	dVrSVS200x576GWNYONQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibovV-00062Z-JK; Mon, 02 Dec 2019 16:51:57 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibovP-000625-Ck
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 16:51:52 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1ibovK-0003AS-Cn; Mon, 02 Dec 2019 17:51:46 +0100
Date: Mon, 2 Dec 2019 17:51:46 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 4/4] nvme/pci: Spin threaded interrupt completions
Message-ID: <20191202165146.moe6lcyvtaoszuwl@linutronix.de>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-5-kbusch@kernel.org>
 <20191129091302.bngxlcsbexiktqbk@linutronix.de>
 <20191130181020.GB5273@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191130181020.GB5273@redsun51.ssa.fujisawa.hgst.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_085151_571450_668A4081 
X-CRM114-Status: GOOD (  13.17  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: ming.lei@redhat.com, helgaas@kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019-12-01 03:10:20 [+0900], Keith Busch wrote:
> On Fri, Nov 29, 2019 at 10:13:02AM +0100, Sebastian Andrzej Siewior wrote:
> > On 2019-11-28 02:58:24 [+0900], Keith Busch wrote:
> > > diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> > > index 571b33b69c5f..9ec0933eb120 100644
> > > --- a/drivers/nvme/host/pci.c
> > > +++ b/drivers/nvme/host/pci.c
> > > @@ -1042,9 +1042,15 @@ static irqreturn_t nvme_irq(int irq, void *data)
> > >  	return ret;
> > >  }
> > >  
> > > +static void nvme_irq_spin(int irq, void *data)
> > > +{
> > > +	while (nvme_irq(irq, data) != IRQ_NONE)
> > > +		cond_resched();
> > > +}
> > 
> > That interrupt thread runs at SCHED_FIFO prio 50 by default. You will
> > not get anything with a lower priority running (including SCHED_OTHER).
> > You won't get preempted by another FIFO thread at prio 50 so I *think*
> > that cond_rechsched() won't let you schedule another task/IRQ thread
> > running at prio 50 either.
> 
> Hm, if we're really spinning here, the current alternative is that
> we'd run a cpu 100% in irq context, which has its own problems. If the
> interrupt thread has other scheduler issues, I think that indicates
> yet another task needs to handle completions. Perhaps escalate to the
> irq_poll solution Sagi advocated for if the threaded handler observes
> need_resched() is true.

I'm not against using a threaded IRQ but pointing out that the
cond_resched() usage here is wrong.  For SCHED_FIFO tasks, the scheduler
will set the TIF_NEED_RESCHED flag and send an IPI for an re-schedule to
that CPU. This only happens if the priority of the other task is higher
than the default 50 (and all interrupt threads run by default at
FIFO/50).

A SCHED_OTHER task on a PREEMPT_NONE/PREEMPT_VOLUNTARY kernel won't
preempt another SCHED_OTHER task inside the kernel. The scheduler will
only set TIF_NEED_RESCHED flag to signal that another task may run. This
cond_resched() would then act as preemption point in this case.

Sebastian

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
