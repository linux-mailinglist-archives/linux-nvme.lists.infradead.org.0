Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE78B989B9
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 05:10:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1iduyVb5gNOIN0/SzMEnPIvvghxDzfR/Zh0sFF8B3o=; b=e+EumYFfwFD1xd
	KLofEj9nKIthzuRSVRcGZ54842FWBaKNwEW4e3yFu7SDlZdYLZmIY1K+vaemLgDzbLSC8tdQEq9Au
	6OnoRHCmf3sVH+5ZLhEc4d4Fr34yCLI6lD43Ya9fRMOoAaCNElHoMmTKOyUYOgmqCm+w8ZmQ4dMmb
	VzjF3wyCUgYw6fDrcrh8qhRoUbu5CeUBnZ9L/Mu5pWP73AJWj3b4IDDIkZbGZ4AzPObwbO+giyZfa
	1CL8V8ZIY8jmEfKpYiFBQ8T4VUguTkbjF15yMfe6zE1dYKmJGD4T3mLnvii7jM9sFXFGrMDqAS8sK
	lUg4WxB89cJx+Rjp6+sQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0dUG-0005Fa-L0; Thu, 22 Aug 2019 03:10:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0dU8-0004lm-Sw
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 03:10:03 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 173943082128;
 Thu, 22 Aug 2019 03:10:00 +0000 (UTC)
Received: from ming.t460p (ovpn-8-22.pek2.redhat.com [10.72.8.22])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A6ED15D9D3;
 Thu, 22 Aug 2019 03:09:53 +0000 (UTC)
Date: Thu, 22 Aug 2019 11:09:48 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: Re: [PATCH V6 2/2] genirq/affinity: Spread vectors on node according
 to nr_cpu ratio
Message-ID: <20190822030947.GD28635@ming.t460p>
References: <20190819124937.9948-1-ming.lei@redhat.com>
 <20190819124937.9948-3-ming.lei@redhat.com>
 <alpine.DEB.2.21.1908191511440.2147@nanos.tec.linutronix.de>
 <20190819135217.GA10108@ming.t460p>
 <alpine.DEB.2.21.1908191601520.2147@nanos.tec.linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1908191601520.2147@nanos.tec.linutronix.de>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 22 Aug 2019 03:10:00 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_201000_975787_456D331D 
X-CRM114-Status: GOOD (  22.51  )
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
 linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 04:02:21PM +0200, Thomas Gleixner wrote:
> On Mon, 19 Aug 2019, Ming Lei wrote:
> > On Mon, Aug 19, 2019 at 03:13:58PM +0200, Thomas Gleixner wrote:
> > > On Mon, 19 Aug 2019, Ming Lei wrote:
> > > 
> > > > Cc: Jon Derrick <jonathan.derrick@intel.com>
> > > > Cc: Jens Axboe <axboe@kernel.dk>
> > > > Reported-by: Jon Derrick <jonathan.derrick@intel.com>
> > > > Reviewed-by: Jon Derrick <jonathan.derrick@intel.com>
> > > > Reviewed-by: Keith Busch <kbusch@kernel.org>
> > > 
> > > This version is sufficiently different from the previous one, so I do not
> > > consider the reviewed-by tags still being valid and meaningful. Don't
> > > include them unless you just do cosmetic changes.
> > 
> > Fine.
> > 
> > However, the V6 only change isn't big, just for addressing the un-initialized
> > warning, and the change is only done on function of irq_build_affinity_masks().
> 
> They are not trivial either:
> 
>  affinity.c |   28 +++++++++++++---------------
>  1 file changed, 13 insertions(+), 15 deletions(-)
> 
> --- a/kernel/irq/affinity.c
> +++ b/kernel/irq/affinity.c
> @@ -339,7 +339,7 @@ static int irq_build_affinity_masks(unsi
>  				    unsigned int firstvec,
>  				    struct irq_affinity_desc *masks)
>  {
> -	unsigned int curvec = startvec, nr_present, nr_others;
> +	unsigned int curvec = startvec, nr_present = 0, nr_others = 0;
>  	cpumask_var_t *node_to_cpumask;
>  	cpumask_var_t nmsk, npresmsk;
>  	int ret = -ENOMEM;
> @@ -354,19 +354,17 @@ static int irq_build_affinity_masks(unsi
>  	if (!node_to_cpumask)
>  		goto fail_npresmsk;
>  
> -	ret = 0;
>  	/* Stabilize the cpumasks */
>  	get_online_cpus();
>  	build_node_to_cpumask(node_to_cpumask);
>  
>  	/* Spread on present CPUs starting from affd->pre_vectors */
> -	nr_present = __irq_build_affinity_masks(curvec, numvecs,
> -						firstvec, node_to_cpumask,
> -						cpu_present_mask, nmsk, masks);
> -	if (nr_present < 0) {
> -		ret = nr_present;
> +	ret = __irq_build_affinity_masks(curvec, numvecs, firstvec,
> +					 node_to_cpumask, cpu_present_mask,
> +					 nmsk, masks);
> +	if (ret < 0)
>  		goto fail_build_affinity;
> -	}
> +	nr_present = ret;
>  
>  	/*
>  	 * Spread on non present CPUs starting from the next vector to be
> @@ -379,16 +377,16 @@ static int irq_build_affinity_masks(unsi
>  	else
>  		curvec = firstvec + nr_present;
>  	cpumask_andnot(npresmsk, cpu_possible_mask, cpu_present_mask);
> -	nr_others = __irq_build_affinity_masks(curvec, numvecs,
> -					       firstvec, node_to_cpumask,
> -					       npresmsk, nmsk, masks);
> -	if (nr_others < 0)
> -		ret = nr_others;
> +	ret = __irq_build_affinity_masks(curvec, numvecs, firstvec,
> +					 node_to_cpumask, npresmsk, nmsk,
> +					 masks);
> +	if (ret >= 0)
> +		nr_others = ret;
>  
>   fail_build_affinity:
>  	put_online_cpus();
>  
> -	if (min(nr_present, nr_others) >= 0)
> +	if (ret >= 0)
>  		WARN_ON(nr_present + nr_others < numvecs);
>  
>  	free_node_to_cpumask(node_to_cpumask);
> @@ -398,7 +396,7 @@ static int irq_build_affinity_masks(unsi
>  
>   fail_nmsk:
>  	free_cpumask_var(nmsk);
> -	return ret;
> +	return ret < 0 ? ret : 0;
>  }
>  
>  static void default_calc_sets(struct irq_affinity *affd, unsigned int affvecs)

Hi Keith & Jon,

Could you review the above V6 extra change so that we can move on?

BTW, in-balanced numa nodes can be made easily via passing 'possible_cpus=N'.


Thanks, 
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
