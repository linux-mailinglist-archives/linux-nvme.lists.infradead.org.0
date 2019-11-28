Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B3F8110C311
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 04:48:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GV/N7Un6W4OleOTuRh0zWOimFVtT94ohm6JS8gJy1NI=; b=R//NyQh9EBo5Gr
	0I2rNIZBOWv/kedxtbY9U0bOttpbdUws8JxmdJUfnl+ZbKAmDxdTvNjmb1Fk83jSjNbWC9qVUK44k
	pUnVXmUz1bww8bnht48C7jInKOmc/G0/SZ23hdMHG9tHNRMVko6hcaYvOyfDmnjc2s2xxeqfq9XOy
	7Q2eOivq4AUSrmlFLMz1Zq9mgSuTkeFnajRSypsm9kLNWuhKQNhZ3P3+GNHA/+JhcCyjiNi49hh0K
	898dcze4v+wTcGsfkBxOYNBKUSeFPUMbORDMBeK8D3li9dB76EG49hqQMw++PydmBJLsYi1p5Wxl0
	T9i+xI12QC7xQm5bEcLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaAn8-0008D1-Rm; Thu, 28 Nov 2019 03:48:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaAn3-0008CP-GT
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 03:48:26 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 10B59206E0;
 Thu, 28 Nov 2019 03:48:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574912905;
 bh=V3JWH1+tUSeB5z/HyEiTtK/uQ815oYx/suoWx805sAU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=lkGKVQVE9hsZZ4qIa3AQf9NkU7pNw7i8xf9C6uy66g1tfte/oZA9+zjCifiOMqq2f
 iH64NRFZ1s+nZGSZQDV4M2YIVCbKXvncQysGg256olHinYj1QwYFDGCKiwB15XsZVB
 KBLem80UMfqmgpiymBMi1XptRbH7h6ZcfQXzakuE=
Date: Thu, 28 Nov 2019 12:48:17 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 2/4] nvme/pci: Mask legacy and MSI in threaded handler
Message-ID: <20191128034817.GC1738@redsun51.ssa.fujisawa.hgst.com>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-3-kbusch@kernel.org>
 <20191128033956.GD3277@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128033956.GD3277@ming.t460p>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_194825_570137_D282DABE 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -3.7 (---)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-3.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.5 FROM_FMBLA_NEWDOM      From domain was registered in last 7 days
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, linux-nvme@lists.infradead.org,
 helgaas@kernel.org, Thomas Gleixner <tglx@linutronix.de>, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 11:39:56AM +0800, Ming Lei wrote:
> On Thu, Nov 28, 2019 at 02:58:22AM +0900, Keith Busch wrote:
> > @@ -1502,6 +1524,11 @@ static int queue_request_irq(struct nvme_queue *nvmeq)
> >  	int nr = nvmeq->dev->ctrl.instance;
> >  
> >  	if (use_threaded_interrupts) {
> > +		/* MSI and Legacy use the same NVMe IRQ masking */
> > +		if (!pdev->msix_enabled)
> > +			return pci_request_irq(pdev, nvmeq->cq_vector,
> > +				nvme_irq_check_msi, nvme_irq_thread_msi,
> > +				nvmeq, "nvme%dq%d", nr, nvmeq->qid);
> >  		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
> >  				nvme_irq, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
> 
> Just wondering why don't do that for misx_enabled, and according to
> document of request_threaded_irq(), the handler is supposed to
> disable the device's interrupt:

MSI-x is handled in patch 3/4. I just split the two since the mechanisms
they use to mask interrupts are very different from each other.
 
> 923aa4c378f9("PCI/MSI: Set IRQCHIP_ONESHOT_SAFE for PCI-MSI irqchips"),
> then the question is that if interrupt mask is needed.

We don't want to use IRQF_ONESHOT for our MSI interrupts because that
will write to the MSI mask config register, which is a costly non-posted
transaction. The NVMe specific way uses much faster posted writes.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
