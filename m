Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8E6703C1
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 17:27:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=i99deuR3nVW1KzVa2ZNg949xoUZ6jfukN64GlANSqmE=; b=HETCuvo3eL/viRvewEYd3WdxG
	/wrSIe7/skLorOy9DmDRqeESSNdwLwaHeGZbXuSjnJRM+Pi2Pwrj5n3I7BarwKrbu2E3EmRXOMLaa
	6ubJevcttc5dQSxucn62C+PqPrsrO4IkMztbQscfK6GzFm3dHP1nO9g0bDEZQW/hc2P8Nytry+LSl
	1PX2aiHjRxSbh+CLqsWRGjWgpq79AVebTbf1U2MoZCBkbC2kUyWZHUFqK+i8a7ev0gIVxGm1NZqSc
	rJKa8DCbqEwGFKmGLXXEEAW3B50c+YzJwcVUbZHSX3PwEFhJ4ZFVk7KunKkstnYpCEED7l+ZNNCOM
	Sig11vsSg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpaEA-0002yD-5G; Mon, 22 Jul 2019 15:27:50 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpaDv-0002nF-35
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 15:27:36 +0000
Received: by mail-pg1-f195.google.com with SMTP id f25so17812549pgv.10
 for <linux-nvme@lists.infradead.org>; Mon, 22 Jul 2019 08:27:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=bJ+hIj4Y9QJhpTQc3+TpDT68ao/BoySPbCAzPxaem4o=;
 b=bI2IJHougx9A4ksY1Y0W0+QQuYAictWUagtVc1kGT5MNC2aG0uIPGqf/AKGI3Y+C6H
 9S2SrwPFMcEBJweJFNO+E3zWv69IMUmOcSfMLg82wYOCJsGQ73qQkBQajNG/mdOjAfDJ
 +X2pwtAkFKJ6bDBVY1Bc7RmwT5EG95RZfFVGZiHc9ILGWZiux6o/sCv6l3GYB3N+Gj+G
 6v4P0rV6mVp3J+3KNmtXRyEscCCj6hs9jUb9YzvoAFPSIE2k/cM0KxUHPY4/+1NwVB1A
 IP3G7WWhBcCmxTSexuP0Zsnt+dZZ69UsuVi1+998jPIoOXpZOqY8TtFjxpGHAysGugz3
 weOA==
X-Gm-Message-State: APjAAAUs7j/76RHCgTxu+DUqIy4dWY08PqoCSQyFprMgsGcOC4XLPywW
 hIUjk/SRqxpJSrceowtwtUw=
X-Google-Smtp-Source: APXvYqwaIPITBAqkMMf1XkJ0whlJ7sj6/TsqWVn+Y5F9jvgoKFHYxsdpNaSCwxP/G5hk4jKNKfoinw==
X-Received: by 2002:a63:d301:: with SMTP id b1mr64649702pgg.379.1563809254163; 
 Mon, 22 Jul 2019 08:27:34 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id 135sm39308543pfb.137.2019.07.22.08.27.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 22 Jul 2019 08:27:33 -0700 (PDT)
Subject: Re: [PATCH 3/5] nvme: don't abort completed request in
 nvme_cancel_request
To: Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@kernel.dk>
References: <20190722053954.25423-1-ming.lei@redhat.com>
 <20190722053954.25423-4-ming.lei@redhat.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <d82ead02-c893-4d14-307e-70a6d4596439@acm.org>
Date: Mon, 22 Jul 2019 08:27:32 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190722053954.25423-4-ming.lei@redhat.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_082735_142088_654EA150 
X-CRM114-Status: GOOD (  19.01  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: linux-block@vger.kernel.org, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/21/19 10:39 PM, Ming Lei wrote:
> Before aborting in-flight requests, all IO queues have been shutdown.
> However, request's completion fn may not be done yet because it may
> be scheduled to run via IPI.
> 
> So don't abort one request if it is marked as completed, otherwise
> we may abort one normal completed request.
> 
> Cc: Max Gurtovoy <maxg@mellanox.com>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Keith Busch <keith.busch@intel.com>
> Cc: Christoph Hellwig <hch@lst.de>
> Signed-off-by: Ming Lei <ming.lei@redhat.com>
> ---
>   drivers/nvme/host/core.c | 4 ++++
>   1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index cc09b81fc7f4..cb8007cce4d1 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -285,6 +285,10 @@ EXPORT_SYMBOL_GPL(nvme_complete_rq);
>   
>   bool nvme_cancel_request(struct request *req, void *data, bool reserved)
>   {
> +	/* don't abort one completed request */
> +	if (blk_mq_request_completed(req))
> +		return;
> +
>   	dev_dbg_ratelimited(((struct nvme_ctrl *) data)->device,
>   				"Cancelling I/O %d", req->tag);

Something I probably already asked before: what prevents that 
nvme_cancel_request() is executed concurrently with the completion 
handler of the same request?

Thanks,

Bart.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
