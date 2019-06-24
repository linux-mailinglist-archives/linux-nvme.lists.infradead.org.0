Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1F1A51C12
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Jun 2019 22:13:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AfTiiO9hkbQdCadzjxXGrC7674fj+AbPu4X15AeRitE=; b=WMPGvUf1fyMrCS
	XnA132vxnA4Gl0kU+kyBlmuG+OdeEsSCDFMHK76B6lkYW29pRRAz7X0B2eCsYlh+oD+eY5pVPxsIC
	buuRY860fjlIVJB80dgMeGrz7mAE/SS3QqWzwbp8RCDUXde0pdX5dS/d3LAFj54rOo+ajEp8ict/x
	FkB2q9UvNDkMHEDRtIKpXaON//qM+zcx7fHM7OISw5e2ErDxjDRmLIDng7gbflZFXq4eHuyNedrgA
	y6mi5gNo+jpBVLADrmZvHrVcn/BMg9TGjXgNwu2ZyVHVo1d8mGc8tz+2xvsLtAK9c3T+o3y/mnvtR
	3U6cZXf2soO9ixxlJZUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVKs-0007x2-CZ; Mon, 24 Jun 2019 20:13:06 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVKl-0007w3-UN
 for linux-nvme@lists.infradead.org; Mon, 24 Jun 2019 20:13:01 +0000
Received: by mail-pl1-x642.google.com with SMTP id t7so7501839plr.11
 for <linux-nvme@lists.infradead.org>; Mon, 24 Jun 2019 13:12:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=USqQq4RtkZv36krdefC1dbFXyRTkrhEsSnTWhHiiTX8=;
 b=UAq2Et+pia3d9R0qhpF83A5UD8W5EaC75PZwCmcojVBmj9F2Hd5oIW961tVXyMKD7C
 hEC08TQzOBAfOIRTuPBmiotLtC2+RxH5g3gw7BvahJEm7NhHG8suI2vZxwPttT+cjZEL
 CExcnFb8IRjqeuXOqPv774ZUfr3UqB2AA7HWXuV0NEfXOqf2bauGj5T2S8/6HYswHjhJ
 029RkOopSH+uHZaupFpixjLVKa5II6QZWMa7JPwyvLiMYrQV8WaFuzaxN3K70YRB9/Xw
 574ZX7VUYSsf/8DjRBYBXban/YVnPdFy40FrSFV2RjmhGm8ZlCf6jkcatD2+HXJSajzt
 R5cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=USqQq4RtkZv36krdefC1dbFXyRTkrhEsSnTWhHiiTX8=;
 b=T2ySjMrTZtT/BprO9MsYMM6LoN9q0tQQJIBu6SwI2B014h76a24RbzGJ3tNfa1btFF
 WjUoxs/LAfS+76SYtHyZ+CYx10JVYybuQVWULvutmpWKFWnjZdAo9YPuK0/CV6R10+PO
 /GsS0z548KMS/elMnc1Nq88R7YqJtZOSH3Tjc8y1RU0U83s3OQ43YRjiTdy8ir1Y+m7x
 5WHZTyT8O7L4tXzakx70a0Gp44Bn3CIJRMocaGGsNQBvNPofmeh/YTBdHrBczwz4MI2s
 mZoF6TAim2MfFnWAUHjOL5YJL1giH5mmT5FwbK1NirLmLPpacmprYv06ZzzkWcec/LLT
 PwhQ==
X-Gm-Message-State: APjAAAVIGuaS0k2byij0fAr690rDc9yCFGoHrM5UhXHhRXmhe5TNEuwh
 H0Bl+9P+x7chE72FhiXu/q0=
X-Google-Smtp-Source: APXvYqzPi32d1jAllYMuwcsfTzleeJQdzD8IdW8C+BXnyAZqnrl6HAe2CEmCZYz1VuODNORP3ZlQrw==
X-Received: by 2002:a17:902:8f93:: with SMTP id
 z19mr62437831plo.97.1561407179277; 
 Mon, 24 Jun 2019 13:12:59 -0700 (PDT)
Received: from localhost ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g9sm9863715pgs.78.2019.06.24.13.12.57
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 24 Jun 2019 13:12:58 -0700 (PDT)
Date: Tue, 25 Jun 2019 05:12:56 +0900
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Weiping Zhang <zhangweiping@didiglobal.com>
Subject: Re: [PATCH v3 2/5] nvme: add get_ams for nvme_ctrl_ops
Message-ID: <20190624201256.GC6526@minwooim-desktop>
References: <cover.1561385989.git.zhangweiping@didiglobal.com>
 <2c916063e19cc3f33376d7bb0fb8a5ff10ea42db.1561385989.git.zhangweiping@didiglobal.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2c916063e19cc3f33376d7bb0fb8a5ff10ea42db.1561385989.git.zhangweiping@didiglobal.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_131300_008698_A96DD43F 
