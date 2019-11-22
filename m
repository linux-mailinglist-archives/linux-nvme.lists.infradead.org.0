Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 606A910738A
	for <lists+linux-nvme@lfdr.de>; Fri, 22 Nov 2019 14:43:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=X/BpZ7cU+5ErXhLfGq9PUVQb599mmQZVk/yBSl90ooI=; b=EjPAVl3R5jvoCQ
	z0Bz3ESEQsIX/rDkCiPqKTO3A+SLRZx7Q6fsmNTrCYDbDgQV7bipAz14DdLRNbTPvLbAYn+DaTB5E
	NnHXwF8yHmFLGPHxYIF3sZv/bbCeVk/HVXXDP4ode7ncnKJTw3Cnc9Se6cbdj6xMop7r6w68CbJ5W
	GmO22a+Q02igxum2PI5Fvqle8Wz6mCS26CTAp472nXV/Ia+ym54lsp1TdEbuMWTHBlxZdupGfdAT6
	KzhSfNunkwT6hcqDBihhPcLqQqGjXeVHul3uUXs4CEyolx034eZfwNKWHqJAWoEvIJkoJeyW1cC5o
	NU5EeVxKd+IctwiqN7JA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iY9DU-0005Vs-0e; Fri, 22 Nov 2019 13:43:20 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iY9DP-0005VK-Lz
 for linux-nvme@lists.infradead.org; Fri, 22 Nov 2019 13:43:17 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 59D1E68C4E; Fri, 22 Nov 2019 14:43:12 +0100 (CET)
Date: Fri, 22 Nov 2019 14:43:12 +0100
From: Christoph Hellwig <hch@lst.de>
To: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Subject: Re: [PATCH V2 1/2] nvmet: make ctrl-id configurable
Message-ID: <20191122134312.GA26083@lst.de>
References: <20191122074154.12159-1-chaitanya.kulkarni@wdc.com>
 <20191122074154.12159-2-chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122074154.12159-2-chaitanya.kulkarni@wdc.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191122_054315_869929_2737A1CC 
X-CRM114-Status: GOOD (  21.34  )
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 11:41:53PM -0800, Chaitanya Kulkarni wrote:
> This patch adds a new target subsys attribute which allows user to
> optionally specify target controller IDs which then used in the
> nvmet_execute_identify_ctrl() to fill up the nvme_id_ctrl structure.
> 
> For example, when using a cluster setup with two nodes, with a dual
> ported NVMe drive and exporting the drive from both the nodes,
> The connection to the host fails due to the same controller ID and
> results in the following error message:-
> 
> "nvme nvmeX: Duplicate cntlid XXX with nvmeX, rejecting"
> 
> With this patch now user can partition the controller IDs for each
> subsystem by setting up the cntlid_min and cntlid_max. These values
> will be used at the time of the controller ID creation. By partitioning
> the ctrl-ids for each subsystem results in the unique ctrl-id space
> which avoids the collision.
> 
> When new attribute is not specified target will fall back to original
> cntlid calculation method.
> 
> Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
> ---
> Changes from V1:-
> 1. Add cntlid max and min configfs attributes.
> 2. Use simple if .. else statements instead of ternary operators.
> ---
>  drivers/nvme/target/configfs.c | 65 ++++++++++++++++++++++++++++++++++
>  drivers/nvme/target/core.c     |  8 +++--
>  drivers/nvme/target/nvmet.h    |  2 ++
>  3 files changed, 73 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/nvme/target/configfs.c b/drivers/nvme/target/configfs.c
> index 98613a45bd3b..5316cdb1b271 100644
> --- a/drivers/nvme/target/configfs.c
> +++ b/drivers/nvme/target/configfs.c
> @@ -862,10 +862,75 @@ static ssize_t nvmet_subsys_attr_serial_store(struct config_item *item,
>  }
>  CONFIGFS_ATTR(nvmet_subsys_, attr_serial);
>  
> +static bool nvmet_subsys_cntlid_store(struct nvmet_subsys *s, const char *page,
> +				      bool min)
> +{
> +	bool ret = true;
> +	u16 cid;
> +
> +	down_write(&nvmet_config_sem);
> +	if (sscanf(page, "%hu\n", &cid) != 1) {
> +		ret = false;
> +		goto out;
> +	}

No need to take the lock over the sscant.  That also means you can
directly return false here and don't need the ret variable or the
out label.  Also the rest of the function is so simple that I'd rather
duplicate it over the slightly confusing min parameter.

> +static ssize_t nvmet_subsys_cntlid_show(struct nvmet_subsys *s, char *page,
> +					bool min)
> +{
> +	if (min)
> +		return snprintf(page, PAGE_SIZE, "%u\n", s->cntlid_min);
> +
> +	return snprintf(page, PAGE_SIZE, "%u\n",  s->cntlid_max);

Just opencode the snprints in the two callers, which is going to
be much simpler.

> index 28438b833c1b..990ad4c7bdfd 100644
> --- a/drivers/nvme/target/core.c
> +++ b/drivers/nvme/target/core.c
> @@ -1267,8 +1267,11 @@ u16 nvmet_alloc_ctrl(const char *subsysnqn, const char *hostnqn,
>  	if (!ctrl->sqs)
>  		goto out_free_cqs;
>  
> +	if (subsys->cntlid_min > subsys->cntlid_max)
> +		goto out_free_cqs;

Shouldn't this check go into the store functions?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
