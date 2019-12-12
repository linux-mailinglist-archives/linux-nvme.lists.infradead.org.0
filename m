Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CF6611C90E
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 10:26:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SZWd1woRcXgcY/RUg1XtqnO0Ohi7FyuU1+o8ABHSTs=; b=JFrpvFpuTkn3u3
	TNDxzrTWJNCXLdgviiP0Djnjtyo8gAphsPhgv/A2GMA3XCpszIxBaAQaqf4gtLwRqhJbIS3SeghzS
	AOSz+M2nL8FG6qaSz8ABBbWE+UEgHXRfc0PfidWEBTvGYljoISlKC1CTBmkAw9vetwiGxVINeWf/i
	Vb3KEVj5J9SmWaGvsXDXKjqIW7dRJz6d2MO/8/69+LPVzcGH89gs8Y7ZmW2da+uvNCSuHQr7gYUHj
	8J4ju7HpiSfVcS98iL83umaswofo25Pq4FrXvDTqZj3cT6wrkrf4cvsfHmKkVxbs6u7mNkrSaEhPZ
	SzREaEGiA5xJty2NA7LA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKjf-0003M8-V1; Thu, 12 Dec 2019 09:26:15 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKjb-0003Ln-4i
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:26:12 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id D1CE068B05; Thu, 12 Dec 2019 10:26:08 +0100 (CET)
Date: Thu, 12 Dec 2019 10:26:08 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V3 1/3] nvmet: make ctrl-id configurable
Message-ID: <20191212092608.GH2399@lst.de>
References: <20191127094034.12334-1-chaitanya.kulkarni@wdc.com>
 <20191127094034.12334-2-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127094034.12334-2-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_012611_335301_33E17217 
X-CRM114-Status: GOOD (  12.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 01:40:32AM -0800, Chaitanya Kulkarni wrote:
> +	int ret = -EINVAL;
> +	u16 cntlid_min;
> +
> +	if (sscanf(page, "%hu\n", &cntlid_min) != 1)
> +		return ret;
> +
> +	if (cntlid_min == 0) {
> +		pr_info("specified cntlid_min = 0 is not allowed\n");
> +		return ret;
> +	}
> +
> +	down_write(&nvmet_config_sem);
> +	if (cntlid_min >= to_subsys(item)->cntlid_max) {
> +		pr_info("specified cntlid_min is >= current cntlid_max\n");
> +		goto out;

I'm not sure we need the pr_info calls here.  The error conditions
are pretty clear when we get an -EINVAL from the write.

> +	}
> +
> +	ret = 0;
> +	to_subsys(item)->cntlid_min = cntlid_min;
> +out:
> +	up_write(&nvmet_config_sem);
> +
> +	return ret ? ret : cnt;

The tail of the function could be simplified by avoid the ret variable.
the ret variable:

	down_write(&nvmet_config_sem);
	if (cntlid_min >= to_subsys(item)->cntlid_max)
		goto out_unlock;
	to_subsys(item)->cntlid_min = cntlid_min;
	up_write(&nvmet_config_sem);
	return cnt;

out_unlock:
	up_write(&nvmet_config_sem);
	return -EINVAL;


> +	if (cntlid_max == 0) {
> +		pr_info("specified cntlid_max = 0 is not allowed\n");
> +		return ret;
> +	}
> +
> +	down_write(&nvmet_config_sem);
> +	if (cntlid_max <= to_subsys(item)->cntlid_min) {
> +		pr_info("specified cntlid_max is <= current cntlid_min\n");
> +		goto out;
> +	}
> +
> +	ret = 0;
> +	to_subsys(item)->cntlid_max = cntlid_max;
> +out:
> +	up_write(&nvmet_config_sem);
> +
> +	return ret ? ret : cnt;

Same comments here.

>  	}
> -
> +	subsys->cntlid_min = NVME_CNTLID_MIN;
> +	subsys->cntlid_max = NVME_CNTLID_MAX;
>  	kref_init(&subsys->ref);
>  
>  	mutex_init(&subsys->lock);
> diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
> index 46df45e837c9..6492d12e626a 100644
> --- a/drivers/nvme/target/nvmet.h
> +++ b/drivers/nvme/target/nvmet.h
> @@ -211,6 +211,8 @@ struct nvmet_subsys {
>  	struct list_head	namespaces;
>  	unsigned int		nr_namespaces;
>  	unsigned int		max_nsid;
> +	u16			cntlid_min;
> +	u16			cntlid_max;
>  
>  	struct list_head	ctrls;
>  
> -- 
> 2.22.1
---end quoted text---

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
