Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0721AAE27B
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Sep 2019 05:10:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=MW2zRr490TiKC7Sxmf4pbkS+CNfKrKVXvZl3d8ZtIUE=; b=AfwYMaAER5VN9SGvGvypGStdE
	Jwab672eNNpxbvXsCObvFPkiIJ75TcpmWMr3TcJL4drt32HSi4Oovj0nY0gTKk8ahPdP9GddEQ38A
	chV1N5U3wHwN/uvyLNt1EF3W9Wz99oMOmL6/Lq11CCr+ED8o2u6JpyEAt7BGzgdlngKf2ylvENvJR
	doc3lX8qveio7LZkp7vTbQOjgFB4g6tevjShlfxtj0skYN4JYny/V7DQPSJXPAb/X0NHzH5W6Z5Ig
	KdKh5J0s8nuIAMIREXh4luQ09KWRbYUzFlIxpEzRkIJWJeJHjGd6k+fTtKL6YDXP0Drh0wf9aNWn1
	e+ygDJfVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7WY2-0003yL-HM; Tue, 10 Sep 2019 03:10:30 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7WXn-0003x7-KO
 for linux-nvme@lists.infradead.org; Tue, 10 Sep 2019 03:10:17 +0000
Received: by mail-ot1-f68.google.com with SMTP id 67so16042410oto.3
 for <linux-nvme@lists.infradead.org>; Mon, 09 Sep 2019 20:10:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=kxwunZkkHtv4RXlkcMG5MzHeEbMqLnTkl646TCFSclc=;
 b=acdl6/G6t5VFMEkbIvV/p7R435TpCDuoquo72wznOK87uZTKd4yGi8tkqG4jVVRO3G
 QFrBt7O9OmKKNahPTisvJnVwf0/4fVQ3YGnSBuYLBS8RIPJNMKnK18CnSEx2xLd/oy0i
 beOygvWmqkmnLlKzWeJoUqHL0teVLLr6SRYyZsdPqcUnfw0uTu52pAnCDlx7fA1GKsaT
 suLV6vC1w2k9RR4QhiH4xWJb1Fy5SY3C5wMBOhThO3/4rfhFWz83e2pVpZ2QU/opi0j4
 fyl9Xo6K2ji86wgsKdfqdidedJfendSA9sV/Uf44DhPRqMCLQBNc/g7krPkjgO6y/bTJ
 yBlw==
X-Gm-Message-State: APjAAAXvMfhsKJPF2QxAnUsULqNvAv2QT+u3xG2dLMXPQJ2yPd43z2pr
 6vs1+X6uocmByRI/I+e9UuM=
X-Google-Smtp-Source: APXvYqwPFnL2WYpMErCGuFYsJ7vq1xNVv+Ygt9e7CxeTc2yjOW04vNcinTGassMuQ4zx4sJLmkDoiQ==
X-Received: by 2002:a05:6830:1217:: with SMTP id
 r23mr11958726otp.104.1568085011205; 
 Mon, 09 Sep 2019 20:10:11 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q124sm3814579oia.5.2019.09.09.20.10.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 09 Sep 2019 20:10:10 -0700 (PDT)
Subject: Re: [PATCH 1/4] softirq: implement IRQ flood detection mechanism
To: Ming Lei <ming.lei@redhat.com>
References: <6b88719c-782a-4a63-db9f-bf62734a7874@linaro.org>
 <20190903072848.GA22170@ming.t460p>
 <dd96def4-1121-afbe-2431-9e516a06850c@linaro.org>
 <6f3b6557-1767-8c80-f786-1ea667179b39@acm.org>
 <2a8bd278-5384-d82f-c09b-4fce236d2d95@linaro.org>
 <20190905090617.GB4432@ming.t460p>
 <6a36ccc7-24cd-1d92-fef1-2c5e0f798c36@linaro.org>
 <20190906014819.GB27116@ming.t460p>
 <ffefcfa0-09b6-9af5-f94e-8e7ddd2eef16@linaro.org>
 <6eb2a745-7b92-73ce-46f5-cc6a5ef08abc@grimberg.me>
 <20190907000100.GC12290@ming.t460p>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <f5685543-8cd5-6c6a-5b80-c77ef09c6b3b@grimberg.me>
