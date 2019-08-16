Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7AFBE8F8DB
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 04:30:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9Dp6oYHKvSmDc/HlWhaCZLNOOifJKJ9YiZDQGlvhNz4=; b=l22rb8ZyNWMEFK
	MUpA8ebhfdci3DWyh7SQvKCa1PRBf1PY0etYAepp9BQe0MOYeDc923jhKYdJtso5nXLp6BWXHza2z
	oYqO8Sm76FndnzaIkSiL6IejTtJ6m5F/ePx3V/5sYa5fDbwE0FwYOgP5KLhTDcMxRhN7n6JmbuAQF
	c78HkP5y6itKn1fRk0Sd04GubayLM7SEnhpRo3meCgI88OtNdE0m325d495qSTYSSrG+tyF1mTRHY
	y5PNdulgagisyvZRcRCkLdfcg7U3/AhBELMRhPmXPz1IAxl8UdxmsOPZkkXuBTz5ScI/aIZRfGSgS
	pLfKRMNXCFboq6XWoVpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyS02-0001Tr-F7; Fri, 16 Aug 2019 02:29:54 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyRzQ-00019E-KF
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 02:29:19 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4CD70C0495A3;
 Fri, 16 Aug 2019 02:29:16 +0000 (UTC)
Received: from localhost (ovpn-8-25.pek2.redhat.com [10.72.8.25])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 4DFF07DA2D;
 Fri, 16 Aug 2019 02:29:15 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH V5 2/2] genirq/affinity: Spread vectors on node according to
 nr_cpu ratio
Date: Fri, 16 Aug 2019 10:28:49 +0800
Message-Id: <20190816022849.14075-3-ming.lei@redhat.com>
In-Reply-To: <20190816022849.14075-1-ming.lei@redhat.com>
References: <20190816022849.14075-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.31]); Fri, 16 Aug 2019 02:29:16 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190815_192917_419216_32C8FA7A 
X-CRM114-Status: GOOD (  25.07  )
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

Now __irq_build_affinity_masks() spreads vectors evenly per node, and
all vectors may not be spread in case that each numa node has different
CPU number, then the warning in irq_build_affinity_masks() can
be triggered.

Improve current spreading algorithm by assigning vectors according to
the ratio of node's nr_cpu to nr_remaining_cpus, meantime running the
assignment from smaller nodes to bigger nodes to guarantee that every
active node gets allocated at least one vector, then we can avoid
cross-node spread in normal situation.

Meantime the reported warning can be fixed.

Another big goodness is that the spread approach becomes more fair if
node has different CPU number.

For example, on the following machine:
	[root@ktest-01 ~]# lscpu
	...
	CPU(s):              16
	On-line CPU(s) list: 0-15
	Thread(s) per core:  1
	Core(s) per socket:  8
	Socket(s):           2
	NUMA node(s):        2
	...
	NUMA node0 CPU(s):   0,1,3,5-9,11,13-15
	NUMA node1 CPU(s):   2,4,10,12

When driver requests to allocate 8 vectors, the following spread can
be got:
	irq 31, cpu list 2,4
	irq 32, cpu list 10,12
	irq 33, cpu list 0-1
	irq 34, cpu list 3,5
	irq 35, cpu list 6-7
	irq 36, cpu list 8-9
	irq 37, cpu list 11,13
	irq 38, cpu list 14-15

Without this patch, kernel warning is triggered on above situation, and
allocation result was supposed to be 4 vectors for each node.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: linux-nvme@lists.infradead.org,
Cc: Jon Derrick <jonathan.derrick@intel.com>
Cc: Jens Axboe <axboe@kernel.dk>
Reported-by: Jon Derrick <jonathan.derrick@intel.com>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 kernel/irq/affinity.c | 223 ++++++++++++++++++++++++++++++++++++------
 1 file changed, 193 insertions(+), 30 deletions(-)

diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
index c7cca942bd8a..32e07e58ce81 100644
--- a/kernel/irq/affinity.c
+++ b/kernel/irq/affinity.c
@@ -7,6 +7,7 @@
 #include <linux/kernel.h>
 #include <linux/slab.h>
 #include <linux/cpu.h>
+#include <linux/sort.h>
 
 static void irq_spread_init_one(struct cpumask *irqmsk, struct cpumask *nmsk,
 				unsigned int cpus_per_vec)
@@ -94,6 +95,155 @@ static int get_nodes_in_cpumask(cpumask_var_t *node_to_cpumask,
 	return nodes;
 }
 