X-CRM114-Status: GOOD (  18.77  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.1 URIBL_SBL_A Contains URL's A record listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 0.6 URIBL_SBL Contains an URL's NS IP listed in the Spamhaus SBL
 blocklist [URIs: didiglobal.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: axboe@kernel.dk, linux-block@vger.kernel.org, bvanassche@acm.org,
 linux-nvme@lists.infradead.org, keith.busch@intel.com, minwoo.im.dev@gmail.com,
 tj@kernel.org, cgroups@vger.kernel.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 19-06-24 22:29:05, Weiping Zhang wrote:
> The get_ams() will return the AMS(Arbitration Mechanism Selected)
> from the driver.
> 
> Signed-off-by: Weiping Zhang <zhangweiping@didiglobal.com>

Hello, Weiping.

Sorry, but I don't really get what your point is here.  Could you please
elaborate this patch a little bit more?  The commit description just
says a function would just return the AMS from nowhere..

> ---
>  drivers/nvme/host/core.c | 9 ++++++++-
>  drivers/nvme/host/nvme.h | 1 +
>  drivers/nvme/host/pci.c  | 6 ++++++
>  include/linux/nvme.h     | 1 +
>  4 files changed, 16 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index b2dd4e391f5c..4cb781e73123 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1943,6 +1943,7 @@ int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
>  	 */
>  	unsigned dev_page_min = NVME_CAP_MPSMIN(cap) + 12, page_shift = 12;
>  	int ret;
> +	u32 ams = NVME_CC_AMS_RR;
>  
>  	if (page_shift < dev_page_min) {
>  		dev_err(ctrl->device,
> @@ -1951,11 +1952,17 @@ int nvme_enable_ctrl(struct nvme_ctrl *ctrl, u64 cap)
>  		return -ENODEV;
>  	}
>  
> +	/* get Arbitration Mechanism Selected */
> +	if (ctrl->ops->get_ams) {

I just wonder if this check will be valid because this patch just
register the function nvme_pci_get_ams() without any conditions.

> +		ctrl->ops->get_ams(ctrl, &ams);
> +		ams &= NVME_CC_AMS_MASK;
> +	}
> +
>  	ctrl->page_size = 1 << page_shift;
>  
>  	ctrl->ctrl_config = NVME_CC_CSS_NVM;
>  	ctrl->ctrl_config |= (page_shift - 12) << NVME_CC_MPS_SHIFT;
> -	ctrl->ctrl_config |= NVME_CC_AMS_RR | NVME_CC_SHN_NONE;
> +	ctrl->ctrl_config |= ams | NVME_CC_SHN_NONE;
>  	ctrl->ctrl_config |= NVME_CC_IOSQES | NVME_CC_IOCQES;
>  	ctrl->ctrl_config |= NVME_CC_ENABLE;
>  
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index ea45d7d393ad..9c7e9217f78b 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -369,6 +369,7 @@ struct nvme_ctrl_ops {
>  	void (*submit_async_event)(struct nvme_ctrl *ctrl);
>  	void (*delete_ctrl)(struct nvme_ctrl *ctrl);
>  	int (*get_address)(struct nvme_ctrl *ctrl, char *buf, int size);
> +	void (*get_ams)(struct nvme_ctrl *ctrl, u32 *ams);

Can we just have a return value for the AMS value?

>  };
>  
>  #ifdef CONFIG_FAULT_INJECTION_DEBUG_FS
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 189352081994..5d84241f0214 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2627,6 +2627,11 @@ static int nvme_pci_get_address(struct nvme_ctrl *ctrl, char *buf, int size)
>  	return snprintf(buf, size, "%s", dev_name(&pdev->dev));
>  }
>  
> +static void nvme_pci_get_ams(struct nvme_ctrl *ctrl, u32 *ams)
> +{
> +	*ams = NVME_CC_AMS_RR;
> +}
> +
>  static const struct nvme_ctrl_ops nvme_pci_ctrl_ops = {
>  	.name			= "pcie",
>  	.module			= THIS_MODULE,
> @@ -2638,6 +2643,7 @@ static const struct nvme_ctrl_ops nvme_pci_ctrl_ops = {
>  	.free_ctrl		= nvme_pci_free_ctrl,
>  	.submit_async_event	= nvme_pci_submit_async_event,
>  	.get_address		= nvme_pci_get_address,
> +	.get_ams		= nvme_pci_get_ams,

Question: Do we really need this being added to nvme_ctrl_ops?

Also If 5th patch will make this function much more than this, then it
would be great if you describe this kind of situation in description :)

>  };
>  
>  static int nvme_dev_map(struct nvme_dev *dev)
> diff --git a/include/linux/nvme.h b/include/linux/nvme.h
> index da5f696aec00..8f71451fc2fa 100644
> --- a/include/linux/nvme.h
> +++ b/include/linux/nvme.h
> @@ -156,6 +156,7 @@ enum {
>  	NVME_CC_AMS_RR		= 0 << NVME_CC_AMS_SHIFT,
>  	NVME_CC_AMS_WRRU	= 1 << NVME_CC_AMS_SHIFT,
>  	NVME_CC_AMS_VS		= 7 << NVME_CC_AMS_SHIFT,
> +	NVME_CC_AMS_MASK	= 7 << NVME_CC_AMS_SHIFT,
>  	NVME_CC_SHN_NONE	= 0 << NVME_CC_SHN_SHIFT,
>  	NVME_CC_SHN_NORMAL	= 1 << NVME_CC_SHN_SHIFT,
>  	NVME_CC_SHN_ABRUPT	= 2 << NVME_CC_SHN_SHIFT,
> -- 
> 2.14.1
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
