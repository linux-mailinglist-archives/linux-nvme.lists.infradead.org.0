Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 926D0A7492
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Sep 2019 22:23:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=GQoObXYCOj8nR01Hh0SBQ0qHNh0W8ZqauWZzH9SZ6dg=; b=Q4tP30e+ooZyLgfwEcJ4Wm7iW
	92SGU5KPrvuw2q0FXX/KWE0MpJCgVLDA+JZ1PDtEMglZMwtUf9XtUHwCUZGI3FOWvJ9HtX9/MlEBg
	1NOQuoNlo5S00Vzv32k0KPxkp4oOUrhxx+Avz8Qws32KmqR/LSFRHrI5K6Cm5wwEtbkErcleyMJef
	Wk128vJUwY77RBFCjdqnd+KTff9US3df7PRoSfDEwKQb+f5oSPByeLzzwrkJA2rqam6FA0m9eKtnC
	6lG+oHKqUAf9Rz+TYDP8DpYyyKO7cHP5fRpWFbe8d13T9P2vsaxOmdPGYBvIZksr5pg860OSTfPkz
	xKTaZZNtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5FKX-0004OU-6S; Tue, 03 Sep 2019 20:23:09 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5FKP-0004O8-0q
 for linux-nvme@lists.infradead.org; Tue, 03 Sep 2019 20:23:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id y10so2523241pll.7
 for <linux-nvme@lists.infradead.org>; Tue, 03 Sep 2019 13:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-transfer-encoding:content-language;
 bh=+DwN485uPBYWz/hY1YVGuuSWe1X4Mv4aWYKwvwENKPE=;
 b=Lf6E4a1wpIFHe0qb0eMnmWlxZbEuYOtphGlydHz7AWucDbojEB5UaV+wm01duYOEBt
 slKZmUaVtp9ZQgmoMvCKhEIwFB/8Jq0EM7ozNAv8XF3XcOqa02J6pFUikyUeHkg86Uqy
 3SDmjTLh51P3KME0mRfRo4+pjNGZVHUsdnLqg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=+DwN485uPBYWz/hY1YVGuuSWe1X4Mv4aWYKwvwENKPE=;
 b=fIRlm+Rc7gNzvj76ZtZUY8n1uoa4SsWfViFdVtxGguWE+m5Rld0JNACPodUS044oxx
 5xa6lzDtysQB+CjyQqDjGLf6JXCNxMovQ6ICunc8LcVSR/hJKb41nhdcCHEvW23mb6Te
 1pKQSB0hskiT0WsCHy3/u8vEvyJx4sTJJbEGiz7ZniCxID1wwVoDGDkOFgRnRW37kl2m
 nGKADH09J5OvFaf5ljstTt1BXF72678pa0j1t2Qo5gV+SneUbQQSaVHE5MnUwDQaUuV4
 qP1kFTEKzEF6nQkXcJGYtzvLMh+Uoo2T2DS0aFtihmAbTK+1vievGCFjAJ2wo4CoYmZ/
 eo6Q==
X-Gm-Message-State: APjAAAUyp9cu8e61amYLJYO2PPwdkSX7G3/bv4svUBYcpWxq3SD6Dbl4
 B3QZEiABgNz6Dqs/d7rbLsymjw==
X-Google-Smtp-Source: APXvYqwM8od3rB6nGRm0FVII99vmMVyXWQa7rLV2FvWo7gHjBB1UVhdb73WZ6vGWj+qnlz3Js7AtGw==
X-Received: by 2002:a17:902:7613:: with SMTP id
 k19mr5619313pll.89.1567542179449; 
 Tue, 03 Sep 2019 13:22:59 -0700 (PDT)
Received: from [10.69.45.46] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v66sm28091218pfv.79.2019.09.03.13.22.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 03 Sep 2019 13:22:58 -0700 (PDT)
Subject: Re: [PATCH] nvme: include admin_q sync with nvme_sync_queues
To: Edmund Nadolski <edmund.nadolski@intel.com>,
 linux-nvme@lists.infradead.org, keith.busch@intel.com
References: <20190903200847.3378-1-edmund.nadolski@intel.com>
From: James Smart <james.smart@broadcom.com>
Message-ID: <72e9ffb3-fdad-5624-12d5-b1fd38258413@broadcom.com>
Date: Tue, 3 Sep 2019 13:22:57 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190903200847.3378-1-edmund.nadolski@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_132301_069656_894E7E0C 
X-CRM114-Status: GOOD (  14.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 9/3/2019 1:08 PM, Edmund Nadolski wrote:
> nvme_sync_queues currently syncs all namespace queues, but should
> also sync the admin queue, if present.
>
> Signed-off-by: Edmund Nadolski <edmund.nadolski@intel.com>
> ---
>   drivers/nvme/host/core.c | 3 +++
>   1 file changed, 3 insertions(+)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 4660505eded9..43c12f8c030f 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3974,6 +3974,9 @@ void nvme_sync_queues(struct nvme_ctrl *ctrl)
>   	list_for_each_entry(ns, &ctrl->namespaces, list)
>   		blk_sync_queue(ns->queue);
>   	up_read(&ctrl->namespaces_rwsem);
> +
> +	if (ctrl->admin_q)
> +		blk_sync_queue(ctrl->admin_q);
>   }
>   EXPORT_SYMBOL_GPL(nvme_sync_queues);
>   
which probably mean the new request_q should be there too....



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
