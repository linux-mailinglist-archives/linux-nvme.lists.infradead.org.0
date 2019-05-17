Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83B2321C76
	for <lists+linux-nvme@lfdr.de>; Fri, 17 May 2019 19:28:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jJ+XjuCEcPptoitEaz9bb3DtLIM+5rlH2Je+fyqlp5E=; b=QNuOQc8t9svFLU2JdO1MK5lj5
	FW+9ozeSpvGMeS33mvFZevuIBoYGkXQLhtg8jNXKkeOf3R4SVXxJR03vaRGYlIkgu7NMEcIzCjfow
	cuwVP9w+Y17uQjqH4fqdCnV2JZ36bGdss8pxZq81L4NhcYqhAoEMzfjm7YnCO2thRqKTyRlFoWowl
	UPr8JjkhO78iw8p9CaFmRVB44mnnPkqTMVxVjAT5tkaSdrUoTsv6H9IOvWcsSKoI5eaedGyB5aNfc
	e7DYtoXspekLtSoT7GILLUHUd+Z2CV5QH/F5tlBzKwXpHeM2GAfajRXDLsyCtBZ4cu+Fz/VEoCW1K
	M4nMAq4Jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRgey-0003eZ-2e; Fri, 17 May 2019 17:28:44 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRget-0003eE-6s
 for linux-nvme@lists.infradead.org; Fri, 17 May 2019 17:28:40 +0000
Received: from localhost.localdomain (unknown [131.107.160.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id 0A6BA20B7186;
 Fri, 17 May 2019 10:28:38 -0700 (PDT)
Subject: Re: [PATCH] nvme: Fix known effects
To: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190517161346.25102-1-keith.busch@intel.com>
From: Edmund Nadolski <ednadols@linux.microsoft.com>
Message-ID: <793cd908-fa0d-74e6-0a0a-eba0e28bcdb5@linux.microsoft.com>
Date: Fri, 17 May 2019 10:28:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190517161346.25102-1-keith.busch@intel.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_102839_268435_259903E3 
X-CRM114-Status: GOOD (  16.49  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.5 ENV_AND_HDR_SPF_MATCH  Env and Hdr From used in default SPF WL
 Match
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Maxim Levitsky <mlevitsk@redhat.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/17/19 9:13 AM, Keith Busch wrote:
> We're trying to append known effects to the ones reported in the
> controller's log. The original patch accomplished this, but something
> went wrong when patch was merged causing the effects log to override
> the known effects.
> 
> Link: http://lists.infradead.org/pipermail/linux-nvme/2019-May/023710.html
> Cc: Maxim Levitsky <mlevitsk@redhat.com>
> Signed-off-by: Keith Busch <keith.busch@intel.com>
> ---
>   drivers/nvme/host/core.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index f2411d50e764..5175451916d1 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1273,9 +1273,9 @@ static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
>   		return 0;
>   	}
>   
> -	effects |= nvme_known_admin_effects(opcode);
>   	if (ctrl->effects)
>   		effects = le32_to_cpu(ctrl->effects->acs[opcode]);
> +	effects |= nvme_known_admin_effects(opcode);
>   
>   	/*
>   	 * For simplicity, IO to all namespaces is quiesced even if the command
> 

LGTM

Ed

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
