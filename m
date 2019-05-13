Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55A041BD24
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 20:25:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=paetTA/goxi/B5/IL/HEL0aKmFOne5qkOuyRDd0hB6c=; b=rEg0NOCy8qsgaJnAco89jhQdY
	pw4RwkGJ4kJ1JWaD++IKp8dpQNzAfHF3tUbWqz0WB34wjLg+lGENL2ggmRH4iqsZfm1QBqW6L2g+6
	UKqqDn9K6DB9NCDjiLzO34L2YdPp9ccalUhMgfI9QScfUJ8WBmF8gxo1avI5Z5NMnozbktfTCR2yz
	3IYob1hPcog+wy8TZNcv1p1M1rk1UZns/aO2niS+67ZzDgVaoa8tEgY57Boja1mfPGtmtdvcGNoZr
	gBb4XRxXtHLDvHpGFaZYg1hyX79mHL23FK+jCjm36kX50ttIc8iZmtsxdnQ7JuFSt7bU8Rgl/lLJm
	IM9fu4/2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQFdd-0005a2-MO; Mon, 13 May 2019 18:25:25 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQFdZ-0005Zg-Ci
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 18:25:22 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 13 May 2019 11:25:20 -0700
Received: from unknown (HELO [10.232.112.204]) ([10.232.112.204])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 13 May 2019 11:25:20 -0700
Subject: Re: [PATCH 2/2] nvme: validate cntlid during controller initialisation
To: Christoph Hellwig <hch@lst.de>, hare@suse.de
References: <20190513062510.756-1-hch@lst.de> <20190513062510.756-3-hch@lst.de>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <e90ee6c7-8742-6f21-26c7-e0f578b419be@intel.com>
Date: Mon, 13 May 2019 12:25:19 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190513062510.756-3-hch@lst.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_112521_440274_75C39EC5 
X-CRM114-Status: GOOD (  19.92  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 5/13/2019 12:25 AM, Christoph Hellwig wrote:
> The CNTLID value is required to be unique, and we do rely on this
> for correct operation. So reject any controller for which a non-unique
> CNTLID has been detected.
> 
> Based on a patch from Hannes Reinecke.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>   drivers/nvme/host/core.c | 41 +++++++++++++++++++++++-----------------
>   1 file changed, 24 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 70a2bc01e41e..09a1d5ca872f 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2341,20 +2341,35 @@ static const struct attribute_group *nvme_subsys_attrs_groups[] = {
>   	NULL,
>   };
>   
> -static int nvme_active_ctrls(struct nvme_subsystem *subsys)
> +static bool nvme_validate_cntlid(struct nvme_subsystem *subsys,
> +		struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)
>   {
> -	int count = 0;
> -	struct nvme_ctrl *ctrl;
> +	struct nvme_ctrl *tmp;
>   
>   	lockdep_assert_held(&nvme_subsystems_lock);
>   
> -	list_for_each_entry(ctrl, &subsys->ctrls, subsys_entry) {
> -		if (ctrl->state != NVME_CTRL_DELETING &&
> -		    ctrl->state != NVME_CTRL_DEAD)
> -			count++;
> +	list_for_each_entry(tmp, &subsys->ctrls, subsys_entry) {
> +		if (ctrl->state == NVME_CTRL_DELETING ||
> +		    ctrl->state == NVME_CTRL_DEAD)
> +			continue;
> +
> +		if (tmp->cntlid == ctrl->cntlid) {
> +			dev_err(ctrl->device,
> +				"Duplicate cntlid %u with %s, rejecting\n",
> +				ctrl->cntlid, dev_name(tmp->device));
> +			return false;
> +		}
> +
> +		if ((id->cmic & (1 << 1)) ||
> +		    (ctrl->opts && ctrl->opts->discovery_nqn))
> +		    	continue;

Replace whitespace with tab

> +
> +		dev_err(ctrl->device,
> +			"Subsystem does not support multiple controllers\n");
> +		return false;
>   	}
>   
> -	return count;
> +	return true;
>   }
>   
>   static int nvme_init_subsystem(struct nvme_ctrl *ctrl, struct nvme_id_ctrl *id)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
