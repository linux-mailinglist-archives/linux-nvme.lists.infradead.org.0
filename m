Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12E941C9822
	for <lists+linux-nvme@lfdr.de>; Thu,  7 May 2020 19:44:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5+TAdHkcg5C3n4TXbTTV7inj9Jvaple2u0KQ9/ETWP4=; b=ETbKiT63saYO8c
	6fZMPG5a7swD4sUag7UW2YqfKUwAUQAdEip+59+l+tcqpMp9uRqJwmVzxFJeJWUWDkPTBWwCKEDNZ
	kUFWA/8LovECICpcn2B+osQsQdS3uYUyzHaFnSa9VYZ8B8z4ywNasl9JfT3jHSh++iUKxOUsE+ZY1
	q5Z4nkYhTIEVR6AFrNJ+zDzAe/ufNwvG1QfinQ6r92GaAZHc1oRgVOa7agMFcT+REbFMRZyLTNo6D
	l5+8z0CMTyHoyX8n5AOmwuJfEe8TQT79fK6YbqRdxTZ8h08HrsF+rFjrbKl6E8XfnaYMbMPEm4wGC
	RcTnTuKYJn7sDTy6/AaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWkZd-0004Ft-0w; Thu, 07 May 2020 17:44:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWkZW-0004F1-Vr
 for linux-nvme@lists.infradead.org; Thu, 07 May 2020 17:44:36 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2B3F0215A4;
 Thu,  7 May 2020 17:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588873474;
 bh=nR0Yw0dNQ5GwN+yrUHXZKeKoe+JoHZ2x37IhVbzxJ5c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AlPEReeQnDEBRTAg+ckuaqxW9/A1nvaEJauW2LLPwi/TbMnYcFeq4jILe5Ml+12US
 u22VtmwHFx0WY0Y0fQ/3b0HmoU+kduk3SM3QcsP3sKyVlLF2Lg/tftD9ZuU5d8JLwD
 N0egZLKFmO45lNbEjsevrS9ds/RgAKzOOJpo9ArY=
Date: Thu, 7 May 2020 18:44:29 +0100
From: Will Deacon <will@kernel.org>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH] nvme-pci: slimmer CQ head update
Message-ID: <20200507174429.GA4466@willie-the-truck>
References: <3453193c-424b-1e4c-16be-279088612c68@arm.com>
 <efc85e9a-93a6-989b-b8d7-db83b5d74b96@huawei.com>
 <6673a108-c572-12ff-7ddd-b88147829615@huawei.com>
 <4dae5990-e81b-8b33-dafc-ee47e4f06b6a@arm.com>
 <e1643b53-d362-0b5e-573f-72f0ea249ebf@huawei.com>
 <20200507142352.GA2621422@dhcp-10-100-145-180.wdl.wdc.com>
 <8b297620-c72b-2184-36cb-032f5cfda05c@huawei.com>
 <20200507153506.GA2621480@dhcp-10-100-145-180.wdl.wdc.com>
 <9e04eebc-a55b-ac7e-3cb3-9c65f084ee6c@arm.com>
 <20200507173545.GC2621480@dhcp-10-100-145-180.wdl.wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200507173545.GC2621480@dhcp-10-100-145-180.wdl.wdc.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_104435_077388_221B58FB 
X-CRM114-Status: GOOD (  21.05  )
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

On Thu, May 07, 2020 at 10:35:45AM -0700, Keith Busch wrote:
> On Thu, May 07, 2020 at 05:26:58PM +0100, Robin Murphy wrote:
> > On 2020-05-07 4:35 pm, Keith Busch wrote:
> > > On Thu, May 07, 2020 at 04:11:23PM +0100, John Garry wrote:
> > > 
> > > > [  885.344575] WARNING: CPU: 41 PID: 4565 at block/blk-mq.c:665  blk_mq_start_request+0xc4/0xcc
> > > 
> > > This warning appears to support my suspicion: the completion side is
> > > observing a new phase with a stale command id, and that command id was
> > > reallocated as a new request that we're still constructing at the time
> > > the double-completion occured.
> > > 
> > > Host software is supposed to be guaranteed the entire CQE is written
> > > once we see an updated phase, per spec: "If a Completion Queue
> > > Entry is constructed via multiple writes, the Phase Tag bit shall be
> > > updated in the last write of that Completion Queue Entry."
> > 
> > Hmm, that makes me wonder if there might be some interaction with the Arm
> > memory model here - if there are strict ordering requirements for things in
> > memory being observed, could we be missing appropriate barriers between
> > reads/writes of the various fields?
> 
> Yeah, that might be something to consider. If that's the case, then it
> should be reproducible with a different vendor's nvme controller.
> 
> If the behavior is unique to this particular nvme model, then it would
> sound like the controller is creating a CQE in multiple memory writes
> either high-to-low, or with Relaxed Ordering enabled in the TLPs.

[disclaimer: I don't know anything about nvme, so this might be way off! I
know a bit about the Arm memory model though, so I can help with that side.]

Are you sure there's an ordering requirement? My reading of the quote
from the spec is that "last write" just means the final write, not
necessarily the word at the highest address.

> But if some other interaction with the arm memory model is suspect, I'm
> not sure how to confirm or debug.

From what you described, it sounds like the flow should go something like:

  <Read the word of the CQE containing the updated Phase Tag Bit>
  dma_rmb();
  <Read the other words of the CQE>

How easy is it to check if that sort of thing is being followed?

Will

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
