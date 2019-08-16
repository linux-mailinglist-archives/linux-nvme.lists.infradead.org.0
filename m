Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A75905BB
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 18:28:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WcyePyahJ3vzrzRa80rVrCs/Y1xzT55RcDNVLWnz4bQ=; b=PimvovKBbhDY5B
	r5k2hPA/4rOOZJXblpBFFCxxiGYtT0n7ESC1AmhwUrxC/biCh3H8emFlUlzOKXIONHBBZEUFdpvI4
	ILI6xISMLp+atoQIr/9og51tlSfAWPI+HrvvE5ZND7nt5jDvVIk3llnWUmdgqVKIcbd6vlE6m1BYk
	WlETHhpjtLdR2vzQA7W09Y6fDkK+3xmiva/z1LGAOrt3pJA21S2aeHdIWQyZJjmBBG1DEDHk2u5KI
	UKmNb5CgNdIKLZimC5wvx7N9rLZ/lneuNpCFmtkV8aolNoq78aYeaYTKoZmPDWoSaw6JVIFkQcJZp
	OXiVQ0Xgk135vi1WmdFw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyf5T-0003p3-AC; Fri, 16 Aug 2019 16:28:23 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyf5L-0003og-EL
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 16:28:17 +0000
Received: by mail-wm1-x343.google.com with SMTP id m125so4536132wmm.3
 for <linux-nvme@lists.infradead.org>; Fri, 16 Aug 2019 09:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=I7RdfB51kdBanjjfKmSOiUvvalQJvDbWY10LaqwNuZg=;
 b=nNPqF3jwp460/ZEQdCL6FipOf9wd328yeErTP+Qw8CijZHOAuFJfvErjcKAuB9Sugz
 qOUsiR5n+PJAM5sjaeIB/rDIp9Z4Ae8nEgHkEsVyHRNqpxD3oBWrgzgvQi8MgCmRNzmn
 dopgys/YPuHLLIqXgBkspqFWBWLJ1twlgNTZz08j0Tm6q6Reb7SJRdlNZHcLNa02n818
 m8RAcQBa6l/jgsaoQLtjm+2wqBAjuWyiIYGBZG2+mHrQc2axtm1VYJJrf6aeOjxCTyIh
 OdcueGCGsPnz3oNZGtMA/I59z11sim1Bi67a5NMU+FvGCrajzuFvRIf5YgqH7Cxep+Tc
 sfyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=I7RdfB51kdBanjjfKmSOiUvvalQJvDbWY10LaqwNuZg=;
 b=eUyRcj+vPpH/A9Yy1j/TgsdhL300X8HNvXwPMWSlkXV77mjcFofe0fVAsdyc/WZQZD
 3vQoVokx8drSZBZhkHWCuNWDZu7JPpDXILKEu8uD59aV5PYc8AANuyqcGU77+kAoY/x6
 Kin8/LEInOIAfK4FRYHnIUlh6DxlMYtJwwr3siiCFRD7b4Rxz7ZW2KUQ3BrwB4V4NR5m
 DMgHY/bgQHq6hpanWcZowYAsJbGOqRm8EuFLi1aMuCCh/U75w4w3guVUPx3k/6L1OUZW
 DA69g9Y3xcN1FoOqqjzVvmvitJk/2sXrBiVVd9VIBiI4bR27O742v+Bjsp9eYKsmNiUT
 /nkw==
X-Gm-Message-State: APjAAAWM1ZiCTMCldd0spY/V87xlqx/nNe5F4rJZg1MCRJuw8zz7msTS
 e2Ex7iKwQzeEbv5foXwltq6u1RFUML0U2ZgHV9c=
X-Google-Smtp-Source: APXvYqzvPWD/YY3SQ+siTRze9uM29Jy+oZ5SeCSTSEMz72Jwbr0Wu2gQlvFFDEL+rZ5UKbjpzKI/5AscLSFZtK7Iz3U=
X-Received: by 2002:a1c:2015:: with SMTP id g21mr8093153wmg.33.1565972893415; 
 Fri, 16 Aug 2019 09:28:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190816022849.14075-1-ming.lei@redhat.com>
 <20190816022849.14075-3-ming.lei@redhat.com>
 <20190816155353.GA6883@localhost.localdomain>
