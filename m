Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F5849572D
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 08:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bwV+H2r4SgJ+OfQcnjk9KwK8M96/mevi/VFPEFp4KzQ=; b=DaG/J+eJldpLv7MJU7R+CpRPtW
	a5ZlswoLz8hNCAc4WrZj/9usHnLDZmj4mVdTlutT34dVVUlxyQ1+wXxCNbws4ukxDtZD4k1qsSQD2
	f5/QgeJvqV18Cd41hDrAaZd8ANY9w9CsKCrcXP+JWCWT8z+zhL2hWCRg8nh7H2wfi6UXC3itJo27r
	fX+fsSFb8A9UkQmLTAKf0KIvW0O6V7I7ZobXN5U5HUhIbZMCD3bQ2AdvyPaFDRNaSn4SpkBPtiuyy
	vc/iScB/1ALSwHXhiguymh7VVd6pLgdmnAyF11ebB2yFPyBtpiicF6L4X3RNl0HDDdBNAdE6z/8jR
	Jy71e/sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzxQV-0006Z3-6M; Tue, 20 Aug 2019 06:15:27 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hzxPt-00051X-KO
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 06:14:50 +0000
Received: by linux.microsoft.com (Postfix, from userid 1004)
 id 663C820B7195; Mon, 19 Aug 2019 23:14:49 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 663C820B7195
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linuxonhyperv.com;
 s=default; t=1566281689;
 bh=2Rkx1o6sWSNY21Q3MnNz1y4rcc7n1BW0NJRzScVJzSE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eNXF2VaEip8OvlyZdhnOxMPgL2MMdaGBG5sf8QGulyP7h4zd0gqGfoja+4kQ7Zm92
 Tlby/vtpIdQvo8AU0hccvMtO4XTEhpQ7tb+2Cw0Dkkog8OWU9kqiAegnC07oV75kzp
 UtAHGYhmAqIx7Lc4ctLsrXkZ9HCWQYx2ruNVqRpQ=
From: longli@linuxonhyperv.com
To: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
 Keith Busch <keith.busch@intel.com>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/3] sched: export idle_cpu()
Date: Mon, 19 Aug 2019 23:14:28 -0700
Message-Id: <1566281669-48212-3-git-send-email-longli@linuxonhyperv.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_231449_787052_8EFFF610 
X-CRM114-Status: UNSURE (   9.67  )
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

This function is useful for device drivers to check if this CPU has work to
do in process context.

Signed-off-by: Long Li <longli@microsoft.com>
---
 include/linux/sched.h | 1 +
 kernel/sched/core.c   | 1 +
 2 files changed, 2 insertions(+)

diff --git a/include/linux/sched.h b/include/linux/sched.h
index 575f1ef7b159..a209941c1770 100644
--- a/include/linux/sched.h
+++ b/include/linux/sched.h
@@ -1501,6 +1501,7 @@ current_restore_flags(unsigned long orig_flags, unsigned long flags)
 extern int cpuset_cpumask_can_shrink(const struct cpumask *cur, const struct cpumask *trial);
 extern int task_can_attach(struct task_struct *p, const struct cpumask *cs_cpus_allowed);
 extern u64 get_cpu_rq_switches(int cpu);
+extern int idle_cpu(int cpu);
 #ifdef CONFIG_SMP
 extern void do_set_cpus_allowed(struct task_struct *p, const struct cpumask *new_mask);
 extern int set_cpus_allowed_ptr(struct task_struct *p, const struct cpumask *new_mask);
diff --git a/kernel/sched/core.c b/kernel/sched/core.c
index 1a76f0e97c2d..d1cedfb38174 100644
--- a/kernel/sched/core.c
+++ b/kernel/sched/core.c
@@ -4023,6 +4023,7 @@ int idle_cpu(int cpu)
 
 	return 1;
 }
+EXPORT_SYMBOL_GPL(idle_cpu);
 
 /**
  * available_idle_cpu - is a given CPU idle for enqueuing work.
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
