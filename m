Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1849572C
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 08:15:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=49CHQicvHuHPcighlYX2TF/bHtuRM9LmM819BRMfVho=; b=RNJTTWeXijiCx9UX/6L/JV+y8X
	fg34UvjamSolUCfLhlb6sXXV0SKVqKrDEkCaSDDFxtgGtoXHC+bzgIvYy75zLriXTy+LjMM6ZsdXS
	ngBgp66/d5ArfPmHpLn7YFh7eKz49DiePYoTLkiRisxgpdaX0DQ7rxifYnVSsW4iX9LY4P+IXq/Kg
	pVRheaszcZ7CBGtuyKa6E47R0LFO5YCBF2xFF0sNAxc0rK2L6qGmFEQ5SEWxLlvXe8cxQDJFzei9+
	0EBe0upbK0AZi2tiU1V6d8Ddbuk7Qzx+fdgtKsxisjieD20jQU2hI9HQvB0+LTjvWx8Ld+T4I+sKD
	sz6eLjXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzxQJ-0005C7-VW; Tue, 20 Aug 2019 06:15:15 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzxPp-0004yy-Ox
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 06:14:47 +0000
Received: by linux.microsoft.com (Postfix, from userid 1004)
 id 5E08120B718C; Mon, 19 Aug 2019 23:14:45 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 5E08120B718C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxonhyperv.com;
 s=default; t=1566281685;
 bh=8ETceY5cQaIbFG6NG3N9TrVwSxmoSIPofIv/ugh7xNc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=KZ4UvmaJuWQuuZ7mjqup9jeBTEBinwWveOX1EHHL5IVVRorgpXPpxLUxLKvFJoQ1e
 sPZ5oBfIaskBUJqKDZY79Lr9Umjo4dHNDhFl9RPr+YJAFf8iv03tCqEPniIl4EAMW1
 UxyAVs+/wGicnq8o3OwNkV0pfLr1aoMnGXz+3n4g=
From: longli@linuxonhyperv.com
To: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 1/3] sched: define a function to report the number of context
 switches on a CPU
Date: Mon, 19 Aug 2019 23:14:27 -0700
Message-Id: <1566281669-48212-2-git-send-email-longli@linuxonhyperv.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_231445_882431_703ABA4D 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
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

The number of context switches on a CPU is useful to determine how busy this
CPU is on processing IRQs. Export this information so it can be used by device
drivers.

Signed-off-by: Long Li <longli@microsoft.com>
---
 include/linux/sched.h | 1 +
 kernel/sched/core.c   | 6 ++++++
 2 files changed, 7 insertions(+)

diff --git a/include/linux/sched.h b/include/linux/sched.h
index 9b35aff09f70..575f1ef7b159 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1500,6 +1500,7 @@ current_restore_flags(unsigned long orig_flags, unsigned long flags)
 
 extern int cpuset_cpumask_can_shrink(const struct cpumask *cur, const struct cpumask *trial);
 extern int task_can_attach(struct task_struct *p, const struct cpumask *cs_cpus_allowed);
+extern u64 get_cpu_rq_switches(int cpu);
 #ifdef CONFIG_SMP
 extern void do_set_cpus_allowed(struct task_struct *p, const struct cpumask *new_mask);
 extern int set_cpus_allowed_ptr(struct task_struct *p, const struct cpumask *new_mask);
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 4a8e7207cafa..1a76f0e97c2d 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -1143,6 +1143,12 @@ int set_cpus_allowed_ptr(struct task_struct *p, const struct cpumask *new_mask)
 }
 EXPORT_SYMBOL_GPL(set_cpus_allowed_ptr);
 
+u64 get_cpu_rq_switches(int cpu)
+{
+	return cpu_rq(cpu)->nr_switches;
+}
+EXPORT_SYMBOL_GPL(get_cpu_rq_switches);
+
 void set_task_cpu(struct task_struct *p, unsigned int new_cpu)
 {
 #ifdef CONFIG_SCHED_DEBUG
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
