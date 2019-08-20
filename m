Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB48D9572E
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 08:15:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=c0RbkPW2gVd+8khW3uWykTw7ZkJI4R3jeLoZ2sCeY4Y=; b=IlaloJ6z4Oxej64Ng8umM+hosd
	qQxWv6qf3K3WmcZshwy9hpe0quJ3Uzc3noJTElkcxV7H9S/IpIZUQY/sxE2bNRwqV5nt22khEU5Br
	Y82RPXULZ3ns52HqhEQZ90RMkIzQCU2xbHPmYHVPNfpBZjOx5PnE9IUVdsoiq/J7QRAt5JmJjT/Cw
	n7yMLQKjFx1MAMv60QfTY8iRnNMVwa94XVaVhVUFeQIrQNqfaVCx5JzbLr2Z9aBKEbGndN5Op2Boc
	RCYyoIFoQ98CLVK+TCB0SeaJ/BFe9icGOdFauRTkadkptmuJusTpembUauw/AoRbYbnJrgnLqFywu
	y0SeK8Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzxQh-0006jI-BX; Tue, 20 Aug 2019 06:15:39 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzxPv-00056B-Aa
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 06:14:53 +0000
Received: by linux.microsoft.com (Postfix, from userid 1004)
 id 25C1720B7194; Mon, 19 Aug 2019 23:14:51 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 25C1720B7194
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxonhyperv.com;
 s=default; t=1566281691;
 bh=9eZGSjk9dhxH6WYp4/QnLQB2seQhgmMP3Tb2BUTFLsA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=BjESw9kS3G3OQvSm8ATP5gO76PZ/Cbr6HpGYDVg4sUBi3b0CXjGfQRwaBUNwhTxo3
 qJSyqjjTAdgWVH9Rx2SuNRKb2joqYtvWq7CrH/aGyUaVjbPDy0NX08yqsnG84xPdX9
 9RQSluDRSO8hif87nZ5yVKmJrVldkXulHP2cpFOY=
From: longli@linuxonhyperv.com
To: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] nvme: complete request in work queue on CPU with flooded
 interrupts
Date: Mon, 19 Aug 2019 23:14:29 -0700
Message-Id: <1566281669-48212-4-git-send-email-longli@linuxonhyperv.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_231451_863476_F08133F5 
X-CRM114-Status: GOOD (  18.94  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Long Li <longli@microsoft.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Long Li <longli@microsoft.com>

When a NVMe hardware queue is mapped to several CPU queues, it is possible
that the CPU this hardware queue is bound to is flooded by returning I/O for
other CPUs.

For example, consider the following scenario:
1. CPU 0, 1, 2 and 3 share the same hardware queue
2. the hardware queue interrupts CPU 0 for I/O response
3. processes from CPU 1, 2 and 3 keep sending I/Os

CPU 0 may be flooded with interrupts from NVMe device that are I/O responses
for CPU 1, 2 and 3. Under heavy I/O load, it is possible that CPU 0 spends
all the time serving NVMe and other system interrupts, but doesn't have a
chance to run in process context.

To fix this, CPU 0 can schedule a work to complete the I/O request when it
detects the scheduler is not making progress. This serves multiple purposes:

1. This CPU has to be scheduled to complete the request. The other CPUs can't
issue more I/Os until some previous I/Os are completed. This helps this CPU
get out of NVMe interrupts.

2. This acts a throttling mechanisum for NVMe devices, in that it can not
starve a CPU while servicing I/Os from other CPUs.

3. This CPU can make progress on RCU and other work items on its queue.

Signed-off-by: Long Li <longli@microsoft.com>
---
 drivers/nvme/host/core.c | 57 +++++++++++++++++++++++++++++++++++++++-
 drivers/nvme/host/nvme.h |  1 +
 2 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 6a9dd68c0f4f..576bb6fce293 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -28,6 +28,7 @@
 #include <linux/t10-pi.h>
 #include <linux/pm_qos.h>
 #include <asm/unaligned.h>
+#include <linux/sched.h>
 
 #define CREATE_TRACE_POINTS
 #include "trace.h"
@@ -97,6 +98,15 @@ static dev_t nvme_chr_devt;
 static struct class *nvme_class;
 static struct class *nvme_subsys_class;
 
+/*
+ * The following are for detecting if this CPU is flooded with interrupts.
+ * The timestamp for the last context switch is recorded. If that is at least
+ * MAX_SCHED_TIMEOUT ago, try to recover from interrupt flood
+ */
+static DEFINE_PER_CPU(u64, last_switch);
+static DEFINE_PER_CPU(u64, last_clock);
+#define MAX_SCHED_TIMEOUT 2000000000	// 2 seconds in ns
+
 static int nvme_revalidate_disk(struct gendisk *disk);
 static void nvme_put_subsystem(struct nvme_subsystem *subsys);
 static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
@@ -260,9 +270,54 @@ static void nvme_retry_req(struct request *req)
 	blk_mq_delay_kick_requeue_list(req->q, delay);
 }
 
+static void nvme_complete_rq_work(struct work_struct *work)
+{
+	struct nvme_request *nvme_rq =
+		container_of(work, struct nvme_request, work);
+	struct request *req = blk_mq_rq_from_pdu(nvme_rq);
+
+	nvme_complete_rq(req);
+}
+
+
 void nvme_complete_rq(struct request *req)
 {
-	blk_status_t status = nvme_error_status(req);
+	blk_status_t status;
+	int cpu;
+	u64 switches;
+	struct nvme_request *nvme_rq;
+
+	if (!in_interrupt())
+		goto skip_check;
+
+	nvme_rq = nvme_req(req);
+	cpu = smp_processor_id();
+	if (idle_cpu(cpu))
+		goto skip_check;
+
+	/* Check if this CPU is flooded with interrupts */
+	switches = get_cpu_rq_switches(cpu);
+	if (this_cpu_read(last_switch) == switches) {
+		/*
+		 * If this CPU hasn't made a context switch in
+		 * MAX_SCHED_TIMEOUT ns (and it's not idle), schedule a work to
+		 * complete this I/O. This forces this CPU run non-interrupt
+		 * code and throttle the other CPU issuing the I/O
+		 */
+		if (sched_clock() - this_cpu_read(last_clock)
+				> MAX_SCHED_TIMEOUT) {
+			INIT_WORK(&nvme_rq->work, nvme_complete_rq_work);
+			schedule_work_on(cpu, &nvme_rq->work);
+			return;
+		}
+
+	} else {
+		this_cpu_write(last_switch, switches);
+		this_cpu_write(last_clock, sched_clock());
+	}
+
+skip_check:
+	status = nvme_error_status(req);
 
 	trace_nvme_complete_rq(req);
 
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 0a4a7f5e0de7..a8876e69e476 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -113,6 +113,7 @@ struct nvme_request {
 	u8			flags;
 	u16			status;
 	struct nvme_ctrl	*ctrl;
+	struct work_struct	work;
 };
 
 /*
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
