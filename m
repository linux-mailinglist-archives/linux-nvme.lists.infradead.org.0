Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93EFC9F69C
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 01:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dkawfV5L+Y8+bd9Z/Xml/1HAlEJrSThogD+vkYP0Lro=; b=i8jwxL4bv3noHM
	dIFz+t/T0pCsjigOZRmpQ+Q+pxp0paAYmTjO5rzgwnvLDS6ji4MApiFDIUTiGqotOoBF3MAoH40i4
	T/a3RKhfQiJPuZtjaAErsxwoByMhr/HbOXL8XKVf8WI5JWJyR7AiFI2KTILvCuTj+MPiquBtmHqO+
	dA4+vO83b28tUG7Z8X+4fHgthl1gI1NJdr3IWayC3vI45fzhK23M9dpr3bz4opcvm1wMmlZzizQGP
	Kw3fKEoU99CPTJCAUB1eRvSXN6oEuPv0w7nb3tN4XO1bdBDxRwMy/xuwzCa673fd0zEY3S57e0rkY
	TQwfcr+GLAEKbd+u40Ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2kbj-0001HA-2M; Tue, 27 Aug 2019 23:10:35 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2kbZ-0001Gg-Mc
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 23:10:27 +0000
Received: from p5de0b6c5.dip0.t-ipconnect.de ([93.224.182.197] helo=nanos)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i2kav-0005Z5-8r; Wed, 28 Aug 2019 01:09:45 +0200
Date: Wed, 28 Aug 2019 01:09:44 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
In-Reply-To: <20190827225827.GA5263@ming.t460p>
Message-ID: <alpine.DEB.2.21.1908280104330.1939@nanos.tec.linutronix.de>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
 <20190827225827.GA5263@ming.t460p>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_161025_881434_7D95D0D2 
X-CRM114-Status: GOOD (  15.79  )
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
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 28 Aug 2019, Ming Lei wrote:
> On Tue, Aug 27, 2019 at 04:42:02PM +0200, Thomas Gleixner wrote:
> > On Tue, 27 Aug 2019, Ming Lei wrote:
> > > +
> > > +	int cpu = raw_smp_processor_id();
> > > +	struct irq_interval *inter = per_cpu_ptr(&avg_irq_interval, cpu);
> > > +	u64 delta = sched_clock_cpu(cpu) - inter->last_irq_end;
> > 
> > Why are you doing that raw_smp_processor_id() dance? The call site has
> > interrupts and preemption disabled.
> 
> OK, will change to __smp_processor_id().

You do not need smp_processor_id() as all.

> > Also how is that supposed to work when sched_clock is jiffies based?
> 
> Good catch, looks ktime_get_ns() is needed.

And what is ktime_get_ns() returning when the only available clocksource is
jiffies?

> > 
> > > +	inter->avg = (inter->avg * IRQ_INTERVAL_EWMA_PREV_FACTOR +
> > > +		delta * IRQ_INTERVAL_EWMA_CURR_FACTOR) /
> > > +		IRQ_INTERVAL_EWMA_WEIGHT;
> > 
> > We definitely are not going to have a 64bit multiplication and division on
> > every interrupt. Asided of that this breaks 32bit builds all over the place.
> 
> I will convert the above into add/subtract/shift only.

No. Talk to Daniel. There is not going to be yet another ad hoc thingy just
to make block happy.

And aside of that why does block not have a "NAPI" mode which was
explicitely designed to avoid all that?

Thanks,

	tglx

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
