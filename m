Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083019E341
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 10:54:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xHIYyrnd5phXLsw+rpsDSdPLZClfjadSe8H1XhKJlcg=; b=spKIzG5r4Nt7AA
	riWS4EdBcPfKMjYe/hY0gM9FzJ5UBsz6V693q+cDpSmNErnBj529SBL+JE3+9qG+y3wMYJmvVHyD6
	U36MgLSMS3HiZcTvfujkOHQBoQxQBmwj4l3FoMESsPK+3EJE3SSGxpkSHGf/ruqZ1aucChdg1nKgG
	UN6vDW8a+xJXYoDwD+8rFgqm3Odl8sDrZkgOLNVvF16CJogX9eaqH1ImnVRnaVEqFaG1rRTr85wFQ
	SrTlpSr6YYpkIlsi1ljHk7PapNhoz+ugePE9Ug90Gl3+ZLbX2zb7HXOZtwJsh1aQI9S+D/qXfhbfa
	Af03krFg9hOhCXSGbsVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XFM-0004Bt-5f; Tue, 27 Aug 2019 08:54:36 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XEv-00041i-Vq
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 08:54:12 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A11778980ED;
 Tue, 27 Aug 2019 08:54:09 +0000 (UTC)
Received: from localhost (ovpn-8-27.pek2.redhat.com [10.72.8.27])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 3572E60610;
 Tue, 27 Aug 2019 08:54:05 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
Date: Tue, 27 Aug 2019 16:53:41 +0800
Message-Id: <20190827085344.30799-2-ming.lei@redhat.com>
In-Reply-To: <20190827085344.30799-1-ming.lei@redhat.com>
References: <20190827085344.30799-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.67]); Tue, 27 Aug 2019 08:54:09 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_015410_350471_C6B5244F 
X-CRM114-Status: GOOD (  18.67  )
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
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

For some high performance IO devices, interrupt may come very frequently,
meantime IO request completion may take a bit time. Especially on some
devices(SCSI or NVMe), IO requests can be submitted concurrently from
multiple CPU cores, however IO completion is only done on one of
these submission CPU cores.

Then IRQ flood can be easily triggered, and CPU lockup.

Implement one simple generic CPU IRQ flood detection mechanism. This
mechanism uses the CPU average interrupt interval to evaluate if IRQ flood
is triggered. The Exponential Weighted Moving Average(EWMA) is used to
compute CPU average interrupt interval.

Cc: Long Li <longli@microsoft.com>
Cc: Ingo Molnar <mingo@redhat.com>,
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: John Garry <john.garry@huawei.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Hannes Reinecke <hare@suse.com>
Cc: linux-nvme@lists.infradead.org
Cc: linux-scsi@vger.kernel.org
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/base/cpu.c      | 25 ++++++++++++++++++++++
 include/linux/hardirq.h |  2 ++
 kernel/softirq.c        | 46 +++++++++++++++++++++++++++++++++++++++++
 3 files changed, 73 insertions(+)

diff --git a/drivers/base/cpu.c b/drivers/base/cpu.c
index cc37511de866..7277d1aa0906 100644
--- a/drivers/base/cpu.c
+++ b/drivers/base/cpu.c
@@ -20,6 +20,7 @@
 #include <linux/tick.h>
 #include <linux/pm_qos.h>
 #include <linux/sched/isolation.h>
+#include <linux/hardirq.h>
 
 #include "base.h"
 
@@ -183,10 +184,33 @@ static struct attribute_group crash_note_cpu_attr_group = {
 };
 #endif
 
+static ssize_t show_irq_interval(struct device *dev,
+				 struct device_attribute *attr, char *buf)
+{
+	struct cpu *cpu = container_of(dev, struct cpu, dev);
+	ssize_t rc;
+	int cpunum;
+
+	cpunum = cpu->dev.id;
+
+	rc = sprintf(buf, "%llu\n", irq_get_avg_interval(cpunum));
+	return rc;
+}
+
+static DEVICE_ATTR(irq_interval, 0400, show_irq_interval, NULL);
+static struct attribute *irq_interval_cpu_attrs[] = {
+	&dev_attr_irq_interval.attr,
+	NULL
+};
+static struct attribute_group irq_interval_cpu_attr_group = {
+	.attrs = irq_interval_cpu_attrs,
+};
+
 static const struct attribute_group *common_cpu_attr_groups[] = {
 #ifdef CONFIG_KEXEC
 	&crash_note_cpu_attr_group,
 #endif
+	&irq_interval_cpu_attr_group,
 	NULL
 };
 