In-Reply-To: <20190816155353.GA6883@localhost.localdomain>
From: Ming Lei <tom.leiming@gmail.com>
Date: Sat, 17 Aug 2019 00:28:01 +0800
Message-ID: <CACVXFVMt7+ZgsQRyPx+k=+uMsxSzpTsKL401cGjJicgFGXuh5A@mail.gmail.com>
Subject: Re: [PATCH V5 2/2] genirq/affinity: Spread vectors on node according
 to nr_cpu ratio
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_092815_490855_BB1CD8D6 
X-CRM114-Status: GOOD (  36.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tom.leiming[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Jens Axboe <axboe@kernel.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Ming Lei <ming.lei@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>, "Derrick,
 Jonathan" <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 16, 2019 at 11:56 PM Keith Busch <kbusch@kernel.org> wrote:
>
> On Thu, Aug 15, 2019 at 07:28:49PM -0700, Ming Lei wrote:
> > Now __irq_build_affinity_masks() spreads vectors evenly per node, and
> > all vectors may not be spread in case that each numa node has different
> > CPU number, then the warning in irq_build_affinity_masks() can
> > be triggered.
> >
> > Improve current spreading algorithm by assigning vectors according to
> > the ratio of node's nr_cpu to nr_remaining_cpus, meantime running the
> > assignment from smaller nodes to bigger nodes to guarantee that every
> > active node gets allocated at least one vector, then we can avoid
> > cross-node spread in normal situation.
> >
> > Meantime the reported warning can be fixed.
> >
> > Another big goodness is that the spread approach becomes more fair if
> > node has different CPU number.
> >
> > For example, on the following machine:
> >       [root@ktest-01 ~]# lscpu
> >       ...
> >       CPU(s):              16
> >       On-line CPU(s) list: 0-15
> >       Thread(s) per core:  1
> >       Core(s) per socket:  8
> >       Socket(s):           2
> >       NUMA node(s):        2
> >       ...
> >       NUMA node0 CPU(s):   0,1,3,5-9,11,13-15
> >       NUMA node1 CPU(s):   2,4,10,12
> >
> > When driver requests to allocate 8 vectors, the following spread can
> > be got:
> >       irq 31, cpu list 2,4
> >       irq 32, cpu list 10,12
> >       irq 33, cpu list 0-1
> >       irq 34, cpu list 3,5
> >       irq 35, cpu list 6-7
> >       irq 36, cpu list 8-9
> >       irq 37, cpu list 11,13
> >       irq 38, cpu list 14-15
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
>
> I had every intention to thoroughly test this on imbalanced node
> configurations, but that's not going to happen anytime soon. It looks
> correct to me, so I'll append my review here.

Thanks for your review!

>
> I'm not sure I'd include the detailed correctness explanation in the
> comments, though. It essentially boils down to "the sum of the parts
> doesn't exceed the whole", and the key to carving up the parts is the
> sorted iteration you've implemented.

There are two invariants reached by this approach:

1) In each node, if the active CPU number isn't zero, >=1 vector is allocated
for this node

2) For each node, the allocated vector number is <= CPU number in this node.

Both two are not obviously, however, the two points are quite important wrt.
the correctness of this approach.

That is why I add the long correctness proof to the comment.

