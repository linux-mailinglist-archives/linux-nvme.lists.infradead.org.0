Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2C81CEBCB
	for <lists+linux-nvme@lfdr.de>; Mon,  7 Oct 2019 20:29:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zk7ZIPoG6PnNeGYnjA92+p55b2yw/vNJ9SmcqwF8jjs=; b=ecazvfpmSgimx5
	5YkEQ10SOVLsLMtoqmwtQWB4FJmWY+nQkHbtHjub0WrEKF2zZVSVlxuO35Uh+/j8rzp7KWodX3ALO
	4xPdGRONGloNgdUEZBsDgF74dJESkTYxxq2OzLzIyWabcy3RhH+UbxF13bW664bA6ZpNXcR1A5r11
	ZtDRw1ELZCw8wEkGXsFGapw6ZHuOILP8vEkM9IhlK43pbi7JE5g8dFCpHhMDRhnnFHdHL5dqS277b
	luIqaJZacUb2KruZQAEIGARqJ+LHcuTnYmXfkb9Q1CGimcZJSUtVp4w5VotlxnI+1Nwitu02r6wJv
	SS8gHVL7QZL2NtL3QiHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHXkk-0004Ow-6C; Mon, 07 Oct 2019 18:29:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHXkf-0004OV-N4
 for linux-nvme@lists.infradead.org; Mon, 07 Oct 2019 18:28:59 +0000
Received: from C02WT3WMHTD6 (rap-us.hgst.com [199.255.44.250])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CDE7E206BB;
 Mon,  7 Oct 2019 18:28:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570472937;
 bh=V0HCvV3/UZim9r66yiqTv/12tsCJh8QrV4Dh+1Dd0cg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=vTGwUn1EwXYM/nhveGZypgYfPjefat5pGUYT4fvk14xNHEfXv6Xkfp1r1JHYF/Ejs
 48DY6a09P0usDkiBdrOpWMGpZjleaVZhaK8m0/eW0QuKXNF5iDWMB/nli7ZT+GaKhQ
 vTTylPuTjJbwu6A6T291YDpj8Ms68pouwV6LIPTA=
Date: Mon, 7 Oct 2019 12:28:54 -0600
From: Keith Busch <kbusch@kernel.org>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
Subject: Re: [PATCH v4] nvme/pci: Split 8-byte reads
Message-ID: <20191007182854.GC13149@C02WT3WMHTD6>
References: <20191007182244.8516-1-ard.biesheuvel@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191007182244.8516-1-ard.biesheuvel@linaro.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_112857_769173_2A3C95BE 
X-CRM114-Status: GOOD (  16.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: axboe@fb.com, ilias.apalodimas@linaro.org, sagi@grimberg.me,
 linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Oct 07, 2019 at 08:22:44PM +0200, Ard Biesheuvel wrote:
> The nvme pci driver had split 8-byte register reads using lo_hi_readq()
> due to nvme controllers that do not support that sized access. This
> behavior was inadvertently changed to readq(), which may break those
> controllers. Restore the previous behavior.
> 
> Fixes: 7fd8930f26be4 ("nvme: add a common helper to read Identify Controller data")
> Signed-off-by: Ard Biesheuvel <ard.biesheuvel@linaro.org>

Looks good to me.

Reviewed-by: Keith Busch <kbusch@kernel.org>

> ---
>  drivers/nvme/host/pci.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index bb88681f4dc3..3fe0c5185646 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2672,7 +2672,12 @@ static int nvme_pci_reg_write32(struct nvme_ctrl *ctrl, u32 off, u32 val)
>  
>  static int nvme_pci_reg_read64(struct nvme_ctrl *ctrl, u32 off, u64 *val)
>  {
> -	*val = readq(to_nvme_dev(ctrl)->bar + off);
> +	/*
> +	 * Split the 8-byte read into two 4-byte reads since all controllers
> +	 * support 4 byte register reads, but some do not support the larger
> +	 * access size.
> +	 */
> +	 *val = lo_hi_readq(to_nvme_dev(ctrl)->bar + off);
>  	return 0;
>  }
>  
> -- 
> 2.20.1
> 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
