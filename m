Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D72A3AE1AE
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Sep 2019 02:25:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/wXNC6JDR1+ukjG3+6uLVLqhgMwHRGbN3cIS3dTnTMw=; b=aNlHWI9FNJQjs5
	Zf8aprQ1Kx8Nx3pzsL02nSCB0ZgzPQ+CfExHKI10umgq9zncH2tdb6RgwkSZMZIYiITQGCpO3FGSl
	DdCj0tFjgBxckgjy4C8b3ovWdSIx/6GM+JwEJlamD162FoWpCBCbLdc+2coLVbT2TxDRkZNjr5bFs
	En/E7nQOogNHtqQ9zeUFFjasC+lPr438uB9I67nvECPBK3mzUZM/NVGbGBtor5nPUmaxU3izQiepY
	rHqSey3yo0u7SwQ6mzgeOTj2HpVj0xqDtFl/32PKLIaBJDpRVOuF4EbZcL/1h4czv3vxDJqfnok50
	1w0Ram5TayYgdB4mpLzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7Txr-0004Su-TC; Tue, 10 Sep 2019 00:25:00 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7Txl-0004S6-II
 for linux-nvme@lists.infradead.org; Tue, 10 Sep 2019 00:24:55 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 326AF10576D5;
 Tue, 10 Sep 2019 00:24:50 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 8FDDE5C21F;
 Tue, 10 Sep 2019 00:24:39 +0000 (UTC)
Date: Tue, 10 Sep 2019 08:24:34 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Long Li <longli@microsoft.com>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190910002433.GA20557@ming.t460p>
References: <20190903072848.GA22170@ming.t460p>
 <dd96def4-1121-afbe-2431-9e516a06850c@linaro.org>
 <6f3b6557-1767-8c80-f786-1ea667179b39@acm.org>
 <2a8bd278-5384-d82f-c09b-4fce236d2d95@linaro.org>
 <20190905090617.GB4432@ming.t460p>
 <6a36ccc7-24cd-1d92-fef1-2c5e0f798c36@linaro.org>
 <20190906014819.GB27116@ming.t460p>
 <20190906141858.GA3953@localhost.localdomain>
 <CY4PR21MB0741091795CEE3D4624977CFCEBA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <20190906221920.GA12290@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190906221920.GA12290@ming.t460p>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.64]); Tue, 10 Sep 2019 00:24:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_172453_650212_80401E6A 
X-CRM114-Status: GOOD (  23.25  )
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
 John Garry <john.garry@huawei.com>, Bart Van Assche <bvanassche@acm.org>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Keith Busch <kbusch@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, Sep 07, 2019 at 06:19:20AM +0800, Ming Lei wrote:
> On Fri, Sep 06, 2019 at 05:50:49PM +0000, Long Li wrote:
> > >Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
> > >
> > >On Fri, Sep 06, 2019 at 09:48:21AM +0800, Ming Lei wrote:
> > >> When one IRQ flood happens on one CPU:
> > >>
> > >> 1) softirq handling on this CPU can't make progress
> > >>
> > >> 2) kernel thread bound to this CPU can't make progress
> > >>
> > >> For example, network may require softirq to xmit packets, or another
> > >> irq thread for handling keyboards/mice or whatever, or rcu_sched may
> > >> depend on that CPU for making progress, then the irq flood stalls the
> > >> whole system.
> > >>
> > >> >
> > >> > AFAIU, there are fast medium where the responses to requests are
> > >> > faster than the time to process them, right?
> > >>
> > >> Usually medium may not be faster than CPU, now we are talking about
> > >> interrupts, which can be originated from lots of devices concurrently,
> > >> for example, in Long Li'test, there are 8 NVMe drives involved.
> > >
> > >Why are all 8 nvmes sharing the same CPU for interrupt handling?
> > >Shouldn't matrix_find_best_cpu_managed() handle selecting the least used
> > >CPU from the cpumask for the effective interrupt handling?
> > 
> > The tests run on 10 NVMe disks on a system of 80 CPUs. Each NVMe disk has 32 hardware queues.
> 
> Then there are total 320 NVMe MSI/X vectors, and 80 CPUs, so irq matrix
> can't avoid effective CPUs overlapping at all.
> 
> > It seems matrix_find_best_cpu_managed() has done its job, but we may still have CPUs that service several hardware queues mapped from other issuing CPUs.
> > Another thing to consider is that there may be other managed interrupts on the system, so NVMe interrupts may not end up evenly distributed on such a system.
> 
> Another improvement could be to try to not overlap effective CPUs among
> vectors of fast device first, meantime allow the overlap between slow
> vectors and fast vectors.
> 
> This way could improve in case that total fast vectors are <= nr_cpu_cores.

For this particular case, it can't be done, because:

1) this machine has 10 NUMA nodes, and each NVMe has 8 hw queues, so too
many CPUs are assigned to the 1st two hw queues, see the code branch of
'if (numvecs <= nodes)' in __irq_build_affinity_masks().

2) then less CPUs are assigned to the other 6 hw queues

3) finally same effective CPU is shared by two IRQ vector.

Also looks matrix_find_best_cpu_managed() has been doing well enough for
choosing best effective CPU.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
