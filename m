Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38F83A617C
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Sep 2019 08:32:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+N0qElPUPk9FC0VucmvuQzyQAcNsft+2vUnP+VOiX6c=; b=XxHiuJgY+lMxOp
	3gc2Dz6tuUfX+7mPDDKhGewVYWkspqzU9cqyPZHZsNhraGcc70NJvfBqgcpiz+LjOfCKfodIF/sDc
	vHYPNxxfQARjLD3Y3MEKPrAhFLI/1W3TwCftaUAclA7YKrcobZgWsgNQoAo94k2b7MxpQ8Z3EipF6
	ZyvUTTN7W34xaVWZC+lxZhv3jEMH0asf0dnKcR9wZSLWbfY6lrWzrYnrbI4JsFIXEnf6+9qZjOm6j
	KOxI5cfDlE35CZezbSoQFwncbDvgOxfzPkP5IkYlVVaL8tp/KxEC7DDClBushbUVigUOFOfeaGQX6
	I52ijn5Jy4uFCAAwYZPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i52MD-00063o-6z; Tue, 03 Sep 2019 06:32:01 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i52Lu-000638-TZ
 for linux-nvme@lists.infradead.org; Tue, 03 Sep 2019 06:31:44 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 031D9A36F07;
 Tue,  3 Sep 2019 06:31:42 +0000 (UTC)
Received: from ming.t460p (ovpn-8-25.pek2.redhat.com [10.72.8.25])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 130595DA5B;
 Tue,  3 Sep 2019 06:31:31 +0000 (UTC)
Date: Tue, 3 Sep 2019 14:31:26 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190903063125.GA21022@ming.t460p>
References: <20190827085344.30799-2-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908271633450.1939@nanos.tec.linutronix.de>
 <20190827225827.GA5263@ming.t460p>
 <alpine.DEB.2.21.1908280104330.1939@nanos.tec.linutronix.de>
 <20190828110633.GC15524@ming.t460p>
 <alpine.DEB.2.21.1908281316230.1869@nanos.tec.linutronix.de>
 <20190828135054.GA23861@ming.t460p>
 <alpine.DEB.2.21.1908281605190.23149@nanos.tec.linutronix.de>
 <20190903033001.GB23861@ming.t460p>
 <299fb6b5-d414-2e71-1dd2-9d6e34ee1c79@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <299fb6b5-d414-2e71-1dd2-9d6e34ee1c79@linaro.org>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 03 Sep 2019 06:31:42 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_233142_979840_1118642D 
X-CRM114-Status: GOOD (  21.69  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 John Garry <john.garry@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Daniel,

On Tue, Sep 03, 2019 at 07:59:39AM +0200, Daniel Lezcano wrote:
> 
> Hi Ming Lei,
> 
> On 03/09/2019 05:30, Ming Lei wrote:
> 
> [ ... ]
> 
> 
> >>> 2) irq/timing doesn't cover softirq
> >>
> >> That's solvable, right?
> > 
> > Yeah, we can extend irq/timing, but ugly for irq/timing, since irq/timing
> > focuses on hardirq predication, and softirq isn't involved in that
> > purpose.
> > 
> >>  
> >>> Daniel, could you take a look and see if irq flood detection can be
> >>> implemented easily by irq/timing.c?
> >>
> >> I assume you can take a look as well, right?
> > 
> > Yeah, I have looked at the code for a while, but I think that irq/timing
> > could become complicated unnecessarily for covering irq flood detection,
> > meantime it is much less efficient for detecting IRQ flood.
> 
> In the series, there is nothing describing rigorously the problem (I can
> only guess) and why the proposed solution solves it.
> 
> What is your definition of an 'irq flood'? A high irq load? An irq
> arriving while we are processing the previous one in the bottom halves?

So far, it means that handling interrupt & softirq takes all utilization
of one CPU, then processes can't be run on this CPU basically, usually
sort of CPU lockup warning will be triggered.

> 
> The patch 2/4 description says "however IO completion is only done on
> one of these submission CPU cores". That describes the bottleneck and
> then the patch says "Add IRQF_RESCUE_THREAD to create one interrupt
> thread handler", what is the rational between the bottleneck (problem)
> and the irqf_rescue_thread (solution)?

The solution is to switch to handle this interrupt on the created rescue
irq thread context when irq flood is detected, and 'this interrupt' means
the interrupt requested with IRQF_RESCUE_THREAD.

> 
> Is it really the solution to track the irq timings to detect a flood?

The solution tracks the time taken on running do_IRQ() for each CPU.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
