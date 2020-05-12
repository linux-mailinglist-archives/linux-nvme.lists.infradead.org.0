Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DD3F1CFD20
	for <lists+linux-nvme@lfdr.de>; Tue, 12 May 2020 20:20:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ko9bAHizYqO7VE0oROx0e+aUDBDM18SSjDI8BGxLC0A=; b=IIceqHAKSzDJhhBlessHFNpJg
	BMxuPZsgJhV8ODyEbVcD/075RO54THKRfQZojX0keMh6W9V9MS04NVgHXIznbrA2ed7kG8HWWcEcC
	5tye4E5I2dwhavFzU7w+f/TNSvqskk0yfuIEWH6Fz3KLaqDh+AgG25owU+sGhM/CmKmJmp6BTo/s/
	T1yRxoyVlTokvPaEZQ9NVVTvRkEo2BTcNiaU4bSaqc0W8OJ6sTEhreq0P/uy7IJSnriOKebpVjL4R
	BtwymJsrWUr9/omUE6YNHr1+kjbWgQsQHoj7uz1ewQwYphGDanjUBRgLndhjzj1jLBuL5bMA3xbAc
	IbbAKs8Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYZWC-0005V9-Ca; Tue, 12 May 2020 18:20:40 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYZW8-0005UZ-Bt
 for linux-nvme@lists.infradead.org; Tue, 12 May 2020 18:20:37 +0000
Received: by mail-pf1-x443.google.com with SMTP id b190so988020pfg.6
 for <linux-nvme@lists.infradead.org>; Tue, 12 May 2020 11:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=h8xgkhzAdc1ypGObUJY2knYg+WVibHoNcdkLbhfKCvk=;
 b=YXavDSIjOiwczW7SQi9XrbiUBV1Dop9wWWVUzOuiPnfeooWwTjo//oSgbTTPbl2Ybr
 H6GmT+ZBHHQ5Wa+UWIJkykr9SotmFiyfWJksPSWHXHnc87qax+s1ZXpJXPuiTnMuaoMj
 nOUszNgH5cTdMHktRBLkVmpa4X4HA51wcIEcBq8/guacnWdIMwHX1sqOw2+7n97zAy/L
 E1Dm5nYtsVwTydz9scIvBTpgob4gQGR9pmd00ffxiOjuJahLSTISDqAY+oYrKePysWDU
 q4Leqm547YWBGSmHztThm1ezrX8vwJChCoqwfogNw0iF5fPUb6oLXJxhFlcQ8VpC6qFW
 8m2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=h8xgkhzAdc1ypGObUJY2knYg+WVibHoNcdkLbhfKCvk=;
 b=aWaTR7bdY+B/eZUgQVKj8H2aaj+Sw8kAW2YnTPsJMNfmM3f5ajYq/rs0s3K+lk/2+d
 Uu9bFhper/rD8wTjO8TCUGuXMaFTNoxb4AwsWANNidzPLN1xmYqVoW/WMvmjEBw6hHuQ
 yrgefqK/1wwI+VixEJG/ORFHx+iLGCpPwHz+/E7bREiukRMe5bpEcK5Wg3ecrE3ct/Cs
 v/iOQMTTST0HzIgLJjq/S3HNRGIb3o9dIvd8NZglyU97xmVeADSs27mREHu9+gAbLx/N
 H4fqiKgLulatd4/BaYeS0P/b0pkljBRDS1jolOPJgNoWzqVIKZ3yyzHNKbI8C7CLX79m
 OQRA==
X-Gm-Message-State: AGi0PubdnB+qzTgHL1M5AM+ScJYFzkphkMLoVlcv1Kb5ZbV0S6bvdzqy
 I8jjhYiTvoQtvA+iJFeLKSc=
X-Google-Smtp-Source: APiQypLOd5zCxXHGr9eSoEed3O2C14HYhO4fkq7y9do7S8L6nvnzacUHIVquy2jv9frC0taO3LMzOQ==
X-Received: by 2002:a62:38cc:: with SMTP id f195mr21566224pfa.85.1589307635247; 
 Tue, 12 May 2020 11:20:35 -0700 (PDT)
Received: from [10.230.128.89] ([192.19.228.250])
 by smtp.gmail.com with ESMTPSA id a136sm12775339pfa.99.2020.05.12.11.20.33
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 12 May 2020 11:20:34 -0700 (PDT)
Subject: Re: [PATCH] nvme-fc: print proper nvme-fc devloss_tmo value
To: Martin George <martinus.gpy@gmail.com>
References: <20200512164704.5372-1-marting@netapp.com>
From: James Smart <jsmart2021@gmail.com>
Message-ID: <74774939-50c2-f52b-36a1-d57b96d956ef@gmail.com>
Date: Tue, 12 May 2020 11:20:32 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200512164704.5372-1-marting@netapp.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_112036_463096_BA75D958 
X-CRM114-Status: GOOD (  16.95  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbusch@kernel.org, Martin George <marting@netapp.com>, hch@lst.de,
 linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/12/2020 9:47 AM, Martin George wrote:
> From: Martin George <marting@netapp.com>
> 
> The nvme-fc devloss_tmo is computed as the min of either the
> ctrl_loss_tmo (max_retries * reconnect_delay) or the remote port's
> devloss_tmo. But what gets printed as the nvme-fc devloss_tmo in
> nvme_fc_reconnect_or_delete() is always the remote port's devloss_tmo
> value. So correct this by printing the min value instead.
> 
> Signed-off-by: Martin George <marting@netapp.com>
> ---
>   drivers/nvme/host/fc.c | 4 +++-
>   1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
> index 0b3ab3355e25..8aabc056c754 100644
> --- a/drivers/nvme/host/fc.c
> +++ b/drivers/nvme/host/fc.c
> @@ -3246,7 +3246,9 @@ nvme_fc_reconnect_or_delete(struct nvme_fc_ctrl *ctrl, int status)
>   			dev_warn(ctrl->ctrl.device,
>   				"NVME-FC{%d}: dev_loss_tmo (%d) expired "
>   				"while waiting for remoteport connectivity.\n",
> -				ctrl->cnum, portptr->dev_loss_tmo);
> +				ctrl->cnum, min_t(int, portptr->dev_loss_tmo,
> +					(ctrl->ctrl.opts->max_reconnects *
> +					 ctrl->ctrl.opts->reconnect_delay)));
>   		WARN_ON(nvme_delete_ctrl(&ctrl->ctrl));
>   	}
>   }
> 

Thanks

Reviewed-by: James Smart <james.smart@broadcom.com>

-- james


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
