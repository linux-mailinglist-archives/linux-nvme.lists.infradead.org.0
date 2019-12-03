Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FE2310FB6A
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 11:09:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V6p1swxFTqBp1UaNg0Oc4Hbx8soRbqGlBlpDSSDFueE=; b=hkfCmsX/mvLdKT
	BIcaOzWcVIZo7woyJzVcHoijRSOPsHV4RoujjizIM6DQDZ6A1jFSmNPPt3EngHbQIGR9Zrf97BVfg
	mWXj+LydDFPzoyqprUmNRI/+PurQSWT0LlOag3ylp36h7GVqh9nvOcSHeC8dBgrOiQDJ4GeFiMaHj
	Xk67s5yfe5FMXYnpVCqqS0lcXjOAzyPeJDn+PFw8PS+9vw1R+OVVpoJClH1HBCwaV9hNesVAiOH1u
	rJQN59eBLqelvOoYALnYrm5WahrUmn4BSeAwVqtqZfIMF6HqSh3TaM5Iq8YdMVnVJpgJnS9SE2as/
	cn+mOi/KeubHictAxFhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic57k-0005NJ-Rm; Tue, 03 Dec 2019 10:09:40 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic57f-0005MS-Ke
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 10:09:36 +0000
Received: from bigeasy by Galois.linutronix.de with local (Exim 4.80)
 (envelope-from <bigeasy@linutronix.de>)
 id 1ic57a-00082R-UQ; Tue, 03 Dec 2019 11:09:31 +0100
Date: Tue, 3 Dec 2019 11:09:30 +0100
From: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [RFC PATCH 1/3] nvme/pci: Poll the cq in the primary irq handler
Message-ID: <20191203100930.r76fiu3s5hlbrlxu@linutronix.de>
References: <20191202222206.2225-1-kbusch@kernel.org>
 <20191202222206.2225-2-kbusch@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191202222206.2225-2-kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_020935_820120_D19845CF 
X-CRM114-Status: UNSURE (   8.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
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
Cc: ming.lei@redhat.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On 2019-12-03 07:22:04 [+0900], Keith Busch wrote:
> The nvme threaded interrupt handler reduces CPU time spent in hard irq
> context, but waking it increases latency for low queue depth workloads.
> 
> Poll the completion queue once from the primary handler and wake the
> thread only if more completions remain after. Since there is a window
> of time where the threaded and primary handlers may run simultaneously,
> add a new nvmeq flag so that the two can synchronize which owns processing
> the queue.

It depends on what you mean by "run simultaneously" but it sounds like
this does not happen.

The primary handler disables the interrupt source and returns
IRQ_WAKE_THREAD. From now on, the primary handler won't fire (unless it
is a shared handler and someone else gets an interrupt).

The thread receives a wakeup and will be show on the CPU.
Once the threaded handler completes its work it enables the interrupt
source as the last thing it does. This may lead to an interrupt before
the threaded handler returns to the caller.
The primary handler may return IRQ_WAKE_THREAD. In this case the
threaded handler will be invoked again.

If it wouldn't then this could happen:

  primary handler                     threaded handler

    nvme_irq_check()
      if (test_and_set_bit(NVMEQ_THREAD, &nvmeq->flags))
      ret = nvme_irq(irq, data);
      if (!nvme_cqe_pending(nvmeq))
      if (to_pci_dev(nvmeq->dev->dev)->msix_enabled)
         __pci_msix_desc_mask_irq(irq_get_msi_desc(irq), 1);
      return IRQ_WAKE_THREAD;
      
                                     nvme_irq_thread()
				       nvme_irq()
				       if (to_pci_dev(nvmeq->dev->dev)->msix_enabled)
				         __pci_msix_desc_mask_irq(irq_get_msi_desc(irq), 0);
    nvme_irq_check()
      if (test_and_set_bit(NVMEQ_THREAD, &nvmeq->flags))
        return IRQ_NONE;

	                               clear_bit(NVMEQ_THREAD, &nvmeq->flags);
                                       return IRQ_HANDLED

> Signed-off-by: Keith Busch <kbusch@kernel.org>

Sebastian

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
