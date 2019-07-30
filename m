Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C313B7B50C
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 23:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EiIDjkUN9vO2jYXIsr+1AY1oRMEZq3QmTVAtKOSnqK8=; b=qoJ1MN/aFriECo
	G5e41GcgIuzplTb8wSrMNkVdN5/U/O6pe9G2u7smJreTgArTEQdYRp9Xce092DE/C/kyAfE3yhWCq
	m23W+0nZXja5BCGu6LV10LAWy6Iq/FGZ8UCbUwZx826clSnm9QSQ/ek5sP49+QBp2qLMT6sfzQN0H
	iOyKGTrhPKQ9zB2IG0sJSnWU/mjeeDxjv8gFCHZ681AmW7R/7uu/sOnrukpUTRX52SPdrqdNQBqt4
	15WmgMcm9iFYgbXJCqmZ8uOFn2uzpmzrT06/GreuPPPyUUVS2URDcrU92nesQ+hZY9L8QLKeN2XNS
	dLZsyOsOPC75kNxqYHcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsZky-00068s-LA; Tue, 30 Jul 2019 21:34:04 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsZks-00068T-D6
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 21:33:59 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 14:33:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="191033426"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga001.fm.intel.com with ESMTP; 30 Jul 2019 14:33:57 -0700
Date: Tue, 30 Jul 2019 15:31:14 -0600
From: Keith Busch <kbusch@kernel.org>
To: Mario.Limonciello@dell.com
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Message-ID: <20190730213114.GK13948@localhost.localdomain>
References: <2332799.izEFUvJP67@kreacher>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher>
 <20190730144134.GA12844@localhost.localdomain>
 <100ba4aff1c6434a81e47774ab4acddc@AUSX13MPC105.AMER.DELL.COM>
 <8246360B-F7D9-42EB-94FC-82995A769E28@canonical.com>
 <20190730191934.GD13948@localhost.localdomain>
 <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7d3e0b8ba1444194a153c93faa1cabb3@AUSX13MPC105.AMER.DELL.COM>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_143358_461789_49E24430 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
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
Cc: sagi@grimberg.me, linux-pm@vger.kernel.org, rjw@rjwysocki.net,
 linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 keith.busch@intel.com, kai.heng.feng@canonical.com, rajatja@google.com,
 hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 09:05:22PM +0000, Mario.Limonciello@dell.com wrote:
> > -----Original Message-----
> > From: Keith Busch <kbusch@kernel.org>
> > Sent: Tuesday, July 30, 2019 2:20 PM
> > To: Kai-Heng Feng
> > Cc: Limonciello, Mario; rjw@rjwysocki.net; keith.busch@intel.com; hch@lst.de;
> > sagi@grimberg.me; linux-nvme@lists.infradead.org; linux-pm@vger.kernel.org;
> > linux-kernel@vger.kernel.org; rajatja@google.com
> > Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
> > suspend" has problems
> > 
> > 
> > [EXTERNAL EMAIL]
> > 
> > On Wed, Jul 31, 2019 at 02:50:01AM +0800, Kai-Heng Feng wrote:
> > >
> > > Just did a quick test, this patch regress SK Hynix BC501, the SoC stays at
> > > PC3 once the patch is applied.
> > 
> > Okay, I'm afraid device/platform quirks may be required unless there are
> > any other ideas out there.
> 
> I think if a quirk goes in for Rafael's SSD it would have to be a quirk specific to this
> device and FW version per the findings on KH checking the same device with the
> older FW version.

That's fine, we have the infrastructure in place for fw specific quirks.
See drivers/nvme/host/core.c:nvme_core_quirk_entry

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
