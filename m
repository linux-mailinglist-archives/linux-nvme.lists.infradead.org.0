Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 528709F67C
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 00:59:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xqW6CWOlgG/4HEtxMkpWW4F8dAOhLkO40KTCUp04D70=; b=uIw41F8dvPBJqj
	eyPG6n8TrT+dHqvvpB+s0FJMLrOLARFcyazgSu7cZa+QY3WxDKLAEbeGyyH3NqX5pjCEye4tHUlN5
	lNhvOOCNCNRPN+Pdbab8aCnhyMh59C3ymz8UDMHGdygFezHwVQy41a/At+AOSVpmhF/7FGDwe2jJk
	e7DfZSWFbpqun8EL+NQOZJIozVoqYkORDpJHW5nHiH6II4bz2Uj4YTczxQXijtGNn4IKGa7xw4Cve
	GPLQQdw8WN+Q0tYeS71bp6/B4NXqRsT7Ep/P+GxuSciAqA1QxcirNBKoi/bvtwNCoFX5zn4eMpob1
	3VUWGS4c8niubcH782Bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2kQm-0005DO-Q9; Tue, 27 Aug 2019 22:59:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2kQf-0005Cc-OL
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 22:59:11 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 93D233084244;
 Tue, 27 Aug 2019 22:59:06 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2C6825D6B0;
 Tue, 27 Aug 2019 22:58:53 +0000 (UTC)
Date: Wed, 28 Aug 2019 06:58:30 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190827225827.GA5263@ming.t460p>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.40]); Tue, 27 Aug 2019 22:59:07 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_155909_815926_66BB3BE8 
X-CRM114-Status: GOOD (  16.44  )
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

On Tue, Aug 27, 2019 at 04:42:02PM +0200, Thomas Gleixner wrote:
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

OK.

> 
> > +
> > +	int cpu = raw_smp_processor_id();
> > +	struct irq_interval *inter = per_cpu_ptr(&avg_irq_interval, cpu);
> > +	u64 delta = sched_clock_cpu(cpu) - inter->last_irq_end;
> 
> Why are you doing that raw_smp_processor_id() dance? The call site has
> interrupts and preemption disabled.

OK, will change to __smp_processor_id().

> 
> Also how is that supposed to work when sched_clock is jiffies based?

Good catch, looks ktime_get_ns() is needed.

> 
> > +	inter->avg = (inter->avg * IRQ_INTERVAL_EWMA_PREV_FACTOR +
> > +		delta * IRQ_INTERVAL_EWMA_CURR_FACTOR) /
> > +		IRQ_INTERVAL_EWMA_WEIGHT;
> 
> We definitely are not going to have a 64bit multiplication and division on
> every interrupt. Asided of that this breaks 32bit builds all over the place.

I will convert the above into add/subtract/shift only.

thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
