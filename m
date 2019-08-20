Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F0F2963B7
	for <lists+linux-nvme@lfdr.de>; Tue, 20 Aug 2019 17:07:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgogJxKdbkHfxbnoQlLYop+wyy7EHt/HAsY+eG4PCp0=; b=YhNx0STdx+o2dv
	ojrBrROCaVVWBiJPnkWCYnSbP7JWPrPQ+74ZWAN9JHQzDHeDUDRUV8YU8gRmxOlXt0wxl30XgQaWR
	rfCm4hzTDtFgmsjwKrtN4QSTuuWdmS7oelH2Plzk/wEJe4LKo9Hke7wreV1XTtGoQSseAVoEWOPCR
	Hlhuee2oEp35QjPpgAoDKM8BOw7r9vgeHOurIx+zkFmcKIxJMtA4cu/zaTbY2F2ySaJh07kZlGzGV
	3p5AKOVXMDOvz+QJzcpPLzFW+YRZWYN+hVUFZaxIhCBnXPSgBHx25pbWWGqW9Ql6zJUIaIrn1pLo1
	LO0XhnZJmEkb+12Ur1ng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05jF-0003gH-K1; Tue, 20 Aug 2019 15:07:21 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05j9-0003fu-35
 for linux-nvme@lists.infradead.org; Tue, 20 Aug 2019 15:07:16 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 20 Aug 2019 08:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,408,1559545200"; d="scan'208";a="183225260"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 20 Aug 2019 08:07:12 -0700
Date: Tue, 20 Aug 2019 09:05:11 -0600
From: Keith Busch <kbusch@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH 0/3] fix interrupt swamp in NVMe
Message-ID: <20190820150511.GD11202@localhost.localdomain>
References: <1566281669-48212-1-git-send-email-longli@linuxonhyperv.com>
 <CACVXFVPCiTU0mtXKS0fyMccPXN6hAdZNHv6y-f8-tz=FE=BV=g@mail.gmail.com>
 <fd7d6101-37f4-2d34-f2f7-cfeade610278@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fd7d6101-37f4-2d34-f2f7-cfeade610278@huawei.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_080715_180523_EF04DEE2 
X-CRM114-Status: GOOD (  15.28  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 chenxiang <chenxiang66@hisilicon.com>, Peter Zijlstra <peterz@infradead.org>,
 Ming Lei <tom.leiming@gmail.com>, Long Li <longli@microsoft.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>,
 "longli@linuxonhyperv.com" <longli@linuxonhyperv.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 01:59:32AM -0700, John Garry wrote:
> diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
> index e8f7f179bf77..cb483a055512 100644
> --- a/kernel/irq/manage.c
> +++ b/kernel/irq/manage.c
> @@ -966,9 +966,13 @@ irq_thread_check_affinity(struct irq_desc *desc, 
> struct irqaction *action)
>   	 * mask pointer. For CPU_MASK_OFFSTACK=n this is optimized out.
>   	 */
>   	if (cpumask_available(desc->irq_common_data.affinity)) {
> +		struct irq_data *irq_data = &desc->irq_data;
>   		const struct cpumask *m;
> 
> -		m = irq_data_get_effective_affinity_mask(&desc->irq_data);
> +		if (action->flags & IRQF_IRQ_AFFINITY)
> +			m = desc->irq_common_data.affinity;
> +		else
> +			m = irq_data_get_effective_affinity_mask(irq_data);
>   		cpumask_copy(mask, m);
>   	} else {
>   		valid = false;
> -- 
> 2.17.1
> 
> As Ming mentioned in that same thread, we could even make this policy 
> for managed interrupts.

Ack, I really like this option!

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
