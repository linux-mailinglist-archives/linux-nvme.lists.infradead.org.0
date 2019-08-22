Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1DEF998BE
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 18:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tlAZPRJ52ekYsUOZD623Oc56x/EgLRRe+1M5ONYJiJ0=; b=r39pXIeFrnKh1d
	o4V+QlKoU3RzVrAEAf+dBhKI5qQzrdKNHJIR+GHuo+i6z+UcTc8iL+n7yNZIL0fimSs5P+NMICYmp
	Y3w28X4Vmhd4sjbC093TUoGKptjqEN5963Xi/gJNtizGwLQBivVnKhO58RJW8oEdg657zAz8W16mX
	EcFSuaDCfibLf82bURGWPCcLDnjIO6uxWgN46OGz8Lqlyxkwj5E15UT4dSOclyzLLToTkuoAugC5u
	ygFTnFgD0iStkTTgB4q38Lx2oaJWyZqAPaI2oHbyS60gwkZIbbjW5QTxO8j80ZFClBZcuH7RnieMw
	qltmWUkhQAfECmSepHIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0paZ-00019O-EG; Thu, 22 Aug 2019 16:05:27 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0paN-00018q-6I
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 16:05:16 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Aug 2019 09:05:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,417,1559545200"; d="scan'208";a="181431201"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 22 Aug 2019 09:05:09 -0700
Date: Thu, 22 Aug 2019 10:03:12 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V6 1/2] genirq/affinity: Improve
 __irq_build_affinity_masks()
Message-ID: <20190822160311.GA15264@localhost.localdomain>
References: <20190819124937.9948-1-ming.lei@redhat.com>
 <20190819124937.9948-2-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190819124937.9948-2-ming.lei@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190822_090515_276004_78F39B31 
X-CRM114-Status: GOOD (  22.85  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>, "Derrick,
 Jonathan" <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 19, 2019 at 05:49:36AM -0700, Ming Lei wrote:
> One invariant of __irq_build_affinity_masks() is that all CPUs in the
> specified masks( cpu_mask AND node_to_cpumask for each node) should be
> covered during the spread. Even though all requested vectors have been
> reached, we still need to spread vectors among remained CPUs. The similar
> policy has been taken in case of 'numvecs <= nodes' already:
> 
> So remove the following check inside the loop:
> 
> 	if (done >= numvecs)
> 		break;
> 
> Meantime assign at least 1 vector for remained nodes if 'numvecs' vectors
> have been handled already.
> 
> Also, if the specified cpumask for one numa node is empty, simply not
> spread vectors on this node.
> 
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: linux-nvme@lists.infradead.org,
> Cc: Jon Derrick <jonathan.derrick@intel.com>
> Cc: Jens Axboe <axboe@kernel.dk>
> Signed-off-by: Ming Lei <ming.lei@redhat.com>

Looks good to me

Reviewed-by: Keith Busch <kbusch@kernel.org>
 
> ---
>  kernel/irq/affinity.c | 26 ++++++++++++++++++--------
>  1 file changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> index 6fef48033f96..c7cca942bd8a 100644
> --- a/kernel/irq/affinity.c
> +++ b/kernel/irq/affinity.c
> @@ -129,14 +129,26 @@ static int __irq_build_affinity_masks(unsigned int startvec,
>  	for_each_node_mask(n, nodemsk) {
>  		unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
>  
> -		/* Spread the vectors per node */
> -		vecs_per_node = (numvecs - (curvec - firstvec)) / nodes;
> -
>  		/* Get the cpus on this node which are in the mask */
>  		cpumask_and(nmsk, cpu_mask, node_to_cpumask[n]);
> -
> -		/* Calculate the number of cpus per vector */
>  		ncpus = cpumask_weight(nmsk);
> +		if (!ncpus)
> +			continue;
> +
> +		/*
> +		 * Calculate the number of cpus per vector
> +		 *
> +		 * Spread the vectors evenly per node. If the requested
> +		 * vector number has been reached, simply allocate one
> +		 * vector for each remaining node so that all nodes can
> +		 * be covered
> +		 */
> +		if (numvecs > done)
> +			vecs_per_node = max_t(unsigned,
> +					(numvecs - done) / nodes, 1);
> +		else
> +			vecs_per_node = 1;
> +
>  		vecs_to_assign = min(vecs_per_node, ncpus);
>  
>  		/* Account for rounding errors */
> @@ -156,13 +168,11 @@ static int __irq_build_affinity_masks(unsigned int startvec,
>  		}
>  
>  		done += v;
> -		if (done >= numvecs)
> -			break;
>  		if (curvec >= last_affv)
>  			curvec = firstvec;
>  		--nodes;
>  	}
> -	return done;
> +	return done < numvecs ? done : numvecs;
>  }
>  
>  /*
> -- 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
