Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DFC9E10FC53
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Dec 2019 12:16:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=z9ZXLAD330N2UhA8qZSDAgVJAr4HXTdxAyPvClKQh/I=; b=udQcFb/PDGNT+C
	nz891Dk57uOIpmxV5bfVvrqXGCj5BX13hsgG6l9ztC2umOHdWhwlHHCipkPwViKWIER+mmQKIdZUW
	5Deeg6TbtKZpJim6QRKoaWv64sqJ1Alsec7BYv5mGOWSFeIEz2sYs2s/91KuOLsehsjZN5xgMfCkB
	zAgtFgOdZNXHTyTU2OY24ZB4QH8c7cohS/F1X1TKuipp3vEyFp2FTsW3/Ax2v1kxUNaac1Q2NQdgn
	jjHG+p1dn2utvPzjVy1e8f7yjcInxTToXMtBEfdm1fl+NLDteCkONehnySZeABvYFFRMAktiKG9BN
	hjmRvju6HV0aXldF6+Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ic6Ad-0006TH-JS; Tue, 03 Dec 2019 11:16:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ic6AU-0006SO-Kj
 for linux-nvme@lists.infradead.org; Tue, 03 Dec 2019 11:16:35 +0000
Received: from C02WT3WMHTD6.lpcnextlight.net (unknown [161.97.246.164])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 26BE9206EC;
 Tue,  3 Dec 2019 11:16:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575371792;
 bh=jPQUvqQNMRahlqtO4g3DrzTE2Mu7A4SFztwIvWevoFM=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=whugX0e8RS96gJ52P3mn3u8oW6Igr9rGTEmNVA0OqyHeFeO0rLZpfw95btYsSqy64
 QrMzH70rG8ciHFwpDsYGegp7233VeVNTTjiTvDHsvz+lVR6rk6RDe0uP2deZgJDmaP
 IhELlrlzLwOH3v+2NkIS+9nQqA/7qw+ZwHc/UDfc=
Date: Tue, 3 Dec 2019 04:16:26 -0700
From: Keith Busch <kbusch@kernel.org>
To: Sebastian Andrzej Siewior <bigeasy@linutronix.de>
Subject: Re: [RFC PATCH 1/3] nvme/pci: Poll the cq in the primary irq handler
Message-ID: <20191203111626.GA86476@C02WT3WMHTD6.lpcnextlight.net>
References: <20191202222206.2225-1-kbusch@kernel.org>
 <20191202222206.2225-2-kbusch@kernel.org>
 <20191203100930.r76fiu3s5hlbrlxu@linutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191203100930.r76fiu3s5hlbrlxu@linutronix.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191203_031634_704797_8AE27393 
X-CRM114-Status: GOOD (  12.55  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: ming.lei@redhat.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Dec 03, 2019 at 11:09:30AM +0100, Sebastian Andrzej Siewior wrote:
> On 2019-12-03 07:22:04 [+0900], Keith Busch wrote:
> > The nvme threaded interrupt handler reduces CPU time spent in hard irq
> > context, but waking it increases latency for low queue depth workloads.
> > 
> > Poll the completion queue once from the primary handler and wake the
> > thread only if more completions remain after. Since there is a window
> > of time where the threaded and primary handlers may run simultaneously,
> > add a new nvmeq flag so that the two can synchronize which owns processing
> > the queue.
> 
> It depends on what you mean by "run simultaneously" but it sounds like
> this does not happen.
> 
> The primary handler disables the interrupt source and returns
> IRQ_WAKE_THREAD. From now on, the primary handler won't fire (unless it
> is a shared handler and someone else gets an interrupt).

The driver won't share these interrupts, despite some wierd pci
host bridges that force sharing among  other devices (ex: see the
only user of handle_untracked_irq). That isn't what I was considering
though.

It's true the controller won't send new MSIs once masked, but my
concern is for MSIs on the wire that pass that MMIO mask write.
Those retrigger the primary handler after it previously returned
IRQ_WAKE_THREAD.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
