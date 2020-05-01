Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7201C18FA
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 17:08:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gsf1ckMe5lxMRX/IDHYYXln/Ahk9QUfsTmQcQywlyT0=; b=iGwUX6EZenvMQv
	128JDQryo5wNaKjM6hBO6ugBPg4rBsecH5dVHk+xheaxMHosoFs5fGLauuprQVRBiUJYeHZz5JI+f
	TCAWKypn/lUFIBZD7vwZKW7abBGKz7TK2bOU+/+6IW2v3oPx3xwUl6+PnwKi235J+afKtS9M+oJTl
	Pp9iZZ0lM+jSCC/7nyn0KI9WJDgtMktdJ4LYZBlyQFV2WEGqKBKpYguPj5jmXehQ/dSoprc6bT80t
	sf/rusr6spfRP6KlRP880xnv2Kto+NhKWympMVjZSc8vPzM0GdWS2DNhRPC5KPsM15zxQ+ze45rs3
	NSf6Jjlz7TH3fLFl1Ohw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXH7-0007hy-Md; Fri, 01 May 2020 15:08:25 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXH2-0007gh-Ht
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 15:08:21 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 450B42137B;
 Fri,  1 May 2020 15:08:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588345699;
 bh=43GMTCOgrYMZCQ2fbatWSsfjk2jy0DK6ry3mDCrd+aI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PHYbuc0Oj3jcQD+0cBUOWvRXWf9PbqXxh5cc72xLFhFn+V3wuOFVDfhHxQKKdpIJT
 c65qvxxcHdANIYSerAdecPO9b6WIYlxajwL+CTHOiC/6AWnuGTYFkSH/xJpGj5914g
 Rk4IveB0Lf8/8NUfmI0uU7kJl95zziQ3OoQ/t+cc=
Date: Sat, 2 May 2020 00:08:15 +0900
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 3/3] nvme-pci: reshuffle nvme_queue members
Message-ID: <20200501150815.GA22665@redsun51.ssa.fujisawa.hgst.com>
References: <20200427235243.2268765-1-kbusch@kernel.org>
 <20200427235243.2268765-3-kbusch@kernel.org>
 <20200501125704.GC5197@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501125704.GC5197@lst.de>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_080820_612099_3FCA3532 
X-CRM114-Status: GOOD (  16.72  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 01, 2020 at 02:57:04PM +0200, Christoph Hellwig wrote:
> On Mon, Apr 27, 2020 at 04:52:43PM -0700, Keith Busch wrote:
> > All the io path hot members can fit within the first 64-bytes, which is
> > a common cacheline. Order the members of this struct so those members
> > fit in and align to that window.
> 
> Do we even want to share a cacheline for the submission vs completion
> path?  I know other places try to keep the deliberately separate.

We usually complete on the same CPU that submitted, so it appears
beneficial to fit both sides in the same line. I'll try it out both
ways, though I don't think I'll be able to measure a difference.
 
> > +	/* only used for poll queues: */
> > +	spinlock_t cq_poll_lock;
> > +	dma_addr_t sq_dma_addr;
> > +	dma_addr_t cq_dma_addr;
> >  	struct completion delete_done;
> 
> We probably want a comment before the last three that this is only
> used during queue deletion.  Also cq_poll_lock very much is in the
> hot path for polled I/O, so I'd rather keep it with other CQ bits.

Yeah, I moved the cq lock so 'flags' could fit since we're still using
that in the submission path. We should be able to get rid of that hack
at some point, so I'll redo this as you're suggesting.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
