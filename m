Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB8409EB33
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 16:37:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mt50Qy/U4Q49qO8uMZWyRIlPmDnYcgGdqBDCD55OT2E=; b=ePmjh2QY8xFYtW
	WNxBVThp6471Rtdt/M6BkbEVYIuuhPnYlvc78VA2AO4iZ5BvymfaMm0Sc3/sXo6gRTHZuDndARcdm
	jy/Eh3MMKFezobEqcGKX1ectU4ENksEZeUKcymk5D5oxugdgqsuu4cpr9CnHN2rtnTs2HAShDykGC
	/ldQb/XTo/TFKnbqhM1eOXEN3cRtao7yJ7YqsOqZTyVo2f+4wyV8yz0TZa5YO2Jzmku6FOnmTPy7M
	qY4sBSpNoDHv62GJ/CRYhE2lkBKNsGRM5zVfo2Qm49il/g75zPTGrQxoaq/AubBx+jNfG8yXzi/fM
	Ny4yzfwoMDLSIrFOQLLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2cay-0002yE-5T; Tue, 27 Aug 2019 14:37:16 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2can-0002wk-9Z
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 14:37:08 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 07:37:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; d="scan'208";a="192250328"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 27 Aug 2019 07:37:03 -0700
Date: Tue, 27 Aug 2019 08:35:16 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 4/4] genirq: use irq's affinity for threaded irq with
 IRQF_RESCUE_THREAD
Message-ID: <20190827143516.GB23091@localhost.localdomain>
References: <20190827085344.30799-1-ming.lei@redhat.com>
 <20190827085344.30799-5-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190827085344.30799-5-ming.lei@redhat.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_073705_374947_4F28E57C 
X-CRM114-Status: GOOD (  20.35  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 27, 2019 at 04:53:44PM +0800, Ming Lei wrote:
> In case of IRQF_RESCUE_THREAD, the threaded handler is only used to
> handle interrupt when IRQ flood comes, use irq's affinity for this thread
> so that scheduler may select other not too busy CPUs for handling the
> interrupt.
> 
> Cc: Long Li <longli@microsoft.com>
> Cc: Ingo Molnar <mingo@redhat.com>,
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Jens Axboe <axboe@fb.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: John Garry <john.garry@huawei.com>
> Cc: Thomas Gleixner <tglx@linutronix.de>
> Cc: Hannes Reinecke <hare@suse.com>
> Cc: linux-nvme@lists.infradead.org
> Cc: linux-scsi@vger.kernel.org
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---
>  kernel/irq/manage.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/kernel/irq/manage.c b/kernel/irq/manage.c
> index 1566abbf50e8..03bc041348b7 100644
> --- a/kernel/irq/manage.c
> +++ b/kernel/irq/manage.c
> @@ -968,7 +968,18 @@ irq_thread_check_affinity(struct irq_desc *desc, struct irqaction *action)
>  	if (cpumask_available(desc->irq_common_data.affinity)) {
>  		const struct cpumask *m;
>  
> -		m = irq_data_get_effective_affinity_mask(&desc->irq_data);
> +		/*
> +		 * Managed IRQ's affinity is setup gracefull on MUNA locality,

s/MUNA/NUMA

> +		 * also if IRQF_RESCUE_THREAD is set, interrupt flood has been
> +		 * triggered, so ask scheduler to run the thread on CPUs
> +		 * specified by this interrupt's affinity.
> +		 */
> +		if ((action->flags & IRQF_RESCUE_THREAD) &&
> +				irqd_affinity_is_managed(&desc->irq_data))
> +			m = desc->irq_common_data.affinity;
> +		else
> +			m = irq_data_get_effective_affinity_mask(
> +					&desc->irq_data);
>  		cpumask_copy(mask, m);
>  	} else {
>  		valid = false;
> -- 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
