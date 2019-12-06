Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABB13115955
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 23:31:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n8mta/q/x0R4g4K8m4s08GfQTSZaLin4RIVLLp/eUOs=; b=MgbpojhShcCDvMnPjLmeyXLwx
	kW9ziZktaZtfcjZsNcpiIRU58uO2wcoEIpHh8Ba/0BWPKOcT6omI+eakedZ2VpiyEWa1JFzQ9mOX+
	8+GgMmWv5fWdbPkeaIZA0OECZxPJpZtCFQFQ2w5cIKVUUbixfuFa9gFDaq8DrkIuUfdXT0eXPOa0g
	jCkiFY/kJuXYK2oEmQco5uG8JMo63kKHM2HmC+EDNjZFuLXw6xXhocDAfGczTLnD/peNTWd7htbk0
	W5GcuffSwslUb53LOJSiT0CkMLczwiKVkau44U3+Lk5gcUHZfj+QPORHViOdaEK1oB0FHG7zOP+K3
	LA0ciJVwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idM8L-0008WV-2k; Fri, 06 Dec 2019 22:31:33 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idM8G-0008WB-NR
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 22:31:30 +0000
Received: by mail-oi1-f196.google.com with SMTP id v10so1202694oiv.12
 for <linux-nvme@lists.infradead.org>; Fri, 06 Dec 2019 14:31:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=FlpZEQ573y+mrGSLzaFFfTMQOyXMdMbo0zz+8CUg/NQ=;
 b=YPKlKLQuMNTu0jHqxbE2Yj/kC/3Zi1nYCgFrJS3rnjQgnui1p58OXt6A/l5Wi7tFFH
 uhnvXJ0382ontOON4AVqAqbVHDTWcu4qff2NNTVWrNCJ/qRO34+jJsPYmaHavyF9YsZl
 vJyry5zCk4bMy8jzeYiMUd6gJFglQX2UOCph87swcXhvXdNTGf9ctROAfv2i8nGJfequ
 xvNyGAuMzZ/3BibA5DKJPPapqwBfNaCMiqjlj11PcV+Ndbn0+msixfY9UvBjB2FkHbRT
 PMpg/Rvfsn+K3ESwFcEIXWhkhJcJhyI7OnslrlJXi6bBK2dYT8zPhVVjkgAxfhorKT85
 SCvg==
X-Gm-Message-State: APjAAAVQLgUhuSjaB/nP+fNIoOQPUdDDb+UammTf21jFafnhPBa49iIA
 1224G4CC2VFlcyNbuQ+Q5l2OwYUY
X-Google-Smtp-Source: APXvYqzl/Gj8XjJ+U4jJMLhc1KJGsqgoXNLwc7uSqOtk+LXYybCTlEFC4FlFsKUlqGEA2gKzaGvQIA==
X-Received: by 2002:aca:a811:: with SMTP id r17mr14718567oie.59.1575671487034; 
 Fri, 06 Dec 2019 14:31:27 -0800 (PST)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id j23sm5344559oij.56.2019.12.06.14.31.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 06 Dec 2019 14:31:26 -0800 (PST)
Subject: Re: [PATCH] nvmet: fix null-pointer when removing a referral
To: Talker Alex <alextalker@yandex.ru>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
References: <34086421575664793@iva7-8a22bc446c12.qloud-c.yandex.net>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <c797a78a-c9d4-266a-e0ec-bc0baf86e379@grimberg.me>
Date: Fri, 6 Dec 2019 14:31:20 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <34086421575664793@iva7-8a22bc446c12.qloud-c.yandex.net>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_143128_762906_3DA9D7C2 
X-CRM114-Status: GOOD (  22.42  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> nvmet_referral_release() was called after item->ci_parent
> and item->ci_group were set to NULL by configfs internals.
> This caused oops on older kernels and possibly on the mainline too.
> 
> Tested on CentOS 7.7 (kernel 3.10) and Ubuntu 18.04.3 (kernel 4.15)
> by means of MLNX OFED sources.

No need to mention irrelevant distro you tested.

The below section should not exist in the change-log, so you can place
it under the "---" separator.

> 
> This patch is mainly wanted in Mellanox OFED as in-tree nvmet.ko for
> mentioned kernel behaves proper as the bug was introduced about
> a year ago.
> 
> I haven't found information about bug-reporting into the Mellanox OFED
> but after taking a look in the mainline I thought that it might need
> this patch too.
> 
> I have never before sent a kernel patch so
> feel free to tell me if I did something improper.
> 
> Signed-off-by: Aleksandr Diadiushkin <alextalker@ya.ru>
> ---
>   drivers/nvme/target/configfs.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
> index 98613a45bd3b..00f30ab40e69 100644
> --- a/drivers/nvme/target/configfs.c
> +++ b/drivers/nvme/target/configfs.c
> @@ -970,17 +970,19 @@ static struct configfs_attribute *nvmet_referral_attrs[] = {
>   	NULL,
>   };
>   
> -static void nvmet_referral_release(struct config_item *item)
> +static void nvmet_referral_release(struct config_group *group,
> +		struct config_item *item)
>   {
> -	struct nvmet_port *parent = to_nvmet_port(item->ci_parent->ci_parent);
> +	struct nvmet_port *parent = to_nvmet_port(group->cg_item.ci_parent);
>   	struct nvmet_port *port = to_nvmet_port(item);
>   
>   	nvmet_referral_disable(parent, port);
>   	kfree(port);
> +
> +	config_item_put(item);
>   }
>   
>   static struct configfs_item_operations nvmet_referral_item_ops = {
> -	.release	= nvmet_referral_release,
>   };
>   
>   static const struct config_item_type nvmet_referral_type = {
> @@ -1006,6 +1008,7 @@ static struct config_group *nvmet_referral_make(
>   
>   static struct configfs_group_operations nvmet_referral_group_ops = {
>   	.make_group		= nvmet_referral_make,
> +	.drop_item		= nvmet_referral_release,
>   };
>   
>   static const struct config_item_type nvmet_referrals_type = {
> 

Looks good,

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
