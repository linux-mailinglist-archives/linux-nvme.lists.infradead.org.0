Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FCFA03BD
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 15:51:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rcmmy+TSjRaiFaceJrhyF3w+FoosowGlp5fxX9XkMno=; b=Od9spb/cpJv4+o
	aSOnfD3iyvrW3j+VKLXk09gP6RokaMUx+09LwSZGHZnKcyN0AQAU35Rd+bSxUuN1IOZGSuUrXssCC
	CYqYUAJe0niSr8lPXkLV/5AJBJUPNP+9JqZJu7pgZ0T0vXL60cbkyNxcE6niysJrZIFh1C3BVug42
	V5+oYD7inTo1eXXZkXU7WFFg1tToNJ2FD/1Cyro3vv9gYNiTFn34AH7x+gsSFxLChHeSS4QUsqkk6
	9n5gNCzqeRiz00whBLJaIJj1uapVm8il3sYk2eyiyojVpYnQpYjnRGvtaVahQ2tQIKZXBC0McGOK5
	xcqVMM/Z0kFjc3zVOJAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2yM4-0007wU-Fc; Wed, 28 Aug 2019 13:51:20 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yLx-0007vW-A4
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 13:51:14 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 518743175296;
 Wed, 28 Aug 2019 13:51:12 +0000 (UTC)
Received: from ming.t460p (ovpn-8-28.pek2.redhat.com [10.72.8.28])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EFACD60C5D;
 Wed, 28 Aug 2019 13:50:59 +0000 (UTC)
Date: Wed, 28 Aug 2019 21:50:55 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190828135054.GA23861@ming.t460p>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
 <20190827225827.GA5263@ming.t460p>
 <alpine.DEB.2.21.1908280104330.1939@nanos.tec.linutronix.de>
 <20190828110633.GC15524@ming.t460p>
 <alpine.DEB.2.21.1908281316230.1869@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908281316230.1869@nanos.tec.linutronix.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 28 Aug 2019 13:51:12 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_065113_367466_8B5CE8C5 
X-CRM114-Status: GOOD (  23.90  )
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

On Wed, Aug 28, 2019 at 01:23:06PM +0200, Thomas Gleixner wrote:
> On Wed, 28 Aug 2019, Ming Lei wrote:
> > On Wed, Aug 28, 2019 at 01:09:44AM +0200, Thomas Gleixner wrote:
> > > > > Also how is that supposed to work when sched_clock is jiffies based?
> > > > 
> > > > Good catch, looks ktime_get_ns() is needed.
> > > 
> > > And what is ktime_get_ns() returning when the only available clocksource is
> > > jiffies?
> > 
> > IMO, it isn't one issue. If the only clocksource is jiffies, we needn't to
> > expect high IO performance. Then it is fine to always handle the irq in
> > interrupt context or thread context.
> > 
> > However, if it can be recognized runtime, irq_flood_detected() can
> > always return true or false.
> 
> Right. The clocksource is determined at runtime. And if there is no high
> resolution clocksource then that function will return crap.

This patch still works even though the only clocksource is jiffies.

>  
> > > No. Talk to Daniel. There is not going to be yet another ad hoc thingy just
> > > to make block happy.
> > 
> > I just take a first glance at the code of 'interrupt timing', and its
> > motivation is to predicate of the next occurrence of interested interrupt
> > for use cases of PM, such as predicate wakeup time.
> > 
> > And predication could be one much more difficult thing, and its implementation
> > requires to record more info: such as irq number, recent multiple irq timestamps,
> > that means its overhead is a bit high. Meantime IRQS_TIMINGS should only be set
> > on interested interrupt(s).
> 
> Well, yes. But it's trivial enough to utilize parts of it for your
> purposes.

From the code of kernel/irq/timing.c:

1) record_irq_time() only records the start time of one irq, and not
consider the time taken in interrupt handler, so we can't figure out
the real interval between two do_IRQ() on one CPU

2) irq/timing doesn't cover softirq

Daniel, could you take a look and see if irq flood detection can be
implemented easily by irq/timing.c?


thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