+struct node_vectors {
+	unsigned id;
+
+	union {
+		unsigned nvectors;
+		unsigned ncpus;
+	};
+};
+
+static int ncpus_cmp_func(const void *l, const void *r)
+{
+	const struct node_vectors *ln = l;
+	const struct node_vectors *rn = r;
+
+	return ln->ncpus - rn->ncpus;
+}
+
+/*
+ * Allocate vector number for each node, so that for each node:
+ *
+ * 1) the allocated number is >= 1
+ *
+ * 2) the allocated numbver is <= active CPU number of this node
+ *
+ * The actual allocated total vectors may be less than @numvecs when
+ * active total CPU number is less than @numvecs.
+ *
+ * Active CPUs means the CPUs in '@cpu_mask AND @node_to_cpumask[]'
+ * for each node.
+ */
+static void alloc_nodes_vectors(unsigned int numvecs,
+				const cpumask_var_t *node_to_cpumask,
+				const struct cpumask *cpu_mask,
+				const nodemask_t nodemsk,
+				struct cpumask *nmsk,
+				struct node_vectors *node_vectors)
+{
+	unsigned n, remaining_ncpus = 0;
+
+	for (n = 0; n < nr_node_ids; n++) {
+		node_vectors[n].id = n;
+		node_vectors[n].ncpus = UINT_MAX;
+	}
+
+	for_each_node_mask(n, nodemsk) {
+		unsigned ncpus;
+
+		cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
+		ncpus = cpumask_weight(nmsk);
+
+		if (!ncpus)
+			continue;
+		remaining_ncpus += ncpus;
+		node_vectors[n].ncpus = ncpus;
+	}
+
+	numvecs = min_t(unsigned, remaining_ncpus, numvecs);
+
+	sort(node_vectors, nr_node_ids, sizeof(node_vectors[0]),
+	     ncpus_cmp_func, NULL);
+
+	/*
+	 * Allocate vectors for each node according to the ratio of this
+	 * node's nr_cpus to remaining un-assigned ncpus. 'numvecs' is
+	 * bigger than number of active numa nodes. Always start the
+	 * allocation from the node with minimized nr_cpus.
+	 *
+	 * This way guarantees that each active node gets allocated at
+	 * least one vector, and the theory is simple: over-allocation
+	 * is only done when this node is assigned by one vector, so
+	 * other nodes will be allocated >= 1 vector, since 'numvecs' is
+	 * bigger than number of numa nodes.
+	 *
+	 * One perfect invariant is that number of allocated vectors for
+	 * each node is <= CPU count of this node:
+	 *
+	 * 1) suppose there are two nodes: A and B
+	 * 	ncpu(X) is CPU count of node X
+	 * 	vecs(X) is the vector count allocated to node X via this
+	 * 	algorithm
+	 *
+	 * 	ncpu(A) <= ncpu(B)
+	 * 	ncpu(A) + ncpu(B) = N
+	 * 	vecs(A) + vecs(B) = V
+	 *
+	 * 	vecs(A) = max(1, round_down(V * ncpu(A) / N))
+	 * 	vecs(B) = V - vecs(A)
+	 *
+	 * 	both N and V are integer, and 2 <= V <= N, suppose
+	 * 	V = N - delta, and 0 <= delta <= N - 2
+	 *
+	 * 2) obviously vecs(A) <= ncpu(A) because:
+	 *
+	 * 	if vecs(A) is 1, then vecs(A) <= ncpu(A) given
+	 * 	ncpu(A) >= 1
+	 *
+	 * 	otherwise,
+	 * 		vecs(A) <= V * ncpu(A) / N <= ncpu(A), given V <= N
+	 *
+	 * 3) prove how vecs(B) <= ncpu(B):
+	 *
+	 * 	if round_down(V * ncpu(A) / N) == 0, vecs(B) won't be
+	 * 	over-allocated, so vecs(B) <= ncpu(B),
+	 *
+	 * 	otherwise:
+	 *
+	 * 	vecs(A) =
+	 * 		round_down(V * ncpu(A) / N) =
+	 * 		round_down((N - delta) * ncpu(A) / N) =
+	 * 		round_down((N * ncpu(A) - delta * ncpu(A)) / N)	 >=
+	 * 		round_down((N * ncpu(A) - delta * N) / N)	 =
+	 * 		cpu(A) - delta
+	 *
+	 * 	then:
+	 *
+	 * 	vecs(A) - V >= ncpu(A) - delta - V
+	 * 	=>
+	 * 	V - vecs(A) <= V + delta - ncpu(A)
+	 * 	=>
+	 * 	vecs(B) <= N - ncpu(A)
+	 * 	=>
+	 * 	vecs(B) <= cpu(B)
+	 *
+	 * For nodes >= 3, it can be thought as one node and another big
+	 * node given that is exactly what this algorithm is implemented,
+	 * and we always re-calculate 'remaining_ncpus' & 'numvecs', and
+	 * finally for each node X: vecs(X) <= ncpu(X).
+	 *
+	 */
+	for (n = 0; n < nr_node_ids; n++) {
+		unsigned nvectors, ncpus;
+
+		if (node_vectors[n].ncpus == UINT_MAX)
+			continue;
+
+		WARN_ON_ONCE(numvecs == 0);
+
+		ncpus = node_vectors[n].ncpus;
+		nvectors = max_t(unsigned, 1,
+				 numvecs * ncpus / remaining_ncpus);
+		WARN_ON_ONCE(nvectors > ncpus);
+
+		node_vectors[n].nvectors = nvectors;
+
+		remaining_ncpus -= ncpus;
+		numvecs -= nvectors;
+	}
+}
+
 static int __irq_build_affinity_masks(unsigned int startvec,
 				      unsigned int numvecs,
 				      unsigned int firstvec,
@@ -102,10 +252,11 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 				      struct cpumask *nmsk,
 				      struct irq_affinity_desc *masks)
 {
-	unsigned int n, nodes, cpus_per_vec, extra_vecs, done = 0;
+	unsigned int i, n, nodes, cpus_per_vec, extra_vecs, done = 0;
 	unsigned int last_affv = firstvec + numvecs;
 	unsigned int curvec = startvec;
 	nodemask_t nodemsk = NODE_MASK_NONE;
+	struct node_vectors *node_vectors;
 
 	if (!cpumask_weight(cpu_mask))
 		return 0;
@@ -126,53 +277,57 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 		return numvecs;
 	}
 
