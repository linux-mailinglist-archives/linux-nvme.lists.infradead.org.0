Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3757B2D8FC
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 11:21:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4sGuRhauftES852nNJyRve0zOGNjqhV0m6+WrpcA7hA=; b=O/ifPUzjp8mXJC
	/UVHKfVhaOxxsAlCwFt+PpTy/5zqsun7hRy9BWxsmZgtVEdULQNbnPH1qdhqCruFp2p3ie+IYfdcP
	r0jvfF49NwrcnE7bzTK+dO5+PmnZxqWKXVwisGRnIoWB3w1yMpd+dHN15BS9+hwhIii7bs/Wr5osK
	N+ElePQ416I/19a2ArQbTgkrnKJi9MliH2peeOQ3v9DUeJxWyWhwKdCs/YdBo5gHW+YU3GiKYhsCq
	UToGyubNw1QD4LN7HBcCszJfMw4RwDHTKmM1oiivW7FuXYEu8CXbf2RrvIepey/hfEP+IR+9Ozvh3
	HloUnqF1N+dYVBWVXSAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVulu-0003rH-Sp; Wed, 29 May 2019 09:21:22 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVulT-0003LH-JF
 for linux-nvme@bombadil.infradead.org; Wed, 29 May 2019 09:20:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:References:
 Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=auqQeIEaS8GJue5Zc4Ldb0g5nNuH5eRiA0FCsJ0F8I0=; b=0amk9YrvtQymQm0T15bDEu7O0
 x5DeCvrvqrLvwET9qZi7GEhWDMHL8T91mh3S8KHCTNdmrfIQg/vn9uVQ9UxbDaSZYJA8lgQgN5l1q
 jjq9cB7lFXGNhE+0v8FNCG34cTzIyjzhy9J8/QsgKBtOAc4bR8UFK/A6Cd0jzBPv+g2uBSn6UuWu/
 IuCZBRHa1aitmSP6gu5QD/lwFkRqu372Szmzf7pkyDfcdz91Cqyn0LNxgyJlh/cqUpqRPf41s7VbO
 d3DhU8ARyFlSGy5atE/RSgFDZoJONp0vRPQ8fsVwvj7luV+7fAoe+FsCf3YjYZqVUvvouwZKzD/pl
 Eil0rNdcg==;
Received: from mail.kernel.org ([198.145.29.99])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVulM-0002ur-T5
 for linux-nvme@lists.infradead.org; Wed, 29 May 2019 09:20:52 +0000
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5F73920665;
 Wed, 29 May 2019 09:20:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559121646;
 bh=/PL4CQ/v4pznt0abn/nUFgtQ+rgGUt9Hn5oNdPyrQ/I=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=zjCbiRlgW58S4wY/EVqqrvR+RmyzSey0pbRrf5fk3HMLp2etJ2M2fdjY1qpEwdj9x
 4jZEqdDPaFj+l1hzkM9H465kFmgmtM6TyV1tVIUHXDURXjdRNnBqlP5Mt1BndZe34+
 7KM+5sNgltaxNDBBzLehFDSa01o4uR0k2HSsM0TY=
Date: Wed, 29 May 2019 11:20:40 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Peter Zijlstra <peterz@infradead.org>
Subject: Re: "nosmt" breaks resuming from hibernation (was Re: [5.2-rc1
 regression]: nvme vs. hibernation)
In-Reply-To: <20190529085618.GH2623@hirez.programming.kicks-ass.net>
Message-ID: <nycvar.YFH.7.76.1905291118100.1962@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
 <20190524154429.GE15192@localhost.localdomain>
 <nycvar.YFH.7.76.1905250023380.1962@cbobk.fhfr.pm>
 <92a15981-dfdc-0ac9-72ee-920555a3c1a4@oracle.com>
 <nycvar.YFH.7.76.1905271126480.1962@cbobk.fhfr.pm>
 <nycvar.YFH.7.76.1905281709130.1962@cbobk.fhfr.pm>
 <nycvar.YFH.7.76.1905282118070.1962@cbobk.fhfr.pm>
 <20190529085618.GH2623@hirez.programming.kicks-ass.net>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190529_052049_127277_74BB40EB 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 linux-pm@vger.kernel.org, Dongli Zhang <dongli.zhang@oracle.com>,
 x86@kernel.org, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Hannes Reinecke <hare@suse.de>, Josh Poimboeuf <jpoimboe@redhat.com>,
 Keith Busch <kbusch@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, 29 May 2019, Peter Zijlstra wrote:

> > > I verified that it succesfully makes it to the point where restore_image()
> > > is called from swsusp_arch_resume() (and verified that only BSP is alive
> > > at that time), but the old kernel never comes back and triplefault-like
> > > reboot happens.
> 
> which means that even without nosmt all 'other' CPUs are offline. And
> when I look at resume_target_kernel() I see it call
> hibernate_resume_nonboot_cpu_disable().
> 
> So how is the SMT offline different from that offline? afaict they all 
> get into play_dead()->native_play_dead()->mwait_play_dead().

There is no way those other CPUs have been offlined before to the 
native_play_dead() state, as this is way before any userspace was alive to 
initiate any kind of hotplug.

So they are guaranteed to have been all online, and then offlined properly 
to resume_play_dead(). 'nosmt' is the only exception there, as it's the 
only kind of offlining that has already happened at this point.

Let's continue in the other thread.

Thanks,

-- 
Jiri Kosina
SUSE Labs


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
