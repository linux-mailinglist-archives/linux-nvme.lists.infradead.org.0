Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 942441647E6
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 16:10:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a/kvXnIM4ICIpGZNvPeOEiER/Dz1lXtk1UBdCMTUim4=; b=rG0zFgOwWE0rWa
	CL+eVBpnlMYoBSPuM5VLZ3JQQPY2/uAWCfGqEvVq64VBQdBwsSC2eNuidvy5m+OvovupndvWzznro
	D1OJzewuv521qEFj12XT9cNqRNuWHz8RDBQIufOVtDpFvHk3PQ7mMl0jKjpZNTs0gOe3op+KDYOx9
	59GB8ZsaxbY2eaqdEu2uQXso+JL+cV8v7gl6oKB5Jm7joCbCAleKhEw2ochs39djsEa23q+nE+5tI
	sU7QEQdcOjQNTt7w+SRYckro/3C6/fjsT2aP2v0s/kr2MoXDJEpoqm2Rd+VmVLjs1iGaVeG6RcdYa
	k5l2lICVcyPVvxwwxQvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4QzO-00074c-4e; Wed, 19 Feb 2020 15:10:14 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4Qz6-00070D-8W
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 15:09:57 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 8C64C68B20; Wed, 19 Feb 2020 16:09:53 +0100 (CET)
Date: Wed, 19 Feb 2020 16:09:53 +0100
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 1/2] nvme: expose hostnqn via sysfs for fabrics
 controllers
Message-ID: <20200219150953.GG17748@lst.de>
References: <20200208011354.20889-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200208011354.20889-1-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_070956_463842_3AE00EBF 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Feb 07, 2020 at 05:13:53PM -0800, Sagi Grimberg wrote:
> We allow userspace to connect with a custom hostnqn which
> is useful for certain use-cases. however there is is no way
> to tell what is the hostnqn used to connect to a given controller.
> 
> Expose this so userspace can correlate controllers based on hostnqn.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
> Changes from v1:
> - fix changelog
>  drivers/nvme/host/core.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 5dc32b72e7fa..29a4f14360fa 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3242,6 +3242,16 @@ static ssize_t nvme_sysfs_show_subsysnqn(struct device *dev,
>  }
>  static DEVICE_ATTR(subsysnqn, S_IRUGO, nvme_sysfs_show_subsysnqn, NULL);
>  
> +static ssize_t nvme_sysfs_show_hostnqn(struct device *dev,
> +					struct device_attribute *attr,
> +					char *buf)
> +{
> +	struct nvme_ctrl *ctrl = dev_get_drvdata(dev);
> +
> +	return snprintf(buf, PAGE_SIZE, "%s\n", ctrl->opts->host->nqn);
> +}
> +static DEVICE_ATTR(hostnqn, S_IRUGO, nvme_sysfs_show_hostnqn, NULL);
> +
>  static ssize_t nvme_sysfs_show_address(struct device *dev,
>  					 struct device_attribute *attr,
>  					 char *buf)
> @@ -3267,6 +3277,7 @@ static struct attribute *nvme_dev_attrs[] = {
>  	&dev_attr_numa_node.attr,
>  	&dev_attr_queue_count.attr,
>  	&dev_attr_sqsize.attr,
> +	&dev_attr_hostnqn.attr,
>  	NULL
>  };
>  
> @@ -3280,6 +3291,8 @@ static umode_t nvme_dev_attrs_are_visible(struct kobject *kobj,
>  		return 0;
>  	if (a == &dev_attr_address.attr && !ctrl->ops->get_address)
>  		return 0;
> +	if (a == &dev_attr_hostnqn.attr && (!ctrl->opts))

No nee for the inner braces here.

Otherwise looks good:

Reviewed-by: Christoph Hellwig <hch@lst.de>

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
