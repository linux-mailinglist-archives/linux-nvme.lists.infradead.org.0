Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54F82139ABF
	for <lists+linux-nvme@lfdr.de>; Mon, 13 Jan 2020 21:31:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsUc4h5WrIraMpkISi+igME6mPz15JuWM0s4inwthAk=; b=Mfnrxs9DmQnR1w
	hrH968SesmgxMbLJf5nvOOgZhdMrIkBR+N+xQJ1e/u0rBIY5zAzACaI7BAakSMB97hiLeYq6EI9HA
	SZek+vYcMrJN1cL/3ZCjpfYHxNI6189afaT1LFuw1mpmbTNKVhkpHc2WfFQi5Dp6thjPWgHDkbvju
	0f4R4QljwxKZKQyNVNrOzt0Ekted6+s9WsSqiDNSoGIGWAl8YiKKb2LQXFekSvlj3NChQ3CwrZ3LO
	AANlavZRuib1y9xR9a3i4vPUFKMZlspulUI7/tNuNHwRevKWU0oIt2N/yodjbozrj24iR9/98Un4V
	XWbs1Y2ETjpNvihm9x4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir6NE-0001mY-BU; Mon, 13 Jan 2020 20:31:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir6NA-0001mB-IW
 for linux-nvme@lists.infradead.org; Mon, 13 Jan 2020 20:31:41 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F3FA721556;
 Mon, 13 Jan 2020 20:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578947499;
 bh=J8hxVTlecEd3+Iq7y29aQj7bzI+wqBKD5QfLnRECdJo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=teRBbQMrFw0cRstkjvswGlDJjfEv3IrSdWeYe7+2uWwk4Ndm8/ZvtjeDyj6ry3/CK
 r6HGvq5j5H2gkW0xvKl4v58w76+cip2EZpFedqXxDkjJAtsw2x6xT8y1NzuiDo7rRV
 r/iegRlfN/+QE9Kn//NGlNmtylOnMCqCMGIgBGPY=
Date: Tue, 14 Jan 2020 05:31:35 +0900
From: Keith Busch <kbusch@kernel.org>
To: Max Gurtovoy <maxg@mellanox.com>
Subject: Re: [PATCH 01/15] nvme: Introduce namespace features flag
Message-ID: <20200113203135.GB23750@redsun51.ssa.fujisawa.hgst.com>
References: <20200106133736.123038-1-maxg@mellanox.com>
 <20200106133736.123038-3-maxg@mellanox.com>
 <yq1imllz5l4.fsf@oracle.com>
 <87553ee2-74f4-8eb9-dd07-552f2637dab8@mellanox.com>
 <20200109162625.GB1032473@chuupie.wdl.wdc.com>
 <84cdf570-4fee-3396-ca4b-762cf3af6815@mellanox.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <84cdf570-4fee-3396-ca4b-762cf3af6815@mellanox.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_123140_636326_FA309FDB 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: axboe@kernel.dk, sagi@grimberg.me,
 "Martin K. Petersen" <martin.petersen@oracle.com>, shlomin@mellanox.com,
 israelr@mellanox.com, vladimirk@mellanox.com, linux-nvme@lists.infradead.org,
 idanb@mellanox.com, oren@mellanox.com, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sun, Jan 12, 2020 at 11:40:31AM +0200, Max Gurtovoy wrote:
> On 1/9/2020 6:26 PM, Keith Busch wrote:
> > On Thu, Jan 09, 2020 at 12:38:05PM +0200, Max Gurtovoy wrote:
> > > On 1/9/2020 5:11 AM, Martin K. Petersen wrote:
> > > > Max,
> > > > 
> > > > > +#define NVME_NS_DIX_SUPPORTED	(1 << 1)
> > > > > +#define NVME_NS_DIF_SUPPORTED	(1 << 2)
> > > > Not so keen on the DIF/DIX terminology in this context.
> > > Martin,
> > > 
> > > how about:
> > > 
> > > +#define NVME_NS_PI_HOST_SUPPORTED (1 << 1)
> > > +#define NVME_NS_PI_CTRL_SUPPORTED (1 << 2)
> > Well, I was trying to say earlier that nvme supports formats with metadata
> > that's not used for protection information. The metadata, whether separate
> > or interleaved, can be used for some proprietary non-pi related feature.
> 
> so how about:
> 
> +#define NVME_NS_MD_HOST_SUPPORTED (1 << 1)
> +#define NVME_NS_MD_CTRL_SUPPORTED (1 << 2)

You're using these to report the in-memory format of the meta-data,
right? These are either Extended or Separate from the block data, so
I think the names should convey that. Something like the following
maybe:
 
  #define NVME_NS_MD_SEP_SUPPORTED (1 << 1)
  #define NVME_NS_MD_EXT_SUPPORTED (1 << 2)
 
> We didn't change any logic for metadata support for non-PI format.
> 
> > 
> > The nvme driver only leverages "blk-integrity" to facilitate allocating
> > and managing the metdata payloads even when not used for integrity. It
> > might make sense to give that block component a more generic name than
> > "integrity".
> 
> Yup that True, But this patchset is already big enough by itself.
> 
> We can do block layer refactoring in different series..

Absolutely, didn't mean to imply you take that on. :)

I was just trying to emphasize the current name doesn't always describe how
that component is used.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
