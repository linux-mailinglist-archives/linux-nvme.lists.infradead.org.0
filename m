Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFC8DA00A9
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 13:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fmjs0f3W3/pKBQC68kngCXiuC9UUQE67WwQSAHrOF1Q=; b=R731HIkaYnw27R
	7EQznaMpxO95T2iko4NblEtTl3B6qJTzpKz6Vb81w6a381zN6dqbdhpOUR3/oOvUP67Z79wTHl4Dj
	YN5vy1vQvtqpaeWyZoRxAxrJ4KpkBjboD6lemEDQCQnMwCYSo3FY18thsenXtfcACkXxYQiVOTBsl
	IOqCWUb+8DsOnOobqCt1MjiIYPqnaekf2pTcAQvTyETzcNsUkJFylhq2dlkWUcVgHq4mY2TBC8dbn
	v0rJrRGRdY5e5uhnHUTZYx4vGQvOinsqA9lZmYFS3NQp8iD/a84r6rTo6NN5A/djOetdNNqPaiwLN
	X9gBol8g8GIPLHaWxAQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2w3T-0000Ol-Jt; Wed, 28 Aug 2019 11:23:59 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2w3J-0000Nz-4C
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 11:23:50 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i2w2d-0001b2-3b; Wed, 28 Aug 2019 13:23:07 +0200
Date: Wed, 28 Aug 2019 13:23:06 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
In-Reply-To: <20190828110633.GC15524@ming.t460p>
Message-ID: <alpine.DEB.2.21.1908281316230.1869@nanos.tec.linutronix.de>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
 <20190827225827.GA5263@ming.t460p>
 <alpine.DEB.2.21.1908280104330.1939@nanos.tec.linutronix.de>
 <20190828110633.GC15524@ming.t460p>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_042349_311473_B011FE14 
X-CRM114-Status: GOOD (  20.24  )
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

On Wed, 28 Aug 2019, Ming Lei wrote:
> On Wed, Aug 28, 2019 at 01:09:44AM +0200, Thomas Gleixner wrote:
> > > > Also how is that supposed to work when sched_clock is jiffies based?
> > > 
> > > Good catch, looks ktime_get_ns() is needed.
> > 
> > And what is ktime_get_ns() returning when the only available clocksource is
> > jiffies?
> 
> IMO, it isn't one issue. If the only clocksource is jiffies, we needn't to
> expect high IO performance. Then it is fine to always handle the irq in
> interrupt context or thread context.
> 
> However, if it can be recognized runtime, irq_flood_detected() can
> always return true or false.

Right. The clocksource is determined at runtime. And if there is no high
resolution clocksource then that function will return crap.
 
> > No. Talk to Daniel. There is not going to be yet another ad hoc thingy just
> > to make block happy.
> 
> I just take a first glance at the code of 'interrupt timing', and its
> motivation is to predicate of the next occurrence of interested interrupt
> for use cases of PM, such as predicate wakeup time.
> 
> And predication could be one much more difficult thing, and its implementation
> requires to record more info: such as irq number, recent multiple irq timestamps,
> that means its overhead is a bit high. Meantime IRQS_TIMINGS should only be set
> on interested interrupt(s).

Well, yes. But it's trivial enough to utilize parts of it for your
purposes.

> Daniel, correct me if I am wrong.

Daniel could have replied, if you'd put him on Cc ....

> In theory, this patch provides one simple generic mechanism for avoiding
> IRQ flood/CPU lockup, which could be used for any devices, not only high
> performance storage.

Right, we can add a lot of things to the kernel which provide simple
generic mechanisms for special purposes and if all of them are enabled then
we are doing the same thing over and over.

Thanks,

	tglx

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
