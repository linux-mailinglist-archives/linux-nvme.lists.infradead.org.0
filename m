Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6E39A043F
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 16:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DDBTnf3h6gVQbXX1Wu2wJA88cMNSUHKGKfS5H9lwDGo=; b=ZQSGt/OK4ZUUR+
	Frk4zy5XR4PlbA0n5NFA9E86k3VHyUabYiIygvojEQSZpaeB4ZZk247fExwtIZqovtc23oJ8jy7k7
	Qdlu0aZ0wn6MXTDvhNq6mPvcsxiHRTzEOyNVubZ8b4CSM+/J1t0OUFuVs6YPdUQs/nrZQ76ezDUEU
	OT/PkITdy1z4w+8NnQFi0AUr4aYw3MEAQRjFEsRQslR2F+pP3VeX9Er0/s/9h7pRlr9NUWoDb3Dn0
	7ReI94C3Udj9F1ym0Ygog4FcjtGoaADJoIIkjkz8R+i0hh4cpvWzrop38HteT5XNDqj0Gi+Kzfhnx
	SZIPsxpY1Bq1nMdvA9xQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2ycE-0005q2-L8; Wed, 28 Aug 2019 14:08:02 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2yc6-0005pj-Ts
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 14:07:56 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1i2ybc-0005Vf-Ga; Wed, 28 Aug 2019 16:07:24 +0200
Date: Wed, 28 Aug 2019 16:07:19 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
In-Reply-To: <20190828135054.GA23861@ming.t460p>
Message-ID: <alpine.DEB.2.21.1908281605190.23149@nanos.tec.linutronix.de>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
 <20190827225827.GA5263@ming.t460p>
 <alpine.DEB.2.21.1908280104330.1939@nanos.tec.linutronix.de>
 <20190828110633.GC15524@ming.t460p>
 <alpine.DEB.2.21.1908281316230.1869@nanos.tec.linutronix.de>
 <20190828135054.GA23861@ming.t460p>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_070755_108878_81A5C4AB 
X-CRM114-Status: GOOD (  19.72  )
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
> On Wed, Aug 28, 2019 at 01:23:06PM +0200, Thomas Gleixner wrote:
> > On Wed, 28 Aug 2019, Ming Lei wrote:
> > > On Wed, Aug 28, 2019 at 01:09:44AM +0200, Thomas Gleixner wrote:
> > > > > > Also how is that supposed to work when sched_clock is jiffies based?
> > > > > 
> > > > > Good catch, looks ktime_get_ns() is needed.
> > > > 
> > > > And what is ktime_get_ns() returning when the only available clocksource is
> > > > jiffies?
> > > 
> > > IMO, it isn't one issue. If the only clocksource is jiffies, we needn't to
> > > expect high IO performance. Then it is fine to always handle the irq in
> > > interrupt context or thread context.
> > > 
> > > However, if it can be recognized runtime, irq_flood_detected() can
> > > always return true or false.
> > 
> > Right. The clocksource is determined at runtime. And if there is no high
> > resolution clocksource then that function will return crap.
> 
> This patch still works even though the only clocksource is jiffies.

Works by some definition of works, right?

> > Well, yes. But it's trivial enough to utilize parts of it for your
> > purposes.
> 
> >From the code of kernel/irq/timing.c:
> 
> 1) record_irq_time() only records the start time of one irq, and not
> consider the time taken in interrupt handler, so we can't figure out
> the real interval between two do_IRQ() on one CPU

I said utilize and that means that the infrastructure can be used and
extended. I did not say that it solves your problem, right?

> 2) irq/timing doesn't cover softirq

That's solvable, right?
 
> Daniel, could you take a look and see if irq flood detection can be
> implemented easily by irq/timing.c?

I assume you can take a look as well, right?

Thanks,

	tglx

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
