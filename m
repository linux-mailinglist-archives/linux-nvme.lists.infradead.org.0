Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBF1DAB061
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Sep 2019 03:48:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=31cKVtyQcZGtM7ulnVuSvGxIsv10WNytpdb6HkkeDwc=; b=KCN0uhJp7vg0aQ
	SF5KfgXU5CVyD7Hn8Q22G0KHYFIq4wWhgZuHBAmXcaA9Kz/GRW0kb+M0+IxbzMKMw3sidqXMKyqXi
	NxyVmxZCIf/d8MXJpanUNWayMIF0tF/eEcUX8bxbFJMEICiLj/HKRRc/hQnKmoEnVtsaEJKjkxq7J
	qUoXB23N2V19KFc/eVyUwJuSAf9EzWaTWpu2kMKfuJRayHisVCImrK2Z3IIjjcjDfpGZHuKcuxUl+
	HLkL/ysmOt/yXH3hUuQdf/wl73gBEAaBeNr2hKHo6Q0mgYAHZwmyl4IHKh8J2/gxwBu9xYZDbT2iT
	FENqh6BaFdEu7teTs21A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i63Mr-0004H7-6m; Fri, 06 Sep 2019 01:48:53 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i63Ml-0004GH-CJ
 for linux-nvme@lists.infradead.org; Fri, 06 Sep 2019 01:48:49 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A106218C4266;
 Fri,  6 Sep 2019 01:48:44 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8744860C18;
 Fri,  6 Sep 2019 01:48:26 +0000 (UTC)
Date: Fri, 6 Sep 2019 09:48:21 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190906014819.GB27116@ming.t460p>
References: <20190903033001.GB23861@ming.t460p>
 <299fb6b5-d414-2e71-1dd2-9d6e34ee1c79@linaro.org>
 <20190903063125.GA21022@ming.t460p>
 <6b88719c-782a-4a63-db9f-bf62734a7874@linaro.org>
 <20190903072848.GA22170@ming.t460p>
 <dd96def4-1121-afbe-2431-9e516a06850c@linaro.org>
 <6f3b6557-1767-8c80-f786-1ea667179b39@acm.org>
 <2a8bd278-5384-d82f-c09b-4fce236d2d95@linaro.org>
 <20190905090617.GB4432@ming.t460p>
 <6a36ccc7-24cd-1d92-fef1-2c5e0f798c36@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a36ccc7-24cd-1d92-fef1-2c5e0f798c36@linaro.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.62]); Fri, 06 Sep 2019 01:48:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_184847_457538_A6D4635A 
X-CRM114-Status: GOOD (  32.18  )
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
 Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Daniel,

On Thu, Sep 05, 2019 at 12:37:13PM +0200, Daniel Lezcano wrote:
> 
> Hi Ming,
> 
> On 05/09/2019 11:06, Ming Lei wrote:
> > On Wed, Sep 04, 2019 at 07:31:48PM +0200, Daniel Lezcano wrote:
> >> Hi,
> >>
> >> On 04/09/2019 19:07, Bart Van Assche wrote:
> >>> On 9/3/19 12:50 AM, Daniel Lezcano wrote:
> >>>> On 03/09/2019 09:28, Ming Lei wrote:
> >>>>> On Tue, Sep 03, 2019 at 08:40:35AM +0200, Daniel Lezcano wrote:
> >>>>>> It is a scheduler problem then ?
> >>>>>
> >>>>> Scheduler can do nothing if the CPU is taken completely by handling
> >>>>> interrupt & softirq, so seems not a scheduler problem, IMO.
> >>>>
> >>>> Why? If there is a irq pressure on one CPU reducing its capacity, the
> >>>> scheduler will balance the tasks on another CPU, no?
> >>>
> >>> Only if CONFIG_IRQ_TIME_ACCOUNTING has been enabled. However, I don't
> >>> know any Linux distro that enables that option. That's probably because
> >>> that option introduces two rdtsc() calls in each interrupt. Given the
> >>> overhead introduced by this option, I don't think this is the solution
> >>> Ming is looking for.
> >>
> >> Was this overhead reported somewhere ?
> > 
> > The syscall of gettimeofday() calls ktime_get_real_ts64() which finally
> > calls tk_clock_read() which calls rdtsc too.
> > 
> > But gettimeofday() is often used in fast path, and block IO_STAT needs to
> > read it too.
> > 
> >>
> >>> See also irqtime_account_irq() in kernel/sched/cputime.c.
> >>
> >> From my POV, this framework could be interesting to detect this situation.
> > 
> > Now we are talking about IRQ_TIME_ACCOUNTING instead of IRQ_TIMINGS, and the
> > former one could be used to implement the detection. And the only sharing
> > should be the read of timestamp.
> 
> You did not share yet the analysis of the problem (the kernel warnings
> give the symptoms) and gave the reasoning for the solution. It is hard
> to understand what you are looking for exactly and how to connect the dots.

Let me explain it one more time:

When one IRQ flood happens on one CPU:

1) softirq handling on this CPU can't make progress

2) kernel thread bound to this CPU can't make progress

For example, network may require softirq to xmit packets, or another irq
thread for handling keyboards/mice or whatever, or rcu_sched may depend
on that CPU for making progress, then the irq flood stalls the whole
system.

> 
> AFAIU, there are fast medium where the responses to requests are faster
> than the time to process them, right?

Usually medium may not be faster than CPU, now we are talking about
interrupts, which can be originated from lots of devices concurrently,
for example, in Long Li'test, there are 8 NVMe drives involved.

> 
> I don't see how detecting IRQ flooding and use a threaded irq is the
> solution, can you explain?

When IRQ flood is detected, we reserve a bit little time for providing
chance to make softirq/threads scheduled by scheduler, then the above
problem can be avoided.

> 
> If the responses are coming at a very high rate, whatever the solution
> (interrupts, threaded interrupts, polling), we are still in the same
> situation.

When we moving the interrupt handling into irq thread, other softirq/
threaded interrupt/thread gets chance to be scheduled, so we can avoid
to stall the whole system.

> 
> My suggestion was initially to see if the interrupt load will be taken
> into accounts in the cpu load and favorize task migration with the
> scheduler load balance to a less loaded CPU, thus the CPU processing
> interrupts will end up doing only that while other CPUs will handle the
> "threaded" side.
> 
> Beside that, I'm wondering if the block scheduler should be somehow
> involved in that [1]

For NVMe or any multi-queue storage, the default scheduler is 'none',
which basically does nothing except for submitting IO asap.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
