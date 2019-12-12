Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B893911C8ED
	for <lists+linux-nvme@lfdr.de>; Thu, 12 Dec 2019 10:14:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pm+9VcTy6ZSZLCNGnCLJWGRAUHUIvydY4USGpvEphGo=; b=sJZUOCKe+xZNLg
	GGBT8TbI7ZdWCoEk5IU6NRoRIeE1gkqyVHFl3PXK8+lHpVWtrB06de974UPzjPeHiFGJOKeHZreaA
	CTbLkCzu5QY+gizTGeZtZA4GNILSHTJCcd5LniiIDCNA/r74PjWaWO8Rx+TZjrlfC4OzV/YdF+EE6
	MDMzb3QA6huuOmsfB7E11YaLLRwKiAcxDNmC53iAB5NEwDTqhMTNR5eCYPB9Pz6xMRf2zeiFo0X83
	Ws8fxMtLJmVgYx0dk5xFKEuxaPPW6n/fWjrUpDOcBLTooSDC0HDJY8WQVlTA76jnUHScgSAOItfZH
	NlGBpwOqOXgrSHqhvT8Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifKY5-00063l-Ca; Thu, 12 Dec 2019 09:14:17 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifKY0-00063M-0n
 for linux-nvme@lists.infradead.org; Thu, 12 Dec 2019 09:14:13 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 3BCA268B05; Thu, 12 Dec 2019 10:14:09 +0100 (CET)
Date: Thu, 12 Dec 2019 10:14:09 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCHv3 2/4] nvme/pci: Complete commands from primary handler
Message-ID: <20191212091408.GC2399@lst.de>
References: <20191209175622.1964-1-kbusch@kernel.org>
 <20191209175622.1964-3-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209175622.1964-3-kbusch@kernel.org>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_011412_207948_91B9281D 
X-CRM114-Status: GOOD (  15.54  )
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, linux-nvme@lists.infradead.org,
 ming.lei@redhat.com, tglx@linutronix.de, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 02:56:20AM +0900, Keith Busch wrote:
> The context switch to wake the threaded interrupt handler has enough
> overhead to harm latency for low queue depth workloads. Complete one cycle
> through the completion queue in the primary handler to ensure threaded
> interrupts have no disadvantage compared to not using threaded interrupts. Wake
> the thread only if more completions remain after processing the queue
> once since that indicates a higher queue depth workload that may trigger
> frequent interrupts which would be better completed in the handler thread
> with device interrupts disabled.
> 
> Completing requests from two different contexts is safe since nvme driver
> disables entry to the primary handler when it returns IRQ_WAKE_THREAD.
> 
> Signed-off-by: Keith Busch <kbusch@kernel.org>
> ---
>  drivers/nvme/host/pci.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index a0138e3ca0b9..e415fadf7331 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -1055,6 +1055,10 @@ static irqreturn_t nvme_irq_check(int irq, void *data)
>  	if (!nvme_cqe_pending(nvmeq))
>  		return IRQ_NONE;
>  
> +	nvme_irq(irq, data);

I think we can just open code nvme_irq here.  That also means we can
use the return value of nvme_process_cq instead of the extra
nvme_cqe_pending check above.  This also needs a good comment explaining
the scheme at least.

> +	if (!nvme_cqe_pending(nvmeq))
> +		return IRQ_HANDLED;

Including one explaining this check.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
