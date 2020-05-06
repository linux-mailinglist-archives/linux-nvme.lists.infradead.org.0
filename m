Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC6951C69DB
	for <lists+linux-nvme@lfdr.de>; Wed,  6 May 2020 09:13:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bI9oIS9DvUhaJj2Ss+Bm69e8WqS2e99UWPmpxA6WH2E=; b=d70o174p/blNOV
	sUaV2dJmKFikeXx7/kb8NrVqtN1nUSX/TjMch9MV0WWE9gfhniva0O45j74SDIQE+rBoPhnzl9ssG
	84l51tRbLCgaaGIlpXDkTGcJAZKgsna4zysEZ9jIKl79Ms0FaMKMej/1dTu2a2hMBlmOl9v1CvPwP
	Ha7xewUuE0J1lvs+2aB5x69SXt727Qydy7oTveZEIgu0tJS3RUcA4DOWWkZnNHbOBIjQ8CAtxt0cQ
	2I9HUk+cl4WQ8uKuOouo6q7jSC9xgVAu5yYAghq9wGadSY8SmBNRRdVd7Y4cfcqymiNvvb3P0me46
	yuJcrcJ4W25r2wgUk3rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWEFO-0003ob-Ke; Wed, 06 May 2020 07:13:38 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEFE-0003l7-BK
 for linux-nvme@lists.infradead.org; Wed, 06 May 2020 07:13:29 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9981068C65; Wed,  6 May 2020 09:13:25 +0200 (CEST)
Date: Wed, 6 May 2020 09:13:25 +0200
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH 2/3] nvmet: on ns size change generate AEN from configfs
Message-ID: <20200506071325.GB12145@lst.de>
References: <20200506014629.39509-1-chaitanya.kulkarni@wdc.com>
 <20200506014629.39509-3-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200506014629.39509-3-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_001328_557074_755B0490 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 06:46:28PM -0700, Chaitanya Kulkarni wrote:
> Add a new attribute resize_check for the namespace which allows users
> to revalidate and generate the AEN if needed. This attribute is needed
> so that we can install userspace rules with systemd service based on
> inotify/fsnotify/uevent. The registered callback for such a service will
> end up writing to this attribute to generate AEN if needed.
> 
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
>  drivers/nvme/target/configfs.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
> index 58cabd7b6fc5..9e6b2e4318e8 100644
> --- a/drivers/nvme/target/configfs.c
> +++ b/drivers/nvme/target/configfs.c
> @@ -543,6 +543,27 @@ static ssize_t nvmet_ns_buffered_io_store(struct config_item *item,
>  
>  CONFIGFS_ATTR(nvmet_ns_, buffered_io);
>  
> +static ssize_t nvmet_ns_resize_check_store(struct config_item *item,
> +		const char *page, size_t count)
> +{
> +	struct nvmet_ns *ns = to_nvmet_ns(item);
> +	bool val;
> +
> +	if (strtobool(page, &val))
> +		return -EINVAL;
> +
> +	if (!val)
> +		return count;
> +
> +	mutex_lock(&ns->subsys->lock);
> +	if (ns->enabled && nvmet_ns_revalidate(ns))
> +		nvmet_ns_changed(ns->subsys, ns->nsid);

I think the nvmet_ns_changed should go into common code, even when
revalidating as part of the identify we should send the AEN.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