Thanks,
Ming
>
> Reviewed-by: Keith Busch <kbusch@kernel.org>
>
> > ---
> >  kernel/irq/affinity.c | 223 ++++++++++++++++++++++++++++++++++++------
> >  1 file changed, 193 insertions(+), 30 deletions(-)
> >
> > diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> > index c7cca942bd8a..32e07e58ce81 100644
> > --- a/kernel/irq/affinity.c
> > +++ b/kernel/irq/affinity.c
> > @@ -7,6 +7,7 @@
> >  #include <linux/kernel.h>
> >  #include <linux/slab.h>
> >  #include <linux/cpu.h>
> > +#include <linux/sort.h>
> >
> >  static void irq_spread_init_one(struct cpumask *irqmsk, struct cpumask *nmsk,
> >                               unsigned int cpus_per_vec)
> > @@ -94,6 +95,155 @@ static int get_nodes_in_cpumask(cpumask_var_t *node_to_cpumask,
> >       return nodes;
> >  }
> >
> > +struct node_vectors {
> > +     unsigned id;
> > +
> > +     union {
> > +             unsigned nvectors;
> > +             unsigned ncpus;
> > +     };
> > +};
> > +
> > +static int ncpus_cmp_func(const void *l, const void *r)
> > +{
> > +     const struct node_vectors *ln = l;
> > +     const struct node_vectors *rn = r;
> > +
> > +     return ln->ncpus - rn->ncpus;
> > +}
> > +
> > +/*
> > + * Allocate vector number for each node, so that for each node:
> > + *
> > + * 1) the allocated number is >= 1
> > + *
> > + * 2) the allocated numbver is <= active CPU number of this node
> > + *
> > + * The actual allocated total vectors may be less than @numvecs when
> > + * active total CPU number is less than @numvecs.
> > + *
> > + * Active CPUs means the CPUs in '@cpu_mask AND @node_to_cpumask[]'
> > + * for each node.
> > + */
> > +static void alloc_nodes_vectors(unsigned int numvecs,
> > +                             const cpumask_var_t *node_to_cpumask,
> > +                             const struct cpumask *cpu_mask,
> > +                             const nodemask_t nodemsk,
> > +                             struct cpumask *nmsk,
> > +                             struct node_vectors *node_vectors)
> > +{
> > +     unsigned n, remaining_ncpus = 0;
> > +
> > +     for (n = 0; n < nr_node_ids; n++) {
> > +             node_vectors[n].id = n;
> > +             node_vectors[n].ncpus = UINT_MAX;
> > +     }
> > +
> > +     for_each_node_mask(n, nodemsk) {
> > +             unsigned ncpus;
> > +
> > +             cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
> > +             ncpus = cpumask_weight(nmsk);
> > +
> > +             if (!ncpus)
> > +                     continue;
> > +             remaining_ncpus += ncpus;
> > +             node_vectors[n].ncpus = ncpus;
> > +     }
> > +
> > +     numvecs = min_t(unsigned, remaining_ncpus, numvecs);
> > +
> > +     sort(node_vectors, nr_node_ids, sizeof(node_vectors[0]),
> > +          ncpus_cmp_func, NULL);
> > +
> > +     /*
> > +      * Allocate vectors for each node according to the ratio of this
> > +      * node's nr_cpus to remaining un-assigned ncpus. 'numvecs' is
> > +      * bigger than number of active numa nodes. Always start the
> > +      * allocation from the node with minimized nr_cpus.
> > +      *
> > +      * This way guarantees that each active node gets allocated at
> > +      * least one vector, and the theory is simple: over-allocation
> > +      * is only done when this node is assigned by one vector, so
> > +      * other nodes will be allocated >= 1 vector, since 'numvecs' is
> > +      * bigger than number of numa nodes.
> > +      *
> > +      * One perfect invariant is that number of allocated vectors for
> > +      * each node is <= CPU count of this node:
> > +      *
> > +      * 1) suppose there are two nodes: A and B
> > +      *      ncpu(X) is CPU count of node X
> > +      *      vecs(X) is the vector count allocated to node X via this
> > +      *      algorithm
> > +      *
> > +      *      ncpu(A) <= ncpu(B)
> > +      *      ncpu(A) + ncpu(B) = N
> > +      *      vecs(A) + vecs(B) = V
> > +      *
> > +      *      vecs(A) = max(1, round_down(V * ncpu(A) / N))
> > +      *      vecs(B) = V - vecs(A)
> > +      *
> > +      *      both N and V are integer, and 2 <= V <= N, suppose
> > +      *      V = N - delta, and 0 <= delta <= N - 2
> > +      *
> > +      * 2) obviously vecs(A) <= ncpu(A) because:
> > +      *
> > +      *      if vecs(A) is 1, then vecs(A) <= ncpu(A) given
> > +      *      ncpu(A) >= 1
> > +      *
> > +      *      otherwise,
> > +      *              vecs(A) <= V * ncpu(A) / N <= ncpu(A), given V <= N
> > +      *
> > +      * 3) prove how vecs(B) <= ncpu(B):
> > +      *
> > +      *      if round_down(V * ncpu(A) / N) == 0, vecs(B) won't be
> > +      *      over-allocated, so vecs(B) <= ncpu(B),
> > +      *
> > +      *      otherwise:
> > +      *
> > +      *      vecs(A) =
> > +      *              round_down(V * ncpu(A) / N) =
> > +      *              round_down((N - delta) * ncpu(A) / N) =
> > +      *              round_down((N * ncpu(A) - delta * ncpu(A)) / N)  >=
> > +      *              round_down((N * ncpu(A) - delta * N) / N)        =
> > +      *              cpu(A) - delta
> > +      *
> > +      *      then:
> > +      *
> > +      *      vecs(A) - V >= ncpu(A) - delta - V
> > +      *      =>
> > +      *      V - vecs(A) <= V + delta - ncpu(A)
> > +      *      =>
> > +      *      vecs(B) <= N - ncpu(A)
> > +      *      =>
> > +      *      vecs(B) <= cpu(B)
> > +      *
> > +      * For nodes >= 3, it can be thought as one node and another big
> > +      * node given that is exactly what this algorithm is implemented,
> > +      * and we always re-calculate 'remaining_ncpus' & 'numvecs', and
> > +      * finally for each node X: vecs(X) <= ncpu(X).
> > +      *
> > +      */
> > +     for (n = 0; n < nr_node_ids; n++) {
> > +             unsigned nvectors, ncpus;
> > +
> > +             if (node_vectors[n].ncpus == UINT_MAX)
> > +                     continue;
> > +
> > +             WARN_ON_ONCE(numvecs == 0);
> > +
> > +             ncpus = node_vectors[n].ncpus;
> > +             nvectors = max_t(unsigned, 1,
> > +                              numvecs * ncpus / remaining_ncpus);
> > +             WARN_ON_ONCE(nvectors > ncpus);
> > +
> > +             node_vectors[n].nvectors = nvectors;
> > +
> > +             remaining_ncpus -= ncpus;
> > +             numvecs -= nvectors;
> > +     }
> > +}
> > +
> >  static int __irq_build_affinity_masks(unsigned int startvec,
> >                                     unsigned int numvecs,
> >                                     unsigned int firstvec,
> > @@ -102,10 +252,11 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> >                                     struct cpumask *nmsk,
> >                                     struct irq_affinity_desc *masks)
> >  {
> > -     unsigned int n, nodes, cpus_per_vec, extra_vecs, done = 0;
> > +     unsigned int i, n, nodes, cpus_per_vec, extra_vecs, done = 0;
> >       unsigned int last_affv = firstvec + numvecs;
> >       unsigned int curvec = startvec;
> >       nodemask_t nodemsk = NODE_MASK_NONE;
> > +     struct node_vectors *node_vectors;
> >
> >       if (!cpumask_weight(cpu_mask))
> >               return 0;
> > @@ -126,53 +277,57 @@ static int __irq_build_affinity_masks(unsigned int startvec,
> >               return numvecs;
> >       }
> >
> > -     for_each_node_mask(n, nodemsk) {
> > -             unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
> > +     node_vectors = kcalloc(nr_node_ids,
> > +                            sizeof(struct node_vectors),
> > +                            GFP_KERNEL);
> > +     if (!node_vectors)
> > +             return -ENOMEM;
> > +
> > +     /* allocate vector number for each node */
> > +     alloc_nodes_vectors(numvecs, node_to_cpumask, cpu_mask,
> > +                         nodemsk, nmsk, node_vectors);
> > +
> > +     for (i = 0; i < nr_node_ids; i++) {
> > +             unsigned int ncpus, v;
> > +             struct node_vectors *nv = &node_vectors[i];
> > +
> > +             if (nv->nvectors == UINT_MAX)
> > +                     continue;
> >
> >               /* Get the cpus on this node which are in the mask */
> > -             cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
> > +             cpumask_and(nmsk, cpu_mask, node_to_cpumask[nv->id]);
> >               ncpus = cpumask_weight(nmsk);
> >               if (!ncpus)
> >                       continue;
> >
> > -             /*
> > -              * Calculate the number of cpus per vector
> > -              *
> > -              * Spread the vectors evenly per node. If the requested
> > -              * vector number has been reached, simply allocate one
> > -              * vector for each remaining node so that all nodes can
> > -              * be covered
> > -              */
> > -             if (numvecs > done)
> > -                     vecs_per_node = max_t(unsigned,
> > -                                     (numvecs - done) / nodes, 1);
> > -             else
> > -                     vecs_per_node = 1;
> > -
> > -             vecs_to_assign = min(vecs_per_node, ncpus);
> > +             WARN_ON_ONCE(nv->nvectors > ncpus);
> >
> >               /* Account for rounding errors */
> > -             extra_vecs = ncpus - vecs_to_assign * (ncpus / vecs_to_assign);
> > +             extra_vecs = ncpus - nv->nvectors * (ncpus / nv->nvectors);
> >
> > -             for (v = 0; curvec < last_affv && v < vecs_to_assign;
> > -                  curvec++, v++) {
> > -                     cpus_per_vec = ncpus / vecs_to_assign;
> > +             /* Spread allocated vectors on CPUs of the current node */
> > +             for (v = 0; v < nv->nvectors; v++, curvec++) {
> > +                     cpus_per_vec = ncpus / nv->nvectors;
> >
> >                       /* Account for extra vectors to compensate rounding errors */
> >                       if (extra_vecs) {
> >                               cpus_per_vec++;
> >                               --extra_vecs;
> >                       }
> > +
> > +                     /*
> > +                      * wrapping has to be considered given 'startvec'
> > +                      * may start anywhere
> > +                      */
> > +                     if (curvec >= last_affv)
> > +                             curvec = firstvec;
> >                       irq_spread_init_one(&masks[curvec].mask, nmsk,
> >                                               cpus_per_vec);
> >               }
> > -
> > -             done += v;
> > -             if (curvec >= last_affv)
> > -                     curvec = firstvec;
> > -             --nodes;
> > +             done += nv->nvectors;
> >       }
> > -     return done < numvecs ? done : numvecs;
> > +     kfree(node_vectors);
> > +     return done;
> >  }
> >
> >  /*
> > @@ -208,6 +363,10 @@ static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
> >       nr_present = __irq_build_affinity_masks(curvec, numvecs,
> >                                               firstvec, node_to_cpumask,
> >                                               cpu_present_mask, nmsk, masks);
> > +     if (nr_present < 0) {
> > +             ret = nr_present;
> > +             goto fail_build_affinity;
> > +     }
> >
> >       /*
> >        * Spread on non present CPUs starting from the next vector to be
> > @@ -223,9 +382,13 @@ static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
> >       nr_others = __irq_build_affinity_masks(curvec, numvecs,
> >                                              firstvec, node_to_cpumask,
> >                                              npresmsk, nmsk, masks);
> > +     if (nr_others < 0)
> > +             ret = nr_others;
> > +
> > + fail_build_affinity:
> >       put_online_cpus();
> >
> > -     if (nr_present < numvecs)
> > +     if (min(nr_present, nr_others) >= 0)
> >               WARN_ON(nr_present + nr_others < numvecs);
> >
> >       free_node_to_cpumask(node_to_cpumask);
> > --
> > 2.20.1
> >
>
> _______________________________________________
> Linux-nvme mailing list
> Linux-nvme@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-nvme



-- 
Ming Lei

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
