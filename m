Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D4110D27A
	for <lists+linux-nvme@lfdr.de>; Fri, 29 Nov 2019 09:31:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1/5yC353T/iF7pqSmVRMLxGgy5pNffFr0ddoZEhm2qM=; b=XqIoBHlQXz+qSM
	qAoiR3nJMr8O3t9RwxHt0KSkc9x7u2efaCa+T3Ng9nhGJYQ7Tdam2yk+mZbOZiQnBHTpKjDu0bd8N
	QQa+T8r586ds+k3xQT3zF1+Hzjr0MgfpAmQ0BF0j7q0Niiy5v7VPOps0nyw1Lyd3vCgv10VmE88l8
	EIoTPdZzvHV95y98PFLOw97ib3vJ0hcrm7yus09Uhck+e7QuYnTsVQ5Y3XoZmDkl9/PUArQywrMgE
	X82n0KnaPf+J4Mp1M/nVjk024vP6JoPRMEH6bTBYGm4hKzEmj7++wJgyou8IFl9iOjAZ8XPL1tIEC
	LsEbYeCN7EX8KX+tLtLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iabgE-0005Jq-7j; Fri, 29 Nov 2019 08:31:10 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iabg7-0005JR-IT
 for linux-nvme@lists.infradead.org; Fri, 29 Nov 2019 08:31:04 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5B9DF68AFE; Fri, 29 Nov 2019 09:30:59 +0100 (CET)
Date: Fri, 29 Nov 2019 09:30:59 +0100
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 0/4] nvme: Threaded interrupt handling improvements
Message-ID: <20191129083059.GA10032@lst.de>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191128075047.GC20659@lst.de>
 <20191128175904.GA3011@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191128175904.GA3011@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191129_003103_763437_EA84D14E 
X-CRM114-Status: UNSURE (   8.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
 ming.lei@redhat.com, helgaas@kernel.org, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Nov 29, 2019 at 02:59:04AM +0900, Keith Busch wrote:
> On Thu, Nov 28, 2019 at 08:50:47AM +0100, Christoph Hellwig wrote:
> > +	if (to_pci_dev(nvmeq->dev->dev)->msix_enabled)
> > +		__pci_msix_desc_mask_irq(irq_get_msi_desc(irq), 1);
> > +	else
> > +		writel(1 << nvmeq->cq_vector, nvmeq->dev->bar + NVME_REG_INTMS);
> 
> Oh, we know which branch this would take before we register the callback,
> so smaller specialized functions don't need if/else checks. I even want
> to remove the shadow doorbell checks for normal devices by giving each
> different submission/completion callbacks too. They are individually
> unmeasurable, but maybe they'll add up! :D

This branch is perfect fodder for the branch predictor.  I see aboslutely
no reason to osbfucate the code to get rid of it.  We also actually remove
more branches than that by open coding nvme_irq for the threaded irq
case than are added here.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
