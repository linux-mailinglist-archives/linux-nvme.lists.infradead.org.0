Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DF737E200
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 20:13:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=bjLIRbB4IFtnlXwLvTKZHNkcm5kXNM+0x25jxEh3bWI=; b=RIPkvZEDDdfYWZ7VIV5cMrF64
	0KZMHl0K9muXWN58swZK1U1BQW6FFgdRny9CSsRsPlHLZ65FfLsI7nDuj/AHS42e00P2lni23oweU
	O7fn/KcuyfSdM8sD77RCivabvXlidfnbcm8sujJqrPvA6Bfu7+YjYuVc2VMX5igZF/SKYA4lYbPke
	nVycoQnGGkf+nGQzxvqChKdLxt9+69/SOvHfk4tmOjBp3ZrPgX9jcm8wk/SYfOIHnqjobaapdwD5L
	bu+3kcZpnFnZSAT9vjNI38y2uJU3KLSdYqDyLdc+g56YEW9Iuzr6Qb7+cNU/8ZTJ0B6OFWzSD1ubR
	7mfe+Lm5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htFaD-0003FQ-OQ; Thu, 01 Aug 2019 18:13:45 +0000
Received: from mga02.intel.com ([134.134.136.20])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htFa8-0003F5-U3
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 18:13:42 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 11:13:39 -0700
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="177908537"
Received: from unknown (HELO [10.232.112.84]) ([10.232.112.84])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 01 Aug 2019 11:13:39 -0700
Subject: Re: [PATCH 1/2] nvme: skip namespaces which are about to be removed
To: Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>
References: <20190801071644.66690-1-hare@suse.de>
 <20190801071644.66690-2-hare@suse.de>
From: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Message-ID: <af9d0699-5cfd-2b30-ea5a-2d2e04528dcf@intel.com>
Date: Thu, 1 Aug 2019 12:13:38 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190801071644.66690-2-hare@suse.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_111341_036040_E7176110 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.20 listed in list.dnswl.org]
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
> nvme_ns_remove() will only remove the namespaces from the list at
> the very last step, so we might run into situations where we iterate
> over namespaces which are about to be deleted.
> To avoid crashes we should be skipping all namespaces with the
> NVME_NS_REMOVING flag set.
> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>   drivers/nvme/host/core.c | 19 ++++++++++++++++++-
>   1 file changed, 18 insertions(+), 1 deletion(-)
> 

LGTM, just a (probably lame) question: is the check also needed in
nvme_[start|stop|sync]_queues()?

Ed

> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index fcfff0a17a17..177fa4185775 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1303,9 +1303,12 @@ static void nvme_update_formats(struct nvme_ctrl *ctrl)
>   	struct nvme_ns *ns;
>   
>   	down_read(&ctrl->namespaces_rwsem);
> -	list_for_each_entry(ns, &ctrl->namespaces, list)
> +	list_for_each_entry(ns, &ctrl->namespaces, list) {
> +		if (test_bit(NVME_NS_REMOVING, &ns->flags))
> +			continue;
>   		if (ns->disk && nvme_revalidate_disk(ns->disk))
>   			nvme_set_queue_dying(ns);
> +	}
>   	up_read(&ctrl->namespaces_rwsem);
>   
>   	nvme_remove_invalid_namespaces(ctrl, NVME_NSID_ALL);
> @@ -1698,6 +1701,10 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
>   {
>   	struct nvme_ns *ns = disk->private_data;
>   
> +	/* if ns is removing we cannot mangle with the request queue */
> +	if (test_bit(NVME_NS_REMOVING, &ns->flags))
> +		return;
> +
>   	/*
>   	 * If identify namespace failed, use default 512 byte block size so
>   	 * block layer can use before failing read/write for 0 capacity.
> @@ -2776,6 +2783,10 @@ static int nvme_dev_user_cmd(struct nvme_ctrl *ctrl, void __user *argp)
>   		ret = -EINVAL;
>   		goto out_unlock;
>   	}
> +	if (test_bit(NVME_NS_REMOVING, &ns->flags)) {
> +		ret = -ENODEV;
> +		goto out_unlock;
> +	}
>   
>   	dev_warn(ctrl->device,
>   		"using deprecated NVME_IOCTL_IO_CMD ioctl on the char device!\n");
> @@ -3255,6 +3266,10 @@ static struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>   		if (ns->head->ns_id == nsid) {
>   			if (!kref_get_unless_zero(&ns->kref))
>   				continue;
> +			if (test_bit(NVME_NS_REMOVING, &ns->flags)) {
> +				nvme_put_ns(ns);
> +				continue;
> +			}
>   			ret = ns;
>   			break;
>   		}
> @@ -3445,6 +3460,8 @@ static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
>   
>   	down_write(&ctrl->namespaces_rwsem);
>   	list_for_each_entry_safe(ns, next, &ctrl->namespaces, list) {
> +		if (test_bit(NVME_NS_REMOVING, &ns->flags))
> +			continue;
>   		if (ns->head->ns_id > nsid || test_bit(NVME_NS_DEAD, &ns->flags))
>   			list_move_tail(&ns->list, &rm_list);
>   	}
> 


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
