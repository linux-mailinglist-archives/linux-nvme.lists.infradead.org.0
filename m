Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D53165B30
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 18:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=q81U+Jjy8lGRAa6nmhhoHsqNHltD/zVwcp+VwzeeONQ=; b=qEDUHae4gFySQT2N3uW8ZnX9/
	EOKdzExUS/nTGC+eOqHFSu/SvIu+1+KUn7sIbF0IqR5uKrvILvwox/rtQ8EfcDzjoIdMUfkcVGqWR
	5oQ3liZICeihBxB4jX/4snfVhwLL+dZrl4ZF9Jmysg0PSE+PAbhGsEL1fqWyEZJPSTSQT2EJ0nNmW
	Yq3jLHFew3w6abvmoWt4xVmND9pwUvFK/pCu/gvNitF/PNtAPzZDm3BSLE8au7YdSMuBDxC90wv7Y
	NKuakFb/MrcQIeYwUrt+fjNNzKekNLSgYRRbOM77TN529vCP0/qH1XlxYYPSlxpy5S+JWXGfSkxOD
	A1YWL7iDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlbZs-0007P8-R5; Thu, 11 Jul 2019 16:05:48 +0000
Received: from mail-pf1-f195.google.com ([209.85.210.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlbZc-0007OT-UW
 for linux-nvme@lists.infradead.org; Thu, 11 Jul 2019 16:05:34 +0000
Received: by mail-pf1-f195.google.com with SMTP id j2so2971254pfe.6
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 09:05:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=RI6/DS/qiTy15eDy+yvQWjfvyFvaRfh2XuXB/d0/TM8=;
 b=IZH100L3PrxhrYdXzcnnGuLAFMdyFNPf3A7jZ2/TkrvQNlo/woMmPebv8gRoCLcvAe
 s8KBOVP7IjqLhgyHM87sewN7d4177Fo/Rv2W9FdMKgbXEIR39Pg90ahfbbjXFHjFg/Nf
 6dnR/1fUdhTNsICDIbGD7naEnGOOXbBq/fKGylc3b1Ih2kruKTQ7YntJtyilbWgBqW1R
 TEfroZTr4ukvuIuKApwzzV3i2siCWncnz3OIwIjzqJFMJGJ/gUKmbnd+5JRFbXplrncG
 svGPMFaS3EEkP0fu/Q3RUIxzs5/JhIX5g1QgIgNqQB222DGfMqpQB55zSBsdh9BRKcpf
 eP7g==
X-Gm-Message-State: APjAAAUJTbcS+hvRuIj4B3niM4YGV9iDLEN6d7Sm20DgoG7v7pV/uw2y
 46rpV/+j9sDVnXnRpwliFlk=
X-Google-Smtp-Source: APXvYqzptkQZ1v4QjYZ0st7quqtrpoMh7FIsT2hIMYQEpw276bhhMLR2/ui7Q7ZC3anMQRHnXtt9vQ==
X-Received: by 2002:a17:90a:3ac2:: with SMTP id
 b60mr5803417pjc.74.1562861130617; 
 Thu, 11 Jul 2019 09:05:30 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:10a0:43d6:25f7:7bc3?
 ([2601:647:4800:973f:10a0:43d6:25f7:7bc3])
 by smtp.gmail.com with ESMTPSA id y133sm6482763pfb.28.2019.07.11.09.05.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 11 Jul 2019 09:05:29 -0700 (PDT)
Subject: Re: [PATCH] nvme: tcp: depends on CRYPTO_HASH2 for nvme-tcp
To: Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org
References: <20190711151338.16810-1-minwoo.im.dev@gmail.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d67b7a73-0061-202c-457d-93bc4cd06122@grimberg.me>
Date: Thu, 11 Jul 2019 09:05:28 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190711151338.16810-1-minwoo.im.dev@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_090532_981344_2A5AE42D 
X-CRM114-Status: GOOD (  18.39  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.195 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Minwoo,

> The tcp host module is now taking those APIs from crypto ahash:
> 	(1) crypto_ahash_final()
> 	(2) crypto_ahash_digest()
> 	(3) crypto_alloc_ahash()
> 
> nvme-tcp should depends on CRYPTO_HASH2.

It actually should depend on CRYPTO_CRC32C because
it needs CRC32C.

> 
> Cc: Christoph Hellwig <hch@lst.de>
> Cc: Keith Busch <kbusch@kernel.org>
> Cc: Sagi Grimberg <sagi@grimberg.me>
> Cc: Jens Axboe <axboe@fb.com>
> Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
> ---
>   drivers/nvme/host/Kconfig | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/nvme/host/Kconfig b/drivers/nvme/host/Kconfig
> index ec43ac9199e2..711d3ea5143f 100644
> --- a/drivers/nvme/host/Kconfig
> +++ b/drivers/nvme/host/Kconfig
> @@ -63,6 +63,7 @@ config NVME_TCP
>   	tristate "NVM Express over Fabrics TCP host driver"
>   	depends on INET
>   	depends on BLK_DEV_NVME
> +	depends on CRYPTO_HASH2

Lets make it select instead.

>   	select NVME_FABRICS
>   	help
>   	  This provides support for the NVMe over Fabrics protocol using
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
