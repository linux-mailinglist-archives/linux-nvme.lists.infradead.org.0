Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1537E20D
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 20:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zQ8eOG369CFVs0jfOi4ShP8g5reP7zyQB28cF8Tg+g4=; b=i1lyiNOnvOQPbO58O5lXjhAOG
	1DtaY+mihdLcCIO5sVOPlxQ0iCiR1HmctWxIi1UKZIGJXpUMSM2Fc/625+lYfyh2z3GF4u3hFh6bH
	I/ZG6bg/oyIZj3FUNavDQ1eUgyGZCQg9fKjWAea/r4yBJEwujWViO2j/LObBH2f2SQdQc8b22wH6d
	8RroxgV0PUg+IDQAhmFjTC4Vak3cigz/kY3wA1FUWZxw2lT1HcmeZ69AEvRYu6PWjF2TGEFVM2Bos
	g1BsgLItajm+/+OQwZPwHO7q7O3gL6qBeLNGTsFdQ32YcxwhfOL8GfFFmBI1id2+m+nOYzakveVdb
	vmPRAEc0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htFba-0004fA-1a; Thu, 01 Aug 2019 18:15:10 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htFbT-00047D-V2
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 18:15:05 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 11:15:03 -0700
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="177908970"
Received: from unknown (HELO [10.232.112.84]) ([10.232.112.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 01 Aug 2019 11:15:02 -0700
Subject: Re: [PATCH 2/2] nvme: do not remove namespaces during reset
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190801071644.66690-1-hare@suse.de>
 <20190801071644.66690-3-hare@suse.de>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <c9d68268-62f4-80df-f926-c04a2ce4a81c@intel.com>
Date: Thu, 1 Aug 2019 12:15:01 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801071644.66690-3-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_111504_014181_31F87CF4 
X-CRM114-Status: GOOD (  19.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 8/1/2019 1:16 AM, Hannes Reinecke wrote:
> Whenever the controller is resetting or connecting we cannot make
> any decisions about the attached namespaces, and consequently we
> shouldn't remove them. So skip namespace removal during reset;
> a scan will be triggered anyway after reconnecting which will
> clean up any stale namespaces.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>   drivers/nvme/host/core.c | 25 ++++++++++++++++++++++---
>   1 file changed, 22 insertions(+), 3 deletions(-)

LGTM.

Ed

> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 177fa4185775..b24cf21f34d0 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3410,7 +3410,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>   	return ret;
>   }
>   
> -static void nvme_ns_remove(struct nvme_ns *ns)
> +static void __nvme_ns_remove(struct nvme_ns *ns)
>   {
>   	if (test_and_set_bit(NVME_NS_REMOVING, &ns->flags))
>   		return;
> @@ -3439,6 +3439,21 @@ static void nvme_ns_remove(struct nvme_ns *ns)
>   	nvme_put_ns(ns);
>   }
>   
> +static void nvme_ns_remove(struct nvme_ns *ns)
> +{
> +	/*
> +	 * We cannot make any assumptions about namespaces during
> +	 * reset; in particular we shouldn't attempt to remove them
> +	 * as I/O might still be queued to them.
> +	 * So ignore this call during reset and rely on the
> +	 * rescan after reset to clean up things again.
> +	 */
> +	if (ns->ctrl->state == NVME_CTRL_RESETTING ||
> +	    ns->ctrl->state == NVME_CTRL_CONNECTING)
> +		return;
> +	__nvme_ns_remove(ns);
> +}
> +
>   static void nvme_validate_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>   {
>   	struct nvme_ns *ns;
> @@ -3458,6 +3473,10 @@ static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
>   	struct nvme_ns *ns, *next;
>   	LIST_HEAD(rm_list);
>   
> +	if (ctrl->state == NVME_CTRL_RESETTING ||
> +	    ctrl->state == NVME_CTRL_CONNECTING)
> +		return;
> +
>   	down_write(&ctrl->namespaces_rwsem);
>   	list_for_each_entry_safe(ns, next, &ctrl->namespaces, list) {
>   		if (test_bit(NVME_NS_REMOVING, &ns->flags))
> @@ -3468,7 +3487,7 @@ static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
>   	up_write(&ctrl->namespaces_rwsem);
>   
>   	list_for_each_entry_safe(ns, next, &rm_list, list)
> -		nvme_ns_remove(ns);
> +		__nvme_ns_remove(ns);
>   
>   }
>   
> @@ -3618,7 +3637,7 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
>   	up_write(&ctrl->namespaces_rwsem);
>   
>   	list_for_each_entry_safe(ns, next, &ns_list, list)
> -		nvme_ns_remove(ns);
> +		__nvme_ns_remove(ns);
>   }
>   EXPORT_SYMBOL_GPL(nvme_remove_namespaces);
>   
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
