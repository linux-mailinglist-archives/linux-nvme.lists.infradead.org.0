Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9821C69DC
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 09:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dwGDtWwIzB5bDNGs5i9eLB25RD2F4dkCa+BQ/1CV2wA=; b=UsSN24SrrClt20
	8iec/KtGxWTBEuazBUEeTxMNeRCUeVYgsiU640STV2c1Ln79WJe2QxB5Dj4bktUbVORJYOIA5KH5O
	GRwGqkJB3IHOw6h7p1Equ+u7t2BuGaTilID9ophRgw/UFmso6BQOVMAx/SGghqrqeQ5xkGRQLjFyC
	w00PD/8eiQPxVjUKcnt8ijhVCoD2WmdzYCppAoYGh6/1/tK2LJj6kRH79TKe9fkkILR6m9Lm+wlSy
	PbmnT34tYa4vdTfSJnTFl9XNZngPvvsZfSZofjwp/hKWKUtWCwxY5yHhLp5MOr+PapvFrnX0juCOL
	Mac3l0LWNEi/6rU2ejCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEGA-0004L4-QH; Wed, 06 May 2020 07:14:26 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEG5-0004KS-FS
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 07:14:23 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id A1F9868C4E; Wed,  6 May 2020 09:14:19 +0200 (CEST)
Date: Wed, 6 May 2020 09:14:19 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 3/3] nvmet: add async event tracing support
Message-ID: <20200506071419.GC12145@lst.de>
References: <20200506014629.39509-1-chaitanya.kulkarni@wdc.com>
 <20200506014629.39509-4-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506014629.39509-4-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_001422_164475_34258581 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 06:46:29PM -0700, Chaitanya Kulkarni wrote:
> diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
> index 219bcf21d4bf..d4f11078a578 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -151,6 +151,8 @@ static void nvmet_async_events_process(struct nvmet_ctrl *ctrl, u16 status)
>  		kfree(aen);
>  
>  		mutex_unlock(&ctrl->lock);
> +		trace_nvmet_async_event(ctrl,
> +				(req->cqe->result.u32 & 0xff00) >> 8);

Can you move the extraction into trace_nvmet_async_event so that it
isn't executed when tracing isn't enabled?

Otherwise this looks fine.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