Date: Mon, 9 Sep 2019 20:10:07 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190907000100.GC12290@ming.t460p>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190909_201015_675785_1115C4E8 
X-CRM114-Status: GOOD (  32.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Bart Van Assche <bvanassche@acm.org>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey Ming,

>>> Ok, so the real problem is per-cpu bounded tasks.
>>>
>>> I share Thomas opinion about a NAPI like approach.
>>
>> We already have that, its irq_poll, but it seems that for this
>> use-case, we get lower performance for some reason. I'm not
>> entirely sure why that is, maybe its because we need to mask interrupts
>> because we don't have an "arm" register in nvme like network devices
>> have?
> 
> Long observed that IOPS drops much too by switching to threaded irq. If
> softirqd is waken up for handing softirq, the performance shouldn't
> be better than threaded irq.

Its true that it shouldn't be any faster, but what irqpoll already has
and we don't need to reinvent is a proper budgeting mechanism that
needs to occur when multiple devices map irq vectors to the same cpu
core.

irqpoll already maintains a percpu list and dispatch the ->poll with
a budget that the backend enforces and irqpoll multiplexes between them.
Having this mechanism in irq (hard or threaded) context sounds
unnecessary a bit.

It seems like we're attempting to stay in irq context for as long as we
can instead of scheduling to softirq/thread context if we have more than
a minimal amount of work to do. Without at least understanding why
softirq/thread degrades us so much this code seems like the wrong
approach to me. Interrupt context will always be faster, but it is
not a sufficient reason to spend as much time as possible there, is it?

We should also keep in mind, that the networking stack has been doing
this for years, I would try to understand why this cannot work for nvme
before dismissing.

> Especially, Long found that context
> switch is increased a lot after applying your irq poll patch.
> 
> http://lists.infradead.org/pipermail/linux-nvme/2019-August/026788.html

Oh, I didn't see that one, wonder why... thanks!

5% improvement, I guess we can buy that for other users as is :)

If we suffer from lots of context switches while the CPU is flooded with
interrupts, then I would argue that we're re-raising softirq too much.
In this use-case, my assumption is that the cpu cannot keep up with the
interrupts and not that it doesn't reap enough (we also reap the first
batch in interrupt context...)

Perhaps making irqpoll continue until it must resched would improve
things further? Although this is a latency vs. efficiency tradeoff,
looks like MAX_SOFTIRQ_TIME is set to 2ms:

"
  * The MAX_SOFTIRQ_TIME provides a nice upper bound in most cases, but in
  * certain cases, such as stop_machine(), jiffies may cease to
  * increment and so we need the MAX_SOFTIRQ_RESTART limit as
  * well to make sure we eventually return from this method.
  *
  * These limits have been established via experimentation.
  * The two things to balance is latency against fairness -
  * we want to handle softirqs as soon as possible, but they
  * should not be able to lock up the box.
"

Long, does this patch make any difference?
--
diff --git a/lib/irq_poll.c b/lib/irq_poll.c
index 2f17b488d58e..d8eab563fa77 100644
--- a/lib/irq_poll.c
+++ b/lib/irq_poll.c
@@ -12,8 +12,6 @@
  #include <linux/irq_poll.h>
  #include <linux/delay.h>

-static unsigned int irq_poll_budget __read_mostly = 256;
-
  static DEFINE_PER_CPU(struct list_head, blk_cpu_iopoll);

  /**
@@ -77,42 +75,29 @@ EXPORT_SYMBOL(irq_poll_complete);

  static void __latent_entropy irq_poll_softirq(struct softirq_action *h)
  {
-       struct list_head *list = this_cpu_ptr(&blk_cpu_iopoll);
-       int rearm = 0, budget = irq_poll_budget;
-       unsigned long start_time = jiffies;
+       struct list_head *irqpoll_list = this_cpu_ptr(&blk_cpu_iopoll);
+       LIST_HEAD(list);

         local_irq_disable();
+       list_splice_init(irqpoll_list, &list);
+       local_irq_enable();

-       while (!list_empty(list)) {
+       while (!list_empty(&list)) {
                 struct irq_poll *iop;
                 int work, weight;

-               /*
-                * If softirq window is exhausted then punt.
-                */
-               if (budget <= 0 || time_after(jiffies, start_time)) {
-                       rearm = 1;
-                       break;
-               }
-
-               local_irq_enable();
-
                 /* Even though interrupts have been re-enabled, this
                  * access is safe because interrupts can only add new
                  * entries to the tail of this list, and only ->poll()
                  * calls can remove this head entry from the list.
                  */
-               iop = list_entry(list->next, struct irq_poll, list);
+               iop = list_first_entry(&list, struct irq_poll, list);

                 weight = iop->weight;
                 work = 0;
                 if (test_bit(IRQ_POLL_F_SCHED, &iop->state))
                         work = iop->poll(iop, weight);

-               budget -= work;
-
-               local_irq_disable();
-
                 /*
                  * Drivers must not modify the iopoll state, if they
                  * consume their assigned weight (or more, some drivers 
can't
@@ -125,11 +110,21 @@ static void __latent_entropy 
irq_poll_softirq(struct softirq_action *h)
                         if (test_bit(IRQ_POLL_F_DISABLE, &iop->state))
                                 __irq_poll_complete(iop);
                         else
-                               list_move_tail(&iop->list, list);
+                               list_move_tail(&iop->list, &list);
                 }
+
+               /*
+                * If softirq window is exhausted then punt.
+                */
+               if (need_resched())
+                       break;
         }

