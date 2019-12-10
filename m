Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA193118F35
	for <lists+linux-nvme@lfdr.de>; Tue, 10 Dec 2019 18:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qNmCrnON5K3zgE8LuH588PtEtJXPcXtqMFEQ95Hw5Hs=; b=Tua1dFTwxRNOo5
	lZLOggQvJkiW5grhc/keb4BaS3ndVvRZzmIstJt9fe2Zx+MZYKNxTa2bp5KqWh6PFtMXACVqswD5J
	sdJ6uFF2t8XV7YkdQoU6uBJc3oJyF6A4+yzLNsuNE1AKx/oqwiU1x6oPrLJAzBtB77csO94eajxOS
	MatHLfARLcQeXO+M8TmNFeUMZUYeX1XcUqIO8YDBU6CPiKYgeVLqEBz96rOuj06bABHY3KmfvjWu0
	FIH/Ri635OA5C5TI0gvHCs7PUc0wFXV0PVphHDyToyiN2RVH2FNydArI3LxlRbdJJCCXWe3vMIyBR
	WzUq3UEfjEeUDe2bxgLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iejY7-00058R-LO; Tue, 10 Dec 2019 17:43:51 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iejY2-00057x-Lq
 for linux-nvme@lists.infradead.org; Tue, 10 Dec 2019 17:43:48 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id BA8E7B401;
 Tue, 10 Dec 2019 17:43:41 +0000 (UTC)
Date: Tue, 10 Dec 2019 18:43:37 +0100
From: Daniel Wagner <dwagner@suse.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv3 4/4] nvme/pci: Poll threaded completions
Message-ID: <20191210174337.2vjlywcbwhms7cs5@beryllium.lan>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-5-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209175622.1964-5-kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_094346_861571_649AFD4B 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, linux-nvme@lists.infradead.org,
 ming.lei@redhat.com, tglx@linutronix.de, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Keith,

On Tue, Dec 10, 2019 at 02:56:22AM +0900, Keith Busch wrote:
> Poll for new completions in the nvme irq thread as long as it continues
> to observe new ones are available.
> 
> We need to ensure other irq threads affinitized to the same CPU will
> get a chance to run, so exit polling if we wrap the completion queue.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 22 ++++++++++++----------
>  1 file changed, 12 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 28e08c5ab412..487c6b3858fe 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1011,38 +1011,40 @@ static inline int nvme_process_cq(struct nvme_queue *nvmeq, u16 *start,
>  	return found;
>  }
>  
> -static irqreturn_t nvme_irq(int irq, void *data)
> +static int nvme_irq(int irq, void *data)
>  {
>  	struct nvme_queue *nvmeq = data;
> -	irqreturn_t ret = IRQ_NONE;
>  	u16 start, end;
> +	int found;
>  
>  	/*
>  	 * The rmb/wmb pair ensures we see all updates from a previous run of
>  	 * the irq handler, even if that was on another CPU.
>  	 */
>  	rmb();
> -	nvme_process_cq(nvmeq, &start, &end, -1);
> +	found = nvme_process_cq(nvmeq, &start, &end, -1);
>  	wmb();

Are the memory barries still at the right place after this change?

Thanks,
Daniel

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
