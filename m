Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67D6185B3B
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 09:05:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4rLL2azdsqrPIg0Gd9cubfK7frEdfxoZxSbaybomqH0=; b=WbCviOIRfm2b0Z
	kdxshWIvHToYncWfx2K4c3Y3LnKNUmNGCu/jviTEVRUVT5U3ulTkmlpnOyYOXQZBzIhyqcrnj78bk
	H98QDG4BwzjoIxfPlGMFTz9lYY6ETg/b53VwMrigvF2SI3LoBghpRSi1Yw34CZawlRaGlQ3YfzgyP
	3UFFKfoWXwsBaXNiuPEGN3IMDIsE2frO1Y8IkcrDWvXGCcvZGv1ttKMRqdEJF0LSSorXjHsq8NiTb
	nSbV1/c9ulJ00hsVtrDYuGV+zK12x9LYYWo/W2NZQBK1e7BDFPLYQqJ5d0a2DhJ0WaoVpMzLP18ay
	JqJb+8oHXediu++I6rkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvcUE-0007IV-T4; Thu, 08 Aug 2019 07:05:23 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvcTW-0007Hc-NG
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 07:04:40 +0000
Received: from p200300ddd71876597e7a91fffec98e25.dip0.t-ipconnect.de
 ([2003:dd:d718:7659:7e7a:91ff:fec9:8e25])
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1hvcTS-0001eO-On; Thu, 08 Aug 2019 09:04:34 +0200
Date: Thu, 8 Aug 2019 09:04:28 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Jon Derrick <jonathan.derrick@intel.com>
Subject: Re: [PATCH] genirq/affinity: report extra vectors on uneven nodes
In-Reply-To: <20190807201051.32662-1-jonathan.derrick@intel.com>
Message-ID: <alpine.DEB.2.21.1908080903360.2882@nanos.tec.linutronix.de>
References: <20190807201051.32662-1-jonathan.derrick@intel.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-Linutronix-Spam-Score: -1.0
X-Linutronix-Spam-Level: -
X-Linutronix-Spam-Status: No , -1.0 points, 5.0 required, ALL_TRUSTED=-1,
 SHORTCIRCUIT=-0.0001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_000439_129466_FA74A3C7 
X-CRM114-Status: GOOD (  19.27  )
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
Cc: Christoph Hellwig <hch@lst.de>, LKML <linux-kernel@vger.kernel.org>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 7 Aug 2019, Jon Derrick wrote:

Cc+: Ming, Christoph.

Left context for reference.

> The current irq spreading algorithm spreads vectors amongst cpus evenly
> per node. If a node has more cpus than another node, the extra vectors
> being spread may not be reported back to the caller.
> 
> This is most apparent with the NVMe driver and nr_cpus < vectors, where
> the underreporting results in the caller's WARN being triggered:
> 
> irq_build_affinity_masks()
> ...
> 	if (nr_present < numvecs)
> 		WARN_ON(nr_present + nr_others < numvecs);
> 
> Signed-off-by: Jon Derrick <jonathan.derrick@intel.com>
> ---
>  kernel/irq/affinity.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> index 4352b08ae48d..9beafb8c7e92 100644
> --- a/kernel/irq/affinity.c
> +++ b/kernel/irq/affinity.c
> @@ -127,7 +127,8 @@ static int __irq_build_affinity_masks(unsigned int startvec,
>  	}
>  
>  	for_each_node_mask(n, nodemsk) {
> -		unsigned int ncpus, v, vecs_to_assign, vecs_per_node;
> +		unsigned int ncpus, v, vecs_to_assign, total_vecs_to_assign,
> +			vecs_per_node;
>  
>  		/* Spread the vectors per node */
>  		vecs_per_node = (numvecs - (curvec - firstvec)) / nodes;
> @@ -141,14 +142,16 @@ static int __irq_build_affinity_masks(unsigned int startvec,
>  
>  		/* Account for rounding errors */
>  		extra_vecs = ncpus - vecs_to_assign * (ncpus / vecs_to_assign);
> +		total_vecs_to_assign = vecs_to_assign + extra_vecs;
>  
> -		for (v = 0; curvec < last_affv && v < vecs_to_assign;
> +		for (v = 0; curvec < last_affv && v < total_vecs_to_assign;
>  		     curvec++, v++) {
>  			cpus_per_vec = ncpus / vecs_to_assign;
>  
>  			/* Account for extra vectors to compensate rounding errors */
>  			if (extra_vecs) {
>  				cpus_per_vec++;
> +				v++;
>  				--extra_vecs;
>  			}
>  			irq_spread_init_one(&masks[curvec].mask, nmsk,
> -- 
> 2.20.1
> 
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
