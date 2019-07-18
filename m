Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C32D6C43C
	for <lists+linux-nvme@lfdr.de>; Thu, 18 Jul 2019 03:31:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1RQNkWG+QKvrLVcqnpbD61Vdhwu+CZeSA2R7joI66V0=; b=oz3SGKoajzgc7c
	U1/+x32ZsxFPmxchyU2XU1x2WSY/LF1kCMwg2YjG1T7pf3FQuP0MA9SBbuugbRsrgLwgUBZRVuF1T
	D1dr/l0rKBiDNczUlneCRUutE7zPQPwfajkQ8t4Gyxnzfb9hHaF9FcwLe7SspJwSUa5UgSnCz6Edh
	YMRNq/k9vxS2ODXw3sModgWXbEvLWL7RnL2ebr9Qa4jFVwr9EVkTjWenRcx/Jl2+2oMw/CWfKL9h2
	LJ82gogBeIDKm3lrQrD56xei3xUUz1tgK1fMYB1mAkFl8SRv5DUT++CuJZlf4hcohJuPuvq3trD+V
	l7ZLSc0z1cT+t/yxG+Og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnvGj-0004Ak-VO; Thu, 18 Jul 2019 01:31:38 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnvGc-0004AM-0Q
 for linux-nvme@lists.infradead.org; Thu, 18 Jul 2019 01:31:31 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6I1VQWI027960;
 Wed, 17 Jul 2019 20:31:27 -0500
Message-ID: <2ab311ca8c4d3052248a1183577e246886bc0b3c.camel@kernel.crashing.org>
Subject: Re: Duplicate tag error with 5.2
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: Keith Busch <keith.busch@gmail.com>
Date: Thu, 18 Jul 2019 11:31:26 +1000
In-Reply-To: <CAOSXXT5jh0Yi0xPbsLu9V=KVmee_Pto6KNRWxUbfk_8=UGGU3A@mail.gmail.com>
References: <0007d555cf4586c4ae43fdca66766b6b11863078.camel@kernel.crashing.org>
 <dbb6572c3d0b8ad1f20fd5f89ee112995676375b.camel@kernel.crashing.org>
 <CAOSXXT5jh0Yi0xPbsLu9V=KVmee_Pto6KNRWxUbfk_8=UGGU3A@mail.gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_183130_200151_1E74E9B0 
X-CRM114-Status: GOOD (  17.04  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
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
Cc: linux-nvme <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, 2019-07-18 at 10:21 +0900, Keith Busch wrote:
> 
> On Thu, Jul 18, 2019, 10:13 AM Benjamin Herrenschmidt <benh@kernel.crashing.org> wrote:
> > On Thu, 2019-07-18 at 10:41 +1000, Benjamin Herrenschmidt wrote:
> > > Hi !
> > > 
> > > So I'm getting occasional abrupt shutdowns on the Mac Mini 2018. I
> > > found out that it's the T2 chip that is panic'ing and shutting the
> > > system down.
> > > 
> > > Interestingly, when booting into MacOS, we can get some kind of error
> > > log of what happened. It looks like the NVME implementation on that
> > > thing is a SW emulation done by the T2 chip :-) It's failing on an
> > > assert due to a duplicate tag error...
> > > 
> > > Does that ring any bell ? Any idea what might be causing that ? (tag
> > > is
> > > tag 8 if that means anything).
> > 
> > Note: It seems to happen often during boot, when systemd starts all
> > services... It looks like a service hangs for a few seconds (I see the
> > systemd "waiting for service..." prompt show up for a bit, then the
> > machine dies abruptly.
> > 
> > I have yet to find a way to reproduce this on a successfully booted
> > system however. Once it's gone all the way, it's been stable so far, at
> > least doing plenty of -j5 kernel compiles.
> > 
> > Trying various stressers now...
> > 
> > Also the tag number changes from occurrence to occurrence, no pattern.
> > The IO queue depth is 129
> 
> Does this one need that QD1 quirk?

You mean queue depth 1 ? I suppose it would help but it would kill
performance :-) From the reverse engineering guy, it looks like MacOS
is happily using the whole queue. See my other message, I seem to have
caught us sending a duplicate tag indeed, though it's unclear how that
happened.

Cheers,
Ben.


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
