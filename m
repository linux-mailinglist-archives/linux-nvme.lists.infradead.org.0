Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8128903BC
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 16:12:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:Subject:Message-ID:References:
	In-Reply-To:From:To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1FmvqjaSYRpdA0M5cM/ydZW9hK0hrIeo38VfBdcmgjA=; b=jc6MgdtaT9kI/6
	eHZa2SyQ3nm+b/9CAsQEVlAqaaMnqOGxr+Jh7cnGhhe42bHrmdMpYkl/YT6t3RX8rTqrNKvZohmQ4
	XMtsC7HCfZc8CfW+vGGeLnOMHBhaScQyHGMO/6sxmgVk6ExValZlmMdPcVeLgJQNHhCCBRCcDgqPu
	nRz9I3Dk1e/A0uCriBbM91px/v8SsAfJu7+7lcsMm8KDfmELmLf+O02sdUDFpqIZmGTHQv40xqFBR
	yGvuTCYjxu4j/lQQY2eQi8Hshs+3g1lJWKsZmTl38y2wOPyCDOF/rOS5C+cpnCGA3PqbT0j/MHD7c
	zqytN6KdKxMbwZoZoDfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hycxv-0000dO-1z; Fri, 16 Aug 2019 14:12:27 +0000
Received: from mail.fireflyinternet.com ([109.228.58.192]
 helo=fireflyinternet.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hycxm-0000bq-M6
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 14:12:21 +0000
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 18163882-1500050 for multiple; Fri, 16 Aug 2019 15:12:13 +0100
MIME-Version: 1.0
To: Christoph Hellwig <hch@lst.de>, Keith Busch <keith.busch@gmail.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <CAOSXXT54LyxmF7sAgfxYr7G_vnvDjhiEiHnVm7Zrm1vjS7zLQA@mail.gmail.com>
References: <20190816121549.8754-1-chris@chris-wilson.co.uk>
 <20190816122644.GA21797@lst.de>
 <156595862897.11610.6852982219615959799@skylake-alporthouse-com>
 <20190816123850.GA22923@lst.de>
 <CAOSXXT54LyxmF7sAgfxYr7G_vnvDjhiEiHnVm7Zrm1vjS7zLQA@mail.gmail.com>
Message-ID: <156596473180.11610.10618280744615593681@skylake-alporthouse-com>
User-Agent: alot/0.6
Subject: Re: [PATCH] Revert "nvme-pci: use host managed power state for
 suspend"
Date: Fri, 16 Aug 2019 15:12:11 +0100
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_071218_992907_4DA8C602 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.228.58.192 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 intel-gfx@lists.freedesktop.org,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Quoting Keith Busch (2019-08-16 13:46:41)
> On Fri, Aug 16, 2019 at 6:38 AM Christoph Hellwig <hch@lst.de> wrote:
> > On Fri, Aug 16, 2019 at 01:30:29PM +0100, Chris Wilson wrote:
> > > Quoting Christoph Hellwig (2019-08-16 13:26:44)
> > > > Please, report the actual problem.  Blindly reverting a patch without
> > > > even an explanation of your regressions is not the way to do it.
> > >
> > > As stated, the system doesn't suspend.
> > >
> > > If you would like to wait, you will get test results from our CI
> > > giving the current failed state and the outcome of the patch.
> >
> > Platform type, SSD vendor and type, firmware version?

Which platform were you interested in, and is that information not
present in the debug log? The issue is observed across multiple different
SSD and vendors.
 
> Also not a fan of knee-jerk reverts. Even if it may turn out to be
> necessary, let's at least start with a bug report for an opportunity
> to fix first!

I just did report that we successfully bisected the earlier bug we
reported, and was testing a revert for our CI.

> Could you please try Rafael's solution? These two commits here:
> 
> https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?h=xps13-9380-20190812&id=accd2dd72c8f087441d725dd916688171519e4e6
> https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?h=xps13-9380-20190812&id=4eaefe8c621c6195c91044396ed8060c179f7aae

Which indeed work, thank you.
-Chris

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
