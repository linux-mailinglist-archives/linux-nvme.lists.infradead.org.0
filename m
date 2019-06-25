Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9DFF55327
	for <lists+linux-nvme@lfdr.de>; Tue, 25 Jun 2019 17:18:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:Subject:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OuEIYHffQAD7ZErB3YHEnG7m3da+GmAdSY9J8Fu0A3Y=; b=SpyQzgh8Qnb2uPAv8Qv0CZ4AG
	KO7PG70lfrNChi2WcPGYIb3ap0XJpZeabxJXp44PHk5TS8K/cpnyMOw5lL/sAs2zWfPxah+S8rfI/
	KppR7v8X/0sB5qh1zwDmta+wYmCOWqcteHz/TDK6Rbd0XQDgYIG1zDtGMpayfcM3twBu5wJ/ssIpI
	SmclSxTzIy45W5sc+chAtLglns1hXjrgAwYm7glluzf5ZD8ZJ9PGXwUfL/5pGbsVEg991fA2WO1aG
	UBnE2TwUKEB4UkQDmpMRKOtY6ppxg1nvelVHo0IwglzC23TnKnLvBa44SGcqOypYEtO/mx+hQPsd+
	Gl5EPjeew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfnDU-0001So-Sx; Tue, 25 Jun 2019 15:18:40 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfnDM-0001RX-C1
 for linux-nvme@lists.infradead.org; Tue, 25 Jun 2019 15:18:34 +0000
Received: by mail-pg1-f193.google.com with SMTP id y8so1321748pgl.4
 for <linux-nvme@lists.infradead.org>; Tue, 25 Jun 2019 08:18:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language;
 bh=omeXmTqWrY35rHwslkfxvsf5JgGf+M8U2+oGSACrwZE=;
 b=n0USKuaNWjPySTYkyu3FnWcFikvEsXkW0wGlUWl+GVycszO7YOGBt+TpfKmZDPzCtT
 Tw12oKKTZLODYlM244Wf+94gqjV0Z/Pnq1/Z+FWOGrQ+7rlhO6meCjq5m+JqaXIt9l+j
 ODIxPBS1rtJQnyOrT9bRYGCFO82yXSAYN2ts0JP1HYQRfIJaWu9OgizxnU1I7lQ2KNUA
 kXuP8o7k0Bpwbcr5Zl3zLCbuHlzSKbjgXrcH0IZbrnSFYGlo3yW5g5ILqvlg92tBLw2i
 vhnnRVi0PXvunGN6nbxPWJ8Mt4Nlo8i3RqlXpC3kqrv+9Gc7Nqhqf5IBdC2U3AlLhjmK
 Q8iw==
X-Gm-Message-State: APjAAAXBZRhSqgeGRfolPVKIT5Gceb15RCb62tj/m1VLdgCcMarbtMpX
 1A1/2k6GjQg5Ji9t5F8Z26Q=
X-Google-Smtp-Source: APXvYqz5vsjEj4IkCYs2BpIxP/Qz3vnT1PeM8q6H7PFoxWJkjaqVspLDL/LFdpsjCNGK8GLz2aAEQg==
X-Received: by 2002:a63:289:: with SMTP id 131mr33619805pgc.211.1561475910960; 
 Tue, 25 Jun 2019 08:18:30 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id y68sm16624219pfy.164.2019.06.25.08.18.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 25 Jun 2019 08:18:29 -0700 (PDT)
Subject: Re: [PATCH] nvmet-rdma: Suppress a lockdep complaint
To: Marta Rybczynska <mrybczyn@kalray.eu>
References: <20190403230402.119428-1-bvanassche@acm.org>
 <1554392625.118779.243.camel@acm.org>
 <1035014818.27150671.1561441925414.JavaMail.zimbra@kalray.eu>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <7d28ee3d-0326-6d31-1cc6-13acc48e0d4d@acm.org>
