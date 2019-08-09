Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A100386EA6
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 02:01:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=po/rA9fmDk6uYT3AYc7B7WMBx8+Z8fdGswTWlINSDHE=; b=IGdKx/ZfuaI4zo3uytC+OdAB+
	y26BZl8sXWUBfKvthuRHcc20uGCAsdQ+pCWA5sOMQCWgF5NGQxJqDZ164BRPAQOoh55f/El+8qbxF
	GkA71y+q7oRe0SPIOrQTWHgKsukjDwCXm/FoKvExeUoCdeJUOnTCmfP8p8Aq40lZfmXaeDmvp2p1y
	w4e69VB3Ux31U22qb2WSEAMW/pMOZbvQDaUaS5mG/lxRuqLT56pdiI7RZKxPNy/rGez34Geoo9io/
	8ZcP9Sm8Kys2lwszwBbzoMhnSJcsIyDvCngJA/5XbD3p+nsWwG3vO8SNX/ZG/lPtALQIsXKnD7O7t
	QZaEKmlEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvsL4-0005fU-Aq; Fri, 09 Aug 2019 00:00:58 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvsKz-0005fB-Nw
 for linux-nvme@lists.infradead.org; Fri, 09 Aug 2019 00:00:54 +0000
Received: by mail-ot1-f65.google.com with SMTP id j19so49212724otq.2
 for <linux-nvme@lists.infradead.org>; Thu, 08 Aug 2019 17:00:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=To7lp4nO4KYBp0T9knEgNzVApC5WBg6ghS/p4Kjswyg=;
 b=q29cjjcpUUjFQXB7tbDMehLvRkreup/Eikb8Rie+vLLLHSwwtypPXRkSGxqtvwcxu6
 zhtWZqLfBOjapT20AhrVUepoASw/64XdBlmsm8kjBVvGVkd1YLdnmVmVciTQwFBsKFyW
 ArqOD9NdL9784yHoOn9b1TixslNnPxwzN9IKeEzqLF6xATPIb7TEw6sdNEB+it+7SmcM
 ri0p3Y6IXv+e9RJ1ZjTLClrPg8ZVy9cvprfPQmYPx5dF4/O2FDLdNNDlgGvJ16b2KfWP
 t1u5VqOmGiiezSzfmjKTTjpjf17+9wg78thvYXxzCrWVyWPcZ/2qkhwSHZtOlO5TUIsa
 kB4A==
X-Gm-Message-State: APjAAAWOeuHDxIwX5qiHAnO9IbpLMr3OYCqW17orR/Dyta153L1vmTk2
 jYGiZXeI7WR0DfYhfv/kXIyqrSxh
X-Google-Smtp-Source: APXvYqxI98DlKM5XV+oGnmzRgEXoq5990yyhBX4FDHky9PTQffUL8hND8pcjF9S2UzP+7j5Em8QDtg==
X-Received: by 2002:aca:c5d0:: with SMTP id v199mr4073209oif.144.1565308852723; 
 Thu, 08 Aug 2019 17:00:52 -0700 (PDT)
Received: from [192.168.1.114]
 (162-195-240-247.lightspeed.sntcca.sbcglobal.net. [162.195.240.247])
 by smtp.gmail.com with ESMTPSA id 94sm32978283otl.62.2019.08.08.17.00.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 08 Aug 2019 17:00:52 -0700 (PDT)
Subject: Re: [PATCH] nvme: exclude completion trace from non-multipath builds
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <9efc495c41b7bf050362a3a7eb64b5809092afd6.1565280170.git.mskorzhinskiy@solarflare.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <1febf497-e92e-6acd-1968-50ae7735ec79@grimberg.me>
Date: Thu, 8 Aug 2019 17:00:41 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <9efc495c41b7bf050362a3a7eb64b5809092afd6.1565280170.git.mskorzhinskiy@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_170053_783823_FF41A5DF 
X-CRM114-Status: GOOD (  18.62  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 8/8/19 8:35 AM, Mikhail Skorzhinskii wrote:
> This trace point have no meaning without native multipath support and
> break compilation on configurations without enabled multipath.
> 
> Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
> ---
>   drivers/nvme/host/core.c | 19 +++++++++++++++----
>   1 file changed, 15 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 6956041224ec..9fd4397ff158 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -260,10 +260,20 @@ static void nvme_retry_req(struct request *req)
>   	blk_mq_delay_kick_requeue_list(req->q, delay);
>   }
>   
> +#ifdef CONFIG_NVME_MULTIPATH
> +static void nvme_trace_compl(struct request *req, blk_status_t status)
> +{
> +	struct nvme_ns *ns = req->q->queuedata;
> +
> +	if (req->bio && ns && ns->head->disk)
> +		trace_block_bio_complete(ns->head->disk->queue,
> +					 req->bio, status);
> +}
> +#endif
> +
>   void nvme_complete_rq(struct request *req)
>   {
>   	blk_status_t status = nvme_error_status(req);
> -	struct nvme_ns *ns = req->q->queuedata;
>   
>   	trace_nvme_complete_rq(req);
>   
> @@ -282,9 +292,10 @@ void nvme_complete_rq(struct request *req)
>   			return;
>   		}
>   	}
> -	if (req->bio && ns && ns->head->disk)
> -		trace_block_bio_complete(ns->head->disk->queue,
> -					 req->bio, status);
> +
> +#ifdef CONFIG_NVME_MULTIPATH
> +	nvme_trace_compl(req, status);
> +#endif

The call should not condition on CONFIG_NVME_MULTIPATH, but the function
implementation should be left empty if CONFIG_NVME_MULTIPATH is not
enabled (see nvme.h).

Also, lets call it nvme_trace_bio_complete..

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
