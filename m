Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D95775721
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 20:43:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ql8odMtXxUAnm3tmOKyPc/xw2WJICPVuFxeq3Dco/qc=; b=M8a2IZLs/Fd8g5
	JRbUz9F2xZ3K2v/1Azm7k/mBoVRw3bK0FxHQpWpOPKBtRWtHff7amhPn+PHvyp3aCJO86Qb4hJ73x
	paQ/TeOOyari7xMDKEm+qvTxn1DdtDgtBrZSOl2yWwL0feCfB0nUGbtEWyY+oN9egsw6HfvGuPPGH
	yNzsW/bAtjQ+SOMBINcPFOBAsy5PFqG16ZBhJgK1f5YTezyL+0qFTDKq6ItJg6G1G/FgqhlmwzrYQ
	BJOXK87ugmAjDsnwGHev714Hu+++798RP+ZbhjzFkSvPomaFXsM6i7eY/wu2/DP9Ja5BLidyRSkGq
	S8GLIGGmiag/Ln1WhszQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqihu-00012q-3M; Thu, 25 Jul 2019 18:43:14 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqihl-00012X-JS
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 18:43:07 +0000
Received: from s01061831bf6ec98c.cg.shawcable.net ([68.147.80.180]
 helo=[192.168.6.132])
 by ale.deltatee.com with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <logang@deltatee.com>)
 id 1hqihj-0002qK-Qq; Thu, 25 Jul 2019 12:43:04 -0600
To: Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
References: <20190725183758.3318-1-sagi@grimberg.me>
From: Logan Gunthorpe <logang@deltatee.com>
Message-ID: <5f04998a-5a79-f05b-e64a-3029d919c81c@deltatee.com>
Date: Thu, 25 Jul 2019 12:43:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190725183758.3318-1-sagi@grimberg.me>
Content-Language: en-US
X-SA-Exim-Connect-IP: 68.147.80.180
X-SA-Exim-Rcpt-To: keith.busch@intel.com, hch@lst.de,
 linux-nvme@lists.infradead.org, sagi@grimberg.me
X-SA-Exim-Mail-From: logang@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.9 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] nvme: fix controller removal race with scan work
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_114305_689736_0153921F 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org



On 2019-07-25 12:37 p.m., Sagi Grimberg wrote:
> ---
>  drivers/nvme/host/core.c      | 11 +++++++++++
>  drivers/nvme/host/multipath.c | 35 +++++++++++++++++++++++++++++------
>  drivers/nvme/host/nvme.h      |  2 +-
>  3 files changed, 41 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 1c2863216082..bb5cf7e80969 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3577,6 +3577,17 @@ void nvme_remove_namespaces(struct nvme_ctrl *ctrl)
>  	struct nvme_ns *ns, *next;
>  	LIST_HEAD(ns_list);
>  
> +	/*
> +	 * make sure to requeue I/O to all namespaces as these
> +	 * might result from the scan itself and must complete
> +	 * for the scan_work to make progress
> +	 */
> +	mutex_lock(&ctrl->scan_lock);
> +	list_for_each_entry(ns, &ctrl->namespaces, list)
> +		if (nvme_mpath_clear_current_path(ns))
> +			kblockd_schedule_work(&ns->head->requeue_work);
> +	mutex_unlock(&ctrl->scan_lock);

If you try to compile this patch with multipath disabled I think you'll
find this doesn't work seeing 'requeue_work' only exists with
CONFIG_NVME_MULTIPATH set.

My solution to this is here:

https://github.com/sbates130272/linux-p2pmem/commit/0c2fbe1abd5e799cd42fc7f55ee0a7f05df8ac4a.patch

Logan

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
