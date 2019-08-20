Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C96D967A1
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 19:33:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VI8DMIeeYeP03Zy6Rlv+B+u62pBsQxV6rq4AQFsHBGI=; b=WpS7TpPzTTgZ43pyeM0FGuvPc
	3JuwQBnp55FM1DLNReclJXan92wWknE/2d75kmwIY1r0NXwM25Gyg/UABi0dtrekfGMHiH/1I2+ae
	NDgZIzTYCmPzE3k60zZ512q1IXVJDqNVsZsMBhD9uSJ1D4NvqVUw+pAE23GKrDesQRbUx5VXbmLIW
	BRxo3ofujy94nczU4BP9uC6pI8cfBwsISLoU+mHS0SSl3LktGotB/mmchj0CzOvSBHpTL58j3HBXQ
	iPUim8FyqRMm9D68Of38jgdUjkqMw7B+Qyk6NVLDmJwDjTpVbLAFytZMm+wrxXbhWbmCFL6yA7i8o
	9PssXjyAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i080z-00071z-1E; Tue, 20 Aug 2019 17:33:49 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i080s-00071I-RF
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 17:33:45 +0000
Received: by mail-ot1-f68.google.com with SMTP id m24so5774197otp.12
 for <linux-nvme@lists.infradead.org>; Tue, 20 Aug 2019 10:33:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=DJrnLjhScHru9gcJVh+InGx4/K8NhQtt/YaanaUBKEI=;
 b=XNVVbYcyLCkbkt45NfE34MMK6jYLDYj3zH8Jy/3ovIAYOArN9yPISE1yJUyrOaXocL
 8XhKaFIttURaN3u61MVXnI4mf5YJ+bNUaStxy2wnIAjELP4Q0aDqs4FFKzrpciyvZ6GR
 KYMIQIuCu/5jxxkEguLPpO0VANW5Xcp0H1M3fyQjBLxeeEFoNlRa1YxKZWmGnADZ6HmI
 Lhm7CUUDRF+QzythTtONTPDQbtuoaugDMfgfVpdQ+egR8rougRrJfzotARDDuIilio9i
 etuTau6OBIxKHbkHOL2IPu7/esgA80jbw1k5azLVXKK75xx5R/NDuw91FbGGQDHyaH1K
 BLGg==
X-Gm-Message-State: APjAAAWmZRFMzGcYUb8gPXjpiXFn40Q4AmvcX/sey+hDL9e2w65x+bya
 U0IrrlMOMUbeztQ4Jr+9c2o=
X-Google-Smtp-Source: APXvYqwLvtPAu0vNNv/aME3T3x5ujv2kgu7v1Dc+Lbq4Pc0X6NZyD8oBBkPNk9orn/aWQjslTJCPQw==
X-Received: by 2002:a9d:628e:: with SMTP id x14mr14957344otk.361.1566322421233; 
 Tue, 20 Aug 2019 10:33:41 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id v24sm6742582otj.78.2019.08.20.10.33.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 10:33:40 -0700 (PDT)
Subject: Re: [PATCH 3/3] nvme: complete request in work queue on CPU with
 flooded interrupts
To: longli@linuxonhyperv.com, Ingo Molnar <mingo@redhat.com>,
 Peter Zijlstra <peterz@infradead.org>, Keith Busch <keith.busch@intel.com>,
 Jens Axboe <axboe@fb.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <1566281669-48212-4-git-send-email-longli@linuxonhyperv.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <2a30a07f-982c-c291-e263-0cf72ec61235@grimberg.me>
Date: Tue, 20 Aug 2019 10:33:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1566281669-48212-4-git-send-email-longli@linuxonhyperv.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_103342_885359_B14169CA 
X-CRM114-Status: GOOD (  25.86  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Long Li <longli@microsoft.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> From: Long Li <longli@microsoft.com>
> 
> When a NVMe hardware queue is mapped to several CPU queues, it is possible
> that the CPU this hardware queue is bound to is flooded by returning I/O for
> other CPUs.
> 
> For example, consider the following scenario:
> 1. CPU 0, 1, 2 and 3 share the same hardware queue
> 2. the hardware queue interrupts CPU 0 for I/O response
> 3. processes from CPU 1, 2 and 3 keep sending I/Os
> 
> CPU 0 may be flooded with interrupts from NVMe device that are I/O responses
> for CPU 1, 2 and 3. Under heavy I/O load, it is possible that CPU 0 spends
> all the time serving NVMe and other system interrupts, but doesn't have a
> chance to run in process context.
> 
> To fix this, CPU 0 can schedule a work to complete the I/O request when it
> detects the scheduler is not making progress. This serves multiple purposes:
> 
> 1. This CPU has to be scheduled to complete the request. The other CPUs can't
> issue more I/Os until some previous I/Os are completed. This helps this CPU
> get out of NVMe interrupts.
> 
> 2. This acts a throttling mechanisum for NVMe devices, in that it can not
> starve a CPU while servicing I/Os from other CPUs.
> 
> 3. This CPU can make progress on RCU and other work items on its queue.

The problem is indeed real, but this is the wrong approach in my mind.

We already have irqpoll which takes care proper budgeting polling
cycles and not hogging the cpu.

I've sent rfc for this particular problem before [1]. At the time IIRC,
Christoph suggested that we will poll the first batch directly from
the irq context and reap the rest in irqpoll handler.

[1]: 
http://lists.infradead.org/pipermail/linux-nvme/2016-October/006497.html

How about something like this instead:
--
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 71127a366d3c..84bf16d75109 100644
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

@@ -1015,6 +1018,23 @@ static inline int nvme_process_cq(struct 
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
@@ -1028,12 +1048,16 @@ static irqreturn_t nvme_irq(int irq, void *data)
         rmb();
         if (nvmeq->cq_head != nvmeq->last_cq_head)
                 ret = IRQ_HANDLED;
-       nvme_process_cq(nvmeq, &start, &end, -1);
+       nvme_process_cq(nvmeq, &start, &end, NVME_POLL_BUDGET_IRQ);
         nvmeq->last_cq_head = nvmeq->cq_head;
         wmb();

         if (start != end) {
                 nvme_complete_cqes(nvmeq, start, end);
+               if (nvme_cqe_pending(nvmeq)) {
+                       disable_irq_nosync(irq);
+                       irq_poll_sched(&nvmeq->iop);
+               }
                 return IRQ_HANDLED;
         }

@@ -1347,6 +1371,7 @@ static enum blk_eh_timer_return 
nvme_timeout(struct request *req, bool reserved)

  static void nvme_free_queue(struct nvme_queue *nvmeq)
  {
+       irq_poll_disable(&nvmeq->iop);
         dma_free_coherent(nvmeq->dev->dev, CQ_SIZE(nvmeq),
                                 (void *)nvmeq->cqes, nvmeq->cq_dma_addr);
         if (!nvmeq->sq_cmds)
@@ -1481,6 +1506,7 @@ static int nvme_alloc_queue(struct nvme_dev *dev, 
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
