Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D910C1C98C4
	for <lists+linux-nvme@lfdr.de>; Thu,  7 May 2020 20:06:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bRAChPkygaze0idYCi4/WKbxylc573r6MykC9wnPIDY=; b=MnAzoGgUsCNx/o
	zuLW2t36cz+yjswAzJ4AneOabdmracnVjcjVOKGC/UqaBAYsIG00oFuxeeJIGerNemA9SbKTi9FJ1
	D1GMAkYoB/I5UuJntpT/p+HopLYJ+PB7DGEu7LsUkYDZy5t4ggBPLimtKk6pfQwzwHuSH7DVEau34
	o8rq42wMDIwUWl2uGdnHDfpi1eO00NbqUVRVeE8jRJiWcFq3gMRGFoDyt7+z9QT9/G78FrB/mI68R
	evP6B8+XNaTQxk249eJbNZpjoH39XN6Vpdzew1ka2AFwfALhpTkLVrUl0/s2g1TLRS6nvlxOZq0EW
	6doGWKiSif7mcoSurq+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkuZ-0008CN-1b; Thu, 07 May 2020 18:06:19 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkuV-0008Bv-3D
 for linux-nvme@lists.infradead.org; Thu, 07 May 2020 18:06:16 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 22CA92063A;
 Thu,  7 May 2020 18:06:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588874774;
 bh=PedUbcgYSxuQJpROW/LFA3PKBYTK3G8vtMFuFeAeIj0=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u3TyEd4sZR/tydUcRApNeh+RHnCrAj3Nz8pV3ozGXvn4Y/6F+j9SfSnh1fa1PjgZV
 0NZuSBv3MEyP6vBimd5Hvy3lpfLlq/vX19bS1l8hSazqolLkBKAUUbx6cec3u0gSEz
 RN25otOj0LmDFHDCMF1Rkv5NWKjr34bWK+hKmnFg=
Date: Thu, 7 May 2020 11:06:12 -0700
From: Keith Busch <kbusch@kernel.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200507180612.GD2621480@dhcp-10-100-145-180.wdl.wdc.com>
References: <efc85e9a-93a6-989b-b8d7-db83b5d74b96@huawei.com>
 <6673a108-c572-12ff-7ddd-b88147829615@huawei.com>
 <4dae5990-e81b-8b33-dafc-ee47e4f06b6a@arm.com>
 <e1643b53-d362-0b5e-573f-72f0ea249ebf@huawei.com>
 <20200507142352.GA2621422@dhcp-10-100-145-180.wdl.wdc.com>
 <8b297620-c72b-2184-36cb-032f5cfda05c@huawei.com>
 <20200507153506.GA2621480@dhcp-10-100-145-180.wdl.wdc.com>
 <9e04eebc-a55b-ac7e-3cb3-9c65f084ee6c@arm.com>
 <20200507173545.GC2621480@dhcp-10-100-145-180.wdl.wdc.com>
 <20200507174429.GA4466@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507174429.GA4466@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_110615_156567_DD3AA851 
X-CRM114-Status: GOOD (  18.27  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, John Garry <john.garry@huawei.com>,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>, axboe@fb.com,
 Robin Murphy <robin.murphy@arm.com>, Alexey Dobriyan <adobriyan@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 06:44:29PM +0100, Will Deacon wrote:
> On Thu, May 07, 2020 at 10:35:45AM -0700, Keith Busch wrote:
> > 
> > Yeah, that might be something to consider. If that's the case, then it
> > should be reproducible with a different vendor's nvme controller.
> > 
> > If the behavior is unique to this particular nvme model, then it would
> > sound like the controller is creating a CQE in multiple memory writes
> > either high-to-low, or with Relaxed Ordering enabled in the TLPs.
> 
> [disclaimer: I don't know anything about nvme, so this might be way off! I
> know a bit about the Arm memory model though, so I can help with that side.]
> 
> Are you sure there's an ordering requirement? My reading of the quote
> from the spec is that "last write" just means the final write, not
> necessarily the word at the highest address.

Oh, NVMe's phase bit is located in the last word of a completion entry,
so the final write of a completion entry must be the highest address of
that entry.
 
> > But if some other interaction with the arm memory model is suspect, I'm
> > not sure how to confirm or debug.
> 
> From what you described, it sounds like the flow should go something like:
> 
>   <Read the word of the CQE containing the updated Phase Tag Bit>
>   dma_rmb();
>   <Read the other words of the CQE>
> 
> How easy is it to check if that sort of thing is being followed?

We don't have such a barrier in the driver. The phase must be written
last, so having it visible to the CPU was supposed to guarantee previous
DMA writes are also visible. Is this not the case?

FWIW, most NVMe controllers create the entire 16-byte CQE with a single
DMA write.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
