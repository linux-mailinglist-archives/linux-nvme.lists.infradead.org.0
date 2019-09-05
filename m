Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8AF2AACF1
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 22:24:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=6xK/N5d2RzPbORLEyrYLoRdnVNxQuKc+CrD8he9d3J8=; b=Fh06UsTR5qQuQbmg0FOOgzMC6
	jkAtxSCD0aqiJwuTln2FfuBxpeiLKRsB33+v7i46TEBiXk81KTIdZsgHMHlXCY4H1HKZm/734f1M+
	D6Y9AtXUcrZP5T/73ePVsIY/6FA/YMpxLISpO3R4x69PvK/pZXmxBo8b3JEr2D8VLdwViOdSk3S4S
	13thFLcymUbLhrO1UGiCz8v9YSuYp1CRIl0wnlTwmQszFVcFxSDnq2ktd+XtdN3LM1wobrnFH0wzI
	zCcRZ0EVRy5d0vy4kYlEQ0p6CQ96DkktFpFkhL5mwjUrzKau4ETrRTAV701lJWp9k5LlJ4+Z3Vyw1
	Ly/q34yiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5yIa-0000Jj-8l; Thu, 05 Sep 2019 20:24:08 +0000
Received: from mail-wm1-f66.google.com ([209.85.128.66])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5yIU-0000J3-3M
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 20:24:03 +0000
Received: by mail-wm1-f66.google.com with SMTP id o184so4555240wme.3
 for <linux-nvme@lists.infradead.org>; Thu, 05 Sep 2019 13:23:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=nTz+uY18mS0w8KoOY/7o6Kn1C079AjCse/qUigV6uuo=;
 b=SXpGeSe43h+RSfW7A5ODMQ2zCfGj9QyqZOkjNvswzfAoHTLX6YXLjGHXlKwtB+jRV/
 l+86BMuJghIBKEnKmSRPIpctQ3aftojT+t/qcrJgC1eZjin40L2Ouco03CPXs+2ITAx/
 p/w2R/tHI+LcQEQykPiRJlz+a3twFJLbtEGNXkqNDcockUQFoah6bhYsDcYVWnSOpLNt
 I4l+CFxwZVPLhSSpuE5JlJsn+6VKb6Vzh4UWdUUVGoz93hHE5a5hdKObuUxZhFVPjPVO
 n7rS6GU5WBBIUg+AVyxbp0q8kh6+PLJGyTtcNT4qk2F8fjhI9SQ1ybb8z/Mrv2JmYmXs
 s4Jw==
X-Gm-Message-State: APjAAAVvz+fpH97UXDwoDdFDIN1U0I4pXYssnhuisvNN5x89ifmB4sFg
 eP96PIZvdqJDAg7c9n7pSk0=
X-Google-Smtp-Source: APXvYqzUvOTBTiRnj9aHZDNglxBv9Z1ZdUs6l5Yv9h3BJ6Rr6VZ9SdIq/Le6I9O5ck0gRgwCjeAEwQ==
X-Received: by 2002:a1c:2883:: with SMTP id o125mr4259688wmo.31.1567715036845; 
 Thu, 05 Sep 2019 13:23:56 -0700 (PDT)
Received: from ?IPv6:2600:1700:65a0:78e0:514:7862:1503:8e4d?
 ([2600:1700:65a0:78e0:514:7862:1503:8e4d])
 by smtp.gmail.com with ESMTPSA id h2sm5412719wrb.31.2019.09.05.13.23.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 13:23:56 -0700 (PDT)
Subject: Re: [PATCH 2/5] nvme: Prevent resets during paused states
To: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
References: <20190905142607.24897-1-kbusch@kernel.org>
 <20190905142607.24897-2-kbusch@kernel.org>
From: Sagi Grimberg <sagi@grimberg.me>
Message-ID: <5f36518c-7cf0-9fe1-49d7-2b24b3d229fe@grimberg.me>
Date: Thu, 5 Sep 2019 13:23:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190905142607.24897-2-kbusch@kernel.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_132402_140219_3FE5E0DE 
X-CRM114-Status: GOOD (  19.49  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sagigrim[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Edmund Nadolski <edmund.nadolski@intel.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


> A paused controller is doing critical internal activation work. Don't
> allow a reset to occur by setting it to the resetting state, preventing
> any future reset from occuring during this time.

Is there a reproducible bug actually being addressed here?

Also, seems a bit "acrobatic" to set the state to RESETTING without
really resetting it (and then change it back to LIVE before you do
actually resetting it).

Would it make sense to look at nvme_ctrl_pp_status when
scheduling a reset in nvme_reset_ctrl? Just a thought..

> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>   drivers/nvme/host/core.c | 9 ++++++---
>   1 file changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 91b1f0e57715..d42167d7594b 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3705,20 +3705,23 @@ static void nvme_fw_act_work(struct work_struct *work)
>   		fw_act_timeout = jiffies +
>   				msecs_to_jiffies(admin_timeout * 1000);
>   
> +	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
> +		return;
> +
>   	nvme_stop_queues(ctrl);
>   	while (nvme_ctrl_pp_status(ctrl)) {
>   		if (time_after(jiffies, fw_act_timeout)) {
>   			dev_warn(ctrl->device,
>   				"Fw activation timeout, reset controller\n");

Would be good if the print will reflect if it resetting or not..

> -			nvme_reset_ctrl(ctrl);
> +			if (nvme_change_ctrl_state(ctrl, NVME_CTRL_LIVE))
> +				nvme_reset_ctrl(ctrl);

How can this state change not succeed? ctrl removal?

>   			break;
>   		}
>   		msleep(100);
>   	}
>   
> -	if (ctrl->state != NVME_CTRL_LIVE)
> +	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_LIVE))
>   		return;

In what scenario this will not succeed? if the reset did it?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
