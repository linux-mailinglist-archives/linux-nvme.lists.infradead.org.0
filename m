Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C0B81C194B
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 17:23:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uJ7KvTc7LEEXzgaa3D7+1cat53EFE/3pG/BTNd7S+ro=; b=ZUq8HkRUh2PZw1
	b3ZdZe/Gof4Nzn3d5C2qPKv/MuUDoLyLDHvdmMo0m+bk1+XzgLwzdZx5KwIJCoOHhxMm2yTnOnKJb
	8TH7XL7gJhvPNoEsNz+zSDxUzOy7P15U3eoPV4IsahOBNVJSIsX+6oh3t5YMhAtTJ1at2pt6EP1nk
	JzHJT7TOd5Ol8pvY9EHeIHD3zdgtVMZZDHrybks9p6FlxSO2XSwF2RWYxOe4WXXpK2nx3AQyOG2ES
	8XtO/E4i8SLXXYjH1mbMC/7+wcOBwlfkT2lrGbDp1aXh7TIs38yL4oPMhiLwPF2XIwGl63bdIHFbE
	WJlG89m9djQI/a1m/ZEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUXVW-0001yx-AM; Fri, 01 May 2020 15:23:18 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUXVS-0001yW-GG
 for linux-nvme@lists.infradead.org; Fri, 01 May 2020 15:23:15 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id CE3F420708;
 Fri,  1 May 2020 15:23:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588346594;
 bh=9rFiWC4vaUGPhEjsgkjbjkRRCQZgJSnnzaZn1h8ESDY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MhtwJFAoNEs1IhX5lLW+e9RUUkKoWTds81RevIDhOsztGltUImQGN6ychV0+C06vL
 BST/T4aQbF4MsRnZ9rj6Z06Txq+A1n7SL35LhvkAWdbF6B8MkkFhrVk/mDDXTG292+
 ugpK1FtIfTn1njNtD30W2nUCRuQ47AJWZUU4v+b4=
Date: Fri, 1 May 2020 08:23:11 -0700
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH 3/3] nvme-pci: reshuffle nvme_queue members
Message-ID: <20200501152311.GA2273550@dhcp-10-100-145-180.wdl.wdc.com>
References: <20200427235243.2268765-1-kbusch@kernel.org>
 <20200427235243.2268765-3-kbusch@kernel.org>
 <20200501125704.GC5197@lst.de>
 <20200501150815.GA22665@redsun51.ssa.fujisawa.hgst.com>
 <20200501151246.GA17006@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200501151246.GA17006@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_082314_560983_A48F00B0 
X-CRM114-Status: GOOD (  17.12  )
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

On Fri, May 01, 2020 at 05:12:46PM +0200, Christoph Hellwig wrote:
> On Sat, May 02, 2020 at 12:08:15AM +0900, Keith Busch wrote:
> > > > +	/* only used for poll queues: */
> > > > +	spinlock_t cq_poll_lock;
> > > > +	dma_addr_t sq_dma_addr;
> > > > +	dma_addr_t cq_dma_addr;
> > > >  	struct completion delete_done;
> > > 
> > > We probably want a comment before the last three that this is only
> > > used during queue deletion.  Also cq_poll_lock very much is in the
> > > hot path for polled I/O, so I'd rather keep it with other CQ bits.
> > 
> > Yeah, I moved the cq lock so 'flags' could fit since we're still using
> > that in the submission path. We should be able to get rid of that hack
> > at some point, so I'll redo this as you're suggesting.
> 
> We could easily kill the qid field by using the same trick as
> the fabrics drivers.  But that is only 16-bits, does that give you
> enough space?

Yes, killing qid and moving the cq_vector (which is not used in the io
path) will let everything fit. Thanks for the suggestion.

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