-	for_each_node_mask(n, nodemsk) {
-		unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
+	node_vectors = kcalloc(nr_node_ids,
+			       sizeof(struct node_vectors),
+			       GFP_KERNEL);
+	if (!node_vectors)
+		return -ENOMEM;
+
+	/* allocate vector number for each node */
+	alloc_nodes_vectors(numvecs, node_to_cpumask, cpu_mask,
+			    nodemsk, nmsk, node_vectors);
+
+	for (i = 0; i < nr_node_ids; i++) {
+		unsigned int ncpus, v;
+		struct node_vectors *nv = &node_vectors[i];
+
+		if (nv->nvectors == UINT_MAX)
+			continue;
 
 		/* Get the cpus on this node which are in the mask */
-		cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
+		cpumask_and(nmsk, cpu_mask, node_to_cpumask[nv->id]);
 		ncpus = cpumask_weight(nmsk);
 		if (!ncpus)
 			continue;
 
-		/*
-		 * Calculate the number of cpus per vector
-		 *
-		 * Spread the vectors evenly per node. If the requested
-		 * vector number has been reached, simply allocate one
-		 * vector for each remaining node so that all nodes can
-		 * be covered
-		 */
-		if (numvecs > done)
-			vecs_per_node = max_t(unsigned,
-					(numvecs - done) / nodes, 1);
-		else
-			vecs_per_node = 1;
-
-		vecs_to_assign = min(vecs_per_node, ncpus);
+		WARN_ON_ONCE(nv->nvectors > ncpus);
 
 		/* Account for rounding errors */
-		extra_vecs = ncpus - vecs_to_assign * (ncpus / vecs_to_assign);
+		extra_vecs = ncpus - nv->nvectors * (ncpus / nv->nvectors);
 
-		for (v = 0; curvec < last_affv && v < vecs_to_assign;
-		     curvec++, v++) {
-			cpus_per_vec = ncpus / vecs_to_assign;
+		/* Spread allocated vectors on CPUs of the current node */
+		for (v = 0; v < nv->nvectors; v++, curvec++) {
+			cpus_per_vec = ncpus / nv->nvectors;
 
 			/* Account for extra vectors to compensate rounding errors */
 			if (extra_vecs) {
 				cpus_per_vec++;
 				--extra_vecs;
 			}
+
+			/*
+			 * wrapping has to be considered given 'startvec'
+			 * may start anywhere
+			 */
+			if (curvec >= last_affv)
+				curvec = firstvec;
 			irq_spread_init_one(&masks[curvec].mask, nmsk,
 						cpus_per_vec);
 		}
-
-		done += v;
-		if (curvec >= last_affv)
-			curvec = firstvec;
-		--nodes;
+		done += nv->nvectors;
 	}
-	return done < numvecs ? done : numvecs;
+	kfree(node_vectors);
+	return done;
 }
 
 /*
@@ -208,6 +363,10 @@ static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
 	nr_present = __irq_build_affinity_masks(curvec, numvecs,
 						firstvec, node_to_cpumask,
 						cpu_present_mask, nmsk, masks);
+	if (nr_present < 0) {
+		ret = nr_present;
+		goto fail_build_affinity;
+	}
 
 	/*
 	 * Spread on non present CPUs starting from the next vector to be
@@ -223,9 +382,13 @@ static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
 	nr_others = __irq_build_affinity_masks(curvec, numvecs,
 					       firstvec, node_to_cpumask,
 					       npresmsk, nmsk, masks);
+	if (nr_others < 0)
+		ret = nr_others;
+
+ fail_build_affinity:
 	put_online_cpus();
 
-	if (nr_present < numvecs)
+	if (min(nr_present, nr_others) >= 0)
 		WARN_ON(nr_present + nr_others < numvecs);
 
 	free_node_to_cpumask(node_to_cpumask);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