-       if (rearm)
+       local_irq_disable();
+
+       list_splice_tail_init(irqpoll_list, &list);
+       list_splice(&list, irqpoll_list);
+       if (!list_empty(irqpoll_list))
                 __raise_softirq_irqoff(IRQ_POLL_SOFTIRQ);

         local_irq_enable();
--

Reminder to the nvme side (slightly modified):
--
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 52205f8d90b4..09dc6da67b05 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -24,6 +24,7 @@
  #include <linux/io-64-nonatomic-lo-hi.h>
  #include <linux/sed-opal.h>
  #include <linux/pci-p2pdma.h>
+#include <linux/irq_poll.h>

  #include "trace.h"
  #include "nvme.h"
@@ -32,6 +33,7 @@
  #define CQ_SIZE(q)     ((q)->q_depth * sizeof(struct nvme_completion))

  #define SGES_PER_PAGE  (PAGE_SIZE / sizeof(struct nvme_sgl_desc))
+#define NVME_POLL_BUDGET_IRQ   256

  /*
   * These can be higher, but we need to ensure that any command doesn't
@@ -189,6 +191,7 @@ struct nvme_queue {
         u32 *dbbuf_cq_db;
         u32 *dbbuf_sq_ei;
         u32 *dbbuf_cq_ei;
+       struct irq_poll iop;
         struct completion delete_done;
  };

@@ -1014,11 +1017,29 @@ static inline int nvme_process_cq(struct 
nvme_queue *nvmeq, u16 *start,
         return found;
  }

+static int nvme_irqpoll_handler(struct irq_poll *iop, int budget)
+{
+       struct nvme_queue *nvmeq = container_of(iop, struct nvme_queue, 
iop);
+       struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
+       u16 start, end;
+       int completed;
+
+       completed = nvme_process_cq(nvmeq, &start, &end, budget);
+       nvme_complete_cqes(nvmeq, start, end);
+       if (completed < budget) {
+               irq_poll_complete(&nvmeq->iop);
+               enable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
+       }
+
+       return completed;
+}
+
  static irqreturn_t nvme_irq(int irq, void *data)
  {
         struct nvme_queue *nvmeq = data;
         irqreturn_t ret = IRQ_NONE;
         u16 start, end;
+       int budget = nvmeq->q_depth;

         /*
          * The rmb/wmb pair ensures we see all updates from a previous 
run of
@@ -1027,13 +1048,23 @@ static irqreturn_t nvme_irq(int irq, void *data)
         rmb();
         if (nvmeq->cq_head != nvmeq->last_cq_head)
                 ret = IRQ_HANDLED;
-       nvme_process_cq(nvmeq, &start, &end, -1);
+
+       /* reap here up to a budget of the size the queue depth */
+       do {
+               budget -= nvme_process_cq(nvmeq, &start, &end, budget);
+               if (start != end) {
+                       nvme_complete_cqes(nvmeq, start, end);
+                       ret = IRQ_HANDLED;
+               }
+       } while (start != end && budget > 0);
+
         nvmeq->last_cq_head = nvmeq->cq_head;
         wmb();

-       if (start != end) {
-               nvme_complete_cqes(nvmeq, start, end);
-               return IRQ_HANDLED;
+       /* if we still have cqes to reap, schedule irqpoll */
+       if (start != end && nvme_cqe_pending(nvmeq)) {
+               disable_irq_nosync(irq);
+               irq_poll_sched(&nvmeq->iop);
         }

         return ret;
@@ -1346,6 +1377,7 @@ static enum blk_eh_timer_return 
nvme_timeout(struct request *req, bool reserved)

  static void nvme_free_queue(struct nvme_queue *nvmeq)
  {
+       irq_poll_disable(&nvmeq->iop);
         dma_free_coherent(nvmeq->dev->dev, CQ_SIZE(nvmeq),
                                 (void *)nvmeq->cqes, nvmeq->cq_dma_addr);
         if (!nvmeq->sq_cmds)
@@ -1480,6 +1512,7 @@ static int nvme_alloc_queue(struct nvme_dev *dev, 
int qid, int depth)
         nvmeq->dev = dev;
         spin_lock_init(&nvmeq->sq_lock);
         spin_lock_init(&nvmeq->cq_poll_lock);
+       irq_poll_init(&nvmeq->iop, NVME_POLL_BUDGET_IRQ, 
nvme_irqpoll_handler);
         nvmeq->cq_head = 0;
         nvmeq->cq_phase = 1;
         nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
