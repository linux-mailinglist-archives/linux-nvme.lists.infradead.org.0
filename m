Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 173DC7E4D7
	for <lists+linux-nvme@lfdr.de>; Thu,  1 Aug 2019 23:38:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CuqVBV/HuaI6LwZPD9RBmG9d7PuFZHw2jEU6rIldIKc=; b=AqCQxK/n1UQjYD
	O9IEFTpHdrk9KYBNIB6dmFv3Q8L8WDUyI0ykTb8zW3rtEjimxmGKITzbsx6v5Y1DMSVabqWwK/prn
	EuH/hiYX4S29YrGVA19M/CDIADnoAQDQs95CFeT6pYOK59lmSl24bqpCnGFH+oC9z7LK1TBflR++1
	QaDTL881hBZtdh9Cb53a0o0lH71gaCmwhj8QcU0MsJnSXZH8L5uBhdBFYmhyS1WrjT2u22SFs7mxD
	LlXy3AXi7mu8Opqt5+GUgX9h/5n42Lm8pgPVVr/fh2WjEz+ksJq4yzNDNRiFvweKzBxb59MHqjEEb
	68wvBLRMsnkMLDAoEx5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htImb-0001Gg-7I; Thu, 01 Aug 2019 21:38:45 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htImW-0001GJ-SA
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 21:38:42 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 01 Aug 2019 14:38:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,335,1559545200"; d="scan'208";a="324373296"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga004.jf.intel.com with ESMTP; 01 Aug 2019 14:38:39 -0700
Date: Thu, 1 Aug 2019 15:36:00 -0600
From: Keith Busch <kbusch@kernel.org>
To: Hannes Reinecke <hare@suse.de>
Subject: Re: [PATCH 1/2] nvme: skip namespaces which are about to be removed
Message-ID: <20190801213600.GG15795@localhost.localdomain>
References: <20190801071644.66690-1-hare@suse.de>
 <20190801071644.66690-2-hare@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801071644.66690-2-hare@suse.de>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_143840_954003_878044D2 
X-CRM114-Status: GOOD (  22.83  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 12:16:43AM -0700, Hannes Reinecke wrote:
> nvme_ns_remove() will only remove the namespaces from the list at
> the very last step, so we might run into situations where we iterate
> over namespaces which are about to be deleted.
> To avoid crashes we should be skipping all namespaces with the
> NVME_NS_REMOVING flag set.

This all looks to be racing with whatever task is going to call
nvme_ns_remove().

Could we instead move these invalid namespaces off the ctrl->namespaces
list prior to calling nvme_ns_remove(), and while holding the write
lock? That way nothing can iterate the namespaces that we're deleting.
We already do that in some places, so that looks like it may be the safe
way to do this.

> 
> Signed-off-by: Hannes Reinecke <hare@suse.com>
> ---
>  drivers/nvme/host/core.c | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index fcfff0a17a17..177fa4185775 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1303,9 +1303,12 @@ static void nvme_update_formats(struct nvme_ctrl *ctrl)
>  	struct nvme_ns *ns;
>  
>  	down_read(&ctrl->namespaces_rwsem);
> -	list_for_each_entry(ns, &ctrl->namespaces, list)
> +	list_for_each_entry(ns, &ctrl->namespaces, list) {
> +		if (test_bit(NVME_NS_REMOVING, &ns->flags))
> +			continue;
>  		if (ns->disk && nvme_revalidate_disk(ns->disk))
>  			nvme_set_queue_dying(ns);
> +	}
>  	up_read(&ctrl->namespaces_rwsem);
>  
>  	nvme_remove_invalid_namespaces(ctrl, NVME_NSID_ALL);
> @@ -1698,6 +1701,10 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
>  {
>  	struct nvme_ns *ns = disk->private_data;
>  
> +	/* if ns is removing we cannot mangle with the request queue */
> +	if (test_bit(NVME_NS_REMOVING, &ns->flags))
> +		return;
> +
>  	/*
>  	 * If identify namespace failed, use default 512 byte block size so
>  	 * block layer can use before failing read/write for 0 capacity.
> @@ -2776,6 +2783,10 @@ static int nvme_dev_user_cmd(struct nvme_ctrl *ctrl, void __user *argp)
>  		ret = -EINVAL;
>  		goto out_unlock;
>  	}
> +	if (test_bit(NVME_NS_REMOVING, &ns->flags)) {
> +		ret = -ENODEV;
> +		goto out_unlock;
> +	}
>  
>  	dev_warn(ctrl->device,
>  		"using deprecated NVME_IOCTL_IO_CMD ioctl on the char device!\n");
> @@ -3255,6 +3266,10 @@ static struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned nsid)
>  		if (ns->head->ns_id == nsid) {
>  			if (!kref_get_unless_zero(&ns->kref))
>  				continue;
> +			if (test_bit(NVME_NS_REMOVING, &ns->flags)) {
> +				nvme_put_ns(ns);
> +				continue;
> +			}
>  			ret = ns;
>  			break;
>  		}
> @@ -3445,6 +3460,8 @@ static void nvme_remove_invalid_namespaces(struct nvme_ctrl *ctrl,
>  
>  	down_write(&ctrl->namespaces_rwsem);
>  	list_for_each_entry_safe(ns, next, &ctrl->namespaces, list) {
> +		if (test_bit(NVME_NS_REMOVING, &ns->flags))
> +			continue;
>  		if (ns->head->ns_id > nsid || test_bit(NVME_NS_DEAD, &ns->flags))
>  			list_move_tail(&ns->list, &rm_list);
>  	}
> -- 
> 2.16.4
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
