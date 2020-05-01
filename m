Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 663591C1924
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 17:13:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yzG5nwXv0l+b0QfaMwfy++s5bYiWxY898P1vLijKqLs=; b=U5aC9AKxNpLvWK
	/TPY99Hr8/yjDC9Rtj1344T8g9mzp1UIwsfcXwnPUpyOU5nqe/2IhdIX2SdlV86zwp2AhqK7TNwhr
	K9jIkC/xW8vFc5lagI0ZcQ/RSC0AklqMlXvfzGP4wr9I+mAmk8T0WYDsgJ4XbkLRkOzwSNkTTzm18
	ObOC/0itbkKFO0jw52XN7HockUww110Mz7FELzNn3miv0DOaLayWbsAfJ4jdD0HNMAFBAnbCpKYPD
	T6OOz165o+zOM/R2cD/3wHlyFshLhVeNldblhBfqSzlk//RiVXRAl9JGy5rNNvQkUdVtJYsj9ZdCD
	DGpufCJLkx5pmsrxDbZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXLV-0002fA-EZ; Fri, 01 May 2020 15:12:57 +0000
Received: from verein.lst.de ([213.95.11.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXLN-0002af-2n
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 15:12:50 +0000
Received: by verein.lst.de (Postfix, from userid 2407)
 id 5072F68BFE; Fri,  1 May 2020 17:12:46 +0200 (CEST)
Date: Fri, 1 May 2020 17:12:46 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [PATCH 3/3] nvme-pci: reshuffle nvme_queue members
Message-ID: <20200501151246.GA17006@lst.de>
References: <20200427235243.2268765-1-kbusch@kernel.org>
 <20200427235243.2268765-3-kbusch@kernel.org> <20200501125704.GC5197@lst.de>
 <20200501150815.GA22665@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501150815.GA22665@redsun51.ssa.fujisawa.hgst.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_081249_289876_A5510B96 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Sat, May 02, 2020 at 12:08:15AM +0900, Keith Busch wrote:
> > > +	/* only used for poll queues: */
> > > +	spinlock_t cq_poll_lock;
> > > +	dma_addr_t sq_dma_addr;
> > > +	dma_addr_t cq_dma_addr;
> > >  	struct completion delete_done;
> > 
> > We probably want a comment before the last three that this is only
> > used during queue deletion.  Also cq_poll_lock very much is in the
> > hot path for polled I/O, so I'd rather keep it with other CQ bits.
> 
> Yeah, I moved the cq lock so 'flags' could fit since we're still using
> that in the submission path. We should be able to get rid of that hack
> at some point, so I'll redo this as you're suggesting.

We could easily kill the qid field by using the same trick as
the fabrics drivers.  But that is only 16-bits, does that give you
enough space?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
