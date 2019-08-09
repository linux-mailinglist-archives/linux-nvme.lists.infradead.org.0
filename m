Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A6788772A
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 12:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuVIjOlqd34VevDfayD64hkMvij2nTdOhal4jjv34BM=; b=INOw3xPNY2Pt7+
	VkNwOq3YwgLND+wrMCT6tgewebF0eHkErBW35AW/lUqKO3KZM1ehCHVuBfW4fkw9pu/K35gn8f12G
	/Oa3/TegE4/pOz852BAy1WIZwxpwHo1No2O0lpZpQvoHdOWO6tbEUZN+P9QlLtvzPrn7f1zdWzXVS
	hDme2ZEiG4nGVQ2tEHO/Pwio7ltKaC/0Dvg2olJDUnH/DdoLXs3O+fgK9VUSap0gPz60pcY+cc2z+
	k026V7jKz0CXIXflTWtERkSZ7E5KvRY5CVtd1LeZdJtjDUKrhr4m6Dscv4mnbNOsSXNvJ+dGgPDk/
	Kdf6dkHtgyFHuMcgsQzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw24B-0000IV-Vw; Fri, 09 Aug 2019 10:24:11 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw23k-0000BP-VZ
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 10:23:46 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A66927FDF0;
 Fri,  9 Aug 2019 10:23:44 +0000 (UTC)
Received: from localhost (ovpn-8-23.pek2.redhat.com [10.72.8.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id A482319C70;
 Fri,  9 Aug 2019 10:23:41 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 1/2] genirq/affinity: improve __irq_build_affinity_masks()
Date: Fri,  9 Aug 2019 18:23:09 +0800
Message-Id: <20190809102310.27246-2-ming.lei@redhat.com>
In-Reply-To: <20190809102310.27246-1-ming.lei@redhat.com>
References: <20190809102310.27246-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Fri, 09 Aug 2019 10:23:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_032345_063523_8BBB5AF0 
X-CRM114-Status: GOOD (  18.01  )
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

One invariant of __irq_build_affinity_masks() is that all CPUs in the
specified masks( cpu_mask AND node_to_cpumask for each node) should be
covered during the spread. Even though all requested vectors have been
reached, we still need to spread vectors among left CPUs. The similar
policy has been taken in case of 'numvecs <= nodes'.

So remove the following check inside the loop:

	if (done >= numvecs)
		break;

Meantime assign at least 1 vector for left nodes if 'numvecs' vectors
have been spread.

Also, if the specified cpumask for one numa node is empty, simply not
spread vectors on this node.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: linux-nvme@lists.infradead.org,
Cc: Jon Derrick <jonathan.derrick@intel.com>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 kernel/irq/affinity.c | 33 +++++++++++++++++++++------------
 1 file changed, 21 insertions(+), 12 deletions(-)

diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
index 6fef48033f96..bc3652a2c61b 100644
--- a/kernel/irq/affinity.c
+++ b/kernel/irq/affinity.c
@@ -129,21 +129,32 @@ static int __irq_build_affinity_masks(unsigned int startvec,
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
 		extra_vecs = ncpus - vecs_to_assign * (ncpus / vecs_to_assign);
 
-		for (v = 0; curvec < last_affv && v < vecs_to_assign;
-		     curvec++, v++) {
+		for (v = 0; v < vecs_to_assign; v++) {
 			cpus_per_vec = ncpus / vecs_to_assign;
 
 			/* Account for extra vectors to compensate rounding errors */
@@ -153,16 +164,14 @@ static int __irq_build_affinity_masks(unsigned int startvec,
 			}
 			irq_spread_init_one(&masks[curvec].mask, nmsk,
 						cpus_per_vec);
+			if (++curvec >= last_affv)
+				curvec = firstvec;
 		}
 
 		done += v;
-		if (done >= numvecs)
-			break;
-		if (curvec >= last_affv)
-			curvec = firstvec;
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
