Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A767E6DBD
	for <lists+linux-nvme@lfdr.de>; Mon, 28 Oct 2019 09:01:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DNyKIVxuiln5bNV1oxCduZCCHGB6IJgBkbTjkNIsRvE=; b=WJSsigphWIlVXI
	yX4e8Ve+CiEXnfs2zOsd/FmnsGLJb05c5KS7kOOsT8CKn9Et+9c2t0AhDvVObS2IUKy+AW9aaPw8p
	mVnGh2oiuwakZdq70JMk9HVnlUbQW+DvQvOVX53E7wOQnBFm76eXCyV6pmEl58t2f+wAyXgwisGTA
	Oh74DYddBJTRoBIW1ChIV+ZG3sNxs0qb62toCzj3K1Qm6KpbnnIUzzLDU5/TlK+d1mNe/8lt4gYWL
	QcHwOyL5Mv6/8WRFd9mDzFtjIdLPUskGtUppHdDpWZd5VkP4Szm2e4DKA8HjN12w4u4i3lVv/DDYl
	xJ2uTC3E9wwi+XE8ZbIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzyD-0007ka-6k; Mon, 28 Oct 2019 08:01:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzy8-0007jc-3F
 for linux-nvme@lists.infradead.org; Mon, 28 Oct 2019 08:01:41 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 801AD20862;
 Mon, 28 Oct 2019 08:01:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572249699;
 bh=oxmYzExv2Lw7dB4rBFS6qs8hRtgJsq3AiYVSvJ6WsDU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=UZdwOPC7r0CX4AZ8CEirdWWhDSjVZAe5o/n+mEW5jAw6jUeoQc4z++cqPdi5TxvkZ
 /PNMPGIWbC5srqyYlrLrqZsz3m5ZWjUPK0Tc9awiIqTlJjjhX6MhaUpeRqW1v5vFDH
 HwY2M6QUMRKZInKUxCw96j0ZsKgJQ8WhVLMkLH5U=
Date: Mon, 28 Oct 2019 17:01:33 +0900
From: Keith Busch <kbusch@kernel.org>
To: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Subject: Re: [PATCH] nvmet: introduce use_vfs ns-attr
Message-ID: <20191028080133.GA1718@redsun51.ssa.fujisawa.hgst.com>
References: <20191023201715.4236-1-chaitanya.kulkarni@wdc.com>
 <20191024020003.GA2148@redsun51.ssa.fujisawa.hgst.com>
 <FA6B6A9F-649B-4B58-99D0-2D09076E2482@onestopsystems.com>
 <20191025040540.GA19941@redsun51.ssa.fujisawa.hgst.com>
 <20191025042658.GB19941@redsun51.ssa.fujisawa.hgst.com>
 <109617B2-CC73-4CDE-B97A-FDDB12CD22BD@onestopsystems.com>
 <20191027150330.GA5843@lst.de>
 <20191028005517.GA6693@redsun51.ssa.fujisawa.hgst.com>
 <BYAPR04MB57491F5ED34EEE047D86C2D186660@BYAPR04MB5749.namprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <BYAPR04MB57491F5ED34EEE047D86C2D186660@BYAPR04MB5749.namprd04.prod.outlook.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_010140_158787_BDCEA702 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Ruijter <MRuijter@onestopsystems.com>, Hannes Reinecke <hare@suse.com>,
 "hch@lst.de" <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 "sagi@grimberg.me" <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 28, 2019 at 07:32:45AM +0000, Chaitanya Kulkarni wrote:
> diff --git a/drivers/nvme/target/io-cmd-bdev.c 
> b/drivers/nvme/target/io-cmd-bdev.c
> index ed1a8d0..07e4f8c 100644
> --- a/drivers/nvme/target/io-cmd-bdev.c
> +++ b/drivers/nvme/target/io-cmd-bdev.c
> @@ -204,9 +204,9 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
>                  sector += sg->length >> 9;
>                  sg_cnt--;
>          }
> -       blk_finish_plug(&plug);
> 
>          submit_bio(bio);
> +       blk_finish_plug(&plug);
>   }
> 
>   static void nvmet_bdev_execute_flush(struct nvmet_req *req)
> 
>    write: IOPS=123k, BW=479MiB/s (502MB/s)(14.0GiB/30009msec)
>    write: IOPS=123k, BW=480MiB/s (504MB/s)(14.1GiB/30002msec)
>      slat (usec): min=8, max=8778, avg=13.29, stdev= 5.70
>      slat (usec): min=8, max=315, avg=13.28, stdev= 3.38
>      clat (usec): min=44, max=9790, avg=246.21, stdev=167.10
>      clat (usec): min=27, max=10883, avg=245.59, stdev=164.19
> 
> 
> Still need to look into the code to make sure above change make sense.

The block plug code change definitely makes sense. I don't think there's a
better place to plug without a more invasive change, so let's use this. I
don't immediately understand why it measures this much of a difference for
this workload, though.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
