Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 536F787D09
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 16:44:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zEJA/ehNWn1JmhD7+egVIEpb2IZfP20xet3j9XV7PsI=; b=d0iQrLDoKteYbV
	6aZWTRXNqVY97HvBT2GtUI/6Lnbos3E9OybZzx2DF6qY176zjL0pvFgXH9U1iT72693f/9Uzj5UaH
	FfoXBUBC0saXMwc3ioPpc0D+p8/+uqztmXtJba4rqfU7xTGYwkJyGcag7VE9XKj06bVGFb8XgmqJg
	clfTF4Gcyp7j6x4lJ99UuWLiQ4fmLbmNfxIGHjImgEy+AhMIkwa1te5iAWrlEgMhalFQrkLi2A/It
	RuV5ArQh1bacgt3XJjpORnfgCHF8QAz8TTR56jfeKDjMggc+zwfnBmfAMpuCwBRecIb5/O+CsuJsI
	DRMBNVWWqrDFplBODsIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw68P-0006LN-A8; Fri, 09 Aug 2019 14:44:49 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw686-00069g-4J
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 14:44:32 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 Aug 2019 07:44:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,364,1559545200"; d="scan'208";a="169333583"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga008.jf.intel.com with ESMTP; 09 Aug 2019 07:44:27 -0700
Date: Fri, 9 Aug 2019 08:42:04 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 1/2] genirq/affinity: improve __irq_build_affinity_masks()
Message-ID: <20190809144204.GA28515@localhost.localdomain>
References: <20190809102310.27246-1-ming.lei@redhat.com>
 <20190809102310.27246-2-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190809102310.27246-2-ming.lei@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_074430_226401_E9F60C01 
X-CRM114-Status: GOOD (  20.03  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Thomas Gleixner <tglx@linutronix.de>,
 Jon Derrick <jonathan.derrick@intel.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Aug 09, 2019 at 06:23:09PM +0800, Ming Lei wrote:
> One invariant of __irq_build_affinity_masks() is that all CPUs in the
> specified masks( cpu_mask AND node_to_cpumask for each node) should be
> covered during the spread. Even though all requested vectors have been
> reached, we still need to spread vectors among left CPUs. The similar
> policy has been taken in case of 'numvecs <= nodes'.
> 
> So remove the following check inside the loop:
> 
> 	if (done >= numvecs)
> 		break;
> 
> Meantime assign at least 1 vector for left nodes if 'numvecs' vectors
> have been spread.
> 
> Also, if the specified cpumask for one numa node is empty, simply not
> spread vectors on this node.
> 
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: linux-nvme@lists.infradead.org,
> Cc: Jon Derrick <jonathan.derrick@intel.com>
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---
>  kernel/irq/affinity.c | 33 +++++++++++++++++++++------------
>  1 file changed, 21 insertions(+), 12 deletions(-)
> 
> diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> index 6fef48033f96..bc3652a2c61b 100644
> --- a/kernel/irq/affinity.c
> +++ b/kernel/irq/affinity.c
> @@ -129,21 +129,32 @@ static int __irq_build_affinity_masks(unsigned int startvec,
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

This shouldn't be possible, right? The nodemsk we're looping  wouldn't
have had that node set if no CPUs intersect the node_to_cpu_mask for
that node, so the resulting cpumask should always have a non-zero weight.

> @@ -153,16 +164,14 @@ static int __irq_build_affinity_masks(unsigned int startvec,
>  			}
>  			irq_spread_init_one(&masks[curvec].mask, nmsk,
>  						cpus_per_vec);
> +			if (++curvec >= last_affv)
> +				curvec = firstvec;

I'm not so sure about wrapping the vector to share it across nodes. We
have enough vectors in this path to ensure each compute node can have
a unique one, and it's much cheaper to share these within nodes than
across them.

>  		}
>  
>  		done += v;
> -		if (done >= numvecs)
> -			break;
> -		if (curvec >= last_affv)
> -			curvec = firstvec;
>  		--nodes;
>  	}
> -	return done;
> +	return done < numvecs ? done : numvecs;
>  }

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
