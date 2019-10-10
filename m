Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B682ED26E7
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 12:06:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ta+beqva1B967O1KJzi5cw44beVUehf200/5XlPaogw=; b=sMeBTNpgvmY7ao
	YQNYUDcG+PYw3be0PJk3PSj57txPd2mNR2f1wLodzA5GqwnHc9f2DYzs98Q+IN36ssCLgz3/jXZX/
	8QjVTMIlFKGE+s/ODo+isG8A6/R/oxVDtRuuIlaRo1Eej1H0RFCUEnwJHgx8GG6KCFGmr76P6SgXe
	LQoMbIfqmydu1KtxIX/6ve468LozunEdfBNVL7icIzmwPYjUYEMNuz+iVtnYG5UFBYemS5fU+v8ob
	oOrM9KEG7DJ8lLMOfPgoETYvkDVsXlN3PavVFqnBaOq1u3X9m6hMRVS4w5DwSyjX1rkopzgThe06U
	PwefsyBjRlgdaBiDERkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIVKJ-0006CQ-RG; Thu, 10 Oct 2019 10:05:43 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIVKF-0006AI-2c
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 10:05:40 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id DE1A268C65; Thu, 10 Oct 2019 12:05:26 +0200 (CEST)
Date: Thu, 10 Oct 2019 12:05:26 +0200
From: Christoph Hellwig <hch@lst.de>
To: Logan Gunthorpe <logang@deltatee.com>
Subject: Re: [PATCH v9 10/12] block: don't check blk_rq_is_passthrough() in
 blk_do_io_stat()
Message-ID: <20191010100526.GA27209@lst.de>
References: <20191009192530.13079-1-logang@deltatee.com>
 <20191009192530.13079-12-logang@deltatee.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191009192530.13079-12-logang@deltatee.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_030539_265935_1BE127B3 
X-CRM114-Status: GOOD (  10.08  )
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Stephen Bates <sbates@raithlin.com>,
 linux-block@vger.kernel.org, Keith Busch <kbusch@kernel.org>,
 linux-fsdevel@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

> @@ -319,7 +319,7 @@ static struct request *blk_mq_rq_ctx_init(struct blk_mq_alloc_data *data,
>  	rq->cmd_flags = op;
>  	if (data->flags & BLK_MQ_REQ_PREEMPT)
>  		rq->rq_flags |= RQF_PREEMPT;
> -	if (blk_queue_io_stat(data->q))
> +	if (blk_queue_io_stat(data->q) && !blk_rq_is_passthrough(rq))
>  		rq->rq_flags |= RQF_IO_STAT;

This needs a comment why we don't account passthrough requests by
default.  And I'm really curious about the answer, because I don't
know it myself.

>   *	a) it's attached to a gendisk, and
>   *	b) the queue had IO stats enabled when this request was started, and
> - *	c) it's a file system request
> + *	c) it's a file system request (RQF_IO_STAT will not be set otherwise)

c) should just go away now based on your changes.

>  static inline bool blk_do_io_stat(struct request *rq)
>  {
>  	return rq->rq_disk &&
> -	       (rq->rq_flags & RQF_IO_STAT) &&
> -		!blk_rq_is_passthrough(rq);
> +	       (rq->rq_flags & RQF_IO_STAT);

The check can be collapsed onto a single line now.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
