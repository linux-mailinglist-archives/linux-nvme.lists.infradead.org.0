Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0C2A1E4F0E
	for <lists+linux-nvme@lfdr.de>; Wed, 27 May 2020 22:18:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=I4LbbKADwRY97h9j4/WhIW3ppw8xomI/BEh1QTDEZ6Q=; b=Utzsm+h4l6YJ9G5AJujyCPWQb
	NK6vAN9cq5/Sbp/fC+fIMdVF0+6svf3q+TPUKqRa08ho3j9fNmGSE4UPtzt8VvlTXdxo8tf5vfgy5
	KldC82ZH7yWgxl/djxeHhWOw6pxhsslTbXzBZxzTKUFYAQTMoIiPW/uswIf8Jr7u9RFAZPIh36UDb
	nkRSOLC7K2LOtsn6JSjk6qdSiMUQBrE/5M9pwKTB7+tU8Welya+pXfnyjEeDwryWfszuYeA3iU4Fp
	XoHE/UBmNpU3YnCgbe9Ap3lllbT7sZTh9IvE5LF7D01ugZR6898qroFRg0aEJqBBp9O5DfyBd9ISx
	jxO1OctIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1je2VR-000450-FA; Wed, 27 May 2020 20:18:29 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1je2VL-00041m-KG
 for linux-nvme@lists.infradead.org; Wed, 27 May 2020 20:18:24 +0000
Received: by mail-pf1-f193.google.com with SMTP id x13so12348692pfn.11
 for <linux-nvme@lists.infradead.org>; Wed, 27 May 2020 13:18:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=5TXLbJm/JLn4M6QqtTDVnxjC5/yrFjlrg76f8VBphHU=;
 b=JSq18wporvwpGMFIDEOYGLfjg6Od6jYQfAGzLkdX+nXNUzbMsNdsjr1TKkbdeCYcaH
 PKGRmJ+C9O2ThMYogWIcSVvoHW6FbAqkyYuYnkNGZGkk/JKgsn+evAMzMvwsshnd0psl
 36BbD1KRrdbrJioxanotLWlGzPCex0sD+G+1moKZ1nxc7y4TcL38p2iZnzvRrqh55gY+
 kt/rNBE5Jng7eApDOgTTIdeOl2iTGcRkbpaXGcXbejzgoR5M/iM9Dnm1uvg9qY1n2FAs
 8cpQN60fByFIdjqnrQyXp2hDAWtex+3Ex7BhhW7ttjLChiJV0sNZMqAy5tfMWLMYSQ0b
 sQ6Q==
X-Gm-Message-State: AOAM530H66Fqp5vO/suv35woXdGEsADCpTNiYQoOBfSSMbZVzUFqO1Lk
 OLzCYAjA5TG4ZQQ/GOw2CFs=
X-Google-Smtp-Source: ABdhPJwfEJ81vPiTeZzTjGl3Rx32Z4IiFoNSdvCHJYZLLcBNbYDBwfcGw8HIVQ2EcgfnVCl5jwOXEQ==
X-Received: by 2002:a63:b513:: with SMTP id y19mr5261807pge.29.1590610702301; 
 Wed, 27 May 2020 13:18:22 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:218a:690b:802f:16a3?
 ([2601:647:4802:9070:218a:690b:802f:16a3])
 by smtp.gmail.com with ESMTPSA id b74sm2663264pga.31.2020.05.27.13.18.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 27 May 2020 13:18:21 -0700 (PDT)
Subject: Re: [PATCH] nvme: cancel requests for real
To: Keith Busch <kbusch@kernel.org>, linux-nvme@lists.infradead.org, hch@lst.de
References: <20200527190913.3461503-1-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <cb108e7e-d386-883c-4d4a-64e517891220@grimberg.me>
Date: Wed, 27 May 2020 13:18:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200527190913.3461503-1-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_131823_686588_A73FF3A3 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: axboe@kernel.dk, alan.adamson@oracle.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> Once the driver decides to cancel requests, the concept of those
> requests timing out should no longer exist. Since we can't stop fake
> timeouts from preventing a forced reclaim, continue completing the same
> request until the block layer isn't told to pretend that didn't happen.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>   drivers/nvme/host/core.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index ba860efd250d..72e5973dda3a 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -310,7 +310,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
>   		return true;
>   
>   	nvme_req(req)->status = NVME_SC_HOST_ABORTED_CMD;
> -	blk_mq_complete_request(req);
> +	while (!blk_mq_complete_request(req));

Maybe add cond_resched in the loop? just to play nice in case something
is wrong?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
