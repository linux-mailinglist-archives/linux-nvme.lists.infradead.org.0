Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4DDD61CA5
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 11:59:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bTpsHWsoM9qkKgu7MpCrCToUoMFfpudUR9MTkHD86eM=; b=BNfdT6zW/Dq8CRQ4Hk1dMSvWV
	GCVPmzbVgbxDk1FNUVQRRg9HZfe0hniU/Aodi9rYcblGZccI0XDGMSIj3zQ7SsKHhKAFZP/PAQDL+
	OFO77tcxY+rv0NChk6ONAT3GOAXyhNaAMbmjNQSNgwukDezsoQkh9XO2VeBPrpoxC8qE7A+GN8lEq
	oLkCxfoDpv+k9AmBJ8s+U2jbHQYA7481k0OB37gzuLc0ez8qeej6fh0tyWCoCokyoVTH4Mma9zJhw
	mkczuBslrvV1ld3ZCXZQXc7XMhY+HFS5nlJMs1xsEjAm3epxuHac31AWOHGr9XIG59aUMuWp56nhR
	3UOXQVJWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQQb-00008j-LB; Mon, 08 Jul 2019 09:59:21 +0000
Received: from mail-pg1-f193.google.com ([209.85.215.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQQS-00008J-8g
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 09:59:13 +0000
Received: by mail-pg1-f193.google.com with SMTP id g15so7404780pgi.4
 for <linux-nvme@lists.infradead.org>; Mon, 08 Jul 2019 02:59:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=zT8wYLIG158OecmFntg/TUL2NbXB6hCwpwTUlhiXLhM=;
 b=RmK8pXpyYNjhwiLGfuymVd9CkN8OmRifOOJ+k+agDcKvHN9gp/if5Y7oE1wbiLZMse
 XAkRgQmqKw3rM9/bgbENfm0s/c5k8tlzYC8x+lHoiqdvsbMZpf9c1SLgHzD2WRujcyZ2
 1vid1DER8uZ5cXtEmFnEwHG2cMj/SDc0faO5cSE6rpJl40+pl9PX732laLOk2tvmlwFl
 Twwj+rOUBgB5Aj6e1ZZtb8ZViXxWNlw+JglkfV4R52ez20ZHWHuJv5B6i/28FjEXEf5I
 i4Po94oAVSCrByuX5pXkGM7dzspSqdxBx81WtIB/URD7o4aSTx5TB3v3Yh/bLrAeVOP6
 8gMQ==
X-Gm-Message-State: APjAAAUZ7eQuVAcGLF9rYubEn9o4O7og697dckqOTvCeFKsETRmY6jDf
 l216CPD8E9DJkfYlCSs54dY=
X-Google-Smtp-Source: APXvYqy3rkV/iNSKJiQQ7XHfNOwOQXUfj6TOM7YF4HznofN6kvjwe9PYL1/N/cioTTEFhScbOgnAMg==
X-Received: by 2002:a17:90a:26ef:: with SMTP id
 m102mr23770758pje.50.1562579951329; 
 Mon, 08 Jul 2019 02:59:11 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:7538:126a:4b71:8c7c?
 ([2601:647:4800:973f:7538:126a:4b71:8c7c])
 by smtp.gmail.com with ESMTPSA id g18sm21195155pgm.9.2019.07.08.02.59.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 02:59:10 -0700 (PDT)
Subject: Re: [PATCH 1/3] nvmet: print a hint while rejecting NSID 0 or
 0xffffffff
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <cover.1562234605.git.mskorzhinskiy@solarflare.com>
 <8a62f718d2b1b77c548be8009dbcfc9a3f75f7cf.1562234605.git.mskorzhinskiy@solarflare.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <fd654531-d950-8afb-41e0-997c96b1d636@grimberg.me>
Date: Mon, 8 Jul 2019 02:59:09 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <8a62f718d2b1b77c548be8009dbcfc9a3f75f7cf.1562234605.git.mskorzhinskiy@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_025912_313361_D6609635 
X-CRM114-Status: GOOD (  19.23  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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
Cc: Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Please send it as a separate patch not related to the other two...

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
> index 08dd5af357f7..c91cad4f7927 100644
> --- a/drivers/nvme/target/configfs.c
> +++ b/drivers/nvme/target/configfs.c
> @@ -588,8 +588,10 @@ static struct config_group *nvmet_ns_make(struct config_group *group,
>   		goto out;
>   
>   	ret = -EINVAL;
> -	if (nsid == 0 || nsid == NVME_NSID_ALL)
> +	if (nsid == 0 || nsid == NVME_NSID_ALL) {
> +		pr_err("NSIDs 0 and 0xffffffff are invalid NSIDs\n");

Why not?
		pr_err("invalid nsid %#x", nsid);

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
