Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5F0B86595
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 17:20:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5PS+vsBU1d5Yo20qyQnGrWbUlH/lADNK6D5Dt0U5JEA=; b=hyLj4jDk3NIPD6
	0WaXhdlb/V+W+sK6b+RJ26p9r6AbfD7OlziDkrkFz17AO2mI/44p3sXzDm7jUjLQTS5yp3OKHBerm
	g6PcsGjGSJQ8rQUPjOcxzA1tlaM0pLTQjU4+bd7Ob+vX0MP+3UtKjZtunhD7DkHDCtnENjwqu/M/4
	PPhDxHiRqXKpbaWmzA3G8soJrY/MAQkfy00oVCP1aAPvuckjg4jU6uwG/ms5CHc3FNhxWpQZqzr8P
	VLjdTxxTG8guCZAxNGBCFPjP+7M9QugGAH/4crMdctsApduqjEgWJqeisd3jY8K4wvuhH61z85tjr
	voitaKDfi7j3SuJPHLXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvkDF-00016l-Os; Thu, 08 Aug 2019 15:20:22 +0000
Received: from mga18.intel.com ([134.134.136.126])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvkD8-0000XS-7G
 for linux-nvme@lists.infradead.org; Thu, 08 Aug 2019 15:20:15 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 08:20:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,361,1559545200"; d="scan'208";a="203611641"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 08 Aug 2019 08:20:06 -0700
Date: Thu, 8 Aug 2019 09:17:40 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH] genirq/affinity: create affinity mask for single vector
Message-ID: <20190808151740.GA27077@localhost.localdomain>
References: <20190805011906.5020-1-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190805011906.5020-1-ming.lei@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_082014_309966_D958C6F1 
X-CRM114-Status: GOOD (  20.75  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.126 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Jens Axboe <axboe@kernel.dk>, Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, Marc Zyngier <marc.zyngier@arm.com>,
 linux-pci@vger.kernel.org,
 Shivasharan Srikanteshwara <shivasharan.srikanteshwara@broadcom.com>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Kashyap Desai <kashyap.desai@broadcom.com>, linux-block@vger.kernel.org,
 Sumit Saxena <sumit.saxena@broadcom.com>, Bjorn Helgaas <helgaas@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 09:19:06AM +0800, Ming Lei wrote:
> Since commit c66d4bd110a1f8 ("genirq/affinity: Add new callback for
> (re)calculating interrupt sets"), irq_create_affinity_masks() returns
> NULL in case of single vector. This change has caused regression on some
> drivers, such as lpfc.
> 
> The problem is that single vector may be triggered in some generic cases:
> 1) kdump kernel 2) irq vectors resource is close to exhaustion.
> 
> If we don't create affinity mask for single vector, almost every caller
> has to handle the special case.
> 
> So still create affinity mask for single vector, since irq_create_affinity_masks()
> is capable of handling that.

Hi Ming,

Looks good to me.

Reviewed-by: Keith Busch <keith.busch@intel.com>
 
> ---
>  kernel/irq/affinity.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> index 4352b08ae48d..6fef48033f96 100644
> --- a/kernel/irq/affinity.c
> +++ b/kernel/irq/affinity.c
> @@ -251,11 +251,9 @@ irq_create_affinity_masks(unsigned int nvecs, struct irq_affinity *affd)
>  	 * Determine the number of vectors which need interrupt affinities
>  	 * assigned. If the pre/post request exhausts the available vectors
>  	 * then nothing to do here except for invoking the calc_sets()
> -	 * callback so the device driver can adjust to the situation. If there
> -	 * is only a single vector, then managing the queue is pointless as
> -	 * well.
> +	 * callback so the device driver can adjust to the situation.
>  	 */
> -	if (nvecs > 1 && nvecs > affd->pre_vectors + affd->post_vectors)
> +	if (nvecs > affd->pre_vectors + affd->post_vectors)
>  		affvecs = nvecs - affd->pre_vectors - affd->post_vectors;
>  	else
>  		affvecs = 0;
> -- 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
