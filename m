Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2DCB1E512
	for <lists+linux-nvme@lfdr.de>; Wed, 15 May 2019 00:21:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=95xv5ayn9JJCfVP+nc2gAoRkjbx2QeSOX4hN7i8XhGs=; b=juHxPzBj6M3za6
	6IY0kQ/jw+afwe7kV37xj5/inWAZcP3Huy5yC2LsqpGfPSi0GEJT9+0ZRSPABkLG8SruUTFkalP96
	ZJnmVf+uklv14kB2+Jg60zD+fmfUAAKmBOin3zaNXP/6PIlnUtoTHWAtLeKfsleCtIcS2blnxWSzk
	hOQ8IkvLcp1vDSpDAO1DSEKVdKsYbJY6CWwWq/dIznMYHYEcZLqqn1Uvlq0IVcqogFiAGJeTSkzqu
	LTUQqyEAJYlcxplOBQoblJL5aVQQ/546wvAbE+WmDbk1cX0XeFEwQ/OjKKUatKvjaY7Ax3tTJCVo9
	wjSS5RIvXstXz688/QLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQfnt-0002uu-0z; Tue, 14 May 2019 22:21:45 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQfno-0002u6-1s
 for linux-nvme@lists.infradead.org; Tue, 14 May 2019 22:21:41 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 14 May 2019 15:21:29 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 14 May 2019 15:21:28 -0700
Date: Tue, 14 May 2019 16:16:09 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH] nvme/pci: Use host managed power state for suspend
Message-ID: <20190514221609.GC19977@localhost.localdomain>
References: <20190510212937.11661-1-keith.busch@intel.com>
 <0080aaff18e5445dabca509d4113eca8@AUSX13MPC105.AMER.DELL.COM>
 <955722d8fc16425dbba0698c4806f8fd@AUSX13MPC105.AMER.DELL.COM>
 <20190513143741.GA25500@lst.de>
 <b12ff66f8c224e4199ff1b90ed6bc393@AUSX13MPC105.AMER.DELL.COM>
 <20190513145522.GA15421@localhost.localdomain>
 <d69ff7154191492eaa8f55535a7effa5@AUSX13MPC105.AMER.DELL.COM>
 <20190513150458.GA15437@localhost.localdomain>
 <CAJZ5v0g3cCYK3rAQn09pCr7LMrRr=zQy_ceaEB5AKhVx604YgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0g3cCYK3rAQn09pCr7LMrRr=zQy_ceaEB5AKhVx604YgA@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_152140_147317_F765AB77 
X-CRM114-Status: GOOD (  29.74  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, May 14, 2019 at 10:04:22AM +0200, Rafael J. Wysocki wrote:
> On Mon, May 13, 2019 at 5:10 PM Keith Busch <kbusch@kernel.org> wrote:
> >
> > On Mon, May 13, 2019 at 03:05:42PM +0000, Mario.Limonciello@dell.com wrote:
> > > This system power state - suspend to idle is going to freeze threads.
> > > But we're talking a multi threaded kernel.  Can't there be a timing problem going
> > > on then too?  With a disk flush being active in one task and the other task trying
> > > to put the disk into the deepest power state.  If you don't freeze the queues how
> > > can you guarantee that didn't happen?
> >
> > But if an active data flush task is running, then we're not idle and
> > shouldn't go to low power.
> 
> To be entirely precise, system suspend prevents user space from
> running while it is in progress.  It doesn't do that to kernel
> threads, at least not by default, though, so if there is a kernel
> thread flushing the data, it needs to be stopped or suspended somehow
> directly in the system suspend path.  [And yes, system suspend (or
> hibernation) may take place at any time so long as all user space can
> be prevented from running then (by means of the tasks freezer).]
> 
> However, freezing the queues from a driver ->suspend callback doesn't
> help in general and the reason why is hibernation.  Roughly speaking,
> hibernation works in two steps, the first of which creates a snapshot
> image of system memory and the second one writes that image to
> persistent storage.  Devices are resumed between the two steps in
> order to make it possible to do the write, but that would unfreeze the
> queues and let the data flusher run.  If it runs, it may cause the
> memory snapshot image that has just been created to become outdated
> and restoring the system memory contents from that image going forward
> may cause corruption to occur.
> 
> Thus freezing the queues from a driver ->suspend callback should not
> be relied on for correctness if the same callback is used for system
> suspend and hibernation, which is the case here.  If doing that
> prevents the system from crashing, it is critical to find out why IMO,
> as that may very well indicate a broader issue, not necessarily in the
> driver itself.
> 
> But note that even if the device turns out to behave oddly, it still
> needs to be handled, unless it may be prevented from shipping to users
> in that shape.  If it ships, users will face the odd behavior anyway.

Thanks for all the information. I'll take another shot at this, should
have it posted tomorrow.

It's mostly not a problem to ensure enqueued and dispatched requests are
completed before returning from our suspend callback. I originally had
that behavior and backed it out when I thought it wasn't necessary. So
I'll reintroduce that. I'm not sure yet how we may handle kernel tasks
that are about to read/write pages, but haven't yet enqueued their
requests.

IO timeouts, shold they occur, have some problems here, so I'll need to
send prep patches to address a few issues with that.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
