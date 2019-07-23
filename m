Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C55371C5D
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 18:00:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ExjqFmGP65eTqAUluNjrjMn44p5u9WuKbipV/W3vCas=; b=WDTXXj68Ocxp5RDwfsahGkiv8
	5BZZQ4EwQZa1RsxdXImOHQBWdgXLubHPElYfFii90IZKyihcf93b2S8AajJDhbDRxMtBK5T5YOgL+
	yrVvIjfZYPCIxAhoGHGPeVlbYdg8EyA9oCsqDV2Hw3MiMRxIekC9j5pvQFTN1c2JzwQS7C2PIbRYb
	CvaRWhlyMN/ffmDLxsM/mZb73L4shw3VaYz8U8QkMDcPBrs7dgzHRtQIBeTIfZslTxe08LLNDg8vJ
	gpQkFTg3i/JBETaENeo244P+2lT/C5Dihr0W5aL8BGbC3zd0bKahS9ln4lgDJhPgDcbsm1HKEMD+I
	FeQZyAYqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpxCu-0001xy-G4; Tue, 23 Jul 2019 16:00:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpxCk-0001xF-1G
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 15:59:55 +0000
Received: by mail-pf1-x441.google.com with SMTP id m30so19373122pff.8
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 08:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-transfer-encoding:content-language;
 bh=FcoKm16jKLgAm/5+DF6qgDXWhhTdfQDuch07LiSRTK0=;
 b=OPEOPBZCNZIQFDxoD7oPOp2n+1SqvNjAdcYCXqs5GzVgDbiEK24yX/w8py0eohqVS7
 u7E0gQZYrbwj7VghA0Jz7zXIhnvr2aUct2D3Yic2TgxgLbjVn32js/8bIwO4OMTvJ1Bk
 EmQYV6WRB7+dEJeGzqg2p0Em6ui9OHdotoX8g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-transfer-encoding
 :content-language;
 bh=FcoKm16jKLgAm/5+DF6qgDXWhhTdfQDuch07LiSRTK0=;
 b=A/oY8mMiPheGA2ij/uUJ2M5veH8x/A+prYhp2qZrGDuf0QtNKIrnLZzsdFGSy2kn1I
 RO1jgoQdBElXEhHlzlGo7tLXCnh56+kiR+3lg8hyaE5XaKAbUGdAXhkEQD043AfMn+8w
 9K6faJDS0DJs7lj9WBSc4oRjab2Vabj8LK3hWex7m2TcjBC1evJMECFI6BeCcHWWUSZO
 zFGU80SqHazUeQCiNHATbO1ktU1pLsjGDES4uxqKK3VHgbk2EBqh8x9gCUzIjgpbbjfh
 vKWQnO2budcohyodVlzcDsGQFa6aqjnazBcCOYko6GfI8CBFRCCVPc86dnaAeVvDpHtU
 itQQ==
X-Gm-Message-State: APjAAAX5ashwpnKJv7VzJGHyMkGr78bcVgTm22jLnwzNPo7MysAdZFEx
 zBDqdFamBOlF4NSPTQNDoAEUX3EW4tc=
X-Google-Smtp-Source: APXvYqxb5f4u43nN87lWTOte/aV6mWQ9anQvZoheEj++gccp4vMnbY83qwQ5b4rfCT+wC+092eZ6LQ==
X-Received: by 2002:a17:90a:d983:: with SMTP id
 d3mr81844368pjv.88.1563897592459; 
 Tue, 23 Jul 2019 08:59:52 -0700 (PDT)
Received: from [10.230.29.90] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id s6sm68420496pfs.122.2019.07.23.08.59.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 23 Jul 2019 08:59:51 -0700 (PDT)
Subject: Re: [PATCH v2 1/3] nvme: have nvme_init_identify set ctrl->cap
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190723000654.6448-1-sagi@grimberg.me>
 <20190723000654.6448-2-sagi@grimberg.me>
From: James Smart <james.smart@broadcom.com>
Message-ID: <0b926f73-c439-7057-dcb8-75e89486f084@broadcom.com>
Date: Tue, 23 Jul 2019 08:59:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190723000654.6448-2-sagi@grimberg.me>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_085954_082845_5E183BC5 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 7/22/2019 5:06 PM, Sagi Grimberg wrote:
> No need to use a stack cap variable.
>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>   drivers/nvme/host/core.c | 7 +++----
>   1 file changed, 3 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 76cd3dd8736a..058e06e40df8 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2563,7 +2563,6 @@ static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
>   int nvme_init_identify(struct nvme_ctrl *ctrl)
>   {
>   	struct nvme_id_ctrl *id;
> -	u64 cap;
>   	int ret, page_shift;
>   	u32 max_hw_sectors;
>   	bool prev_apst_enabled;
> @@ -2574,15 +2573,15 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
>   		return ret;
>   	}
>   
> -	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &cap);
> +	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);
>   	if (ret) {
>   		dev_err(ctrl->device, "Reading CAP failed (%d)\n", ret);
>   		return ret;
>   	}

wondering why we're re-reading CAP if it was already done in 
nvme_enable_ctrl()


-- james



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
