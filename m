Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27FD3A0078
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 13:07:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LkIaJaz+MbRcW/gTGPxazI2PZNSfd2FAaXbGImcRQc8=; b=iOchSIbkyxKjPe
	iY67KH588mYaFnZTTg+qUYMN4/voA2BWLtFTBgz/TAiKe4jso2FyhF69SUsV3OTfMrXWXDinm3lrs
	4In9GGOaVJ2grOHRC/HEbRjCevDvjAkxnTZUVg51XjM05um/m2itHls/h8PCXLlfv9OOlRgv9rUFR
	0eRbbVvXxK7Bt+4avy6FO3L/Tbxy3lyngUdczI+ZZNtJFT8LoswE5lwksjH26WJxka+ljx6L6Mr1P
	oK59V3eWVgwl0DZoonFHs0E4k39KN46WdVXp4ji729gccYlL5lWcaM4sGhqNk7S5Y9QjzS2ks5eqT
	nMoRsnpCxGyBLzgHpQWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2vn7-0002p5-Nh; Wed, 28 Aug 2019 11:07:05 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2vms-0002oP-9s
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 11:06:51 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 436273087958;
 Wed, 28 Aug 2019 11:06:49 +0000 (UTC)
Received: from ming.t460p (ovpn-8-32.pek2.redhat.com [10.72.8.32])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id C6336194B2;
 Wed, 28 Aug 2019 11:06:39 +0000 (UTC)
Date: Wed, 28 Aug 2019 19:06:34 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190828110633.GC15524@ming.t460p>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
 <20190827225827.GA5263@ming.t460p>
 <alpine.DEB.2.21.1908280104330.1939@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908280104330.1939@nanos.tec.linutronix.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Wed, 28 Aug 2019 11:06:49 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_040650_475010_1CDD8E23 
X-CRM114-Status: GOOD (  24.52  )
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
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 01:09:44AM +0200, Thomas Gleixner wrote:
> On Wed, 28 Aug 2019, Ming Lei wrote:
> > On Tue, Aug 27, 2019 at 04:42:02PM +0200, Thomas Gleixner wrote:
> > > On Tue, 27 Aug 2019, Ming Lei wrote:
> > > > +
> > > > +	int cpu = raw_smp_processor_id();
> > > > +	struct irq_interval *inter = per_cpu_ptr(&avg_irq_interval, cpu);
> > > > +	u64 delta = sched_clock_cpu(cpu) - inter->last_irq_end;
> > > 
> > > Why are you doing that raw_smp_processor_id() dance? The call site has
> > > interrupts and preemption disabled.
> > 
> > OK, will change to __smp_processor_id().
> 
> You do not need smp_processor_id() as all.

OK.

> 
> > > Also how is that supposed to work when sched_clock is jiffies based?
> > 
> > Good catch, looks ktime_get_ns() is needed.
> 
> And what is ktime_get_ns() returning when the only available clocksource is
> jiffies?

IMO, it isn't one issue. If the only clocksource is jiffies, we needn't to
expect high IO performance. Then it is fine to always handle the irq in
interrupt context or thread context.

However, if it can be recognized runtime, irq_flood_detected() can
always return true or false.

> 
> > > 
> > > > +	inter->avg = (inter->avg * IRQ_INTERVAL_EWMA_PREV_FACTOR +
> > > > +		delta * IRQ_INTERVAL_EWMA_CURR_FACTOR) /
> > > > +		IRQ_INTERVAL_EWMA_WEIGHT;
> > > 
> > > We definitely are not going to have a 64bit multiplication and division on
> > > every interrupt. Asided of that this breaks 32bit builds all over the place.
> > 
> > I will convert the above into add/subtract/shift only.
> 
> No. Talk to Daniel. There is not going to be yet another ad hoc thingy just
> to make block happy.

I just take a first glance at the code of 'interrupt timing', and its
motivation is to predicate of the next occurrence of interested interrupt
for use cases of PM, such as predicate wakeup time.

And predication could be one much more difficult thing, and its implementation
requires to record more info: such as irq number, recent multiple irq timestamps,
that means its overhead is a bit high. Meantime IRQS_TIMINGS should only be set
on interested interrupt(s).

Yeah, irq timing uses the Exponential Weighted Moving Average(EWMA) for computing
average irq interval for each interrupt.

So either motivation or approaches taken are totally different between
irq timing and irq flood detection.

Daniel, correct me if I am wrong.

For the case of detecting IRQ flood, we only need to sum the average
interval of any do_IRQ() on each CPU, and the overhead is quite low since
just two read & write on one percpu varible is required. We don't
care what the exact irq number is. However, we have to account time
taken by softirq handler, which can't be covered by interrupt timing.

Also it is quite simple to use EWMA to compute average interrupt
interval, however we can't reuse irq timing's result which is done on
each irq. IRQ flood detection simply computes the average interval
of any do_IRQ() on each CPU for covering handling interrupt and softirq.

> 
> And aside of that why does block not have a "NAPI" mode which was
> explicitely designed to avoid all that?

Block layer knows nothing about interrupt, even don't know which context
is run for completing IO request, which is decided by driver, could
be interrupt context, softirq context, or process context.

Also it is hard for block layer to figure out when IRQ flood is triggered.
CPU is shared resource, all kinds of interrupt sources may contribute
some for IRQ flood. That is why this patch implements the detection
mechanism in genirq/softirq code.

In theory, this patch provides one simple generic mechanism for avoiding
IRQ flood/CPU lockup, which could be used for any devices, not only high
performance storage.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
