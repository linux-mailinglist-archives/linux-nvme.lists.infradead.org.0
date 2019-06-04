Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DC635029
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 21:12:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s2vG6H2FrrIJUJcJcthBa2jwpKm1shpErU/q5/Yw0/g=; b=sw7q0xLPuVn1O0
	2CUTJEt7odXP0M5+iJVjST18+cYCG9tEKGSWxRmqZsnj2dC29BssB1mipbaPHIJFxpizv9HP7jOag
	4ShS6QJx3PuAffmj3bzQyYJWyogF+SZiUe4AJ2n8oLad2GDuk0VtE4hzCH/eqYckotP5gXpTx1aVU
	hG49qVKXmWa3go0+Vwqb+uCQCiKpzeUMFHBKoL/cW7GUAm10pSvsoOZ212VevP1t3Iqt1l9EndmbS
	tVDtsvep36dSzpg8daJS8kngtsO4nmqvwne2Q8uyou9gcXiWsl/DuYmAzCNgeEL1ySmFEKo3krg3w
	DycMIeGBlhTp5lTRCHpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYEqo-000407-Oq; Tue, 04 Jun 2019 19:12:02 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYEqk-0003zo-II
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 19:11:59 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id E557568B05; Tue,  4 Jun 2019 21:11:31 +0200 (CEST)
Date: Tue, 4 Jun 2019 21:11:31 +0200
From: Christoph Hellwig <hch@lst.de>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [Suspected-Phishing]Re: [PATCH] Revert "nvme-rdma: remove
 redundant reference between ib_device and tagset"
Message-ID: <20190604191131.GC28398@lst.de>
References: <20190603231159.17034-1-sagi@grimberg.me>
 <b98d3c8f-85ee-06f2-b47a-a3e04261c0d1@grimberg.me>
 <F4E18075-01AA-443B-BF43-23A4BA80C10C@intel.com>
 <d2a20c0f-092d-28ca-3365-1fb5df2cb816@mellanox.com>
 <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b4a79dfe-ffc8-0571-9f54-cf5b98c21500@mellanox.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_121158_754804_759A17C6 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, "Harris, James R" <james.r.harris@intel.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

So this basically means we can't keep dma mappings around, which
is a bit unfortunate.  Can you also write a real changelog explaining
the reasoning behind it, which isn't quite obvious to me?

Nitpicks below:

> +static void nvme_rdma_unmap_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
> +			       size_t capsule_size, enum dma_data_direction dir)
>  {
>  	ib_dma_unmap_single(ibdev, qe->dma, capsule_size, dir);
> +}
> +
> +static int nvme_rdma_map_qe(struct ib_device *ibdev, struct nvme_rdma_qe *qe,
> +			    size_t capsule_size, enum dma_data_direction dir)
> +{
> +	qe->dma = ib_dma_map_single(ibdev, qe->data, capsule_size, dir);
> +	return ib_dma_mapping_error(ibdev, qe->dma);
> +}
> +
> +static void nvme_rdma_free_qe(struct nvme_rdma_qe *qe)
> +{
>  	kfree(qe->data);
>  }

All these helpers are pretty pointless now, and we might as well just
open code them.

> +static void nvme_rdma_free_mapped_qe(struct ib_device *ibdev,
> +				     struct nvme_rdma_qe *qe,
> +				     size_t capsule_size,
> +				     enum dma_data_direction dir)

Can you use normal two tabs indents for your new functions?

>  
>  	ctrl->max_fr_pages = nvme_rdma_get_max_fr_pages(ctrl->device->dev);
>  
> -	error = nvme_rdma_alloc_qe(ctrl->device->dev, &ctrl->async_event_sqe,
> -			sizeof(struct nvme_command), DMA_TO_DEVICE);
> +	error = nvme_rdma_alloc_mapped_qe(ctrl->device->dev,
> +					  &ctrl->async_event_sqe,
> +					  sizeof(struct nvme_command),
> +					  DMA_TO_DEVICE);

So.. If keeping SQEs mapped is not fine, why is keeping the AEN SQE
around fine?

> +		if (err == -ENOMEM || err == -EAGAIN)
> +			ret = BLK_STS_RESOURCE;
> +		else
> +			ret = BLK_STS_IOERR;
> +		goto unmap_qe;
>  	}
>  
>  	sqe->cqe.done = nvme_rdma_send_done;
> @@ -1735,14 +1781,20 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
>  			req->mr ? &req->reg_wr.wr : NULL);
>  	if (unlikely(err)) {
>  		nvme_rdma_unmap_data(queue, rq);
> -		goto err;
> +		if (err == -ENOMEM || err == -EAGAIN)
> +			ret = BLK_STS_RESOURCE;
> +		else
> +			ret = BLK_STS_IOERR;
> +		goto unmap_qe;

It would be nice to keep the status mapping in a single place behind
the goto label.

> +out:
> +	return ret;

No real need for the label here, you could just return directly.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
