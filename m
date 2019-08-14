Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BC758CEE3
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 10:59:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T2+UofkGjGVFHWN1PUcpnkCJW2T+oQq3PBpPsctA2v0=; b=mGdeu8Jta6Qh1B
	FFQYmFOU2W1UahmwU9uCIQGaZOZCaB6YTxwqgcDHWyNno8OejvlClvOuxR3r/lW30jHn2S4HpKCXv
	qHUJvy3tqv9lLLS+3yrY3kuDHrnHqaG5y/3XNGsUjAZBwwaZWeNGHD5LEdljmLNk/VYFf4/crh0jF
	WhT3gCeUF34H/CFqZIpMPuzBWJJGQBgxirc6BM9lmojYJM2OihNYygruhg8VrbyKcqPDAPemvfA5Q
	aHxsQoiStKfSPr3tlrj8mUV9wB3NWGWRrUOMCuqtcv9fMqLGmqnyNHaFbAB3hLcKaiHcNllwg1eCP
	dSlcZ3E/c4nrzRMfzt/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxp7c-0006pD-7n; Wed, 14 Aug 2019 08:59:08 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxp7S-0006oo-Mu
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 08:59:00 +0000
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 475864E926;
 Wed, 14 Aug 2019 08:58:58 +0000 (UTC)
Received: from ming.t460p (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id AE7A710016F3;
 Wed, 14 Aug 2019 08:58:51 +0000 (UTC)
Date: Wed, 14 Aug 2019 16:58:46 +0800
From: Ming Lei <ming.lei@redhat.com>
To: "Derrick, Jonathan" <jonathan.derrick@intel.com>
Subject: Re: [PATCH V3 1/3] genirq/affinity: Enhance warning check
Message-ID: <20190814085845.GA21802@ming.t460p>
References: <20190813081447.1396-1-ming.lei@redhat.com>
 <20190813081447.1396-2-ming.lei@redhat.com>
 <ac920ba3996d0feedc924045b54724ba5482e427.camel@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ac920ba3996d0feedc924045b54724ba5482e427.camel@intel.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.38]); Wed, 14 Aug 2019 08:58:58 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_015858_779946_23021DF4 
X-CRM114-Status: GOOD (  22.04  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "axboe@kernel.dk" <axboe@kernel.dk>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "kbusch@kernel.org" <kbusch@kernel.org>,
 "tglx@linutronix.de" <tglx@linutronix.de>, "hch@lst.de" <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 13, 2019 at 07:31:39PM +0000, Derrick, Jonathan wrote:
> Hi Ming,
> 
> On Tue, 2019-08-13 at 16:14 +0800, Ming Lei wrote:
> > The two-stage spread is done on same irq vectors, and we just need that
> > either one stage covers all vector, not two stage work together to cover
> > all vectors.
> > 
> > So enhance the warning check to make sure all vectors are spread.
> > 
> > Cc: Christoph Hellwig <hch@lst.de>
> > Cc: Keith Busch <kbusch@kernel.org>
> > Cc: linux-nvme@lists.infradead.org,
> > Cc: Jon Derrick <jonathan.derrick@intel.com>
> > Cc: Jens Axboe <axboe@kernel.dk>
> > Fixes: 6da4b3ab9a6 ("genirq/affinity: Add support for allocating interrupt sets")
> > Signed-off-by: Ming Lei <ming.lei@redhat.com>
> > ---
> >  kernel/irq/affinity.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
> > index 6fef48033f96..265b3076f16b 100644
> > --- a/kernel/irq/affinity.c
> > +++ b/kernel/irq/affinity.c
> > @@ -215,8 +215,7 @@ static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
> >  					       npresmsk, nmsk, masks);
> >  	put_online_cpus();
> >  
> > -	if (nr_present < numvecs)
> > -		WARN_ON(nr_present + nr_others < numvecs);
> > +	WARN_ON(max(nr_present, nr_others) < numvecs);
> 
> I think the patch description assumes the first condition
> "The two-stage spread is done on same irq vectors"
> 
>     /*
>      * Spread on non present CPUs starting from the next vector to be
>      * handled. If the spreading of present CPUs already exhausted the
>      * vector space, assign the non present CPUs to the already spread
>      * out vectors.
>      */
>     if (nr_present >= numvecs)
>             curvec = firstvec;
> 
> But doesn't following condition imply nr_others spread is potentionally
> different vector set?
> 
>     else
>             curvec = firstvec + nr_present;
> 

Most times, __irq_build_affinity_masks() returns numvecs.

However, each stage may expose less CPU number than num_vecs, then less
vectors than 'numvecs' can be spread.

So this patch is actually wrong.


Thank,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
