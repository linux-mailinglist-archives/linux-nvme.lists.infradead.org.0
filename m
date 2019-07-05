Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8486A60BCF
	for <lists+linux-nvme@lfdr.de>; Fri,  5 Jul 2019 21:35:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=baUbUs6iSvS4vll01IQSU3jP8RRByQ8RxrNlxfozXN0=; b=VMXdaFJY7tVmrM
	1HoCKCu1mbzg7tBY6fKtPi2BMRGPce+p6o7QEo77IRuuCWW+zdy2W3zSU/yCQ+YuDrMCFJW2ua4qV
	4U1osc3r82r6u1ZlE8ZO3Lx0Wqf4/bw4fTpKcvt17CS4bhVlNvKYcQRFYKhL+rhaNsPwG8G9sLASQ
	M/RnaMx9fl3kjtVVz4dFOR9I7aNrAEblsY+1sK26vVplpD+MbXVBV4k/9xCE0TY19pESNy2l7DEU2
	emNlhfEEda+GoYqPw+iVofUvNTqL6ssxfGvXTBFgQwq70/XMOW6j98DGfkuxwZ2NPA7IM+LrG5V64
	YMbn64LgI0rV0TU7jcTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hjTzZ-0004Bj-14; Fri, 05 Jul 2019 19:35:33 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hjTzQ-0004BB-JV
 for linux-nvme@lists.infradead.org; Fri, 05 Jul 2019 19:35:26 +0000
Received: by mail-pl1-x642.google.com with SMTP id b7so5022710pls.6
 for <linux-nvme@lists.infradead.org>; Fri, 05 Jul 2019 12:35:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=4bSubNqyienkWnWrDMGIEHexMg/cFriBlSA9U4DgJH8=;
 b=Qah/4KC9Glb/RspWVIJ7/PkxkCKwY3ATxv6v83YsyAYpO+THFV1vWDcp3rFQOr1nPy
 Y0kcKJO+0L/irYJd9LC0WFFjclHhNc1q2ayZZ9Dn/btp0hx3wqwJOVPC21Q2tcKZX9T+
 FN6WgRBEkn8AHP5sSoTPzSr+aTdYIIpGgh7QVUEnSm31DJpBWwBEjVrqO3nchL1ll4E0
 90ce7meOqoapV4NTAUs9KxpwdGSJ4z2lzcnSdPjvY6j2aNwkT6vaRj4myuhjGCOZVcLv
 royHls8zxSxLjhFYHM34LRla+3jkuS0M1qWCpwiIeh8u7ePLjNjb512pBx6HNwtJYtSj
 bqMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=4bSubNqyienkWnWrDMGIEHexMg/cFriBlSA9U4DgJH8=;
 b=IvXj3xm16p60fJdpxk0Flr0B0+wm0jfFdY3dJM2qBqA4qkBAf1WtRuqZLMJ/UYKTyO
 B0gcP1M0eN2TLypy5sr+coAO+O4jhmC8OjP1n+JkuuZDRkKew+21MEQOqd8FS/VXgaac
 Jq889V2qYcQqLdS9bCfPeq+LE87oG9SZlR72xgumk0WBd2ouaLA5yoBQ/SI97f1HAQn7
 YrulYsFL8s85kc8mLgJlVqs50oahdrTs92WqCMWHwyBEiO6pbajrJZ/GN+qJCOWxr+SR
 tBAVHcS3iRmoke5EKD0oNGgN3PlRL/faRWC6BqnxHQmUk1aj+mluVRp5wwFLvV90ImI9
 FzWQ==
X-Gm-Message-State: APjAAAU9FL0oiWMS19GtlMB9TLqsif1Up4p2BqWINY7fDgzboX6lvHkI
 rjP1k1ysBwOUFswzwY8KapKwzw==
X-Google-Smtp-Source: APXvYqzyLHdbpM33znlkvuVOmqCw2yyINW1GGFdSFEpFOdg12P1oMSy/NgDAbEVazvLSHgD80xoJ7w==
X-Received: by 2002:a17:902:ab83:: with SMTP id
 f3mr7540538plr.122.1562355323416; 
 Fri, 05 Jul 2019 12:35:23 -0700 (PDT)
Received: from [192.168.1.121] (66.29.164.166.static.utbb.net. [66.29.164.166])
 by smtp.gmail.com with ESMTPSA id t32sm10145274pgk.29.2019.07.05.12.35.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 05 Jul 2019 12:35:22 -0700 (PDT)
Subject: Re: [PATCH] nvme: One function call less in nvme_update_disk_info()
To: Markus Elfring <Markus.Elfring@web.de>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>, Keith Busch <kbusch@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>
References: <38f864df-9c90-31a3-d78d-7aaf2d726e4f@web.de>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <b701a461-4c89-3860-bc99-0662db2382c2@kernel.dk>
Date: Fri, 5 Jul 2019 13:35:19 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <38f864df-9c90-31a3-d78d-7aaf2d726e4f@web.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190705_123524_782663_9D816284 
X-CRM114-Status: GOOD (  17.89  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: kernel-janitors@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 7/5/19 1:15 PM, Markus Elfring wrote:
> From: Markus Elfring <elfring@users.sourceforge.net>
> Date: Fri, 5 Jul 2019 21:08:12 +0200
> 
> Avoid an extra function call by using a ternary operator instead of
> a conditional statement.
> 
> This issue was detected by using the Coccinelle software.
> 
> Signed-off-by: Markus Elfring <elfring@users.sourceforge.net>
> ---
>   drivers/nvme/host/core.c | 5 +----
>   1 file changed, 1 insertion(+), 4 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index b2dd4e391f5c..73888195bdb2 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1650,10 +1650,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
>   	nvme_config_discard(disk, ns);
>   	nvme_config_write_zeroes(disk, ns);
> 
> -	if (id->nsattr & (1 << 0))
> -		set_disk_ro(disk, true);
> -	else
> -		set_disk_ro(disk, false);
> +	set_disk_ro(disk, id->nsattr & (1 << 0) ? true : false);

Let's please not, the original is much more readable.

-- 
Jens Axboe


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
