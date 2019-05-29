Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43522D84D
	for <lists+linux-nvme@lfdr.de>; Wed, 29 May 2019 10:56:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eZH96SrmJJmahRfg46FwQIljE2zxF6MVKy+3qtJzv+I=; b=q2tSq/bh4R/kOr
	jsqbu5wrB/yHWUnYNKDz5vnDr++niIBmnsecP2meti1nq//PavTcpGxHNyye5kjh/BD8QMmAOPQq0
	86sdingF+UW0V1yAQMBMXEcC/yNpbjX/GYytaiudD06f+/OJpLIRZJzA22lPvYhei5yOoYG6kTAd4
	xFyXf+8oCy6Uffl6Knpmaj6488zotid8E4HFXzUuTzieSXpxG5Z9rt6IU+1YdkAeREWuORn3059lJ
	gSyv+QeIIeFj18soj3UKLVTFBbNVOSpSfINvmwL5e2bH4LewdbsKnVoHdwVkzpSNdGZk/Q0pYyrvx
	PHVlFnf+1pAYrCq50vEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVuNr-0006dD-Ue; Wed, 29 May 2019 08:56:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuNo-0006d7-DZ
 for linux-nvme@bombadil.infradead.org; Wed, 29 May 2019 08:56:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yoN+qjMhQOqFfhB9c55JTuMYWset936oLOIvZ9uv87s=; b=YJ4KaPKdKZ1jLs40LqPjsyPk6
 uyds6tzKQVpfr03EZu5CgRrAYZtgDRLu5KiSI+pE8dGeGCNLQD8yx7G1JrhDQIIHFWfl9BRox4HUg
 iDTe+WXBl5e74NeCuPlZTSeNVbX+d1wjL9NfeSDukchNfw0KObzXmvymR7eTLd7m/OBPlj4kmfBTv
 EcNKA556PaJqaymOdEHRufll94IcIYNRGOWtAeNRsW6NvfHttmADbxrrS4MhLc6LxNtQN7p8zhUm7
 iXpGVIbKJQBORe7knNzZZ4hYYfuSp+Yyq80iIWptFl5woTWE6YltecvczEB9vWVaEvsVRH3MUNYQF
 yAIdt2c9A==;
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=hirez.programming.kicks-ass.net)
 by merlin.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVuNh-0002hC-Ei; Wed, 29 May 2019 08:56:21 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id E8915201A7E42; Wed, 29 May 2019 10:56:18 +0200 (CEST)
Date: Wed, 29 May 2019 10:56:18 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Jiri Kosina <jikos@kernel.org>
Subject: Re: "nosmt" breaks resuming from hibernation (was Re: [5.2-rc1
 regression]: nvme vs. hibernation)
Message-ID: <20190529085618.GH2623@hirez.programming.kicks-ass.net>
References: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
 <20190524154429.GE15192@localhost.localdomain>
 <nycvar.YFH.7.76.1905250023380.1962@cbobk.fhfr.pm>
 <92a15981-dfdc-0ac9-72ee-920555a3c1a4@oracle.com>
 <nycvar.YFH.7.76.1905271126480.1962@cbobk.fhfr.pm>
 <nycvar.YFH.7.76.1905281709130.1962@cbobk.fhfr.pm>
 <nycvar.YFH.7.76.1905282118070.1962@cbobk.fhfr.pm>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YFH.7.76.1905282118070.1962@cbobk.fhfr.pm>
User-Agent: Mutt/1.10.1 (2018-07-13)
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

On Tue, May 28, 2019 at 09:22:14PM +0200, Jiri Kosina wrote:
> On Tue, 28 May 2019, Jiri Kosina wrote:
> 
> > [ some x86/PM folks added ]
> > 
> > I isolated this to 'nosmt' being present in the "outer" (resuming) kernel, 
> > and am still not sure whether this is x86 issue or nvme/PCI/blk-mq issue.
> > 
> > For the newcomers to this thread: on my thinkpad x270, 'nosmt' reliably 
> > breaks resume from hibernation; after the image is read out from disk and 
> > attempt is made to jump to the old kernel, machine reboots.

> 
> Thomas figured it out (and this should be really more widespread than just 
> my machine :) ).
> 
> nosmt forces HT siblings to mwait, but that explodes after %cr3 change 
> during resume, as the mwait target address is all of a sudden not valid 
> anymore for neither of the hyperthreads.

ARGH!!! But also, you wrote:

> > I verified that it succesfully makes it to the point where restore_image()
> > is called from swsusp_arch_resume() (and verified that only BSP is alive
> > at that time), but the old kernel never comes back and triplefault-like
> > reboot happens.

which means that even without nosmt all 'other' CPUs are offline. And
when I look at resume_target_kernel() I see it call
hibernate_resume_nonboot_cpu_disable().

So how is the SMT offline different from that offline? afaict they all
get into play_dead()->native_play_dead()->mwait_play_dead().


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
