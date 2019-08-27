Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BCA69E357
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 10:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RblBT7zzHOm+9si/W0GUfhVqZn1vdX4ZxHvtk4VXUzk=; b=OBYysVLFYaCUo2
	HEzinvlf2Rz1ly69IfrWFJBNek5E6zAmvi30RwS5MdnGfbgJciamTa2Z6e/wWi6QPvmsMpdeUzyqP
	ZrYgjdgjXWfFP27MYXJHWj+I5FZHA7Q5KYr9pTwiyOvIxuNf7KycvsUkxZqAmUeY6DYCqI1ddq9Ap
	wSsoIFqr0A1skW3f3S0ELf591esMYKb7GFAunJnsKmw6hun2iP7JIHpKpT0lb93O3jpPQVn/cvzD4
	yUsS7mTwp8HH3fmwhK9R4zSdJ8zalHXEUa/2aF0iJXhOLnxPeZVfz4t9LR0ezxGPzI3SvGFpwpBwp
	FyhLAergMOcA0E4ljLBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XG2-0004k0-Ad; Tue, 27 Aug 2019 08:55:18 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XFB-0004Cd-93
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 08:54:27 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D729C308339B;
 Tue, 27 Aug 2019 08:54:24 +0000 (UTC)
Received: from localhost (ovpn-8-27.pek2.redhat.com [10.72.8.27])
 by smtp.corp.redhat.com (Postfix) with ESMTP id E74585D71C;
 Tue, 27 Aug 2019 08:54:21 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 4/4] genirq: use irq's affinity for threaded irq with
 IRQF_RESCUE_THREAD
Date: Tue, 27 Aug 2019 16:53:44 +0800
Message-Id: <20190827085344.30799-5-ming.lei@redhat.com>
In-Reply-To: <20190827085344.30799-1-ming.lei@redhat.com>
References: <20190827085344.30799-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Tue, 27 Aug 2019 08:54:25 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_015425_561690_17F012E9 
X-CRM114-Status: GOOD (  15.31  )
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

In case of IRQF_RESCUE_THREAD, the threaded handler is only used to
handle interrupt when IRQ flood comes, use irq's affinity for this thread
so that scheduler may select other not too busy CPUs for handling the
interrupt.

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
 kernel/irq/manage.c | 13 ++++++++++++-
 1 file changed, 12 insertions(+), 1 deletion(-)

diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
index 1566abbf50e8..03bc041348b7 100644
--- a/kernel/irq/manage.c
+++ b/kernel/irq/manage.c
@@ -968,7 +968,18 @@ irq_thread_check_affinity(struct irq_desc *desc, struct irqaction *action)
 	if (cpumask_available(desc->irq_common_data.affinity)) {
 		const struct cpumask *m;
 
-		m = irq_data_get_effective_affinity_mask(&desc->irq_data);
+		/*
+		 * Managed IRQ's affinity is setup gracefull on MUNA locality,
+		 * also if IRQF_RESCUE_THREAD is set, interrupt flood has been
+		 * triggered, so ask scheduler to run the thread on CPUs
+		 * specified by this interrupt's affinity.
+		 */
+		if ((action->flags & IRQF_RESCUE_THREAD) &&
+				irqd_affinity_is_managed(&desc->irq_data))
+			m = desc->irq_common_data.affinity;
+		else
+			m = irq_data_get_effective_affinity_mask(
+					&desc->irq_data);
 		cpumask_copy(mask, m);
 	} else {
 		valid = false;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
