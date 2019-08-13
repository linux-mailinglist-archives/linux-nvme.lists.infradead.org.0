Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 116FC8B153
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 09:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+KASU9dYbOoff/y5u2n/aA3UE3c0iEHAoP5pY+ldjmQ=; b=srIXTVRzzl0Ucw
	lFpDXtdvo2t7iTvFrrNW30BBLPr4g13G1uy08f4PI+yxdrUpJBtw1KXc7ZPBVjv1pG66Oc18AkRbk
	9DjXxeVZ/It+n6Ys1A9oumdrWk8VPPlCncTKHqp9u9Lh4dA84pd3xJLEjtqXODTg32fc832oHaeDF
	rD4vBhIceHYlTFuzWhjyF2HZGr5XpnugQ65MDhBWwpSgDwho4I8W4BDSlhyumrUaCrHfJ3hcWNp1U
	3cPlaR9qH8VdOOLORB7bGdSVndOIbNWRxuZQW2UEn+d8KDTrsv+LrFNcQt02CLzcr0ZRw0VJs962v
	hapt3mXkVcKbVneV1gYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxRR5-0004tM-Mj; Tue, 13 Aug 2019 07:41:40 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxRQr-0004sd-N0
 for linux-nvme@lists.infradead.org; Tue, 13 Aug 2019 07:41:27 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id D49C8308A968;
 Tue, 13 Aug 2019 07:41:23 +0000 (UTC)
Received: from ming.t460p (ovpn-8-25.pek2.redhat.com [10.72.8.25])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2DBD91710C;
 Tue, 13 Aug 2019 07:41:16 +0000 (UTC)
Date: Tue, 13 Aug 2019 15:41:14 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH V2 2/3] genirq/affinity: Spread vectors on node according
 to nr_cpu ratio
Message-ID: <20190813074112.GA8610@ming.t460p>
References: <20190812095709.25623-1-ming.lei@redhat.com>
 <20190812095709.25623-3-ming.lei@redhat.com>
 <20190812152718.GA32550@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812152718.GA32550@localhost.localdomain>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.41]); Tue, 13 Aug 2019 07:41:24 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_004125_786794_AF8FCED7 
X-CRM114-Status: GOOD (  34.75  )
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
 linux-nvme@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>, Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 12, 2019 at 09:27:18AM -0600, Keith Busch wrote:
