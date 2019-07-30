Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A85B7AB48
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 16:44:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6sf4ImKRWy4HgwEVN6x7qAv3T+0N6zMRI5HxQug+ZgI=; b=YSpk538NF2mq4i
	x/JH6Rnh/Dr2cm5ICtCGzBuOyUyroR3I5JfCjnuBf8O8XBOG6QwHqMAt/BsThWbr+lkXsDqcsBrZH
	tErqOHgv5Fo28BJBL2031cQtiL5Kk42E0XxUe8O0yr8QH2i/+uyMLAmdVT8WYTbli+kaZMMwWsIr2
	9zmWOe3KZJzv+nJUF6McgH7bF5idu8o3IeBQyyeeDjUdj1P/2efieeZCaqQuFGX7cMVs8DdxIlC4s
	kPYPPoOohZ60OFfBOGrXmwhb+f/wGx6huL2pHV+0AQukDtMt6Uvyb0iIz7UTRGryNZvT97VQvFtxv
	yMSQndlBAb40ENr6SfAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsTMi-0002xZ-1S; Tue, 30 Jul 2019 14:44:36 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsTMT-0002wi-GU
 for linux-nvme@lists.infradead.org; Tue, 30 Jul 2019 14:44:22 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Jul 2019 07:44:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,327,1559545200"; d="scan'208";a="195815593"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga004.fm.intel.com with ESMTP; 30 Jul 2019 07:44:18 -0700
Date: Tue, 30 Jul 2019 08:41:35 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Rafael J. Wysocki" <rjw@rjwysocki.net>
Subject: Re: [Regression] Commit "nvme/pci: Use host managed power state for
 suspend" has problems
Message-ID: <20190730144134.GA12844@localhost.localdomain>
References: <2332799.izEFUvJP67@kreacher>
 <4323ed84dd07474eab65699b4d007aaf@AUSX13MPC105.AMER.DELL.COM>
 <CAJZ5v0iDQ4=kTUgW94tKGt7oJzA_3uVU_M6HAMbNCRXwp_do8A@mail.gmail.com>
 <47415939.KV5G6iaeJG@kreacher>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <47415939.KV5G6iaeJG@kreacher>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_074421_594814_69680367 
X-CRM114-Status: GOOD (  21.52  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.31 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux PM <linux-pm@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Kai-Heng Feng <kai.heng.feng@canonical.com>,
 Rajat Jain <rajatja@google.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 03:45:31AM -0700, Rafael J. Wysocki wrote:
> So I can reproduce this problem with plain 5.3-rc1 and the patch below fixes it.
> 
> Also Mario reports that the same patch needs to be applied for his 9380 to reach
> SLP_S0 after some additional changes under testing/review now, so here it goes.
> 
> [The changes mentioned above are in the pm-s2idle-testing branch in the
>  linux-pm.git tree at kernel.org.]
> 
> ---
> From: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> Subject: [PATCH] nvme-pci: Do not prevent PCI bus-level PM from being used
> 
> One of the modifications made by commit d916b1be94b6 ("nvme-pci: use
> host managed power state for suspend") was adding a pci_save_state()
> call to nvme_suspend() in order to prevent the PCI bus-level PM from
> being applied to the suspended NVMe devices, but that causes the NVMe
> drive (PC401 NVMe SK hynix 256GB) in my Dell XPS13 9380 to prevent
> the SoC from reaching package idle states deeper than PC3, which is
> way insufficient for system suspend.
> 
> Fix this issue by removing the pci_save_state() call in question.

I'm okay with the patch if we can get confirmation this doesn't break
any previously tested devices. I recall we add the pci_save_state() in
the first place specifically to prevent PCI D3 since that was reported
to break some devices' low power settings. Kai-Heng or Mario, any input
here?


 
> Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
> Signed-off-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
> ---
>  drivers/nvme/host/pci.c |    8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> Index: linux-pm/drivers/nvme/host/pci.c
> ===================================================================
> --- linux-pm.orig/drivers/nvme/host/pci.c
> +++ linux-pm/drivers/nvme/host/pci.c
> @@ -2897,14 +2897,8 @@ static int nvme_suspend(struct device *d
>  		nvme_dev_disable(ndev, true);
>  		ctrl->npss = 0;
>  		ret = 0;
> -		goto unfreeze;
>  	}
> -	/*
> -	 * A saved state prevents pci pm from generically controlling the
> -	 * device's power. If we're using protocol specific settings, we don't
> -	 * want pci interfering.
> -	 */
> -	pci_save_state(pdev);
> +
>  unfreeze:
>  	nvme_unfreeze(ctrl);
>  	return ret;

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
