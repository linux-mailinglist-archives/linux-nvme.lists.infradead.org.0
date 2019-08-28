Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2D4FA0560
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 16:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cRwXQ4OYeWqTr4h++benX1L0Ltq+lYrITONeEpv8/1U=; b=fwTIJxFJMSOZ5f
	nB3Pqfjp7R/jYXdstSw43sdRAdKWRA6tgqjNgW+ZyrLEvGWpMXmmFxIzLEPI/5dkAVsGjY0dWCuka
	jh0F0ZhzRnu7I9IOCHyPRJJWjTBT09tbtv+g8umnNMv1GWTwQhwrt8bwQCmjkE8lhogMNo/QMRXqH
	sGDhpW2FThGX2CHpVnMvmP/bGkeuR9lCJjNmOA1v7CzyYScz4ZKiLm9H5k73vcMJ/CUJHycaaBcA3
	XCe0PbNOhAOHelyAraEEcstRus/NrIPNdrAIaaK3Xn8fbGaPGP5E1xjIQYt2C5VvuT5SPmYrF/RcN
	YJava4BZY66/6M7bhRMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2zK2-0007Iw-M5; Wed, 28 Aug 2019 14:53:18 +0000
Received: from mga04.intel.com ([192.55.52.120])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2zJw-0007Id-KP
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 14:53:13 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Aug 2019 07:53:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,441,1559545200"; d="scan'208";a="264669421"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga001.jf.intel.com with ESMTP; 28 Aug 2019 07:53:09 -0700
Date: Wed, 28 Aug 2019 08:51:24 -0600
From: Keith Busch <kbusch@kernel.org>
To: Israel Rukshin <israelr@mellanox.com>
Subject: Re: [PATCH 1/3] nvme-pci: Tidy up nvme_unmap_data
Message-ID: <20190828145123.GC23412@localhost.localdomain>
References: <1566990710-16713-1-git-send-email-israelr@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1566990710-16713-1-git-send-email-israelr@mellanox.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_075312_683217_32DBBFE1 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.120 listed in list.dnswl.org]
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
Cc: Max Gurtovoy <maxg@mellanox.com>, Christoph Hellwig <hch@lst.de>,
 Linux-nvme <linux-nvme@lists.infradead.org>, Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Aug 28, 2019 at 02:11:48PM +0300, Israel Rukshin wrote:
> Remove pointless local variable and use rq_dma_dir macro.
> 
> Signed-off-by: Israel Rukshin <israelr@mellanox.com>
> Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

Looks good

Reviewed-by: Keith Busch <kbusch@kernel.org>

> ---
>  drivers/nvme/host/pci.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index bf54b12..0eba960 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -534,14 +534,13 @@ static inline bool nvme_pci_use_sgls(struct nvme_dev *dev, struct request *req)
>  static void nvme_unmap_data(struct nvme_dev *dev, struct request *req)
>  {
>  	struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
> -	enum dma_data_direction dma_dir = rq_data_dir(req) ?
> -			DMA_TO_DEVICE : DMA_FROM_DEVICE;
>  	const int last_prp = dev->ctrl.page_size / sizeof(__le64) - 1;
>  	dma_addr_t dma_addr = iod->first_dma, next_dma_addr;
>  	int i;
>  
>  	if (iod->dma_len) {
> -		dma_unmap_page(dev->dev, dma_addr, iod->dma_len, dma_dir);
> +		dma_unmap_page(dev->dev, dma_addr, iod->dma_len,
> +			       rq_dma_dir(req));
>  		return;
>  	}
>  
> -- 
> 1.8.3.1

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
