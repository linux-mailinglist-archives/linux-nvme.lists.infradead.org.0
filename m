Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4FC48772B
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 12:24:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tSFau+JhVxrYXDERjom7JbegcXJgtipSJSJR01Jcyf0=; b=uf8D7Fuu6xXSFO
	ZErMqGHGQy3wKNvcg+DqRcIz8Z1zEXBFRrRSvkh2kazXGrY38EpRWLxKjMkksE6ddMVLGSDXAZAAz
	vosE5jRhuJw09rYQiuoBYzNRm62U44uXlH4ueBDqfNSAsj/ULaTG2N93XaRiAPahXM6YSVNwP+DHu
	oSkO0uzUOM7DFqkprEEqoSDACr5uzS4NxRIuB4HjrpWuylH6JXEwTymJKjzx89ApGQ/zbwxsE+Y0S
	5AbEj1PWiWVFgJRlDFI1xmdyHUlrECF31Q0z9rA2ZDOqcexWJ+uz6MmsYBY13Mcj9CdeiPkT3azL8
	lrk8l60ST2gxz9Xnx0Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw24N-0000Tf-LA; Fri, 09 Aug 2019 10:24:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw23q-0000De-VV
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 10:23:52 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A94783061524;
 Fri,  9 Aug 2019 10:23:50 +0000 (UTC)
Received: from localhost (ovpn-8-23.pek2.redhat.com [10.72.8.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 36B1160BF3;
 Fri,  9 Aug 2019 10:23:46 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 2/2] genirq/affinity: spread vectors on node according to
 nr_cpu ratio
Date: Fri,  9 Aug 2019 18:23:10 +0800
Message-Id: <20190809102310.27246-3-ming.lei@redhat.com>
In-Reply-To: <20190809102310.27246-1-ming.lei@redhat.com>
References: <20190809102310.27246-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Fri, 09 Aug 2019 10:23:50 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_032351_478739_781A919B 
X-CRM114-Status: GOOD (  16.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Now __irq_build_affinity_masks() spreads vectors evenly per node, and
all vectors may not be spread in case that each numa node has different
CPU number, then the following warning in irq_build_affinity_masks() can
be triggered:

	if (nr_present < numvecs)
		WARN_ON(nr_present + nr_others < numvecs);

Improve current spreading algorithm by assigning vectors according to
the ratio of node's nr_cpu to nr_remaining_cpus.

Meantime the reported warning can be fixed.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: linux-nvme@lists.infradead.org,
Cc: Jon Derrick <jonathan.derrick@intel.com>
Reported-by: Jon Derrick <jonathan.derrick@intel.com>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 kernel/irq/affinity.c | 23 +++++++++++++++++------
 1 file changed, 17 insertions(+), 6 deletions(-)

diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
index bc3652a2c61b..76f3d1b27d00 100644
--- a/kernel/irq/affinity.c
+++ b/kernel/irq/affinity.c
@@ -106,6 +106,7 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 	unsigned int last_affv = firstvec + numvecs;
 	unsigned int curvec = startvec;
 	nodemask_t nodemsk = NODE_MASK_NONE;
+	unsigned remaining_cpus = 0;
 
 	if (!cpumask_weight(cpu_mask))
 		return 0;
@@ -126,6 +127,11 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 		return numvecs;
 	}
 
+	for_each_node_mask(n, nodemsk) {
+		cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
+		remaining_cpus += cpumask_weight(nmsk);
+	}
+
 	for_each_node_mask(n, nodemsk) {
 		unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
 
@@ -135,17 +141,22 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 		if (!ncpus)
 			continue;
 
+		if (remaining_cpus == 0)
+			break;
+
 		/*
 		 * Calculate the number of cpus per vector
 		 *
-		 * Spread the vectors evenly per node. If the requested
-		 * vector number has been reached, simply allocate one
-		 * vector for each remaining node so that all nodes can
-		 * be covered
+		 * Spread the vectors among CPUs on this node according
+		 * to the ratio of 'ncpus' to 'remaining_cpus'. If the
+		 * requested vector number has been reached, simply
+		 * spread one vector for each remaining node so that all
+		 * nodes can be covered
 		 */
 		if (numvecs > done)
 			vecs_per_node = max_t(unsigned,
-					(numvecs - done) / nodes, 1);
+					(numvecs - done) * ncpus /
+					remaining_cpus, 1);
 		else
 			vecs_per_node = 1;
 
@@ -169,7 +180,7 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 		}
 
 		done += v;
-		--nodes;
+		remaining_cpus -= ncpus;
 	}
 	return done < numvecs ? done : numvecs;
 }
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
