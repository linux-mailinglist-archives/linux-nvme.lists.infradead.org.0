Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94488925C0
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 16:02:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cvEjTrfofiky8DsGFRgHcyPE0VQvcmM3pildvQk5rE8=; b=iAIHYyqg4Xueoy
	GvOw+pVnZEm/cnxkfOmYsxNKPnt95zwah6cAz9hbvqHBKy93aGZ1cidBLVdq0eWNL5CSUCAtx5hVg
	ijvOoWkTPNp2lMGpd8U6MNynmVnHPZbVBz+6FXsSiseRHyDLGkbm2aIACPf5M7b8DTPjTnHPgoIX3
	NpJyIu+8rKsSK98g8LIV0xlllnE75rOS1EaQwcnUHsqfbzSuRP5caaEvMtGIFZBYbX29Jcd7RwWWF
	il/AcJiX6HUqiJJJMc+yLAbbPqQJpLjIRTcMC8/pZWTJ785qGdSI4wIIhrLBSjZqoIOD2cfl6qj4G
	dtcV6TsxhCYsKOOOVbCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hziF2-00052D-HQ; Mon, 19 Aug 2019 14:02:36 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hziEx-000516-L8
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 14:02:33 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hziEo-00056R-9c; Mon, 19 Aug 2019 16:02:22 +0200
Date: Mon, 19 Aug 2019 16:02:21 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V6 2/2] genirq/affinity: Spread vectors on node according
 to nr_cpu ratio
In-Reply-To: <20190819135217.GA10108@ming.t460p>
Message-ID: <alpine.DEB.2.21.1908191601520.2147@nanos.tec.linutronix.de>
References: <20190819124937.9948-1-ming.lei@redhat.com>
 <20190819124937.9948-3-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908191511440.2147@nanos.tec.linutronix.de>
 <20190819135217.GA10108@ming.t460p>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_070231_840940_FB6753F5 
X-CRM114-Status: GOOD (  17.94  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 19 Aug 2019, Ming Lei wrote:
> On Mon, Aug 19, 2019 at 03:13:58PM +0200, Thomas Gleixner wrote:
> > On Mon, 19 Aug 2019, Ming Lei wrote:
> > 
> > > Cc: Jon Derrick <jonathan.derrick@intel.com>
> > > Cc: Jens Axboe <axboe@kernel.dk>
> > > Reported-by: Jon Derrick <jonathan.derrick@intel.com>
> > > Reviewed-by: Jon Derrick <jonathan.derrick@intel.com>
> > > Reviewed-by: Keith Busch <kbusch@kernel.org>
> > 
> > This version is sufficiently different from the previous one, so I do not
> > consider the reviewed-by tags still being valid and meaningful. Don't
> > include them unless you just do cosmetic changes.
> 
> Fine.
> 
> However, the V6 only change isn't big, just for addressing the un-initialized
> warning, and the change is only done on function of irq_build_affinity_masks().

They are not trivial either:

 affinity.c |   28 +++++++++++++---------------
 1 file changed, 13 insertions(+), 15 deletions(-)

--- a/kernel/irq/affinity.c
+++ b/kernel/irq/affinity.c
@@ -339,7 +339,7 @@ static int irq_build_affinity_masks(unsi
 				    unsigned int firstvec,
 				    struct irq_affinity_desc *masks)
 {
-	unsigned int curvec = startvec, nr_present, nr_others;
+	unsigned int curvec = startvec, nr_present = 0, nr_others = 0;
 	cpumask_var_t *node_to_cpumask;
 	cpumask_var_t nmsk, npresmsk;
 	int ret = -ENOMEM;
@@ -354,19 +354,17 @@ static int irq_build_affinity_masks(unsi
 	if (!node_to_cpumask)
 		goto fail_npresmsk;
 
-	ret = 0;
 	/* Stabilize the cpumasks */
 	get_online_cpus();
 	build_node_to_cpumask(node_to_cpumask);
 
 	/* Spread on present CPUs starting from affd->pre_vectors */
-	nr_present = __irq_build_affinity_masks(curvec, numvecs,
-						firstvec, node_to_cpumask,
-						cpu_present_mask, nmsk, masks);
-	if (nr_present < 0) {
-		ret = nr_present;
+	ret = __irq_build_affinity_masks(curvec, numvecs, firstvec,
+					 node_to_cpumask, cpu_present_mask,
+					 nmsk, masks);
+	if (ret < 0)
 		goto fail_build_affinity;
-	}
+	nr_present = ret;
 
 	/*
 	 * Spread on non present CPUs starting from the next vector to be
@@ -379,16 +377,16 @@ static int irq_build_affinity_masks(unsi
 	else
 		curvec = firstvec + nr_present;
 	cpumask_andnot(npresmsk, cpu_possible_mask, cpu_present_mask);
-	nr_others = __irq_build_affinity_masks(curvec, numvecs,
-					       firstvec, node_to_cpumask,
-					       npresmsk, nmsk, masks);
-	if (nr_others < 0)
-		ret = nr_others;
+	ret = __irq_build_affinity_masks(curvec, numvecs, firstvec,
+					 node_to_cpumask, npresmsk, nmsk,
+					 masks);
+	if (ret >= 0)
+		nr_others = ret;
 
  fail_build_affinity:
 	put_online_cpus();
 
-	if (min(nr_present, nr_others) >= 0)
+	if (ret >= 0)
 		WARN_ON(nr_present + nr_others < numvecs);
 
 	free_node_to_cpumask(node_to_cpumask);
@@ -398,7 +396,7 @@ static int irq_build_affinity_masks(unsi
 
  fail_nmsk:
 	free_cpumask_var(nmsk);
-	return ret;
+	return ret < 0 ? ret : 0;
 }
 
 static void default_calc_sets(struct irq_affinity *affd, unsigned int affvecs)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
