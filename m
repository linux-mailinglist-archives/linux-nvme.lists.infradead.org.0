Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 864A581E0B
	for <lists+linux-nvme@lfdr.de>; Mon,  5 Aug 2019 15:51:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gyKDul7D6w6sF4cvhXuJ5ZAbrcryNbn8R6d0jVzrV4M=; b=pM61PUsC136emU
	M1g8g/DLakBDA/UwnGWExLLc35he6Lc/d58DRpN2Sd/P87lg/V8QNiK2HLonZ3vRBvNXk3r/udk6I
	joItiJzmT+x5WuFNZHedjzpRWG6j+BmJOBfC+6DMIQW4U6OPPtYv1qX3N9cObF8Bpbr+kHRRpEDrO
	NUXnBfvY8dYuLIZcmWvnLLwrFHgSF7xTMKA4zP/ycmA/13KKDS9Zv8ELLgUPwvOKSofFomGG+uLig
	rvfdBNOfbG9EVl1wg/ZsisjoIUMIvNkO0jOWRoGrkH/5YUq51VrybkEp3YPw5C7HVskm6God1C4m2
	UUTXaF1XqcyBGpGAlbFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hudOs-00072I-Nw; Mon, 05 Aug 2019 13:51:46 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hudOm-00071r-SQ
 for linux-nvme@lists.infradead.org; Mon, 05 Aug 2019 13:51:42 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Aug 2019 06:51:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,350,1559545200"; d="scan'208";a="178854881"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 05 Aug 2019 06:51:38 -0700
Date: Mon, 5 Aug 2019 07:49:07 -0600
From: Keith Busch <keith.busch@intel.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH v3] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
Message-ID: <20190805134907.GC18647@localhost.localdomain>
References: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
 <20190730153044.GA13948@localhost.localdomain>
 <2030a028664a9af9e96fffca3ab352faf1f739e5.camel@kernel.crashing.org>
 <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6290507e1b2830b1729fc858cd5c20b85d092728.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_065140_931767_04672E0F 
X-CRM114-Status: GOOD (  20.45  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 Paul Pawlowski <paul@mrarm.io>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 05, 2019 at 04:49:23PM +1000, Benjamin Herrenschmidt wrote:
> On Tue, 2019-07-30 at 13:28 -0700, Benjamin Herrenschmidt wrote:
> > > One problem is that we've an nvme parameter, io_queue_depth, that a user
> > > could set to something less than 32, and then you won't be able to do
> > > any IO. I'd recommend enforce the admin queue to QD1 for this device so
> > > that you have more potential IO tags.
> > 
> > So I had a look and it's not that trivial. I would have to change
> > a few things that use constants for the admin queue depth, such as
> > the AEN tag etc...
> > 
> > For such a special case, I am tempted instead to do the much simpler:
> > 
> >         if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS) {
> >                 if (dev->q_depth < (NVME_AQ_DEPTH + 2))
> >                         dev->q_depth = NVME_AQ_DEPTH + 2;
> >         }
> > 
> > In nvme_pci_enable() next to the existing q_depth hackery for other
> > controllers.
> > 
> > Thoughts ?
> 
> Ping ? I had another look today and I don't feel like mucking around
> with all the AQ size logic, AEN magic tag etc... just for that sake of
> that Apple gunk. I'm happy to have it give up IO tags, it doesn't seem
> to make much of a difference in practice anyway.
> 
> But if you feel strongly about it, then I'll implement the "proper" way
> sometimes this week, adding a way to shrink the AQ down to something
> like 3 (one admin request, one async event (AEN), and the empty slot)
> by making a bunch of the constants involved variables instead.

I don't feel too strongly about it. I think your patch is fine, so

Acked-by: Keith Busch <keith.busch@intel.com>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
