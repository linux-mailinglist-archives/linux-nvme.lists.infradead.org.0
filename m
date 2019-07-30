Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC1217A634
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 12:45:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=T5z1Ai4qw5nSrO13G3YgPoKtBGQiCFPYFbwfKeHMnXo=; b=o6V4MkCe9zZOAl
	ix/l9kl856jvYVVy8WaKnJiLB7FL9tp7te+8O7wTUfY2tvo4XADhMnRPhvVRYMzM4s+exc1ZaiHcD
	qEl5vGalw0pfCz0n1fstllEt72T+396SDXJy0mpWrnNxEXXH/BoKns11JBjJE0wVOIku2YB64+8+u
	Efgr8dfzZySNGyML4LcH7VXNgbbpMZEPApKWCh0wRhmndROmZ3Kz/G3bWGShgNgnhc21Layk7KE/7
	cglExh5Z1QHWGOI3zUVOl+P/NBG9jrIjLp8dxa2jLXfVT2mUtEl2uGOUmGlQHMRjdpsCbLL5iSlRx
	GEFLhKjZMtBbogvAoKbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPdY-0007Pj-St; Tue, 30 Jul 2019 10:45:44 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPdT-0007Or-Jg
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 10:45:41 +0000
Received: from 79.184.255.110.ipv4.supernova.orange.pl (79.184.255.110) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.275)
 id 634de1d0b5a8bf38; Tue, 30 Jul 2019 12:45:31 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Date: Tue, 30 Jul 2019 12:45:31 +0200
Message-ID: <47415939.KV5G6iaeJG@kreacher>
In-Reply-To: <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
References: <2332799.izEFUvJP67@kreacher>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_034539_813882_940A2767 
X-CRM114-Status: GOOD (  28.71  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Linux PM <linux-pm@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thursday, July 25, 2019 7:03:49 PM CEST Rafael J. Wysocki wrote:
> On Thu, Jul 25, 2019 at 6:24 PM <Mario.Limonciello@dell.com> wrote:
> >
> > +Rajat
> >
> > > -----Original Message-----
> > > From: Kai-Heng Feng <kai.heng.feng@canonical.com>
> > > Sent: Thursday, July 25, 2019 9:03 AM
> > > To: Rafael J. Wysocki
> > > Cc: Keith Busch; Christoph Hellwig; Sagi Grimberg; linux-
> > > nvme@lists.infradead.org; Limonciello, Mario; Linux PM; LKML
> > > Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
> > > suspend" has problems
> > >
> > >
> > > [EXTERNAL EMAIL]
> > >
> > > Hi Rafael,
> > >
> > > at 17:51, Rafael J. Wysocki <rjw@rjwysocki.net> wrote:
> > >
> > > > Hi Keith,
> > > >
> > > > Unfortunately,
> > > >
> > > > commit d916b1be94b6dc8d293abed2451f3062f6af7551
> > > > Author: Keith Busch <keith.busch@intel.com>
> > > > Date:   Thu May 23 09:27:35 2019 -0600
> > > >
> > > >     nvme-pci: use host managed power state for suspend
> > > >
> > > > doesn't universally improve things.  In fact, in some cases it makes
> > > > things worse.
> > > >
> > > > For example, on the Dell XPS13 9380 I have here it prevents the processor
> > > > package
> > > > from reaching idle states deeper than PC2 in suspend-to-idle (which, of
> > > > course, also
> > > > prevents the SoC from reaching any kind of S0ix).
> > > >
> > > > That can be readily explained too.  Namely, with the commit above the
> > > > NVMe device
> > > > stays in D0 over suspend/resume, so the root port it is connected to also
> > > > has to stay in
> > > > D0 and that "blocks" package C-states deeper than PC2.
> > > >
> > > > In order for the root port to be able to go to D3, the device connected
> > > > to it also needs
> > > > to go into D3, so it looks like (at least on this particular machine, but
> > > > maybe in
> > > > general), both D3 and the NVMe-specific PM are needed.
> >
> > Well this is really unfortunate to hear.  I recall that with some disks we were
> > seeing problems where NVME specific PM wasn't working when the disk was in D3.
> >
> > On your specific disk, it would be good to know if just removing the pci_save_state(pdev)
> > call helps.
> 
> Yes, it does help.
> 
> > If so, :
> > * that might be a better option to add as a parameter.
> > * maybe we should double check all the disks one more time with that tweak.
> 
> At this point it seems so.

So I can reproduce this problem with plain 5.3-rc1 and the patch below fixes it.

Also Mario reports that the same patch needs to be applied for his 9380 to reach
SLP_S0 after some additional changes under testing/review now, so here it goes.

[The changes mentioned above are in the pm-s2idle-testing branch in the
 linux-pm.git tree at kernel.org.]

---
From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Subject: [PATCH] nvme-pci: Do not prevent PCI bus-level PM from being used

One of the modifications made by commit d916b1be94b6 ("nvme-pci: use
host managed power state for suspend") was adding a pci_save_state()
call to nvme_suspend() in order to prevent the PCI bus-level PM from
being applied to the suspended NVMe devices, but that causes the NVMe
drive (PC401 NVMe SK hynix 256GB) in my Dell XPS13 9380 to prevent
the SoC from reaching package idle states deeper than PC3, which is
way insufficient for system suspend.

Fix this issue by removing the pci_save_state() call in question.

Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
---
 drivers/nvme/host/pci.c |    8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

Index: linux-pm/drivers/nvme/host/pci.c
===================================================================
--- linux-pm.orig/drivers/nvme/host/pci.c
+++ linux-pm/drivers/nvme/host/pci.c
@@ -2897,14 +2897,8 @@ static int nvme_suspend(struct device *d
 		nvme_dev_disable(ndev, true);
 		ctrl->npss = 0;
 		ret = 0;
-		goto unfreeze;
 	}
-	/*
-	 * A saved state prevents pci pm from generically controlling the
-	 * device's power. If we're using protocol specific settings, we don't
-	 * want pci interfering.
-	 */
-	pci_save_state(pdev);
+
 unfreeze:
 	nvme_unfreeze(ctrl);
 	return ret;




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
