Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B80798873
	for <lists+linux-nvme@lfdr.de>; Thu, 22 Aug 2019 02:23:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7AlpbVjeF1jBX5hzYSRPxCQkOkY4YzTg5wW0o7uBsGs=; b=NdiOWE3k3qyQfM
	HSnVj5W4CCC+sNMNuXOXtvl1hPS4V0F8dNNxe8T3wSHVOPYkRzg3yhaUE5yAQa1pngMTfbjQeybAa
	pGJs1rxVJkzOcoXLYjo/RpgQuxp8d0cEf5K+9MjLHzS5DGR+CWA/frve4WVO+GxvnirVYe08JPJk+
	muyz0gGsvZ2Nqu1naFN1kbvg4v2gNcFbipvSrhX4EG7sGF5ZeoEHbcnUqtYnIlL68XOjeNe8i9nav
	0+B5mg0kdQmr0bwpFlIKGeOKm0ZP7XiHYE9euJFzoGVQmnDsk+Bz7aYC3uG4DUxFdEPN8ajHdzgoN
	cyKTtJv6UQRWXubLm58Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0at8-0007Lb-0x; Thu, 22 Aug 2019 00:23:38 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0at2-0007L8-0Y
 for linux-nvme@lists.infradead.org; Thu, 22 Aug 2019 00:23:33 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 9CF5C68BFE; Thu, 22 Aug 2019 02:23:28 +0200 (CEST)
Date: Thu, 22 Aug 2019 02:23:28 +0200
From: Christoph Hellwig <hch@lst.de>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH v2 3/3] nvme: fire discovery log page change events to
 userspace
Message-ID: <20190822002328.GP9511@lst.de>
References: <20190712180211.26333-1-sagi@grimberg.me>
 <20190712180211.26333-4-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190712180211.26333-4-sagi@grimberg.me>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_172332_203028_5169C0FC 
X-CRM114-Status: GOOD (  16.23  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 12, 2019 at 11:02:11AM -0700, Sagi Grimberg wrote:
> Provide userspace with nvme discovery controller device instance,

.. "with a .." ?

> controller traddr and trsvcid. We'd expect userspace to handle
> this event by issuing a discovery + connect.
> 
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
> ---
>  drivers/nvme/host/core.c | 30 +++++++++++++++++++++++++++++-
>  1 file changed, 29 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 116c210826c2..76cd3dd8736a 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1180,7 +1180,8 @@ int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
>  EXPORT_SYMBOL_GPL(nvme_set_queue_count);
>  
>  #define NVME_AEN_SUPPORTED \
> -	(NVME_AEN_CFG_NS_ATTR | NVME_AEN_CFG_FW_ACT | NVME_AEN_CFG_ANA_CHANGE)
> +	(NVME_AEN_CFG_NS_ATTR | NVME_AEN_CFG_FW_ACT | NVME_AEN_CFG_ANA_CHANGE | \
> +	 NVME_AEN_CFG_DISC_CHANGE)
>  
>  static void nvme_enable_aen(struct nvme_ctrl *ctrl)
>  {
> @@ -3612,6 +3613,30 @@ static void nvme_aen_uevent(struct nvme_ctrl *ctrl)
>  	kfree(envp[0]);
>  }
>  
> +static void nvme_disc_aen_uevent(struct nvme_ctrl *ctrl)
> +{
> +	struct nvmf_ctrl_options *opts = ctrl->opts;
> +	char *envp[16];
> +	int i, envloc = 0;
> +
> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_EVENT=discovery");
> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_CTRL_NAME=%s",
> +			dev_name(ctrl->device));
> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRTYPE=%s", opts->transport);

This adds a > 80 character line.

> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRADDR=%s", opts->traddr);
> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_TRSVCID=%s",
> +			opts->trsvcid ?: "none");
> +	envp[envloc++] = kasprintf(GFP_KERNEL, "NVME_HOST_TRADDR=%s",
> +			opts->host_traddr ?: "none");
> +	envp[envloc] = NULL;
> +
> +	for (i = 0; i < envloc; i++)
> +		dev_dbg(ctrl->device, "%s\n", envp[i]);

Why are we not having a generic AEN uevent for those that we want to
pass on?  Also most of the information is redundant as it can be
easily derived from the controllers sysfs directory.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
