Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51FB195A89
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 11:00:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=xSkTc4bxCIc7Jwsb3fVJMGU4DIsrq9qUrHWbkq2SoJQ=; b=CG4T2Ai91yehVSrdQkA7zsQ25
	YtnED8utdP5y/ItjqJTwnppnGNeicJNvMO+wqr5PW/2poP/ViULE4s9bSfoqLMeE6p/qlsFO758j9
	1WxAE0QEgKN3rn8E5URbcXlzL+zfhNgNzWu/Vx08GEV7R94nIMGpVa9uGcauXNF06t4lR2O0EJKXr
	dsckIFEjdBzlyX4lygR9sfrUPbwMB1Xu7pgg3sbujENzMDn9il+wN1c/oWwki5jFLhQz3nVBqZ937
	mPQ4DKhwICwDJOTa90m82VTWabNzDJej12sDk6v2XzRxKrOzlvZ0puXLoyaE82UrsXPA1+FPto0D7
	9hltlZQNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzzzw-0006y2-L4; Tue, 20 Aug 2019 09:00:12 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzzzi-0006v5-DP
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 09:00:00 +0000
Received: from DGGEMS408-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 65641364036BC0FFDAF4;
 Tue, 20 Aug 2019 16:59:48 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS408-HUB.china.huawei.com
 (10.3.19.208) with Microsoft SMTP Server id 14.3.439.0;
 Tue, 20 Aug 2019 16:59:39 +0800
Subject: Re: [PATCH 0/3] fix interrupt swamp in NVMe
To: Ming Lei <tom.leiming@gmail.com>, <longli@linuxonhyperv.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <CACVXFVPCiTU0mtXKS0fyMccPXN6hAdZNHv6y-f8-tz=FE=BV=g@mail.gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <fd7d6101-37f4-2d34-f2f7-cfeade610278@huawei.com>
Date: Tue, 20 Aug 2019 09:59:32 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <CACVXFVPCiTU0mtXKS0fyMccPXN6hAdZNHv6y-f8-tz=FE=BV=g@mail.gmail.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_015958_651225_C79AC256 
X-CRM114-Status: GOOD (  24.29  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 chenxiang <chenxiang66@hisilicon.com>, Peter Zijlstra <peterz@infradead.org>,
 Long Li <longli@microsoft.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>, Thomas
 Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 20/08/2019 09:25, Ming Lei wrote:
> On Tue, Aug 20, 2019 at 2:14 PM <longli@linuxonhyperv.com> wrote:
>>
>> From: Long Li <longli@microsoft.com>
>>
>> This patch set tries to fix interrupt swamp in NVMe devices.
>>
>> On large systems with many CPUs, a number of CPUs may share one NVMe hardware
>> queue. It may have this situation where several CPUs are issuing I/Os, and
>> all the I/Os are returned on the CPU where the hardware queue is bound to.
>> This may result in that CPU swamped by interrupts and stay in interrupt mode
>> for extended time while other CPUs continue to issue I/O. This can trigger
>> Watchdog and RCU timeout, and make the system unresponsive.
>>
>> This patch set addresses this by enforcing scheduling and throttling I/O when
>> CPU is starved in this situation.
>>
>> Long Li (3):
>>   sched: define a function to report the number of context switches on a
>>     CPU
>>   sched: export idle_cpu()
>>   nvme: complete request in work queue on CPU with flooded interrupts
>>
>>  drivers/nvme/host/core.c | 57 +++++++++++++++++++++++++++++++++++++++-
>>  drivers/nvme/host/nvme.h |  1 +
>>  include/linux/sched.h    |  2 ++
>>  kernel/sched/core.c      |  7 +++++
>>  4 files changed, 66 insertions(+), 1 deletion(-)
>
> Another simpler solution may be to complete request in threaded interrupt
> handler for this case. Meantime allow scheduler to run the interrupt thread
> handler on CPUs specified by the irq affinity mask, which was discussed by
> the following link:
>
> https://lore.kernel.org/lkml/e0e9478e-62a5-ca24-3b12-58f7d056383e@huawei.com/
>
> Could you try the above solution and see if the lockup can be avoided?
> John Garry
> should have workable patch.

Yeah, so we experimented with changing the interrupt handling in the 
SCSI driver I maintain to use a threaded handler IRQ handler plus patch 
below, and saw a significant throughput boost:

--->8

Subject: [PATCH] genirq: Add support to allow thread to use hard irq 
affinity

Currently the cpu allowed mask for the threaded part of a threaded irq
handler will be set to the effective affinity of the hard irq.

Typically the effective affinity of the hard irq will be for a single
cpu. As such, the threaded handler would always run on the same cpu as
the hard irq.

We have seen scenarios in high data-rate throughput testing that the
cpu handling the interrupt can be totally saturated handling both the
hard interrupt and threaded handler parts, limiting throughput.

Add IRQF_IRQ_AFFINITY flag to allow the driver requesting the threaded
interrupt to decide on the policy of which cpu the threaded handler
may run.

Signed-off-by: John Garry <john.garry@huawei.com>

diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index 5b8328a99b2a..48e8b955989a 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -61,6 +61,9 @@
   *                interrupt handler after suspending interrupts. For 
system
   *                wakeup devices users need to implement wakeup 
detection in
   *                their interrupt handlers.
+ * IRQF_IRQ_AFFINITY - Use the hard interrupt affinity for setting the cpu
+ *                allowed mask for the threaded handler of a threaded 
interrupt
+ *                handler, rather than the effective hard irq affinity.
   */
  #define IRQF_SHARED		0x00000080
  #define IRQF_PROBE_SHARED	0x00000100
@@ -74,6 +77,7 @@
  #define IRQF_NO_THREAD		0x00010000
  #define IRQF_EARLY_RESUME	0x00020000
  #define IRQF_COND_SUSPEND	0x00040000
+#define IRQF_IRQ_AFFINITY	0x00080000

  #define IRQF_TIMER		(__IRQF_TIMER | IRQF_NO_SUSPEND | IRQF_NO_THREAD)

diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
index e8f7f179bf77..cb483a055512 100644
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -966,9 +966,13 @@ irq_thread_check_affinity(struct irq_desc *desc, 
struct irqaction *action)
  	 * mask pointer. For CPU_MASK_OFFSTACK=n this is optimized out.
  	 */
  	if (cpumask_available(desc->irq_common_data.affinity)) {
+		struct irq_data *irq_data = &desc->irq_data;
  		const struct cpumask *m;

-		m = irq_data_get_effective_affinity_mask(&desc->irq_data);
+		if (action->flags & IRQF_IRQ_AFFINITY)
+			m = desc->irq_common_data.affinity;
+		else
+			m = irq_data_get_effective_affinity_mask(irq_data);
  		cpumask_copy(mask, m);
  	} else {
  		valid = false;
-- 
2.17.1

As Ming mentioned in that same thread, we could even make this policy 
for managed interrupts.

Cheers,
John

>
> Thanks,
> Ming Lei
>
> .
>



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
