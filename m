Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DB39F68A
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 01:05:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KxyTk6QA6nSP95Oi89JJG5G5V0Pn7QqC+LSU0vdm+6o=; b=XUz/+g0Col0ocW
	zTmSF6p479P2yjvHDZmAy3oVP4kXntWryqQMDU4pUoWDyDZt3fH7AVj/d4yaG++zB0+GsNhEFGouT
	zWIuI0L266r0fUyJgZs/fQmq01qZ59ifZN3GhgRebpUzodS5E/RSf1LaOnH2d9d1mKx07TaIeN5ji
	i6/lpA8CdSAlPQXBVepuowDAvWlF8wT0FjWA9uRV88z+T4Mp1BhATWzjv5b+CREHMwSUh/D5oFyWU
	dGhCRF23gfKmvKWG+ODQD1LTYUuj4WoBmJhKl6x8GXnmmNFZqPrzEUA5STlJWTFtxuoKlt84SDRtG
	V/IXVxBKlEXtJvrF1fww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2kWd-00080b-I5; Tue, 27 Aug 2019 23:05:19 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2kWV-00080E-I1
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 23:05:12 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 29CCF85365;
 Tue, 27 Aug 2019 23:05:11 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id DD67560F82;
 Tue, 27 Aug 2019 23:04:57 +0000 (UTC)
Date: Wed, 28 Aug 2019 07:04:52 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190827230451.GB5263@ming.t460p>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
 <alpine.DEB.2.21.1908271817180.1939@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908271817180.1939@nanos.tec.linutronix.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.25]); Tue, 27 Aug 2019 23:05:11 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_160511_616987_FD7CA33D 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Tue, Aug 27, 2019 at 06:19:00PM +0200, Thomas Gleixner wrote:
> On Tue, 27 Aug 2019, Thomas Gleixner wrote:
> > On Tue, 27 Aug 2019, Ming Lei wrote:
> > > +/*
> > > + * Update average irq interval with the Exponential Weighted Moving
> > > + * Average(EWMA)
> > > + */
> > > +static void irq_update_interval(void)
> > > +{
> > > +#define IRQ_INTERVAL_EWMA_WEIGHT	128
> > > +#define IRQ_INTERVAL_EWMA_PREV_FACTOR	127
> > > +#define IRQ_INTERVAL_EWMA_CURR_FACTOR	(IRQ_INTERVAL_EWMA_WEIGHT - \
> > > +		IRQ_INTERVAL_EWMA_PREV_FACTOR)
> > 
> > Please do not stick defines into a function body. That's horrible.
> > 
> > > +
> > > +	int cpu = raw_smp_processor_id();
> > > +	struct irq_interval *inter = per_cpu_ptr(&avg_irq_interval, cpu);
> > > +	u64 delta = sched_clock_cpu(cpu) - inter->last_irq_end;
> > 
> > Why are you doing that raw_smp_processor_id() dance? The call site has
> > interrupts and preemption disabled.
> > 
> > Also how is that supposed to work when sched_clock is jiffies based?
> > 
> > > +	inter->avg = (inter->avg * IRQ_INTERVAL_EWMA_PREV_FACTOR +
> > > +		delta * IRQ_INTERVAL_EWMA_CURR_FACTOR) /
> > > +		IRQ_INTERVAL_EWMA_WEIGHT;
> > 
> > We definitely are not going to have a 64bit multiplication and division on
> > every interrupt. Asided of that this breaks 32bit builds all over the place.
> 
> That said, we already have infrastructure for something like this in the
> core interrupt code which is optimized to be lightweight in the fast path.
> 
> kernel/irq/timings.c

irq/timings.c is much more complicated, especially it applies EWMA to
compute each irq's average interval. However, we only need it for
do_IRQ() to cover all interrupt & softirq handler.

Also CONFIG_IRQ_TIMINGS is usually disabled on distributions.

thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
