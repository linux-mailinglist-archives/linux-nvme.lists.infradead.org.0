Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBBAF1CA9C9
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 13:40:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhyDvlD+8m+S1j/0+mesApLswL+1A2Qh0k1PTvFUMmE=; b=t1zcF0YmG8CQeu
	H87x2NBvAVhE+ss9BefFLsk8UDHEoq76ZDM5D2qo0Rs4UFUTOZmuF1tNNOlxbJiDsmUXLyR++xA0m
	6+P+Dbb+D75a20guVVoyLE81qhEJrNRvYI3MRrBujsdZOHLfeALO0WxYElV6/XxevdtpcHfrG8sXg
	Vd9AWIt3/qTnfDIABFw7L05chWIFNVYBuuAXkI0PZc95aUS1xO9a2e454rtxm0XS41vwMM7DwvbD9
	KOPFXIue0SUbQcYgXZ5QD28/iGJGLNClbepr+JjzwrI5tMZbN0lpWy0wTholEi6L3chlGnYHM2Jdv
	0GFl/PMAYXADFD+ZqSOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX1Mk-0001P2-BM; Fri, 08 May 2020 11:40:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX1Mg-0001Oe-IN
 for linux-nvme@lists.infradead.org; Fri, 08 May 2020 11:40:27 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5C821208D6;
 Fri,  8 May 2020 11:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588938025;
 bh=w8HC/L6YkaSDmHahZQNE3neBebpQFtjyLj8a5lxWCL4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=dqjC6Jq9cF6nCLgKBj1qGFGoPEkSfBA95gSvIhyauf1m47IEi5JUNA5CKO/WTe1jf
 uCjdNhmKZblfigNyhQh8E7ZDHalpQbqby51fatai51geFd+qqrlOsiqw7n4JWVLcTx
 QTQjR2ASo/3W+gNGBtjN8Fdu4cERkWaHiUpPP0Es=
Date: Fri, 8 May 2020 12:40:20 +0100
From: Will Deacon <will@kernel.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200508114020.GA16247@willie-the-truck>
References: <6673a108-c572-12ff-7ddd-b88147829615@huawei.com>
 <4dae5990-e81b-8b33-dafc-ee47e4f06b6a@arm.com>
 <e1643b53-d362-0b5e-573f-72f0ea249ebf@huawei.com>
 <20200507142352.GA2621422@dhcp-10-100-145-180.wdl.wdc.com>
 <8b297620-c72b-2184-36cb-032f5cfda05c@huawei.com>
 <20200507153506.GA2621480@dhcp-10-100-145-180.wdl.wdc.com>
 <9e04eebc-a55b-ac7e-3cb3-9c65f084ee6c@arm.com>
 <20200507173545.GC2621480@dhcp-10-100-145-180.wdl.wdc.com>
 <20200507174429.GA4466@willie-the-truck>
 <20200507180612.GD2621480@dhcp-10-100-145-180.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507180612.GD2621480@dhcp-10-100-145-180.wdl.wdc.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200508_044026_645881_785E9400 
X-CRM114-Status: GOOD (  25.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Thu, May 07, 2020 at 11:06:12AM -0700, Keith Busch wrote:
> On Thu, May 07, 2020 at 06:44:29PM +0100, Will Deacon wrote:
> > On Thu, May 07, 2020 at 10:35:45AM -0700, Keith Busch wrote:
> > > 
> > > Yeah, that might be something to consider. If that's the case, then it
> > > should be reproducible with a different vendor's nvme controller.
> > > 
> > > If the behavior is unique to this particular nvme model, then it would
> > > sound like the controller is creating a CQE in multiple memory writes
> > > either high-to-low, or with Relaxed Ordering enabled in the TLPs.
> > 
> > [disclaimer: I don't know anything about nvme, so this might be way off! I
> > know a bit about the Arm memory model though, so I can help with that side.]
> > 
> > Are you sure there's an ordering requirement? My reading of the quote
> > from the spec is that "last write" just means the final write, not
> > necessarily the word at the highest address.
> 
> Oh, NVMe's phase bit is located in the last word of a completion entry,
> so the final write of a completion entry must be the highest address of
> that entry.

Thanks. It sounds like it would still be valid (but weird?) for the device
to do: <write CQE[n-2] ... CQE[0]>; <write CQE[n-1]> though.

> > > But if some other interaction with the arm memory model is suspect, I'm
> > > not sure how to confirm or debug.
> > 
> > From what you described, it sounds like the flow should go something like:
> > 
> >   <Read the word of the CQE containing the updated Phase Tag Bit>
> >   dma_rmb();
> >   <Read the other words of the CQE>
> > 
> > How easy is it to check if that sort of thing is being followed?
> 
> We don't have such a barrier in the driver. The phase must be written
> last, so having it visible to the CPU was supposed to guarantee previous
> DMA writes are also visible. Is this not the case?

Without a barrier on the read side, something like the following might be
able to happen:

	CPU				NVME
	Read stale data
					Write data
					Write phase bit
	Read phase bit

So you need a dma_rmb() on the CPU side to prevent that reordering, and
ensure that the phase bit is read first. Anyway, the only reason I mentioned
it is because it should  be relatively straightforward to add the barrier
(famous last words...) and see if it helps with the problem. If not, we're
looking in the wrong place.

> FWIW, most NVMe controllers create the entire 16-byte CQE with a single
> DMA write.

Yes, that definitely sounds like the sane approach. Perhaps John will be
able to confirm what his device does.

Will

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
