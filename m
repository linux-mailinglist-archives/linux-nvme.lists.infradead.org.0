Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BDD61CAF
	for <lists+linux-nvme@lfdr.de>; Mon,  8 Jul 2019 12:03:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vrkJ2ovCP2HsVAWi+PZxIbBp86HdujlBkdWQ0bQ2MwU=; b=thS4QemCrTWk+3Fv/7pwyvGIa
	rjaqsMlHeoZSqXBCGi8404nUl1om8wmW/MGDULAKEFX5kH7wKQhkmMxiUm2bSzUEmrynyHJy+VlYu
	A/I8M232qD8bUNLtvHmmtbfrur7yMbEMJvNLIYcP7Bv2DEIAjFjL7NCDJDdHs6AWuiW6//iJwa7K/
	uFnxZ5iIQWN+FE0Oq7duS5dZKrQMtPmLq0ZNtV6pC6xLK4RG/LclDXHWQJCmEm0+y/7tNExzUQNkD
	aqwqYQ+3tUgces7X9CYOEaCV6MoAwR+zSjMYfVZhM5ZKlaOMn8D+8NuIp+EwU892tEAk8IAf241uo
	ebKGpCSmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkQUy-0003xr-Gx; Mon, 08 Jul 2019 10:03:52 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkQUl-0003xY-VB
 for linux-nvme@lists.infradead.org; Mon, 08 Jul 2019 10:03:41 +0000
Received: by mail-pf1-f193.google.com with SMTP id u14so6158873pfn.2
 for <linux-nvme@lists.infradead.org>; Mon, 08 Jul 2019 03:03:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=siVSEJBkDeJscAjBRejPYZYkt1cJpXqJMRtLwyUy/YM=;
 b=YJnpJ1rbPkhhSZbiNpKqFbvaKlpfZR8rb4DZ+nkXPslVhHNCYUM/hYhMXFmkUm21fM
 JHTz1zSTq4jXGJjlUI1tgSc1Chtm4U6NdrM26hIr0r4dqlT6ZAqOJa7MfSmvVDtUC56+
 2RB3y8/2jvP0w9noyiIXB+K2ipnShllNrbwGmceHI7fdJazFeixKeX6/tZfwYxqnYsBW
 0Ml9G0Ulo6zj6q1KzZsrSoAyN6T1+TIIpmake3KbmqvCZAH8q2VsDnD+9p+ahIgLl+pP
 fWqSZxO5KAdvROXck6J9AUmgTmkQI/HTyViwuCYw1iQkjWpilnO157J93Dspy/OW+vkn
 IgCg==
X-Gm-Message-State: APjAAAVhDMU1KTUUo7wLnDJfa2GEdR2ueoSEhzO4PkPB0vGfIEDlZALh
 ph1eEnBLwNGC9gxrqC4Fbe+hm/ei
X-Google-Smtp-Source: APXvYqz/0dVRRqoIYybTWuJrXVv/jAYWYC9HYl/0FX/XR/5L5Ppd2KLNWgn6I0N35M7E+v0Mus8+HQ==
X-Received: by 2002:a17:90a:26ea:: with SMTP id
 m97mr24172898pje.59.1562580219003; 
 Mon, 08 Jul 2019 03:03:39 -0700 (PDT)
Received: from ?IPv6:2601:647:4800:973f:7538:126a:4b71:8c7c?
 ([2601:647:4800:973f:7538:126a:4b71:8c7c])
 by smtp.gmail.com with ESMTPSA id 14sm14754394pgp.37.2019.07.08.03.03.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 08 Jul 2019 03:03:38 -0700 (PDT)
Subject: Re: [PATCH 2/3] nvme-tcp: set the STABLE_WRITES flag when data
 digests are enabled
To: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 linux-nvme@lists.infradead.org
References: <cover.1562234605.git.mskorzhinskiy@solarflare.com>
 <468b110203ae91cdea1bbe84176332472bf206fb.1562234605.git.mskorzhinskiy@solarflare.com>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <126aeb2d-6015-855a-9b7a-27c02ba37186@grimberg.me>
Date: Mon, 8 Jul 2019 03:03:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <468b110203ae91cdea1bbe84176332472bf206fb.1562234605.git.mskorzhinskiy@solarflare.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190708_030340_005267_C33981CD 
X-CRM114-Status: GOOD (  21.14  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
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
Cc: Mike Playle <mplayle@solarflare.com>, Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> There was a few false alarms sighted on target side about wrong data digest
> while performing high throughput load to XFS filesystem shared through
> NVMoF TCP.
> 
> This flag tells[1] the rest of the kernel to ensure that the data buffer
> does not change while the write is in flight. It incurs a performance
> penalty, so only enable it when it is actually needed, i.e. when we are
> calculating data digests.
> 
> Although even with this change in place[2], ext2 users can steel experience
> false positives, as ext2 is not respecting this flag. This may be apply to
> vfat as well.
> 
> References:
> 
> [1] https://lwn.net/Articles/528031/
> [2] https://www.redhat.com/archives/dm-devel/2015-May/msg00158.html

Better not to reference a url in the commit message. You can move
this to under the '---' separator (and don't reference to it, summarize
the explanation instead).

> 
> Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
> Signed-off-by: Mike Playle <mplayle@solarflare.com>
> ---
>   drivers/nvme/host/core.c | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 5417110cbf1b..f4340dc1d399 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -11,6 +11,7 @@
>   #include <linux/hdreg.h>
>   #include <linux/kernel.h>
>   #include <linux/module.h>
> +#include <linux/backing-dev.h>
>   #include <linux/list_sort.h>
>   #include <linux/slab.h>
>   #include <linux/types.h>
> @@ -3304,6 +3305,10 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>   		goto out_free_ns;
>   	}
>   
> +	if (ctrl->opts->data_digest)
> +		ns->queue->backing_dev_info->capabilities
> +			|= BDI_CAP_STABLE_WRITES;
> +

This looks correct, other than the change log.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
