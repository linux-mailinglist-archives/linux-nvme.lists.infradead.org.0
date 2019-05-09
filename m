Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42351187B4
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 11:25:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7sMRO1iTT7NLOY+tcTmVnb3Kmr0lgqmDQsUKlA2WH3k=; b=YaLvJL3Z1Z/15L
	FZpjrdQX6etCCJuCE8nGOXV9viutUCstVxBkWA7fsh0H8q9A899ukjvgRgyS7ax9DTC09BPPhiWst
	K9a3yArEm4OziOStfxi6XhXteabqTp7NdMPOLyOJOEToc7xY6wW4vs/40nfXwdQgw7hql+2hdPia7
	6mlDRhtOfHfeyPRIXs/9IcvqoncZODl1xcen4tQhWVaBGiZ1khXCT9v1StAZKMzNO6XUiu7sCo/8T
	Oojx551ELpgSV/8ikGVyDA/Tc1g2AJ0VcFfiGV4i5yE/HpG8MnM1e9ta239Xlmcfymg9DWb9cccmd
	+6JzMOLhewBkXBBVyAig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOfJC-0004gZ-JN; Thu, 09 May 2019 09:25:46 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOfJ2-0004fS-NN
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 09:25:38 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id 3C79568AFE; Thu,  9 May 2019 11:25:14 +0200 (CEST)
Date: Thu, 9 May 2019 11:25:14 +0200
From: Christoph Hellwig <hch@lst.de>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of
 D3 on Suspend-to-Idle
Message-ID: <20190509092514.GA18598@lst.de>
References: <20190508185955.11406-1-kai.heng.feng@canonical.com>
 <20190508191624.GA8365@localhost.localdomain>
 <3CDA9F13-B17C-456F-8CE1-3A63C6E0DC8F@canonical.com>
 <f8a043b00909418bad6adcdb62d16e6e@AUSX13MPC105.AMER.DELL.COM>
 <20190508195159.GA1530@lst.de>
 <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <20190509065223.GA15984@lst.de>
 <CAJZ5v0h51nMCte4yL76nMWaYrrXDPrOK=CeUpc50=r2Pp_icPw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0h51nMCte4yL76nMWaYrrXDPrOK=CeUpc50=r2Pp_icPw@mail.gmail.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_022537_176277_17402CE0 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [213.95.11.211 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>,
 LKML <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Keith Busch <keith.busch@intel.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 11:19:37AM +0200, Rafael J. Wysocki wrote:
> Right, the choice of the target system state has already been made
> when their callbacks get invoked (and it has been made by user space,
> not by the platform).

From a previous discussion I remember the main problem here is that
a lot of consumer NVMe use more power when put into D3hot than just
letting the device itself manage the power state transitions themselves.
Based on this patch there also might be some other device that want
an explicit power state transition from the host, but still not be
put into D3hot.

The avoid D3hot at all cost thing seems to be based on the Windows
broken^H^H^H^H^H^Hmodern standby principles.  So for platforms that
follow the modern standby model we need to avoid putting NVMe devices
that support power management into D3hot somehow.  This patch doesa a
few more things, but at least for the device where I was involved in
the earlier discussion those are not needed, and from the Linux
point of view many of them seem wrong too.

How do you think we best make that distinction?  Are the pm_ops
enough if we don't use the simple version?

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
