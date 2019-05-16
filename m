Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5203320E35
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 19:49:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vJc8aJiMMV/kwBDEkbsZbyYWbCIJXV6iJJd/jARgFoM=; b=OHWbTSSwG1nZAK75lZBdZeugf
	wV18PLExQwlshS8Fz8lEFyqk4XEAZFwv09En+s7envVHVX8Xk1OHdnOpSeTRARzUfdAYdN+jTCf17
	On2BexWtX6Dio/hBAzckmrAGfIdKmBalnGYP68h9iXRKsvJ4ybTSYpCVjEM3lVZjYLN1nttMO4o+H
	6myVW0RZFsShhfWeH7fEIj+yPuFp7vqSZktJUqMF0mwYPjzi34cgdcy+Vco7pfO6b/Xd71Zs3kH7f
	QKqq1sXVaB6LpsotnoYQNgcbrp3zhIkg4lvtwVjpQPDh7VXLPZvV8nehoKtQeUNovfXENbFbrz9BS
	AXDR6ehJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRKVY-0003xe-Hu; Thu, 16 May 2019 17:49:32 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRKVT-0003xH-Ou
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 17:49:29 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 10:49:22 -0700
Received: from unknown (HELO [10.232.112.136]) ([10.232.112.136])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/AES256-SHA;
 16 May 2019 10:49:22 -0700
Subject: Re: Issue with namespace delete
To: Christoph Hellwig <hch@infradead.org>, Keith Busch <kbusch@kernel.org>
References: <f215cfd2-c0ce-34ff-bc8b-4a577a73372e@intel.com>
 <20190516151130.GB23416@localhost.localdomain>
 <20190516155356.GA26104@infradead.org>
From: "Heitke, Kenneth" <kenneth.heitke@intel.com>
Message-ID: <8745b7bb-e433-a54b-5ecf-b4584038d832@intel.com>
Date: Thu, 16 May 2019 11:49:21 -0600
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190516155356.GA26104@infradead.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_104927_846550_18BC6EAF 
X-CRM114-Status: GOOD (  20.08  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Thanks Christoph. With my limited testing, your patch resolves my issue.

On 5/16/2019 9:53 AM, Christoph Hellwig wrote:
> On Thu, May 16, 2019 at 09:11:30AM -0600, Keith Busch wrote:
>> You may have avoided this if you send the ioctl through the controller
>> char dev rather than the namespace block dev handle.
>>
>> I'm not sure what the best way to fix this might be right now.
> 
> We could try something like the changes below, although they are
> completely untested for now and will need to be split up into
> a few patches:
> 
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index a6644a2c3ef7..537cbef5bc4a 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1362,9 +1362,14 @@ static struct nvme_ns *nvme_get_ns_from_disk(struct gendisk *disk,
>   {
>   #ifdef CONFIG_NVME_MULTIPATH
>   	if (disk->fops == &nvme_ns_head_ops) {
> +		struct nvme_ns *ns;
> +
>   		*head = disk->private_data;
>   		*srcu_idx = srcu_read_lock(&(*head)->srcu);
> -		return nvme_find_path(*head);
> +		ns = nvme_find_path(*head);
> +		if (!ns)
> +			srcu_read_unlock(&(*head)->srcu, *srcu_idx);
> +		return ns;
>   	}
>   #endif
>   	*head = NULL;
> @@ -1384,8 +1389,6 @@ static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
>   	case NVME_IOCTL_ID:
>   		force_successful_syscall_return();
>   		return ns->head->ns_id;
> -	case NVME_IOCTL_ADMIN_CMD:
> -		return nvme_user_cmd(ns->ctrl, NULL, (void __user *)arg);
>   	case NVME_IOCTL_IO_CMD:
>   		return nvme_user_cmd(ns->ctrl, ns, (void __user *)arg);
>   	case NVME_IOCTL_SUBMIT_IO:
> @@ -1395,9 +1398,6 @@ static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
>   		if (ns->ndev)
>   			return nvme_nvm_ioctl(ns, cmd, arg);
>   #endif
> -		if (is_sed_ioctl(cmd))
> -			return sed_ioctl(ns->ctrl->opal_dev, cmd,
> -					 (void __user *) arg);
>   		return -ENOTTY;
>   	}
>   }
> @@ -1405,16 +1405,30 @@ static int nvme_ns_ioctl(struct nvme_ns *ns, unsigned cmd, unsigned long arg)
>   static int nvme_ioctl(struct block_device *bdev, fmode_t mode,
>   		unsigned int cmd, unsigned long arg)
>   {
> +	void __user *argp = (void __user *)arg;
>   	struct nvme_ns_head *head = NULL;
> +	struct nvme_ctrl *ctrl = NULL;
>   	struct nvme_ns *ns;
> -	int srcu_idx, ret;
> +	int srcu_idx, ret = 0;
>   
>   	ns = nvme_get_ns_from_disk(bdev->bd_disk, &head, &srcu_idx);
>   	if (unlikely(!ns))
> -		ret = -EWOULDBLOCK;
> +		return -EWOULDBLOCK;
> +
> +	if (cmd == NVME_IOCTL_ADMIN_CMD || is_sed_ioctl(cmd))
> +		ctrl = nvme_get_ctrl(ns->ctrl);
>   	else
>   		ret = nvme_ns_ioctl(ns, cmd, arg);
>   	nvme_put_ns_from_disk(head, srcu_idx);
> +
> +	if (ctrl) {
> +		if (cmd == NVME_IOCTL_ADMIN_CMD)
> +			return nvme_user_cmd(ctrl, NULL, argp);
> +		if (is_sed_ioctl(cmd))
> +			return sed_ioctl(ctrl->opal_dev, cmd, argp);
> +		nvme_put_ctrl(ctrl);
> +	}
> +
>   	return ret;
>   }
>   
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 5ee75b5ff83f..86625767da8b 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -405,9 +405,10 @@ static inline void nvme_end_request(struct request *req, __le16 status,
>   	blk_mq_complete_request(req);
>   }
>   
> -static inline void nvme_get_ctrl(struct nvme_ctrl *ctrl)
> +static inline struct nvme_ctrl *nvme_get_ctrl(struct nvme_ctrl *ctrl)
>   {
>   	get_device(ctrl->device);
> +	return ctrl;
>   }
>   
>   static inline void nvme_put_ctrl(struct nvme_ctrl *ctrl)
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