Date: Tue, 25 Jun 2019 08:18:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <1035014818.27150671.1561441925414.JavaMail.zimbra@kalray.eu>
Content-Type: multipart/mixed; boundary="------------5EAA00D6F9A357E0C20E778D"
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_081832_432426_0E5EDBBE 
X-CRM114-Status: GOOD (  26.72  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is a multi-part message in MIME format.
--------------5EAA00D6F9A357E0C20E778D
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 6/24/19 10:52 PM, Marta Rybczynska wrote:
> ----- On 4 Apr, 2019, at 17:43, Bart Van Assche bvanassche@acm.org wrote:
>> On Wed, 2019-04-03 at 16:04 -0700, Bart Van Assche wrote:
>>> Although the code that waits for controllers that are being teared down
>>> in nvmet_rdma_queue_connect() is fine, lockdep complains about that code.
>>> Lockdep complains because all release_work instances are assigned the
>>> same static lockdep key. Avoid that lockdep complains by using dynamic
>>> lockdep keys instead of static lockdep keys. See also the following
>>> commits:
>>> * 87915adc3f0a ("workqueue: re-add lockdep dependencies for flushing").
>>> * 777dc82395de ("nvmet-rdma: occasionally flush ongoing controller teardown").
>>> * 108c14858b9e ("locking/lockdep: Add support for dynamic keys").
>>>
>>> This patch avoids that lockdep reports the following:
>>>
>>> ======================================================
>>> WARNING: possible circular locking dependency detected
>>> 4.19.0-dbg #1 Not tainted
>>> ------------------------------------------------------
>>> kworker/u12:0/7 is trying to acquire lock:
>>
>> Please drop this patch - it is not sufficient to suppress the lockdep complaint.
>> I will see whether I can come up with a better solution.
>>
> 
> Have you had time to work on this one further? We're seeing the same issue.

Hi Marta,

I'm running all NVMe tests on my setup with the attached patch applied.

Bart.

--------------5EAA00D6F9A357E0C20E778D
Content-Type: text/x-patch;
 name="0001-nvmet-rdma-Rework-DoS-attack-mitigation.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename="0001-nvmet-rdma-Rework-DoS-attack-mitigation.patch"

From 7777cb6118b4b4f0b43f6c8d36421c7fa8d3f6f2 Mon Sep 17 00:00:00 2001
From: Bart Van Assche <bvanassche@acm.org>
Date: Wed, 24 Oct 2018 11:23:08 -0700
Subject: [PATCH] nvmet-rdma: Rework DoS attack mitigation

When the rate of connect / disconnect requests is high, temporarily
refuse connections instead of waiting until previous connections have
been cleaned up. This patch avoids that the lockdep complaint shown
below is reported. See also the following commits:
* 87915adc3f0a ("workqueue: re-add lockdep dependencies for flushing").
* 777dc82395de ("nvmet-rdma: occasionally flush ongoing controller teardown").

======================================================
WARNING: possible circular locking dependency detected
4.19.0-dbg+ #1 Not tainted
------------------------------------------------------
kworker/u12:0/7 is trying to acquire lock:
00000000c03a91d1 (&id_priv->handler_mutex){+.+.}, at: rdma_destroy_id+0x6f/0x440 [rdma_cm]

but task is already holding lock:
(work_completion)(&queue->release_work)){+.+.}, at: process_one_work+0x3c9/0x9f0
which lock already depends on the new lock.

the existing dependency chain (in reverse order) is:
-> #3 ((work_completion)(&queue->release_work)){+.+.}:
       process_one_work+0x447/0x9f0
       worker_thread+0x63/0x5a0
       kthread+0x1cf/0x1f0
       ret_from_fork+0x24/0x30
-> #2 ((wq_completion)"nvmet-rdma-delete-wq"){+.+.}:
       flush_workqueue+0xf3/0x970
       nvmet_rdma_cm_handler+0x1320/0x170f [nvmet_rdma]
       cma_ib_req_handler+0x72f/0xf90 [rdma_cm]
       cm_process_work+0x2e/0x110 [ib_cm]
       cm_work_handler+0x431e/0x50ba [ib_cm]
       process_one_work+0x481/0x9f0
       worker_thread+0x63/0x5a0
       kthread+0x1cf/0x1f0
       ret_from_fork+0x24/0x30
-> #1 (&id_priv->handler_mutex/1){+.+.}:
       __mutex_lock+0xfe/0xbe0
       mutex_lock_nested+0x1b/0x20
       cma_ib_req_handler+0x6aa/0xf90 [rdma_cm]
       cm_process_work+0x2e/0x110 [ib_cm]
       cm_work_handler+0x431e/0x50ba [ib_cm]
       process_one_work+0x481/0x9f0
       worker_thread+0x63/0x5a0
       kthread+0x1cf/0x1f0
       ret_from_fork+0x24/0x30
-> #0 (&id_priv->handler_mutex){+.+.}:
       lock_acquire+0xc5/0x200
       __mutex_lock+0xfe/0xbe0
       mutex_lock_nested+0x1b/0x20
       rdma_destroy_id+0x6f/0x440 [rdma_cm]
       nvmet_rdma_release_queue_work+0x8e/0x1b0 [nvmet_rdma]
       process_one_work+0x481/0x9f0
       worker_thread+0x63/0x5a0
       kthread+0x1cf/0x1f0
       ret_from_fork+0x24/0x30
other info that might help us debug this:
Chain exists of:
  &id_priv->handler_mutex --> (wq_completion)"nvmet-rdma-delete-wq" --> (work_completion)(&queue->release_work)

Possible unsafe locking scenario:

       CPU0                    CPU1
       ----                    ----
  lock((work_completion)(&queue->release_work));
                               lock((wq_completion)"nvmet-rdma-delete-wq");
                               lock((work_completion)(&queue->release_work));
  lock(&id_priv->handler_mutex);

 *** DEADLOCK ***

2 locks held by kworker/u12:0/7:
 #0: 00000000272134f2 ((wq_completion)"nvmet-rdma-delete-wq"){+.+.}, at: process_one_work+0x3c9/0x9f0
 #1: 0000000090531fcd ((work_completion)(&queue->release_work)){+.+.}, at: process_one_work+0x3c9/0x9f0

               stack backtrace:
