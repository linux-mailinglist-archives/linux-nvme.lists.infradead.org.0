Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 644E3986E6
	for <lists+linux-nvme@lfdr.de>; Wed, 21 Aug 2019 23:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=N6Pom72LsTO03j1u34zU9RY2Axrgos+i7AdvOuj5uOk=; b=Hzr4e6MeX+/FwujUziadcUM5G
	F8YerKBeDT4kC0L8lrQQwbD+SnKgCd/sYNFy8xlcrgaKL3vTOeEfGQH85XZiW6Q/0VDhj+v57gA38
	IVREPDLhF6CvfwtMgV/mqCQYPBS6rA9WuStRH9jOj70FLV6Ln+ngRiRhLBVfpETJGt1/aL3yzWvke
	KmNcHMx8fZBRdL7QIGMbmInz5Tp4fEcG7hs38NSWC/IxEVQHu/tiMdMOFo8+Mil5UHf28scV1ZPAl
	hfIDkP9TyKxqORAiBgkce8NGcttQt//qSEaLue5bVZQAhVix+54TjWP8hKngXY9rmKSbE4G9indCq
	qS8WDgpUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0YZT-0006vw-QK; Wed, 21 Aug 2019 21:55:11 +0000
Received: from mail-wm1-f68.google.com ([209.85.128.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0YZO-0006Xt-Km
 for linux-nvme@lists.infradead.org; Wed, 21 Aug 2019 21:55:08 +0000
Received: by mail-wm1-f68.google.com with SMTP id v15so3610884wml.0
 for <linux-nvme@lists.infradead.org>; Wed, 21 Aug 2019 14:55:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=dZmBgENqfNwfNa5Zm5m6mwQBLa3/uboFY5OV+WZzZ38=;
 b=qSx2xPTHbfGKBN9QC+GlraB838QHd3QTKMijwfsfjc4v0JvBBopwOOBRJVRVCfDrkh
 Bqph5ELWBZ12JIi58+8KkrRsGV4Q8NwP2Ng/1l9MK6Zj22FqRUvhea83aXDaPnuFGriz
 UF3kj23zDLnXspYGBjRwX7xVuPh5ns9UIUKXP2QY2bydFo8x1NarhBKxTaYvXsVJaW23
 ja+odBRv3pL9QwDU12Um5sSm7kfmDT6K7HEkHfWP71fEkZ9YOpB6NXuSC/xdKu8PhgEa
 IjxCL3YpA//unAfu4w97uNq+C8tMuEwMH4kmy9Rx16ChbiGycxFgLexpp36iibyeXcPs
 TtZw==
X-Gm-Message-State: APjAAAVNxsXZ7DH7TKVav89BeOKcF29WZgedPLFAhRcNpV6S4uBvXoRJ
 AocS/dHMpQuRVZeBMEM2QgA=
X-Google-Smtp-Source: APXvYqzccoF1NgqXQH2JuoJKudOBmMaDBicb05i7nYMWynkMF/Iohx6PM+Zv7cS6FI98ejyqKs2AYQ==
X-Received: by 2002:a7b:c241:: with SMTP id b1mr2325832wmj.165.1566424505083; 
 Wed, 21 Aug 2019 14:55:05 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id q3sm2019037wma.48.2019.08.21.14.55.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 21 Aug 2019 14:55:04 -0700 (PDT)
Subject: Re: [PATCH 3/3] nvme: complete request in work queue on CPU with
 flooded interrupts
To: Long Li <longli@microsoft.com>,
 "longli@linuxonhyperv.com" <longli@linuxonhyperv.com>,
 Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <1566281669-48212-4-git-send-email-longli@linuxonhyperv.com>
 <2a30a07f-982c-c291-e263-0cf72ec61235@grimberg.me>
 <CY4PR21MB0741E77B05835E1192415943CEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
 <CY4PR21MB074141B895C9FE0D390F590ACEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <7fbdf43a-9499-8fb3-f6ec-5f1027b9fb65@grimberg.me>
Date: Wed, 21 Aug 2019 14:54:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <CY4PR21MB074141B895C9FE0D390F590ACEAA0@CY4PR21MB0741.namprd21.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_145506_689535_78792168 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.68 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Sagi,
> 
> Here are the test results.
> 
> Benchmark command:
> fio --bs=4k --ioengine=libaio --iodepth=64 --filename=/dev/nvme0n1:/dev/nvme1n1:/dev/nvme2n1:/dev/nvme3n1:/dev/nvme4n1:/dev/nvme5n1:/dev/nvme6n1:/dev/nvme7n1:/dev/nvme8n1:/dev/nvme9n1 --direct=1 --runtime=90 --numjobs=80 --rw=randread --name=test --group_reporting --gtod_reduce=1
> 
> With your patch: 1720k IOPS
> With threaded interrupts: 1320k IOPS
> With just interrupts: 3720k IOPS
> 
> Interrupts are the fastest but we need to find a way to throttle it.

This is the workload that generates the flood?
If so I did not expect that this would be the perf difference..

If completions keep pounding on the cpu, I would expect irqpoll
to simply keep running forever and poll the cqs. There is no
fundamental reason why polling would be faster in an interrupt,
what matters could be:
1. we reschedule more than we need to
2. we don't reap enough completions in every poll round, which
will trigger rearming the interrupt and then when it fires reschedule
another softirq...

Maybe we need to take care of some irq_poll optimizations?

Does this (untested) patch make any difference?
--
diff --git a/lib/irq_poll.c b/lib/irq_poll.c
index 2f17b488d58e..0e94183eba15 100644
--- a/lib/irq_poll.c
+++ b/lib/irq_poll.c
@@ -12,7 +12,8 @@
  #include <linux/irq_poll.h>
  #include <linux/delay.h>

-static unsigned int irq_poll_budget __read_mostly = 256;
+static unsigned int irq_poll_budget __read_mostly = 3000;
+unsigned int __read_mostly irqpoll_budget_usecs = 2000;

  static DEFINE_PER_CPU(struct list_head, blk_cpu_iopoll);

@@ -77,32 +78,26 @@ EXPORT_SYMBOL(irq_poll_complete);

  static void __latent_entropy irq_poll_softirq(struct softirq_action *h)
  {
-       struct list_head *list = this_cpu_ptr(&blk_cpu_iopoll);
-       int rearm = 0, budget = irq_poll_budget;
-       unsigned long start_time = jiffies;
+       struct list_head *irqpoll_list = this_cpu_ptr(&blk_cpu_iopoll);
+       unsigned int budget = irq_poll_budget;
+       unsigned long time_limit =
+               jiffies + usecs_to_jiffies(irqpoll_budget_usecs);
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
@@ -111,8 +106,6 @@ static void __latent_entropy irq_poll_softirq(struct 
softirq_action *h)

                 budget -= work;

-               local_irq_disable();
-
                 /*
                  * Drivers must not modify the iopoll state, if they
                  * consume their assigned weight (or more, some drivers 
can't
@@ -125,11 +118,21 @@ static void __latent_entropy 
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
+               if (budget <= 0 || time_after_eq(jiffies, time_limit))
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

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
