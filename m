Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8607F848D9
	for <lists+linux-nvme@lfdr.de>; Wed,  7 Aug 2019 11:49:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZnURzNmtU/A9n3FPZeD7/S0tVQGg1e7WwQ8ZLO4sNk=; b=s8MT++SwwGKVHT
	x7blu7nxqKeEG8YHhaZNSq3ExRJOGCDAKPJKKu8n07lQOUEzsBa80aKRkcRxfzHKZU6ZWgR3KN2ZW
	eKYFmseHpN+3uTrOjymwMP61c0S5ucg7EOHlcFtGuAOW+Ns6VLwff+lV44yggg79pELZzHoDNF3oS
	z+15mEKNnbxQpk3BBdpjJjgtD4GouRL4NgpHmSNR33LRUR7Z6xw76SDyNv0QrFLBNy/zl41vcBUYk
	r00VPUAryEisUgSJsR7jm4Hike4dxbEOU5B9atJf6FNg7WO0LyPkm9MXFa+DUk6MxBw9MDQSBNPOi
	EsGkBo5CsEWuIK/BWP7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvIYs-0002I7-Tz; Wed, 07 Aug 2019 09:48:50 +0000
Received: from cloudserver094114.home.pl ([79.96.170.134])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvIYg-0002HG-Iy
 for linux-nvme@lists.infradead.org; Wed, 07 Aug 2019 09:48:40 +0000
Received: from 79.184.254.29.ipv4.supernova.orange.pl (79.184.254.29) (HELO
 kreacher.localnet)
 by serwer1319399.home.pl (79.96.170.134) with SMTP (IdeaSmtpServer 0.83.275)
 id d7bf4b4fc498339b; Wed, 7 Aug 2019 11:48:33 +0200
From: "Rafael J. Wysocki" <rjw@rjwysocki.net>
To: Keith Busch <kbusch@kernel.org>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Date: Wed, 07 Aug 2019 11:48:33 +0200
Message-ID: <2763495.NmdaWeg79L@kreacher>
In-Reply-To: <20190731221956.GB15795@localhost.localdomain>
References: <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0gxfeMN8eCNRjcXmUOkReVsdozb3EccaYMpnmSHu3771g@mail.gmail.com>
 <20190731221956.GB15795@localhost.localdomain>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_024838_789328_41D9AE10 
X-CRM114-Status: GOOD (  18.19  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Rajat Jain <rajatja@google.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thursday, August 1, 2019 12:19:56 AM CEST Keith Busch wrote:
> On Wed, Jul 31, 2019 at 11:25:51PM +0200, Rafael J. Wysocki wrote:
> > 
> > A couple of remarks if you will.
> > 
> > First, we don't know which case is the majority at this point.  For
> > now, there is one example of each, but it may very well turn out that
> > the SK Hynix BC501 above needs to be quirked.
> > 
> > Second, the reference here really is 5.2, so if there are any systems
> > that are not better off with 5.3-rc than they were with 5.2, well, we
> > have not made progress.  However, if there are systems that are worse
> > off with 5.3, that's bad.  In the face of the latest findings the only
> > way to avoid that is to be backwards compatible with 5.2 and that's
> > where my patch is going.  That cannot be achieved by quirking all
> > cases that are reported as "bad", because there still may be
> > unreported ones.
> 
> I have to agree. I think your proposal may allow PCI D3cold, in which
> case we do need to reintroduce the HMB handling.

So I think I know what the problem is here.

If ASPM is disabled for the NVMe device (which is the case on my machine by default),
skipping the bus-level PM in nvme_suspend() causes the PCIe link of it to stay up and
that prevents the SoC from getting into deeper package C-states.

If I change the ASPM policy to "powersave" (through the module parameter in there),
ASPM gets enabled for the NVMe drive and I can get into PC10 via S2Idle with plain 5.3-rc3.

However, that's a bit less than straightforward, so I'm going to post a patch to make
nvme_suspend() fall back to the "old ways" if ASPM is not enabled for the target device.

Cheers!




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
