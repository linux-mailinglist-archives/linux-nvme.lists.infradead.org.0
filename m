Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FF5EA2BFA
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 02:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=H58aqoRlwqbfoMt6InBoXBNFiAePZSFzsMGIi/iG4oQ=; b=sMog6cdy2G3wbD
	F/wo2iRvQaJBRscDnbJ11NyrpxtsimD0JQSsBqs27l+bOFLh+jQMUQ9KnX4rLGMMB1rMY8V2dljRZ
	enFzyRyZI6v8HjU04wr6RpfgDW4T2yDuEiBEctt57GEh9u3W29WUkaO2rH+ai3Z/x0F/caMH5v5G4
	K2B3ZjSk76xHPZon2wLTZUfwr54TUW1guzwfqi2mf/fYiPieeiIIQwEsJrB7x7nY5j0PUG/AnG31M
	QArlrv0Ms/Gj2XYNsvdKDHp8kInDqjBynF5CRRyyrd+US/KoLrE5mKdaBSSITkZUtTLg8hz+18h9b
	h+zTqVliK+TwF144i8vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3VCR-0005Qn-Jd; Fri, 30 Aug 2019 00:55:35 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3VCC-0005Q8-7w
 for linux-nvme@lists.infradead.org; Fri, 30 Aug 2019 00:55:21 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 86D2583F3B;
 Fri, 30 Aug 2019 00:55:18 +0000 (UTC)
Received: from ming.t460p (ovpn-8-19.pek2.redhat.com [10.72.8.19])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id BDBBF608C1;
 Fri, 30 Aug 2019 00:55:07 +0000 (UTC)
Date: Fri, 30 Aug 2019 08:55:01 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Long Li <longli@microsoft.com>
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Message-ID: <20190830005459.GB25999@ming.t460p>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-2-ming.lei@redhat.com>
 <DM5PR21MB0748278B86FB5103AF6E8A37CEA20@DM5PR21MB0748.namprd21.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <DM5PR21MB0748278B86FB5103AF6E8A37CEA20@DM5PR21MB0748.namprd21.prod.outlook.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Fri, 30 Aug 2019 00:55:19 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_175520_322229_1F703E88 
X-CRM114-Status: GOOD (  19.88  )
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
 Sagi Grimberg <sagi@grimberg.me>,
 "linux-scsi@vger.kernel.org" <linux-scsi@vger.kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, John Garry <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 29, 2019 at 06:15:00AM +0000, Long Li wrote:
