Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453CF2CA48
	for <lists+linux-nvme@lfdr.de>; Tue, 28 May 2019 17:22:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uS6IWd/vSvhB2Ii+qFkkYhUWZqZEvF2GTUvdfAgmtDE=; b=YQk2MI35fcvhku
	ENhpGWuUImPfIc/0Da7mboIe8JMe6JJ8Vr0vPrTmlfsHttIXUHvDZ9YPE+p6GE30Qn4mPLW6eiXwt
	6MMb08g5PJFIl4vzT6J/LTiMHVMgfWcruVQn9JS3oxMuBOtsXndzNTK19n4ic+KyA+dHZ/akP6To0
	vhByiQuCDniPP0HUL0UWnxeno6EDuUY/hO6E0aB0lCO5XkXxpsIDGBH6XcsjwalB1PPm2/u3I0EMx
	Enq0YqT18hTVBpGTusvSGKsEBB19OHmx/uaKhPM3TEg0x+9KjNpoaEbkY0/2nJmSKuWtHluFdqRzq
	TDKT42EYkq1L7JZvYucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVdvT-0006Ln-6V; Tue, 28 May 2019 15:22:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVdvO-0006LH-6o
 for linux-nvme@lists.infradead.org; Tue, 28 May 2019 15:22:03 +0000
Received: from pobox.suse.cz (prg-ext-pat.suse.com [213.151.95.130])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8697220665;
 Tue, 28 May 2019 15:21:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559056921;
 bh=PalDUvKBMeq6uuZipz24GPUGFzG5XkO+thRy1zun59M=;
 h=Date:From:To:cc:Subject:In-Reply-To:References:From;
 b=VziaK6AGw22sF91IPVjUlLI7s8SEbHlbbR1CSpa1YqBT8UxDZoOWojiMM3382H+JT
 +MZcVPm1TwlQSpEFl0F1+rKWz7a9M3QCnT8QhNJXNH6pAr0zp3c4xRsuQ4szoKw6Am
 aaStj644mgDbJhWmtR/8ipXC9RtNt1dVev24xfLI=
Date: Tue, 28 May 2019 17:21:56 +0200 (CEST)
From: Jiri Kosina <jikos@kernel.org>
To: Dongli Zhang <dongli.zhang@oracle.com>
Subject: "nosmt" breaks resuming from hibernation (was Re: [5.2-rc1
 regression]: nvme vs. hibernation)
In-Reply-To: <nycvar.YFH.7.76.1905271126480.1962@cbobk.fhfr.pm>
Message-ID: <nycvar.YFH.7.76.1905281709130.1962@cbobk.fhfr.pm>
References: <nycvar.YFH.7.76.1905241706280.1962@cbobk.fhfr.pm>
 <20190524154429.GE15192@localhost.localdomain>
 <nycvar.YFH.7.76.1905250023380.1962@cbobk.fhfr.pm>
 <92a15981-dfdc-0ac9-72ee-920555a3c1a4@oracle.com>
 <nycvar.YFH.7.76.1905271126480.1962@cbobk.fhfr.pm>
User-Agent: Alpine 2.21 (LSU 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_082202_268413_AAD691D7 
X-CRM114-Status: GOOD (  15.11  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-pm@vger.kernel.org, x86@kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Ingo Molnar <mingo@redhat.com>, Hannes Reinecke <hare@suse.de>,
 Josh Poimboeuf <jpoimboe@redhat.com>, Keith Busch <kbusch@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, 27 May 2019, Jiri Kosina wrote:

> > Looks this has been discussed in the past.
> > 
> > http://lists.infradead.org/pipermail/linux-nvme/2019-April/023234.html
> > 
> > I created a fix for a case but not good enough.
> > 
> > http://lists.infradead.org/pipermail/linux-nvme/2019-April/023277.html
> 
> That removes the warning, but I still seem to have ~1:1 chance of reboot 
> (triple fault?) immediately after hibernation image is read from disk. 

[ some x86/PM folks added ]

I isolated this to 'nosmt' being present in the "outer" (resuming) kernel, 
and am still not sure whether this is x86 issue or nvme/PCI/blk-mq issue.

For the newcomers to this thread: on my thinkpad x270, 'nosmt' reliably 
breaks resume from hibernation; after the image is read out from disk and 
attempt is made to jump to the old kernel, machine reboots.

I verified that it succesfully makes it to the point where restore_image() 
is called from swsusp_arch_resume() (and verified that only BSP is alive 
at that time), but the old kernel never comes back and triplefault-like 
reboot happens.

It's sufficient to remove "nosmt" from the *resuming* kernel, and that 
makes the issue go away (and we resume to the old kernel that has SMT 
correctly disabled). So it has something to do with enabling & disabling 
the siblings before we do the CR3 dance and jump to the old kernel.

I haven't yet been able to isolate this to being (or not being) relevant 
to the pending nvme CQS warning above.

Any ideas how to debug this welcome. I haven't been able to reproduce it 
in a VM, so it's either something specific to that machine in general, or 
to nvme specifically.

Dongli Zhang, could you please try hibernation with "nosmt" on the system 
where you originally saw the initial pending CQS warning? Are you by any 
chance seeing the issue as well?

Thanks,

-- 
Jiri Kosina
SUSE Labs


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
