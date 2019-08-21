Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E972F98814
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 01:48:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yxBGeb0ohTQpsMbgwXaobS5J+3nUbnay/9NeAdYP7as=; b=Za7d00e4wzKaw9
	E8Dyvjc3qtbOXxiX5hfzqV0xG9RHlX4E0xHHMZMvfecjvfM91vD5Ljn7BXnk2ouw9ArepXGJ+rexE
	8qiuLjrXVrCVGn+zwJf8Ns3pJiNVZYkZ8CtxPxfGWO5ovXn9UZO0fCH0LgSDRUe15fEDunEPprp+W
	kTbf1cOK6/YQ/vEHRocciGWZZKRxXQ6WBQbiMA/h/pSbU9NbzlOUJx36CwPbFvTPoGpaI52YFZHhp
	lgMqjlKnsBXcWwhreXBmXItbhsl3n96IizkUMn2CXSmoVrJSb1jtH2UxwMwwZllB8S0qpu3Z9ESZT
	tCb86mRk9J+Ld+CUs6Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0aLL-0001oS-PX; Wed, 21 Aug 2019 23:48:43 +0000
Received: from hch by bombadil.infradead.org with local (Exim 4.92 #3 (Red Hat
 Linux)) id 1i0aLI-0001oJ-7a; Wed, 21 Aug 2019 23:48:40 +0000
Date: Wed, 21 Aug 2019 16:48:40 -0700
From: Christoph Hellwig <hch@infradead.org>
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Subject: Re: [PATCH v3] nvme: exclude completion trace from non-multipath
 builds
Message-ID: <20190821234840.GD27887@infradead.org>
References: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <396d507f9a0e312998bd6805b151ab166f53a5be.1566290451.git.mskorzhinskiy@solarflare.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
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
Cc: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 09:35:10AM +0200, Mikhail Skorzhinskii wrote:
> This trace point have no meaning without native multipath support and
> break compilation on configurations without enabled multipath.
> 
> Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
> ---
>  drivers/nvme/host/core.c | 12 ++++--------
>  drivers/nvme/host/nvme.h | 14 ++++++++++++++
>  2 files changed, 18 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 90cfacc44209..40021cfd715a 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -22,14 +22,12 @@
>  #include <linux/pm_qos.h>
>  #include <asm/unaligned.h>
>  
> -#include <trace/events/block.h>
> +#include "nvme.h"
> +#include "fabrics.h"
>  
>  #define CREATE_TRACE_POINTS
>  #include "trace.h"
>  
> -#include "nvme.h"
> -#include "fabrics.h"
> -
>  #define NVME_MINORS		(1U << MINORBITS)
>  
>  unsigned int admin_timeout = 60;
> @@ -263,7 +261,6 @@ static void nvme_retry_req(struct request *req)
>  void nvme_complete_rq(struct request *req)
>  {
>  	blk_status_t status = nvme_error_status(req);
> -	struct nvme_ns *ns = req->q->queuedata;
>  
>  	trace_nvme_complete_rq(req);
>  
> @@ -282,9 +279,8 @@ void nvme_complete_rq(struct request *req)
>  			return;
>  		}
>  	}
> -	if (req->bio && ns && ns->head->disk)
> -		trace_block_bio_complete(ns->head->disk->queue,
> -					 req->bio, status);
> +
> +	nvme_trace_bio_complete(req, status);
>  	blk_mq_end_request(req, status);
>  }
>  EXPORT_SYMBOL_GPL(nvme_complete_rq);
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 3e64f7187e70..dc415183cabd 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -16,6 +16,8 @@
>  #include <linux/fault-inject.h>
>  #include <linux/rcupdate.h>
>  
> +#include <trace/events/block.h>
> +
>  extern unsigned int nvme_io_timeout;
>  #define NVME_IO_TIMEOUT	(nvme_io_timeout * HZ)
>  
> @@ -530,6 +532,15 @@ static inline void nvme_mpath_check_last_path(struct nvme_ns *ns)
>  		kblockd_schedule_work(&head->requeue_work);
>  }
>  
> +static inline void nvme_trace_bio_complete(struct request *req, blk_status_t status)

Please fix the too long line.

> +	struct nvme_ns *ns = req->q->queuedata;
> +
> +	if (req->bio && ns && ns->head->disk)

Can't we just use REQ_NVME_MPATH instead of these three checks?

> +static inline void nvme_trace_bio_complete(struct request *req, blk_status_t status)

Another > 80 char line.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
