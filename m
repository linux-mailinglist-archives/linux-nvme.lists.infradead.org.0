Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A49921444DA
	for <lists+linux-nvme@lfdr.de>; Tue, 21 Jan 2020 20:12:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UOYa7ah/1vp/Yj8EMQqj849bESP9Wn7agUmjsDvqCzQ=; b=dW3fsP+pb/eg+C
	hxKcScVpOlPasSpVbUmPpjpgAgnXwfwpp5iQyUULeRt/sPVvxgwX51s6F0LF+35RcoxSiuwrutbk2
	thbmqTs/TYLJDeSfU77JFY2D5IFDiOYJYybm+hkdO/AVaqkEEOJ3XK6lJQqNW+jdTFh7GLbKYUJer
	ZyRi+is5FhKAJp5u/U3NY9wkuzyDDtHjszUBFrOuPBKblmxGEgSoCT70YN6CPKEHF17J3WAtK79FF
	S/iFm4tCeQRvpVQDwS7G54bw/olXi79oC+x/LUNKQqq8/MdxZMFPdaAR4jwugQmWe80c7GcCyQylp
	rOJpwjE2xvlJB1xJL0Ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ityxH-0008LO-W8; Tue, 21 Jan 2020 19:12:52 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ityx8-0008Kk-06
 for linux-nvme@lists.infradead.org; Tue, 21 Jan 2020 19:12:47 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3B59D217F4;
 Tue, 21 Jan 2020 19:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579633960;
 bh=DFFl+jw2DH8RkJ643b9pSclUkmj1rMWkIHhzvZAd4EY=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eByfBixnlxnU92AT9BMoENUxF9QzTpCWbeb+s23HCBzzz+FMdhGuZBkDyTOPZK/KU
 cnnth2KIiuFj6ZjSq6DND2vIl9Ss3OefKfQtm0CMDJ4PXGLyW8kZPzGdVLmwyti9G7
 nvkmQ8HzcLU8pLl+f11ustuiW2UYWuG9vbO3Iiv0=
Date: Wed, 22 Jan 2020 04:12:34 +0900
From: Keith Busch <kbusch@kernel.org>
To: "Nadolski, Edmund" <edmund.nadolski@intel.com>
Subject: Re: [PATCH] nvme: clear stale nvmeq->tags after tagset free
Message-ID: <20200121191234.GB4954@redsun51.ssa.fujisawa.hgst.com>
References: <20200114181745.2297-1-edmund.nadolski@intel.com>
 <20200116160602.GA28993@redsun51.ssa.fujisawa.hgst.com>
 <0ff9ee57-0211-0170-7c58-a6c5d9354beb@intel.com>
 <20200116232619.GA29624@redsun51.ssa.fujisawa.hgst.com>
 <12dc944f-d28c-3946-3dcd-28c45c1d2892@intel.com>
 <20200121174235.GA4954@redsun51.ssa.fujisawa.hgst.com>
 <0fd26a56-d57c-eeae-52b0-a80b64943bdb@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0fd26a56-d57c-eeae-52b0-a80b64943bdb@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_111242_059972_97840C1E 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jan 21, 2020 at 11:49:53AM -0700, Nadolski, Edmund wrote:
> On 1/21/2020 10:42 AM, Keith Busch wrote:
> > On Tue, Jan 21, 2020 at 10:32:22AM -0700, Nadolski, Edmund wrote:
> > > The tagset pointer gets invalidated when the driver calls the following:
> > > 
> > > nvme_reset_work()
> > >    +-> nvme_setup_io_queues()  <<< cmd fails, no io queues created
> > >    +-> nvme_kill_queues()
> > >    +-> nvme_remove_namespaces()
> > >    |   +-> nvme_ns_remove()  <<< for each ctrl->namespaces
> > >    |       +-> del_gendisk()
> > >    |       +-> blk_cleanup_queue()
> > >    |       |   +-> blk_mq_exit_queue()  <<< invalidates the tags
> > >    |       |       +-> blk_mq_del_queue_tag_set()
> > >    |       |       +-> blk_mq_exit_hw_queues()
> > >    |       |           +-> blk_mq_exit_hctx()
> > >    |       |               +-> set->ops->exit_hctx(...) <<< driver callback
> > >    |       +-> nvme_put_ns()
> > >    +-> nvme_free_tagset()
> > >    |   +-> blk_mq_free_tagset()
> > >    +-> nvme_start_ctrl()  <<< allow operation w/o namespaces
> > > 
> > > So the nvmeq->tags is already dead and stale by the time we get to
> > > nvme_free_tagset.
> > 
> > No, nvmeq->tags is not stale until we call nvme_free_tagset().
> 
> I see this in blk/blk-mq.c:
> 
> 2943 /* tags can _not_ be used after returning from blk_mq_exit_queue */
> 2944 void blk_mq_exit_queue(struct request_queue *q)

You can't access it through q->tag_set after that. The tagset still
exists beyond any individual request_queue using it until you call
blk_mq_free_tag_set().
 
> which ends up being called on every individual ctrl->namespaces entry.  What
> have I overlooked?

There are various paths that can have driver can remove a subset of
namespaces rather than all of them. Is that what you're overlooking?

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
