Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1851055EF
	for <lists+linux-nvme@lfdr.de>; Thu, 21 Nov 2019 16:45:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5tzv9CZq9uHgNxirONo+Ad6iRu1Qs5LO/8ayUI7oho=; b=ZHOsWTDX0MYny7
	GdlAFejykDZl5cAkLFOfCrahgxH/OCzp+88h3PHnmtBGR9UP8DKGK3Y92j6q0wd8HfM2tN5fZwGmA
	tiIEIDJpwY1Zw9/vCV62JS8iEA0xonCyltK8Q1rmfPWfPRtG20/KFwWHs0tkPs+yGVURUNv0wwyGm
	WILZnrH9VREENyJSDTWdY5ImvF4lqKOrYA4oNclOzkx06uNJ7v7FOpEbrbV/13Lz1kYth6KByDDsy
	nrqjUGEYwHQ6zYERN4SL8bFJDgn7jnQheVicL1gXsry6ERwsk0Svmd/MfwjXrb2YlJkvWWc+qnu3r
	X4zlklT68wnxGv6CUIgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXoeJ-0005k6-MF; Thu, 21 Nov 2019 15:45:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXoeF-0005jX-Lv
 for linux-nvme@lists.infradead.org; Thu, 21 Nov 2019 15:45:36 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E31A52068E;
 Thu, 21 Nov 2019 15:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574351134;
 bh=SkbZx1j9Lynw1nQMhhbfOW4JlWM8JMvQF0Shajv7Eg8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=X1o6GU7apf2xbaEKtr0RkO6faiwPGhvj1I27jCgk7UHvK66o1Uds5al/BSIjaQBsu
 oOGf7K/OfJJx4PjoNqHIaMgyAT9yB8aw096iGVLu8bg4tLhFsvxg8R/3HuvWc2oyTu
 +qa4Y9jiwOm9W4a1/MRabxSolBDoO95Zppg2TPG4=
Date: Fri, 22 Nov 2019 00:45:31 +0900
From: Keith Busch <kbusch@kernel.org>
To: Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH V3 0/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Message-ID: <20191121154531.GB17852@redsun51.ssa.fujisawa.hgst.com>
References: <20191114025917.24634-1-ming.lei@redhat.com>
 <20191121031154.GJ24548@ming.t460p> <20191121061431.GA22886@lst.de>
 <20191121074643.GB4755@ming.t460p>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191121074643.GB4755@ming.t460p>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_074535_741131_945C0B90 
X-CRM114-Status: GOOD (  11.75  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 linux-nvme@lists.infradead.org, Jens Axboe <axboe@fb.com>,
 Nadolski Edmund <edmund.nadolski@intel.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, Nov 21, 2019 at 03:46:43PM +0800, Ming Lei wrote:
> On Thu, Nov 21, 2019 at 07:14:31AM +0100, Christoph Hellwig wrote:
> > On Thu, Nov 21, 2019 at 11:11:54AM +0800, Ming Lei wrote:
> > > Hi Guys,
> > > 
> > > Ping...
> > 
> > I think everyone has told you that it is an invasive horrible hack
> > that papers of the underlying problem(s).  I'm not sure what more
> > we can do here.
> 
> The problem is that the NVMe driver applies aggressive interrupt
> coalescing clearly, that can be addressed exactly by this approach.

Can this default coalescing setting be turned off with a "set feature"
command?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
