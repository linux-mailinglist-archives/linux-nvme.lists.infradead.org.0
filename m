Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B34A3F7D9E
	for <lists+linux-nvme@lfdr.de>; Mon, 11 Nov 2019 19:58:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+LbfdNMZtXEq2cn+47lHzctQ/MQVE/gNFA2SDz3Bok8=; b=mJeHoZ+TJZm0UJ
	+W6kOdKnuskfUbzlG95SUwHyqtCvqrHGbvUGK5QN955W9JZwDJJBYj9X6aXdsqqFzktxwNacCBHPS
	M/FKeTy1LqdeAt/cqrsn4kLNuiTR6GiOqDhujMZ/SCFon5Esp95Uad+ugeskGR9TbaB3//BCM2lMv
	HoW+MuDJaVUWwkLOGpjiHXH0hkr6ito7uJ6A2C2eCX2r2W4Lig3gEH0Ni6SM+0yNx3N+RLW0399go
	sMMIaPi6B/UsdzIu9ithM08G/oVFugfuwuq6hbn4qHVlfO1iz2WNHO2dQrEmB+RNE4HTkk9Csj5JF
	+2Ky2i4Xx3/ZXm2ZW+ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUEte-00051R-2z; Mon, 11 Nov 2019 18:58:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUEtZ-00050M-Do
 for linux-nvme@lists.infradead.org; Mon, 11 Nov 2019 18:58:38 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4302721783;
 Mon, 11 Nov 2019 18:58:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573498716;
 bh=vjSLPyKBLgQHIhUxpG+ivCs1Y2HXUw1ISrdiEj1Xr00=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=JxxS/7ZxgQjLiUAjrNhTflaIimPYEi6ilBoXEF6yucyMA64U/ONiNbapk2mJAk6WN
 M2TX2kn2SxlPQmR5t4IhMhHE5mqx6D/L8iZ2rH15p83McMI+gx4eiuwCfaZ5x2KMgC
 TAQdlZGcFrNHK1sBdrPCNHE1TBMrCUs9xT35930w=
Date: Tue, 12 Nov 2019 03:58:30 +0900
From: Keith Busch <kbusch@kernel.org>
To: Eduard Hasenleithner <eduard@hasenleithner.at>
Subject: Re: [RFC PATCH v2] Workaround for discard on non-conformant nvme
 devices
Message-ID: <20191111185830.GD10851@redsun51.ssa.fujisawa.hgst.com>
References: <216cfad5-b724-f69d-9a8c-c5ee2ec13212@hasenleithner.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <216cfad5-b724-f69d-9a8c-c5ee2ec13212@hasenleithner.at>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_105837_481041_E6B7B7C9 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Nov 10, 2019 at 07:27:08PM +0100, Eduard Hasenleithner wrote:
> +++ linux-5.3.7/drivers/nvme/host/core.c	2019-11-10 19:11:49.419372363 +0100
> @@ -562,8 +562,13 @@ static blk_status_t nvme_setup_discard(s
>  	struct nvme_dsm_range *range;
>  	struct bio *bio;
> 
> -	range = kmalloc_array(segments, sizeof(*range),
> -				GFP_ATOMIC | __GFP_NOWARN);
> +	if (!(ns->ctrl->quirks & NVME_QUIRK_DSM_PAGEALIGN)) {
> +		range = kmalloc_array(segments, sizeof(*range),
> +					GFP_ATOMIC | __GFP_NOWARN);
> +	} else {
> +		/* Device with quirk: use (page aligned) discard_page */
> +		range = NULL;
> +	}

Please initialize 'range' to NULL so we don't need the 'else' case.

> @@ -97,6 +97,11 @@ enum nvme_quirks {
>  	 * Force simple suspend/resume path.
>  	 */
>  	NVME_QUIRK_SIMPLE_SUSPEND		= (1 << 10),
> +
> +	/*
> +	 * Workaround for devices reading DSM beyond end of page.
> +	 */
> +	NVME_QUIRK_DSM_PAGEALIGN		= (1 << 11),

Let's get a better description of this. My recommendation:

	For devices that do not consider the DSM 'Number of Ranges'
	field when determining how much data to DMA. Page aligned and
	sized is always sufficient as that is the largest a DSM range
	list can be.

And let's add the known devices to the nvme pci_driver that require
this.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
