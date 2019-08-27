Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88F7A9E350
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 10:54:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PrTKLpYgM7WSGER598bMrO3zA8bbi9usSLIamC699OU=; b=SiPrF+dgokncnC
	c8YXojkLjwPWkQcz+vvLP5rZrFNBpNbjc8tX+SO+0oybMhN6nM+06vZ+Lic5zTxG54YSg1rKBeYWq
	WrQM+jwZUpuP5d585OHMV/LQ4ypazpTfZRf9WSN6jvoyYDamEdeB7XUwkish/8ADj3aOWumbJLwmw
	iQSApye6mBHAvuy5S2lFJK5+PCYkGrj+n7fEQHsJmwNXD5muEKEhR7b2M2K8W4ghDfGr0XEe+ZQSZ
	FVRCKI1Frd3BKQCVhnE1Y42+NI64Q5tasx7bGgrm0FoRYP949rr+sLyJp22pXrKFpwWCrlwq+ot/K
	LEk1lKG1PTEXCvDLVRkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XFY-0004PY-D0; Tue, 27 Aug 2019 08:54:48 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XF2-00045y-Hv
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 08:54:18 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 215674E832;
 Tue, 27 Aug 2019 08:54:16 +0000 (UTC)
Received: from localhost (ovpn-8-27.pek2.redhat.com [10.72.8.27])
 by smtp.corp.redhat.com (Postfix) with ESMTP id D52FA5DA8B;
 Tue, 27 Aug 2019 08:54:11 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 2/4] genirq: add IRQF_RESCUE_THREAD
Date: Tue, 27 Aug 2019 16:53:42 +0800
Message-Id: <20190827085344.30799-3-ming.lei@redhat.com>
In-Reply-To: <20190827085344.30799-1-ming.lei@redhat.com>
References: <20190827085344.30799-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Tue, 27 Aug 2019 08:54:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_015416_749879_6667581C 
X-CRM114-Status: GOOD (  18.46  )
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

However, we can't simply use threaded IRQ for avoiding IRQ flood and
CPU lockup, because thread wakup introduces extra latency, which does
affect IO latency and throughput a lot.

Add IRQF_RESCUE_THREAD to create one interrupt thread handler for
avoiding irq flood, and the thread will be waken up for handling
interrupt in case that IRQ flood is going to be triggered

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
 include/linux/interrupt.h |  6 ++++++
 kernel/irq/handle.c       |  6 +++++-
 kernel/irq/manage.c       | 12 ++++++++++++
 3 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/include/linux/interrupt.h b/include/linux/interrupt.h
index 5b8328a99b2a..19fdab18e679 100644
--- a/include/linux/interrupt.h
+++ b/include/linux/interrupt.h
@@ -61,6 +61,11 @@
  *                interrupt handler after suspending interrupts. For system
  *                wakeup devices users need to implement wakeup detection in
  *                their interrupt handlers.
+ * IRQF_RESCUE_THREAD - Interrupt will be handled in thread context in case
+ *                that irq flood is triggered. Can't afford to always handle
+ *                irq in thread context becasue IO performance drops much by
+ *                the extra wakeup latency. So one backup thread is created
+ *                for avoiding irq flood which may cause CPU lockup.
  */
 #define IRQF_SHARED		0x00000080
 #define IRQF_PROBE_SHARED	0x00000100
@@ -74,6 +79,7 @@
 #define IRQF_NO_THREAD		0x00010000
 #define IRQF_EARLY_RESUME	0x00020000
 #define IRQF_COND_SUSPEND	0x00040000
+#define IRQF_RESCUE_THREAD	0x00080000
 
 #define IRQF_TIMER		(__IRQF_TIMER | IRQF_NO_SUSPEND | IRQF_NO_THREAD)
 
diff --git a/kernel/irq/handle.c b/kernel/irq/handle.c
index a4ace611f47f..8e5312c35483 100644
--- a/kernel/irq/handle.c
+++ b/kernel/irq/handle.c
@@ -146,7 +146,11 @@ irqreturn_t __handle_irq_event_percpu(struct irq_desc *desc, unsigned int *flags
 		irqreturn_t res;
 
 		trace_irq_handler_entry(irq, action);
-		res = action->handler(irq, action->dev_id);
+		if ((action->flags & IRQF_RESCUE_THREAD) &&
+				irq_flood_detected())
+			res = IRQ_WAKE_THREAD;
+		else
+			res = action->handler(irq, action->dev_id);
 		trace_irq_handler_exit(irq, action, res);
 
 		if (WARN_ONCE(!irqs_disabled(),"irq %u handler %pS enabled interrupts\n",
diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
index e8f7f179bf77..1566abbf50e8 100644
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -1082,6 +1082,8 @@ static int irq_thread(void *data)
 	if (force_irqthreads && test_bit(IRQTF_FORCED_THREAD,
 					&action->thread_flags))
 		handler_fn = irq_forced_thread_fn;
+	else if (action->flags & IRQF_RESCUE_THREAD)
+		handler_fn = irq_forced_thread_fn;
 	else
 		handler_fn = irq_thread_fn;
 
@@ -2011,6 +2013,16 @@ int request_threaded_irq(unsigned int irq, irq_handler_t handler,
 		handler = irq_default_primary_handler;
 	}
 
+	if (irqflags & IRQF_RESCUE_THREAD) {
+		if (irqflags & IRQF_NO_THREAD)
+			return -EINVAL;
+		if (thread_fn)
+			return -EINVAL;
+		if (handler == irq_default_primary_handler)
+			return -EINVAL;
+		thread_fn = handler;
+	}
+
 	action = kzalloc(sizeof(struct irqaction), GFP_KERNEL);
 	if (!action)
 		return -ENOMEM;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
