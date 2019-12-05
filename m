Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 028E7114860
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Dec 2019 21:48:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=r/Ah7fdukdYlXk3nCjvpawA51CiB/0DO43/axxoVFGE=; b=HBSXybwukcABN+
	boHVPmijBdrFlvaD9vHrMRZKyRG/kf544gzWFmC1y7p6va2DnOSmZmlDHkL7mEkA6EexOXsSLsyiz
	c9KlvxzmHO9zdwqv1mTW7y+4NHokYjx4zEHTR560uS+0Vw+920/TztMG1APhf2V+SaBmuTqP0XLac
	/60HVx88deNyIfklx94DJy0ZORmeZfnv60eCtcjCLeg87NI3639ztFjBqhAj9k01fe34toL36mb16
	EF4TjzHXJAcqiAdH/aETlvrNCsvPGGO2kucUSsjvva+Tu+4SkuoDdyeHmL+Dvf9lClrA7LtT5Xge0
	w8MZFXJE6f0VxhaiRRRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icy31-0002FZ-UI; Thu, 05 Dec 2019 20:48:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icy2w-0002FB-J0
 for linux-nvme@lists.infradead.org; Thu, 05 Dec 2019 20:48:23 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9EE1524670;
 Thu,  5 Dec 2019 20:48:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575578902;
 bh=dEoC9AZzhU8jPf9Mu2KZm8N1mMXRGwudxGlbDxoLqrQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=KTLXCTLQIFBUetmYpasefx6FhAKfFuhXiEU7nzoKxYnarWxwCHv/owrH+PeyrAjpR
 K7wyGVbmQkZ8kDjn/QugIfW3lIu/THINV7I+4gD3ukVJwPx2Oa1TOLYrBaaBaY7lcI
 ztPDn5pnAAsR9Xnw9PN68nducqYzYLFf1pJNpNWY=
Date: Fri, 6 Dec 2019 05:48:12 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Subject: Re: [PATCH] nvme/pci: Remove last_sq_tail
Message-ID: <20191205204812.GA27699@redsun51.ssa.fujisawa.hgst.com>
References: <20191205200825.27651-1-kbusch@kernel.org>
 <149bb39b-e8ab-36a5-f319-18ef5e3567b6@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <149bb39b-e8ab-36a5-f319-18ef5e3567b6@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_124822_650312_E22CC716 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 01:31:20PM -0700, Nadolski, Edmund wrote:
> On 12/5/2019 1:08 PM, Keith Busch wrote:
> > We don't allocate enough tags to wrap the submission queue. Remove
> > tracking for this condition.
> 
> Can we ensure that this presumption won't change?

If we did have more tags, there'd be no guarantee we could even dispatch
them, and we'd have to track the CQE sq_head value to ensure an available
slot. There's really no performance win to adding that overhead to the
driver. On top of that, I'm aware there are more than a few controllers
that will break if we wrap the submission queue. So I don't see this
changing.
 
> > @@ -462,21 +461,11 @@ static int nvme_pci_map_queues(struct blk_mq_tag_set *set)
> >   /*
> >    * Write sq tail if we are asked to, or if the next command would wrap.
> 
> Comment needs to be updated.

Yep, that comment would be outdated with this patch.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
