Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24893188E0
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 13:24:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1HOadVa352L08M1Fs7vmpQhrZo1/YQwRt2eTnj0CUA=; b=eWj+i4BKhBAYKQ
	dXUuJ10k6HTAmoa6AYhZw8Qb+BiZ3Hps3redpncPVsRYBg77w7jXaBBhvZJMw5zkfSGZdpyE0STUZ
	3AkSIlTBO5VIeI5k3S7qaPlc7NyCDIdVYvEDSD+f6SKIKgjzatUXXN5NCPpeqoTlcuEKRWJCMsjHw
	1FDCFIeXJXOcrgQzTeafW/VqRw0ybNR0UkQVZofylP03Xrha1sl38Ti358u5QjE6mXjIKWgFPvSIg
	asLPRFYkMgg1MtTyJMEDdWbMRFj1lOC1eYIb/jnHpmsOnw0xW6KFO0IM2GM2o902uglroZAbTj5SP
	zT8p7CFz/FiHgafC9dyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOhAA-00051S-DT; Thu, 09 May 2019 11:24:34 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOhA6-000512-4P
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 11:24:31 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 045ED307E05F;
 Thu,  9 May 2019 11:24:25 +0000 (UTC)
Received: from ming.t460p (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A098D643D8;
 Thu,  9 May 2019 11:24:17 +0000 (UTC)
Date: Thu, 9 May 2019 19:24:12 +0800
From: Ming Lei <ming.lei@redhat.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] nvme-pci: fix single segment detection
Message-ID: <20190509112410.GA20711@ming.t460p>
References: <20190509110409.19647-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190509110409.19647-1-hch@lst.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Thu, 09 May 2019 11:24:25 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_042430_257292_6BCCCE2F 
X-CRM114-Status: GOOD (  20.02  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, axboe@fb.com, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, keith.busch@intel.com,
 linux-block@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 01:04:09PM +0200, Christoph Hellwig wrote:
> blk_rq_nr_phys_segments isn't exactly accurate at the request/bio
> level, so work around that fact with a few crude sanity checks.  To
> be fixed for real in the block layer soon.
> 
> Fixes: 297910571f08 ("nvme-pci: optimize mapping single segment requests using SGLs")
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  drivers/nvme/host/pci.c | 10 +++++++++-
>  1 file changed, 9 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 2a8708c9ac18..9a4253be2723 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -824,7 +824,15 @@ static blk_status_t nvme_map_data(struct nvme_dev *dev, struct request *req,
>  	blk_status_t ret = BLK_STS_RESOURCE;
>  	int nr_mapped;
>  
> -	if (blk_rq_nr_phys_segments(req) == 1) {
> +	/*
> +	 * Crude hack to work around the block layer accounting for the fact
> +	 * that the SG mapping can merge multiple physically contigous segments
> +	 * in blk_rq_nr_phys_segments() despite the fact that not everyone is
> +	 * mapping the request to a scatterlist.  To be fixed for real in the
> +	 * block layer eventually..
> +	 */
> +	if (blk_rq_nr_phys_segments(req) == 1 &&
> +	    !req->bio->bi_next && req->bio->bi_vcnt == 1) {
>  		struct bio_vec bv = req_bvec(req);

I'd suggest to fix block layer instead of working around the issue here,
then any driver may benefit from the fix.

Especially checking bio->bi_vcnt is just a hack, and drivers should
never use .bi_vcnt.


Thanks,
Ming

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
