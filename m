Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E720EB22B9
	for <lists+linux-nvme@lfdr.de>; Fri, 13 Sep 2019 16:56:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHPgSpX9JAZ7qaU7BJi4A6U0GADBDF2gLwz+U4ra1FA=; b=G9tESYlDKIDDls
	IrjfD5MyFwp0QbFWqneGUE36t6OEux/05Aqo49VaV79I3kIMdmgSf2tLx8rXuv6kH/RO+6JnTBqrC
	rjvnmIpi3ezvMXPVs3xBHPk3H5J2ZvOo1rH64Tn9Sejujl4x5qTRmEPMMrFSv+PaZrmn4x3926oCK
	khMT43fzZZO1UQuMaNPsFpVOXAKT198ytpzm9vt4ydq6EgRrlWbpvBcOkO+1twV0sy/WR73LD02Dp
	NVkN+hBSAp4TCDyQCh1+ZS7tnM35A460IOF99M/g3zJe9dD/2b3rms4CD5itKlkd8Wos7RhVDiCTM
	lSFjHPxkqba3Hd0x7+/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8mzn-0004Hr-2E; Fri, 13 Sep 2019 14:56:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8myj-0004G3-RC
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 14:55:35 +0000
Received: from keith-busch (unknown [8.36.226.102])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D638F20830;
 Fri, 13 Sep 2019 14:55:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568386516;
 bh=gRv/JNoOExhCth8WDVaxabmd1ZJsvKd307jPN5ebLfg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=iTbtg1TV0dNXPDpCpr5CgZCh60HqiLIYkwTgQr5KmKROONVtfis/Rx/X9wQfX4S/D
 G9y20dAHZq8M1CreVCCx8NbDUNpaIl2Z98hAv6oE136u8hm4E7ZhRloDV2KfL85XlC
 5EtCeGuaso5zck3A9S4xD7CKKQyxUhOWziXHQvcE=
Date: Fri, 13 Sep 2019 08:55:14 -0600
From: Keith Busch <kbusch@kernel.org>
To: Balbir Singh <sblbir@amzn.com>
Subject: Re: [PATCH 2/2] nvme/host/core: Allow overriding of wait_ready timeout
Message-ID: <20190913145513.GA17139@keith-busch>
References: <20190913024432.7705-1-sblbir@amzn.com>
 <20190913024432.7705-2-sblbir@amzn.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190913024432.7705-2-sblbir@amzn.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_075519_211047_30025D81 
X-CRM114-Status: GOOD (  12.90  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Sep 13, 2019 at 02:44:32AM +0000, Balbir Singh wrote:
> Largely for debugging purposes where controllers with large
> timeouts get stuck during reset.
> 
> Signed-off-by: Balbir Singh <sblbir@amzn.com>
> ---
>  drivers/nvme/host/core.c | 8 ++++++++
>  drivers/nvme/host/nvme.h | 3 +++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 45b96c6ac2d5..fa7982dfe551 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -40,6 +40,11 @@ module_param_named(io_timeout, nvme_io_timeout, uint, 0644);
>  MODULE_PARM_DESC(io_timeout, "timeout in seconds for I/O");
>  EXPORT_SYMBOL_GPL(nvme_io_timeout);
>  
> +unsigned int nvme_wait_ready_timeout = 0;
> +module_param_named(wait_ready_timeout, nvme_wait_ready_timeout, uint, 0644);
> +MODULE_PARM_DESC(wait_ready_timeout, "timeout in seconds for wait ready on reset");
> +EXPORT_SYMBOL_GPL(nvme_wait_ready_timeout);

There's no need to export this symbol.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
