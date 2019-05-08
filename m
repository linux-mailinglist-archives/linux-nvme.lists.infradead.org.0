Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC66B182BC
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 01:37:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SHrMcA5EhiNQzA9SPjl4z6O88bXFRHGeyBmE0+TCq5U=; b=Zru54u74ox68yhjXwpKlBA1g7
	UGSP9iguKJRjlHjcSrORETelSB9tAZS15aPE6Szc/Vf2EbHIQYIgLN2F+i+v3Q7+pxW4/5RJgZhaX
	xpOxPe0/rSumMXetMGMbP0HtEwXjgm/4uyQBa9IFwKaxvfCH29kVmWF0qVr0RHuwVeYaTJATwot9d
	au3EKi82Gpi8oej6SNgWzklXJv1p9JuBPc07dBu46JWldTbnWm9910O/AVFisBRnwgEiV0waEf5rV
	WymsNqHyx2x1DgcSRG2TSBTU/YuAdCAlpXRN5Dq8/vKfiIHEg2JadQZQEqe7bCFxgo7GFb+UN+MEC
	pbxqG02sw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOW7i-00026a-Qk; Wed, 08 May 2019 23:37:18 +0000
Received: from linux.microsoft.com ([13.77.154.182])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOW7e-00026G-GT
 for linux-nvme@lists.infradead.org; Wed, 08 May 2019 23:37:15 +0000
Received: from localhost.localdomain (unknown [167.220.2.135])
 by linux.microsoft.com (Postfix) with ESMTPSA id A8755208ACD1;
 Wed,  8 May 2019 16:37:13 -0700 (PDT)
Subject: Re: [RFC PATCH] nvme: guard ctrl->state by lock
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 linux-nvme@lists.infradead.org
References: <20190508214128.20620-1-chaitanya.kulkarni@wdc.com>
From: Edmund Nadolski <ednadols@linux.microsoft.com>
Message-ID: <57d2800d-adf4-665e-fd8d-a27282188d0b@linux.microsoft.com>
Date: Wed, 8 May 2019 16:37:13 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190508214128.20620-1-chaitanya.kulkarni@wdc.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_163714_571447_090D326C 
X-CRM114-Status: GOOD (  20.55  )
X-Spam-Score: -8.0 (--------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-8.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 5/8/19 2:41 PM, Chaitanya Kulkarni wrote:
> This patch adds a helper function to check the nvme_ctrl state.
> This helper function uses controller lock when accessing ctrl->state
> member which is guarded in the nvme_change_ctrl_state().
> 
> This RFC is light on the details, if this change is acceptable I'd
> like to send the detailed tested version.


I'm not sure I see that this presents any functional change. Is it your
intent to ensure that ctrl->state always has a legal value, and can that be
done by a range check in nvme_change_ctrl_state()?


> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>   drivers/nvme/host/core.c      | 80 ++++++++++++++++++++++++++++-------
>   drivers/nvme/host/fabrics.c   |  4 +-
>   drivers/nvme/host/fabrics.h   |  8 ++--
>   drivers/nvme/host/multipath.c |  6 +--
>   drivers/nvme/host/nvme.h      |  1 +
>   5 files changed, 74 insertions(+), 25 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index afd303489473..5182ce9fe21b 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -94,6 +94,57 @@ static void nvme_put_subsystem(struct nvme_subsystem *subsys);
>   static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
>   					   unsigned nsid);
>   
> +inline bool nvme_validate_ctrl_state(enum nvme_ctrl_state s)
> +{
> +	int ret;

type bool?

> +
> +	switch (s) {
> +	case NVME_CTRL_NEW:
> +		ret = true;
> +		break;
> +	case NVME_CTR_LIVE:
> +		ret = true;
> +		break;
> +	case NVME_CTRL_ADMIN_ONLY:
> +		ret = true;
> +		break;
> +	case NVME_CTRL_RESETTING:
> +		ret = true;
> +		break;
> +	case NVME_CTRL_CONNECTING:
> +		ret = true;
> +		break;
> +	case NVME_CTRL_DELETING:
> +		ret = true;
> +		break;
> +	case NVME_CTRL_DEAD:
> +		break;

missing ret = assignment.

Also, the above cases could all be flattened, i.e.:

	case NVME_CTRL_NEW:
	case NVME_CTR_LIVE:
	case NVME_CTRL_ADMIN_ONLY:
	case NVME_CTRL_RESETTING:
	case NVME_CTRL_CONNECTING:
	case NVME_CTRL_DELETING:
	case NVME_CTRL_DEAD:
		ret = true;
		break;
	

> +	default:
> +		ret = false;
> +	}
> +	return ret;
> +}
> +
> +bool nvme_check_ctrl_state(struct nvme_ctrl *c, enum nvme_ctrl_state state)
> +{
> +	bool ret;
> +	unsigned long flags;
> +
> +	spin_lock_irqsave(&c->lock, flags);
> +
> +	if (!nvme_validate_ctrl_state(state)) {
> +		ret = false;
> +		goto out_unlock;
> +	}

Seems simpler just to open code nvme_validate_ctrl_state() here.

Thanks,
Ed

> +
> +	ret = c->state == state ? true : false;
> +
> +out_unlock:
> +	spin_unlock_irqrestore(&c->lock, flags);
> +	return ret;
> +}
> +EXPORT_SYMBOL_GPL(nvme_check_ctrl_state);
> +
>   static void nvme_set_queue_dying(struct nvme_ns *ns)
>   {
>   	/*

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
