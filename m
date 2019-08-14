Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49ED28DDF0
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 21:34:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yv66sOv8BL2Q7l3o0QM/t7SkSH1fHNKHOo0VFKximyQ=; b=uroP7Hjg8XyIlq
	DWpEbESp+fOycZYQopOyBQ1qB/GsGgbfvEonCsT43usCu0OMSWpYNwwUrXG9Dm5+UOOixJBg6pOtT
	pT/MJEGiAhgGrJgeVOw3nZNOoXS3QhjZQq6ijd3RNvxzscJXwHC0wL5QlGt9OH3gkjcIYQ9YYFQCJ
	FhGZmcCrSlvhkV2kt8FY75UU5nahaW+FuKQDc6PPjbCM7cxG9uTuQ5FKot+kAm9ppugk3tC6a7WNZ
	R5U/+CgJKjWsJuQELWJQe68G5UZkNfWfo6xqdtQLgpcMg6l5NZJY8uGKskQZLPUlHjmVHVhGkZpjj
	yMXPe1vIqbjvx+DgnTKg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxz1v-0002hY-TT; Wed, 14 Aug 2019 19:33:56 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxz1n-0002gs-PT
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 19:33:49 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 Aug 2019 12:33:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,386,1559545200"; d="scan'208";a="178252246"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga007.fm.intel.com with ESMTP; 14 Aug 2019 12:33:45 -0700
Date: Wed, 14 Aug 2019 13:31:32 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario Limonciello <mario.limonciello@dell.com>
Subject: Re: [PATCH] nvme: Add quirk for LiteON CL1 devices running FW 22301111
Message-ID: <20190814193132.GD3256@localhost.localdomain>
References: <1565798749-15672-1-git-send-email-mario.limonciello@dell.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1565798749-15672-1-git-send-email-mario.limonciello@dell.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_123347_845258_7A35CA26 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Crag Wang <Crag.Wang@dell.com>, Sagi Grimberg <sagi@grimberg.me>,
 "sjg@google.com" <sjg@google.com>, LKML <linux-kernel@vger.kernel.org>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>,
 Jens Axboe <axboe@fb.com>, Ryan Hong <Ryan.Hong@Dell.com>,
 Jared Dominguez <jared.dominguez@dell.com>,
 Charles Hyde <charles.hyde@dellteam.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 14, 2019 at 09:05:49AM -0700, Mario Limonciello wrote:
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 8f3fbe5..47c7754 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -2251,6 +2251,29 @@ static const struct nvme_core_quirk_entry core_quirks[] = {
>  		.vid = 0x1179,
>  		.mn = "THNSF5256GPUK TOSHIBA",
>  		.quirks = NVME_QUIRK_NO_APST,
> +	},
> +	/*
> +	 * This LiteON CL1 firmware version has a race condition associated with
> +	 * actions related to suspend to idle.  LiteON has resolved the problem
> +	 * in future firmware.
> +	 */
> +	{
> +		.vid = 0x14a4,
> +		.mn = "CL1-3D128-Q11 NVMe LITEON 128GB",
> +		.fr = "22301111",
> +		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
> +	},
> +	{
> +		.vid = 0x14a4,
> +		.mn = "CL1-3D256-Q11 NVMe LITEON 256GB",
> +		.fr = "22301111",
> +		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
> +	},
> +	{
> +		.vid = 0x14a4,
> +		.mn = "CL1-3D512-Q11 NVMe LITEON 512GB",
> +		.fr = "22301111",
> +		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
>  	}
>  };

Are there models from this vendor with this same 'fr' that don't need
this quirk? If not, you can leave .mn blank and just use a single entry.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