CPU: 1 PID: 7 Comm: kworker/u12:0 Not tainted 4.19.0-dbg+ #1
Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.10.2-1 04/01/2014
Workqueue: nvmet-rdma-delete-wq nvmet_rdma_release_queue_work [nvmet_rdma]
Call Trace:
 dump_stack+0x86/0xc5
 print_circular_bug.isra.32+0x20a/0x218
 __lock_acquire+0x1c68/0x1cf0
 lock_acquire+0xc5/0x200
 __mutex_lock+0xfe/0xbe0
 mutex_lock_nested+0x1b/0x20
 rdma_destroy_id+0x6f/0x440 [rdma_cm]
 nvmet_rdma_release_queue_work+0x8e/0x1b0 [nvmet_rdma]
 process_one_work+0x481/0x9f0
 worker_thread+0x63/0x5a0
 kthread+0x1cf/0x1f0
 ret_from_fork+0x24/0x30

Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Johannes Berg <johannes.berg@intel.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 drivers/nvme/target/rdma.c | 20 ++++++++++++++------
 1 file changed, 14 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 36d906a7f70d..a02af993e45a 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -30,6 +30,7 @@
 #define NVMET_RDMA_DEFAULT_INLINE_DATA_SIZE	PAGE_SIZE
 #define NVMET_RDMA_MAX_INLINE_SGE		4
 #define NVMET_RDMA_MAX_INLINE_DATA_SIZE		max_t(int, SZ_16K, PAGE_SIZE)
+#define NVMET_MAX_BACKLOG	128
 
 struct nvmet_rdma_cmd {
 	struct ib_sge		sge[NVMET_RDMA_MAX_INLINE_SGE + 1];
@@ -118,6 +119,7 @@ static bool nvmet_rdma_use_srq;
 module_param_named(use_srq, nvmet_rdma_use_srq, bool, 0444);
 MODULE_PARM_DESC(use_srq, "Use shared receive queue.");
 
+static atomic_t queues_being_released;
 static DEFINE_IDA(nvmet_rdma_queue_ida);
 static LIST_HEAD(nvmet_rdma_queue_list);
 static DEFINE_MUTEX(nvmet_rdma_queue_mutex);
@@ -1086,6 +1088,8 @@ static void nvmet_rdma_release_queue_work(struct work_struct *w)
 
 	nvmet_rdma_free_queue(queue);
 
+	atomic_dec(&queues_being_released);
+
 	kref_put(&dev->ref, nvmet_rdma_free_dev);
 }
 
@@ -1271,6 +1275,12 @@ static int nvmet_rdma_queue_connect(struct rdma_cm_id *cm_id,
 	struct nvmet_rdma_queue *queue;
 	int ret = -EINVAL;
 
+	if (atomic_read(&queues_being_released) > NVMET_MAX_BACKLOG) {
+		pr_warn_ratelimited("The rate at which initiator systems connect and disconnect seems to be high. New connections will be refused temporarily.\n");
+		nvmet_rdma_cm_reject(cm_id, NVME_RDMA_CM_NO_RSC);
+		return -ECONNREFUSED;
+	}
+
 	ndev = nvmet_rdma_find_get_device(cm_id);
 	if (!ndev) {
 		nvmet_rdma_cm_reject(cm_id, NVME_RDMA_CM_NO_RSC);
@@ -1284,13 +1294,9 @@ static int nvmet_rdma_queue_connect(struct rdma_cm_id *cm_id,
 	}
 	queue->port = cm_id->context;
 
-	if (queue->host_qid == 0) {
-		/* Let inflight controller teardown complete */
-		flush_scheduled_work();
-	}
-
 	ret = nvmet_rdma_cm_accept(cm_id, queue, &event->param.conn);
 	if (ret) {
+		atomic_inc(&queues_being_released);
 		schedule_work(&queue->release_work);
 		/* Destroying rdma_cm id is not needed here */
 		return 0;
@@ -1356,6 +1362,7 @@ static void __nvmet_rdma_queue_disconnect(struct nvmet_rdma_queue *queue)
 
 	if (disconnect) {
 		rdma_disconnect(queue->cm_id);
+		atomic_inc(&queues_being_released);
 		schedule_work(&queue->release_work);
 	}
 }
@@ -1386,6 +1393,7 @@ static void nvmet_rdma_queue_connect_fail(struct rdma_cm_id *cm_id,
 	mutex_unlock(&nvmet_rdma_queue_mutex);
 
 	pr_err("failed to connect queue %d\n", queue->idx);
+	atomic_inc(&queues_being_released);
 	schedule_work(&queue->release_work);
 }
 
@@ -1560,7 +1568,7 @@ static int nvmet_rdma_add_port(struct nvmet_port *port)
 		goto out_destroy_id;
 	}
 
-	ret = rdma_listen(cm_id, 128);
+	ret = rdma_listen(cm_id, NVMET_MAX_BACKLOG);
 	if (ret) {
 		pr_err("listening to %pISpcs failed (%d)\n",
 			(struct sockaddr *)&addr, ret);
-- 
2.22.0.410.gd8fdbe21b5-goog


--------------5EAA00D6F9A357E0C20E778D
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme

--------------5EAA00D6F9A357E0C20E778D--