> >>>For some high performance IO devices, interrupt may come very frequently,
> >>>meantime IO request completion may take a bit time. Especially on some
> >>>devices(SCSI or NVMe), IO requests can be submitted concurrently from
> >>>multiple CPU cores, however IO completion is only done on one of these
> >>>submission CPU cores.
> >>>
> >>>Then IRQ flood can be easily triggered, and CPU lockup.
> >>>
> >>>Implement one simple generic CPU IRQ flood detection mechanism. This
> >>>mechanism uses the CPU average interrupt interval to evaluate if IRQ flood
> >>>is triggered. The Exponential Weighted Moving Average(EWMA) is used to
> >>>compute CPU average interrupt interval.
> >>>
> >>>Cc: Long Li <longli@microsoft.com>
> >>>Cc: Ingo Molnar <mingo@redhat.com>,
> >>>Cc: Peter Zijlstra <peterz@infradead.org>
> >>>Cc: Keith Busch <keith.busch@intel.com>
> >>>Cc: Jens Axboe <axboe@fb.com>
> >>>Cc: Christoph Hellwig <hch@lst.de>
> >>>Cc: Sagi Grimberg <sagi@grimberg.me>
> >>>Cc: John Garry <john.garry@huawei.com>
> >>>Cc: Thomas Gleixner <tglx@linutronix.de>
> >>>Cc: Hannes Reinecke <hare@suse.com>
> >>>Cc: linux-nvme@lists.infradead.org
> >>>Cc: linux-scsi@vger.kernel.org
> >>>Signed-off-by: Ming Lei <ming.lei@redhat.com>
> >>>---
> >>> drivers/base/cpu.c      | 25 ++++++++++++++++++++++
> >>> include/linux/hardirq.h |  2 ++
> >>> kernel/softirq.c        | 46
> >>>+++++++++++++++++++++++++++++++++++++++++
> >>> 3 files changed, 73 insertions(+)
> >>>
> >>>diff --git a/drivers/base/cpu.c b/drivers/base/cpu.c index
> >>>cc37511de866..7277d1aa0906 100644
> >>>--- a/drivers/base/cpu.c
> >>>+++ b/drivers/base/cpu.c
> >>>@@ -20,6 +20,7 @@
> >>> #include <linux/tick.h>
> >>> #include <linux/pm_qos.h>
> >>> #include <linux/sched/isolation.h>
> >>>+#include <linux/hardirq.h>
> >>>
> >>> #include "base.h"
> >>>
> >>>@@ -183,10 +184,33 @@ static struct attribute_group
> >>>crash_note_cpu_attr_group = {  };  #endif
> >>>
> >>>+static ssize_t show_irq_interval(struct device *dev,
> >>>+				 struct device_attribute *attr, char *buf) {
> >>>+	struct cpu *cpu = container_of(dev, struct cpu, dev);
> >>>+	ssize_t rc;
> >>>+	int cpunum;
> >>>+
> >>>+	cpunum = cpu->dev.id;
> >>>+
> >>>+	rc = sprintf(buf, "%llu\n", irq_get_avg_interval(cpunum));
> >>>+	return rc;
> >>>+}
> >>>+
> >>>+static DEVICE_ATTR(irq_interval, 0400, show_irq_interval, NULL); static
> >>>+struct attribute *irq_interval_cpu_attrs[] = {
> >>>+	&dev_attr_irq_interval.attr,
> >>>+	NULL
> >>>+};
> >>>+static struct attribute_group irq_interval_cpu_attr_group = {
> >>>+	.attrs = irq_interval_cpu_attrs,
> >>>+};
> >>>+
> >>> static const struct attribute_group *common_cpu_attr_groups[] = {  #ifdef
> >>>CONFIG_KEXEC
> >>> 	&crash_note_cpu_attr_group,
> >>> #endif
> >>>+	&irq_interval_cpu_attr_group,
> >>> 	NULL
> >>> };
> >>>
> >>>@@ -194,6 +218,7 @@ static const struct attribute_group
> >>>*hotplugable_cpu_attr_groups[] = {  #ifdef CONFIG_KEXEC
> >>> 	&crash_note_cpu_attr_group,
> >>> #endif
> >>>+	&irq_interval_cpu_attr_group,
> >>> 	NULL
> >>> };
> >>>
> >>>diff --git a/include/linux/hardirq.h b/include/linux/hardirq.h index
> >>>da0af631ded5..fd394060ddb3 100644
> >>>--- a/include/linux/hardirq.h
> >>>+++ b/include/linux/hardirq.h
> >>>@@ -8,6 +8,8 @@
> >>> #include <linux/vtime.h>
> >>> #include <asm/hardirq.h>
> >>>
> >>>+extern u64 irq_get_avg_interval(int cpu); extern bool
> >>>+irq_flood_detected(void);
> >>>
> >>> extern void synchronize_irq(unsigned int irq);  extern bool
> >>>synchronize_hardirq(unsigned int irq); diff --git a/kernel/softirq.c
> >>>b/kernel/softirq.c index 0427a86743a4..96e01669a2e0 100644
> >>>--- a/kernel/softirq.c
> >>>+++ b/kernel/softirq.c
> >>>@@ -25,6 +25,7 @@
> >>> #include <linux/smpboot.h>
> >>> #include <linux/tick.h>
> >>> #include <linux/irq.h>
> >>>+#include <linux/sched/clock.h>
> >>>
> >>> #define CREATE_TRACE_POINTS
> >>> #include <trace/events/irq.h>
> >>>@@ -52,6 +53,12 @@ DEFINE_PER_CPU_ALIGNED(irq_cpustat_t, irq_stat);
> >>>EXPORT_PER_CPU_SYMBOL(irq_stat);  #endif
> >>>
> >>>+struct irq_interval {
> >>>+	u64                     last_irq_end;
> >>>+	u64                     avg;
> >>>+};
> >>>+DEFINE_PER_CPU(struct irq_interval, avg_irq_interval);
> >>>+
> >>> static struct softirq_action softirq_vec[NR_SOFTIRQS]
> >>>__cacheline_aligned_in_smp;
> >>>
> >>> DEFINE_PER_CPU(struct task_struct *, ksoftirqd); @@ -339,6 +346,41 @@
> >>>asmlinkage __visible void do_softirq(void)
> >>> 	local_irq_restore(flags);
> >>> }
> >>>
> >>>+/*
> >>>+ * Update average irq interval with the Exponential Weighted Moving
> >>>+ * Average(EWMA)
> >>>+ */
> >>>+static void irq_update_interval(void)
> >>>+{
> >>>+#define IRQ_INTERVAL_EWMA_WEIGHT	128
> >>>+#define IRQ_INTERVAL_EWMA_PREV_FACTOR	127
> >>>+#define IRQ_INTERVAL_EWMA_CURR_FACTOR
> >>>	(IRQ_INTERVAL_EWMA_WEIGHT - \
> >>>+		IRQ_INTERVAL_EWMA_PREV_FACTOR)
> >>>+
> >>>+	int cpu = raw_smp_processor_id();
> >>>+	struct irq_interval *inter = per_cpu_ptr(&avg_irq_interval, cpu);
> >>>+	u64 delta = sched_clock_cpu(cpu) - inter->last_irq_end;
> >>>+
> >>>+	inter->avg = (inter->avg * IRQ_INTERVAL_EWMA_PREV_FACTOR +
> 
> inter->avg will start with 0? maybe use a bigger value like IRQ_FLOOD_THRESHOLD_NS

I won't be a big deal, any initial value should be fine since it is Exponential
Weighted Moving Average.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
