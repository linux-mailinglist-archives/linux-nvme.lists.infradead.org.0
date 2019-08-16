Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1F0D8F8D5
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 04:29:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AlfyWZ+iU0hfRsTQohxSDyr+UoTpmdIeO4aqIYjY1Ck=; b=inI2WQsPIhdlt5
	9g1t4Ld5QIMxT3PM7VgJ+n7S/oQyQyL0F6fOTE9fOkz6kDTbW/Zwy5D3KeR2JmQtjY6TMQscNf6bm
	I8S3r50WDcJgzK7whhKlv3iFN74gZPmBbCj3xxIz6S6b0T9Q2oMFBR6FWjtE8YaBTYhQAtBBOr9TO
	UX8xHhZqjc0AEBUA8UFXlewG5HWVqNxhLcnCa/LLpos2jhJceGwZuAqjd4QAhLwN2NtY30zCHF04C
	+vrT6VuFiF/y44qLOA2GUOt6hIIt95JmpeO9TNea4BLCl7uOAUxku3VyAILFjO+14BTOfsycpeTTi
	B0wYU0XIJumtjgj+9uWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyRzq-0001Gf-9o; Fri, 16 Aug 2019 02:29:42 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyRzN-00016a-C8
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 02:29:15 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 18CBD307D985;
 Fri, 16 Aug 2019 02:29:13 +0000 (UTC)
Received: from localhost (ovpn-8-25.pek2.redhat.com [10.72.8.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 807938F6E9;
 Fri, 16 Aug 2019 02:29:05 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH V5 1/2] genirq/affinity: Improve __irq_build_affinity_masks()
Date: Fri, 16 Aug 2019 10:28:48 +0800
Message-Id: <20190816022849.14075-2-ming.lei@redhat.com>
In-Reply-To: <20190816022849.14075-1-ming.lei@redhat.com>
References: <20190816022849.14075-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.48]); Fri, 16 Aug 2019 02:29:13 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_192913_718833_D4E31E40 
X-CRM114-Status: GOOD (  17.37  )
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

One invariant of __irq_build_affinity_masks() is that all CPUs in the
specified masks( cpu_mask AND node_to_cpumask for each node) should be
covered during the spread. Even though all requested vectors have been
reached, we still need to spread vectors among remained CPUs. The similar
policy has been taken in case of 'numvecs <= nodes' already:

So remove the following check inside the loop:

	if (done >= numvecs)
		break;

Meantime assign at least 1 vector for remained nodes if 'numvecs' vectors
have been handled already.

Also, if the specified cpumask for one numa node is empty, simply not
spread vectors on this node.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: linux-nvme@lists.infradead.org,
Cc: Jon Derrick <jonathan.derrick@intel.com>
Cc: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 kernel/irq/affinity.c | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
index 6fef48033f96..c7cca942bd8a 100644
--- a/kernel/irq/affinity.c
+++ b/kernel/irq/affinity.c
@@ -129,14 +129,26 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 	for_each_node_mask(n, nodemsk) {
 		unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
 
-		/* Spread the vectors per node */
-		vecs_per_node = (numvecs - (curvec - firstvec)) / nodes;
-
 		/* Get the cpus on this node which are in the mask */
 		cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
-
-		/* Calculate the number of cpus per vector */
 		ncpus = cpumask_weight(nmsk);
+		if (!ncpus)
+			continue;
+
+		/*
+		 * Calculate the number of cpus per vector
+		 *
+		 * Spread the vectors evenly per node. If the requested
+		 * vector number has been reached, simply allocate one
+		 * vector for each remaining node so that all nodes can
+		 * be covered
+		 */
+		if (numvecs > done)
+			vecs_per_node = max_t(unsigned,
+					(numvecs - done) / nodes, 1);
+		else
+			vecs_per_node = 1;
+
 		vecs_to_assign = min(vecs_per_node, ncpus);
 
 		/* Account for rounding errors */
@@ -156,13 +168,11 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 		}
 
 		done += v;
-		if (done >= numvecs)
-			break;
 		if (curvec >= last_affv)
 			curvec = firstvec;
 		--nodes;
 	}
-	return done;
+	return done < numvecs ? done : numvecs;
 }
 
 /*
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
