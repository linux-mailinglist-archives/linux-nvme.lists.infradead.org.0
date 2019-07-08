Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E76A26212B
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 17:10:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JgU7e/24P87THMN4I0NQbvBH4OO2a1bfSHsudZY15Sg=; b=sq3EhshnaW/etgzGs/4FjXr5f
	cO2jrRP3W6uLQHPdNcmiGXdk7icr50nSh+jTGMzQGGgEriEj87kvh+OwbQW24+VuA/tA3oWmFatjX
	5FsQdn+UN7PJcxotARaWxt+hAyiNTLQEUL8kdKaqV6Ba1lmjwYIUuFb11HBVaBlahQZy2rv9JvZYY
	1BJgqxUNxR6iCHgZioz93K/Q1Rh0gPgK5vQTHgbugLoo2FOlXRElE80SDWUDWIvkEpadCI9PNAp9m
	FqSx3DxJdk/a8jmfkY/amiHHDEa2Dsa8e1nVY3sZ81h3beW7/hcYybzf6iYaMpyLhJDW0OU3nF0dg
	rS2rhtY3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkVH9-000206-5F; Mon, 08 Jul 2019 15:09:55 +0000
Received: from mail-pg1-f195.google.com ([209.85.215.195])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkVGw-0001zX-7K
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 15:09:43 +0000
Received: by mail-pg1-f195.google.com with SMTP id g15so7850542pgi.4
 for <linux-nvme@lists.infradead.org>; Mon, 08 Jul 2019 08:09:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HNff2vmCsAV7X5/VJY5XSAxCm9FaqjREWZ5IKKG91kk=;
 b=bQv87n8yFVXOtyUSSNXxXYy1dkppyK3vbbMEDtgVSwO93Wz6IxVSnYkrTx2sWVNRtd
 taM/rJIDml66beYl8nzU95hTAtrnvyXrfV+bm+xmmFRv4QXOrqhfj2zgNrdHj/UNY4z6
 IjA9PEzHLpTq64B+d6d99RI5/V9vhTxeOo0o5337ras6QXf+AfDNtuw99FOekwm89Iuw
 rjNmZhCjgoYRmGKGAPZOwknfA47TfU2pZbxxT8+0/FFQKpugAdWI7jKFne/i1egZ8Oek
 vhDsDEfLW0vruNJn/pb1eOzj8GV1Tdn0CKvF11Px3d0KyQ4lHHKm7qo12892KCf7yMT6
 fsdg==
X-Gm-Message-State: APjAAAWylNxc16g4g4feau2xnBBoEu0A3uHXH6a1wnD4/UHKN61P5jDc
 iquz5rylKdyC7mVk66uik/E=
X-Google-Smtp-Source: APXvYqwh/7/xc+OPfUv7gbfH3u4EJRPyWCe2t8bXWAk5d8jhgQwWA7YsD7ym6o2mamJ1Ri9T0cnYow==
X-Received: by 2002:a65:6406:: with SMTP id a6mr23782499pgv.393.1562598580602; 
 Mon, 08 Jul 2019 08:09:40 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id a15sm14948967pgw.3.2019.07.08.08.09.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 08:09:39 -0700 (PDT)
Subject: Re: [PATCH] nvmet: print a hint while rejecting NSID 0 or 0xffffffff
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
References: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
From: Bart Van Assche <bvanassche@acm.org>
Message-ID: <8bfa9035-ad7c-bdd2-a480-b8d26c597767@acm.org>
Date: Mon, 8 Jul 2019 08:09:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <c3a8458b54fcd189f7a441eb959274937faf8568.1562586068.git.mskorzhinskiy@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_080942_262692_CCFC6338 
X-CRM114-Status: GOOD (  22.93  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.195 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/4/19 1:01 AM, Mikhail Skorzhinskii wrote:
> Adding this hint for the sake of convenience.
> 
> It was spotted that a few times people spent some time before understanding
> what is exactly wrong in configuration process. This should save a few time
> in such situations, especially for people who is not very confident with
> NVMe requirements.
> 
> Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
> ---
>   drivers/nvme/target/configfs.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
> index 08dd5af357f7..cd52b9f15376 100644
> --- a/drivers/nvme/target/configfs.c
> +++ b/drivers/nvme/target/configfs.c
> @@ -588,8 +588,10 @@ static struct config_group *nvmet_ns_make(struct config_group *group,
>   		goto out;
>   
>   	ret = -EINVAL;
> -	if (nsid == 0 || nsid == NVME_NSID_ALL)
> +	if (nsid == 0 || nsid == NVME_NSID_ALL) {
> +		pr_err("invalid nsid %#x", nsid);
>   		goto out;
> +	}
>   
>   	ret = -ENOMEM;
>   	ns = nvmet_ns_alloc(subsys, nsid);

If Linux users want to figure out which code reported an error message 
they sometimes run grep over the Linux kernel source code. Seeing the 
above message makes me wonder whether enough context information is 
provided to allow users to figure out unambiguously which code reported 
the error message? Have you considered to include the function name in 
the error message?

Thanks,

Bart.



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
