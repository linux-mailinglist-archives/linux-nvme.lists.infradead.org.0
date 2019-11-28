Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8014C10C2EC
	for <lists+linux-nvme@lfdr.de>; Thu, 28 Nov 2019 04:41:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PS3y4JtMq04/9/1Y279b9V4Mb9kovwRk7cNTC8JpxBI=; b=TzuR13AmkBgpIv
	t9i3TkofG+M2cIHRy7kOoFN8K17f17xeJWorxQxWoM4oevwqo92bf6EEZdLA6NTi4g6FABsZW5ZLr
	pNkaYEkaD29Ap9Fq9qNUL/zIj+pZV+W4c38lpVGgEU8691Kx5AQ4X0DLrhSYVR6fso7tDtugvriB9
	CpIk3YFIfeJo21ZiuWDJhkU0F0SM7VKHgHkk3lhxLm2suKKLLiZ4oHKurwVNuT1/RwUgKKJGHTwps
	aziSu7mTgEdK/YZPHHW8YD0VseQq8WNZc2KQ2/D688jBFKZdpOgm4c8DFsc07aiTjPyGS5C/oQMBU
	npFsO+5FgOVkktqt60Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaAgC-00068L-RM; Thu, 28 Nov 2019 03:41:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaAg4-000681-RG
 for linux-nvme@lists.infradead.org; Thu, 28 Nov 2019 03:41:14 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 39A3F2084D;
 Thu, 28 Nov 2019 03:41:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574912472;
 bh=AiYXx/jWE8SwRfBMa7/s351MP5blNXWqLjj6R1B080k=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Kw44o29YSGuwFfQ3VNhqAAcxwJNdugE6kamA0um/qkK26pNVe1DAPhqenNR/CDaPd
 SN3MS5Ow1dqiw+0WTTnBZnlG5XhbDUJ8H3XUHOAtGf7Vz6ynCSUbn/Cf+dRiPswhgb
 6KuenACwBzi+l6kgHWNIJTR/tuSj06FecsXqyu5g=
Date: Thu, 28 Nov 2019 12:41:08 +0900
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH 1/4] PCI/MSI: Export __pci_msix_desc_mask_irq
Message-ID: <20191128034108.GB1738@redsun51.ssa.fujisawa.hgst.com>
References: <20191127175824.1929-1-kbusch@kernel.org>
 <20191127175824.1929-2-kbusch@kernel.org>
 <0eaff815-22ca-0c77-0122-9d0c5ae80f58@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0eaff815-22ca-0c77-0122-9d0c5ae80f58@grimberg.me>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_194112_904364_18FA4A4A 
X-CRM114-Status: GOOD (  15.96  )
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
Cc: bigeasy@linutronix.de, helgaas@kernel.org, hch@lst.de,
 linux-nvme@lists.infradead.org, ming.lei@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, Nov 27, 2019 at 06:42:06PM -0800, Sagi Grimberg wrote:
> > Export the fast msix mask so that drivers may use these in timing
> > sensitive contexts.
> > 
> > Signed-off-by: Keith Busch <kbusch@kernel.org>
> > ---
> >   drivers/pci/msi.c | 1 +
> >   1 file changed, 1 insertion(+)
> > 
> > diff --git a/drivers/pci/msi.c b/drivers/pci/msi.c
> > index 0884bedcfc7a..9e866929f4b0 100644
> > --- a/drivers/pci/msi.c
> > +++ b/drivers/pci/msi.c
> > @@ -225,6 +225,7 @@ u32 __pci_msix_desc_mask_irq(struct msi_desc *desc, u32 flag)
> >   	return mask_bits;
> >   }
> > +EXPORT_SYMBOL_GPL(__pci_msix_desc_mask_irq);
> >   static void msix_mask_irq(struct msi_desc *desc, u32 flag)
> >   {
> > 
> 
> Nice!
> 
> but why not export msix_mask_irq?

Only because __pci_msix_desc_mask_irq() was already defined in a public
header. :)
 
> Is it possible that this what made the irqpoll patch I sent
> to cause a performance hit? I used disable_irq_nosync...

I think so, yes, that's a relatively costly operation and would have a
measurable performance hit if called frequently. The exception might be
if you can setup a test such that irqpoll always observes completions
such that it rarely or never has to unmask interrupts.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
