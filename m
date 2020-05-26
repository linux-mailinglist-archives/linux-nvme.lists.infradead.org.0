Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE81719CCAE
	for <lists+linux-nvme@lfdr.de>; Fri,  3 Apr 2020 00:14:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Vuzi7P5sSGkHZxoUa1bU+5L+qxjIpLar0DXu7VnYFVE=; b=fnZ1h+lx+4EelyFXqxmFKHQKX
	pkZxyQ2vvGesUoIScJIlsRoIovtxKmvNXnLNupvJsEXXKk2hFdHBIkW+z+cJpSdxwBhsmm8x0E3S4
	6Guk/vmTsWRuHbbsKm1Bb7G4E8M3qXrJb00xF8WCjNPaeMvbI64F6Q992LTdoRTz6jhGeyI7Jf6dg
	YKo2d6deMZHLDqAf0ZcRX8t3Iq30UeoeRO94gINgK+Y5wniTEPB/8iYgHuC5MGyLJXUaj0Q8b/B8X
	qxAO/62hiFRjjUweYNEEdn0PGaaJioM9J5TFODoD3uI9gjTS4Ud0cq2ByBysSz3wFNeRa8lUqQIV0
	Jf6CAftiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK86j-0003K0-5y; Thu, 02 Apr 2020 22:14:41 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK86c-0003IR-SZ
 for linux-nvme@lists.infradead.org; Thu, 02 Apr 2020 22:14:38 +0000
Received: by mail-wm1-f66.google.com with SMTP id z7so5103876wmk.1
 for <linux-nvme@lists.infradead.org>; Thu, 02 Apr 2020 15:14:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fPUE5Ux6t1ZmXWbn6Wue8riIBLccyrWYZrJD4d05O54=;
 b=Ni7YKiO43ffDyeI+a5ZO9N9qBAl5bsS0J1U02FTWrV2zsFwGQbT2zzn1RysXM559T7
 KYiUnpcGOFeUZHBlFcnxC3vacSBaFOrRy2NQdg9P5HUyO0NnB+dik0VxG3seVdAz4Xki
 D0qH6tvB3JfqC2KJRHqmF9qKSYbpJu95Mw8DIaP7qgGsUecRDl5vkDWpGBVuPT7rEuou
 qmv8tj9HK7SS3ZvhJAuV4Zx7/volhul6j5QC+ccbrR4t30mbjlnzFCR2CwVqDGCAmaaN
 ZGigX2HLKTM7nib/6iLPLIXVR8ps/a5xvl2SWeR6nFqhkELro2vzjNV0jG12heq0DHNy
 k/cg==
X-Gm-Message-State: AGi0PuZgXo4rJmneX9TLZzzM3bskZ7doEY0B5zxetVeOYb0TQo9ZcS+x
 +m0NGXOrlniybDDehHlvQBR1/yxu
X-Google-Smtp-Source: APiQypI/XnKREPGfpJgJh9NMJG3NsY/n4DXqC18f+gjOyWgDV3yrb3YLGJymAcfZxGyGKJi3hKWQ8A==
X-Received: by 2002:a1c:f213:: with SMTP id s19mr5375822wmc.116.1585865669036; 
 Thu, 02 Apr 2020 15:14:29 -0700 (PDT)
Received: from ?IPv6:2601:647:4802:9070:9069:e334:a021:3782?
 ([2601:647:4802:9070:9069:e334:a021:3782])
 by smtp.gmail.com with ESMTPSA id n2sm9516018wro.25.2020.04.02.15.14.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 Apr 2020 15:14:28 -0700 (PDT)
Subject: Re: [PATCH] nvmet: add revalidation support to bdev and file backed
 namespaces
To: Anthony Iliopoulos <ailiop@suse.com>, Christoph Hellwig <hch@lst.de>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
References: <20200402193052.19935-1-ailiop@suse.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <d6a3bf25-70c1-2501-2e8f-222135ebe9b8@grimberg.me>
Date: Thu, 2 Apr 2020 15:14:25 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Firefox/60.0 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200402193052.19935-1-ailiop@suse.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_151436_957639_66A995E4 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [sagigrim[at]gmail.com]
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
Cc: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> +void nvmet_bdev_ns_revalidate(struct nvmet_ns *ns)
> +{
> +	loff_t size;
> +
> +	size = i_size_read(ns->bdev->bd_inode);
> +
> +	if (ns->size != size)
> +		ns->size = size;

Why is the if useful?

> +}
> +
>   static u16 blk_to_nvme_status(struct nvmet_req *req, blk_status_t blk_sts)
>   {
>   	u16 status = NVME_SC_SUCCESS;
> diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
> index cd5670b83118..c102437db72a 100644
> --- a/drivers/nvme/target/io-cmd-file.c
> +++ b/drivers/nvme/target/io-cmd-file.c
> @@ -80,6 +80,20 @@ int nvmet_file_ns_enable(struct nvmet_ns *ns)
>   	return ret;
>   }
>   
> +void nvmet_file_ns_revalidate(struct nvmet_ns *ns)
> +{
> +	struct kstat stat;
> +
> +	if (!ns->file)
> +		return;

When is !ns->file expected?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