> On Mon, Aug 12, 2019 at 05:57:08PM +0800, Ming Lei wrote:
> > Now __irq_build_affinity_masks() spreads vectors evenly per node, and
> > all vectors may not be spread in case that each numa node has different
> > CPU number, then the following warning in irq_build_affinity_masks() can
> > be triggered:
> > 
> > 	if (nr_present < numvecs)
> > 		WARN_ON(nr_present + nr_others < numvecs);
> > 
> > Improve current spreading algorithm by assigning vectors according to
> > the ratio of node's nr_cpu to nr_remaining_cpus, meantime running the
> > assignment from smaller nodes to bigger nodes to guarantee that every
> > active node gets allocated at least one vector, then we can avoid
> > cross-node spread.
> > 
> > Meantime the reported warning can be fixed.
> > 
> > Another big goodness is that the spread approach becomes more fair if
> > node has different CPU number.
> > 
> > For example, on the following machine:
> > 	[root@ktest-01 ~]# lscpu
> > 	...
> > 	CPU(s):              16
> > 	On-line CPU(s) list: 0-15
> > 	Thread(s) per core:  1
> > 	Core(s) per socket:  8
> > 	Socket(s):           2
> > 	NUMA node(s):        2
> > 	...
> > 	NUMA node0 CPU(s):   0,1,3,5-9,11,13-15
> > 	NUMA node1 CPU(s):   2,4,10,12
> > 
> > When driver requests to allocate 8 vectors, the following spread can
> > be got:
> > 	irq 31, cpu list 2,4
> > 	irq 32, cpu list 10,12
> > 	irq 33, cpu list 0-1
> > 	irq 34, cpu list 3,5
> > 	irq 35, cpu list 6-7
> > 	irq 36, cpu list 8-9
> > 	irq 37, cpu list 11,13
> > 	irq 38, cpu list 14-15
> > 
> > Without this patch, kernel warning is triggered on above situation, and
> > allocation result was supposed to be 4 vectors for each node.
> > 
> > Cc: Christoph Hellwig <hch@lst.de>
> > Cc: Keith Busch <kbusch@kernel.org>
> > Cc: linux-nvme@lists.infradead.org,
> > Cc: Jon Derrick <jonathan.derrick@intel.com>
> > Cc: Jens Axboe <axboe@kernel.dk>
> > Reported-by: Jon Derrick <jonathan.derrick@intel.com>
> > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > ---
> >  kernel/irq/affinity.c | 141 +++++++++++++++++++++++++++++++++++-------
> >  1 file changed, 117 insertions(+), 24 deletions(-)
> > 
> > diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> > index c7cca942bd8a..927dcbe80482 100644
> > --- a/kernel/irq/affinity.c
> > +++ b/kernel/irq/affinity.c
> > @@ -7,6 +7,7 @@
> >  #include <linux/kernel.h>
> >  #include <linux/slab.h>
> >  #include <linux/cpu.h>
> > +#include <linux/sort.h>
> >  
> >  static void irq_spread_init_one(struct cpumask *irqmsk, struct cpumask *nmsk,
> >  				unsigned int cpus_per_vec)
> > @@ -94,6 +95,87 @@ static int get_nodes_in_cpumask(cpumask_var_t *node_to_cpumask,
> >  	return nodes;
> >  }
> >  
> > +struct node_nr_vectors {
> > +	unsigned n;
> > +
> > +	union {
> > +		unsigned nvectors;
> > +		unsigned ncpus;
> > +	};
> > +};
> > +
> > +static int ncpus_cmp_func(const void *l, const void *r)
> > +{
> > +	const struct node_nr_vectors *ln = l;
> > +	const struct node_nr_vectors *rn = r;
> > +
> > +	if (ln->ncpus < rn->ncpus)
> > +		return -1;
> > +	if (ln->ncpus > rn->ncpus)
> > +		return 1;
> > +	return 0;
> 
> You can collapse these to one line:
> 
> 	return ln->ncpus - rn->ncpus;

OK.

> 
> > +}
> > +
> > +static void alloc_nodes_vectors(unsigned int numvecs,
> > +				const cpumask_var_t *node_to_cpumask,
> > +				const struct cpumask *cpu_mask,
> > +				const nodemask_t nodemsk,
> > +				struct cpumask *nmsk,
> > +				struct node_nr_vectors *node_vectors)
> > +{
> > +	unsigned remaining_ncpus = 0;
> > +	unsigned n;
> > +
> > +	for (n = 0; n < nr_node_ids; n++) {
> > +		node_vectors[n].n = n;
> > +		node_vectors[n].ncpus = UINT_MAX;
> > +	}
> > +
> > +	for_each_node_mask(n, nodemsk) {
> > +		unsigned ncpus;
> > +
> > +		cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
> > +		ncpus = cpumask_weight(nmsk);
> > +
> > +		if (!ncpus)
> > +			continue;
> > +		remaining_ncpus += ncpus;
> > +		node_vectors[n].ncpus = ncpus;
> > +	}
> > +
> > +	sort(node_vectors, nr_node_ids, sizeof(node_vectors[0]),
> > +	     ncpus_cmp_func, NULL);
> > +
> > +	/*
> > +	 * Allocate vectors for each node according to the ratio of this
> > +	 * node's nr_cpus to remaining un-assigned ncpus. 'numvecs' is
> > +	 * bigger than number of active numa nodes. Always start the
> > +	 * allocation from the node with minimized nr_cpus.
> > +	 *
> > +	 * This way guarantees that each active node gets allocated at
> > +	 * least one vector, and the theory is simple: over-allocation
> > +	 * is only done when this node is assigned by one vector, so
> > +	 * other nodes will be allocated >= 1 vector, since 'numvecs' is
> > +	 * bigger than number of numa nodes.
> > +	 */
> > +	for (n = 0; n < nr_node_ids; n++) {
> > +		unsigned nvectors, ncpus;
> > +
> > +		if (node_vectors[n].ncpus == UINT_MAX)
> > +			continue;
> > +
> > +		WARN_ON_ONCE(numvecs == 0);
> > +
> > +		ncpus = node_vectors[n].ncpus;
> > +		nvectors = max_t(unsigned, 1,
> > +				 numvecs * ncpus / remaining_ncpus);
> > +
> > +		node_vectors[n].nvectors = nvectors;
> > +		remaining_ncpus -= ncpus;
> > +		numvecs -= nvectors;
> > +	}
> 
> This looks good to me.
> 
> > +}
> > +
> >  static int __irq_build_affinity_masks(unsigned int startvec,
> >  				      unsigned int numvecs,
> >  				      unsigned int firstvec,
> > @@ -102,10 +184,11 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> >  				      struct cpumask *nmsk,
> >  				      struct irq_affinity_desc *masks)
> >  {
> > -	unsigned int n, nodes, cpus_per_vec, extra_vecs, done = 0;
> > +	unsigned int i, n, nodes, cpus_per_vec, extra_vecs, done = 0;
> >  	unsigned int last_affv = firstvec + numvecs;
> >  	unsigned int curvec = startvec;
> >  	nodemask_t nodemsk = NODE_MASK_NONE;
> > +	struct node_nr_vectors *node_vectors;
> >  
> >  	if (!cpumask_weight(cpu_mask))
> >  		return 0;
> > @@ -126,8 +209,23 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> >  		return numvecs;
> >  	}
> >  
> > -	for_each_node_mask(n, nodemsk) {
> > -		unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
> > +	node_vectors = kcalloc(nr_node_ids,
> > +			       sizeof(struct node_nr_vectors),
> > +			       GFP_KERNEL);
> > +	if (!node_vectors)
> > +		return 0;
> 
> I think we need to get this -ENOMEM condition back to the caller and
> have that condition handled.

Good point.

> 
> > @@ -165,13 +250,21 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> >  			}
> >  			irq_spread_init_one(&masks[curvec].mask, nmsk,
> >  						cpus_per_vec);
> > +			/*
> > +			 * alloc_nodes_vectors() is intelligent enough to
> > +			 * allocate vectors on all nodes, so wrapping
> > +			 * shouldn't be triggered usually. However, if it
> > +			 * happens when allocated vectors is bigger than
> > +			 * node's CPU number becasue of round down, wraps
> > +			 * to the first vector allocated for this node, then
> > +			 * cross-node spread can be avoided.
> > +			 */
> > +			if (curvec >= last_affv)
> > +				curvec -= v;
> 
> Could you explain again how this could happen? The round-down should mean we
> apply a vector to more CPUs so that the number of vectors applied to a
> node wthin the loop should never require wrapping to hit all those CPUs.
> And if that's true, the check should probably be a warn because it
> should never happen.

You are right.

We should simply spread from the 1st vector for this node if there is
more vectors not done.

> 
> In any case, if you can hit that condition where curvec >= last_affv,
> the assignment to masks[curvec] just above may be out-of-bounds.

Yeah, 'curvec >= last_affv' shouldn't be needed.

Will fix them in V3.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
