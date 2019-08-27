Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 593959EFFF
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 18:20:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kVNi2D1ME5o3edwfVNfr2Vtki3XcG1leYvif9bs6YM=; b=Hj1cjlr3K26+Qz
	kqqSPey7vPsPr4P7Qx5FOmJiD7U0FWumUCJ916t0SHMBM4Q5TZay9saHm7O+y17K6ot1MRlFta17C
	MdF2GQy46l1+5sxHj89Wrk7/SqTiLF99bjAjAi9EkHjY6fgpsB3kZUKM9FRSbfcFcQI5Gf78Uk7t2
	sa+WafAKZiAh6roM7kG2uepaHmB1uh6NjJl80/wZ2PM7I6u1AzIJ+kQTvcG2XyH0yHlaBrx2qp7iv
	UBy+DPIuicDdMlTXIZOCb/Hfry8RWD32Uc41BXynUzz+aOZbnB7h8eelnzWLsxdYSfzzgAq2ebNfZ
	5lAv62GGj3jrIksqVHXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2eCc-0006bx-HZ; Tue, 27 Aug 2019 16:20:14 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eCD-0006TK-Tg
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 16:19:51 +0000
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i2eBS-0002Hz-3S; Tue, 27 Aug 2019 18:19:02 +0200
Date: Tue, 27 Aug 2019 18:19:00 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
In-Reply-To: <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
Message-ID: <alpine.DEB.2.21.1908271817180.1939@nanos.tec.linutronix.de>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_091950_100392_E78A7D31 
X-CRM114-Status: GOOD (  15.44  )
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Sagi Grimberg <sagi@grimberg.me>,
 linux-scsi@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Long Li <longli@microsoft.com>, John Garry <john.garry@huawei.com>,
 LKML <linux-kernel@vger.kernel.org>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, 27 Aug 2019, Thomas Gleixner wrote:
> On Tue, 27 Aug 2019, Ming Lei wrote:
> > +/*
> > + * Update average irq interval with the Exponential Weighted Moving
> > + * Average(EWMA)
> > + */
> > +static void irq_update_interval(void)
> > +{
> > +#define IRQ_INTERVAL_EWMA_WEIGHT	128
> > +#define IRQ_INTERVAL_EWMA_PREV_FACTOR	127
> > +#define IRQ_INTERVAL_EWMA_CURR_FACTOR	(IRQ_INTERVAL_EWMA_WEIGHT - \
> > +		IRQ_INTERVAL_EWMA_PREV_FACTOR)
> 
> Please do not stick defines into a function body. That's horrible.
> 
> > +
> > +	int cpu = raw_smp_processor_id();
> > +	struct irq_interval *inter = per_cpu_ptr(&avg_irq_interval, cpu);
> > +	u64 delta = sched_clock_cpu(cpu) - inter->last_irq_end;
> 
> Why are you doing that raw_smp_processor_id() dance? The call site has
> interrupts and preemption disabled.
> 
> Also how is that supposed to work when sched_clock is jiffies based?
> 
> > +	inter->avg = (inter->avg * IRQ_INTERVAL_EWMA_PREV_FACTOR +
> > +		delta * IRQ_INTERVAL_EWMA_CURR_FACTOR) /
> > +		IRQ_INTERVAL_EWMA_WEIGHT;
> 
> We definitely are not going to have a 64bit multiplication and division on
> every interrupt. Asided of that this breaks 32bit builds all over the place.

That said, we already have infrastructure for something like this in the
core interrupt code which is optimized to be lightweight in the fast path.

kernel/irq/timings.c

Talk to Daniel Lezcano (Cc'ed) how you can (ab)use that.

Thanks,

	tglx

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