@@ -194,6 +218,7 @@ static const struct attribute_group *hotplugable_cpu_attr_groups[] = {
 #ifdef CONFIG_KEXEC
 	&crash_note_cpu_attr_group,
 #endif
+	&irq_interval_cpu_attr_group,
 	NULL
 };
 
diff --git a/include/linux/hardirq.h b/include/linux/hardirq.h
index da0af631ded5..fd394060ddb3 100644
--- a/include/linux/hardirq.h
+++ b/include/linux/hardirq.h
@@ -8,6 +8,8 @@
 #include <linux/vtime.h>
 #include <asm/hardirq.h>
 
+extern u64 irq_get_avg_interval(int cpu);
+extern bool irq_flood_detected(void);
 
 extern void synchronize_irq(unsigned int irq);
 extern bool synchronize_hardirq(unsigned int irq);
diff --git a/kernel/softirq.c b/kernel/softirq.c
index 0427a86743a4..96e01669a2e0 100644
--- a/kernel/softirq.c
+++ b/kernel/softirq.c
@@ -25,6 +25,7 @@
 #include <linux/smpboot.h>
 #include <linux/tick.h>
 #include <linux/irq.h>
+#include <linux/sched/clock.h>
 
 #define CREATE_TRACE_POINTS
 #include <trace/events/irq.h>
@@ -52,6 +53,12 @@ DEFINE_PER_CPU_ALIGNED(irq_cpustat_t, irq_stat);
 EXPORT_PER_CPU_SYMBOL(irq_stat);
 #endif
 
+struct irq_interval {
+	u64                     last_irq_end;
+	u64                     avg;
+};
+DEFINE_PER_CPU(struct irq_interval, avg_irq_interval);
+
 static struct softirq_action softirq_vec[NR_SOFTIRQS] __cacheline_aligned_in_smp;
 
 DEFINE_PER_CPU(struct task_struct *, ksoftirqd);
@@ -339,6 +346,41 @@ asmlinkage __visible void do_softirq(void)
 	local_irq_restore(flags);
 }
 
+/*
+ * Update average irq interval with the Exponential Weighted Moving
+ * Average(EWMA)
+ */
+static void irq_update_interval(void)
+{
+#define IRQ_INTERVAL_EWMA_WEIGHT	128
+#define IRQ_INTERVAL_EWMA_PREV_FACTOR	127
+#define IRQ_INTERVAL_EWMA_CURR_FACTOR	(IRQ_INTERVAL_EWMA_WEIGHT - \
+		IRQ_INTERVAL_EWMA_PREV_FACTOR)
+
+	int cpu = raw_smp_processor_id();
+	struct irq_interval *inter = per_cpu_ptr(&avg_irq_interval, cpu);
+	u64 delta = sched_clock_cpu(cpu) - inter->last_irq_end;
+
+	inter->avg = (inter->avg * IRQ_INTERVAL_EWMA_PREV_FACTOR +
+		delta * IRQ_INTERVAL_EWMA_CURR_FACTOR) /
+		IRQ_INTERVAL_EWMA_WEIGHT;
+}
+
+u64 irq_get_avg_interval(int cpu)
+{
+	return per_cpu_ptr(&avg_irq_interval, cpu)->avg;
+}
+
+/*
+ * If the average CPU irq interval is less than 8us, we think interrupt
+ * flood is detected on this CPU
+ */
+bool irq_flood_detected(void)
+{
+#define  IRQ_FLOOD_THRESHOLD_NS	8000
+	return raw_cpu_ptr(&avg_irq_interval)->avg <= IRQ_FLOOD_THRESHOLD_NS;
+}
+
 /*
  * Enter an interrupt context.
  */
@@ -356,6 +398,7 @@ void irq_enter(void)
 	}
 
 	__irq_enter();
+	irq_update_interval();
 }
 
 static inline void invoke_softirq(void)
@@ -402,6 +445,8 @@ static inline void tick_irq_exit(void)
  */
 void irq_exit(void)
 {
+	struct irq_interval *inter = raw_cpu_ptr(&avg_irq_interval);
+
 #ifndef __ARCH_IRQ_EXIT_IRQS_DISABLED
 	local_irq_disable();
 #else
@@ -413,6 +458,7 @@ void irq_exit(void)
 		invoke_softirq();
 
 	tick_irq_exit();
+	inter->last_irq_end = sched_clock_cpu(smp_processor_id());
 	rcu_irq_exit();
 	trace_hardirq_exit(); /* must be last! */
 }
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
