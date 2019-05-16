Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E89E209B6
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 16:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wi4JWuviCYq8ol49LbdLczk43dnKtdXa9/i5eALHk/s=; b=qnq2WNeXqemiaU
	Y08wLOth23XJzhzxlikCo9NEagZFJXJmdFkJRmCq2w2l6B23ubed+kyc6nqDpn8CGVOuz990LcF+r
	EQdBa2TTs+CaHS59T2EXLedaPT34hoBZsLVQxBXsQkh9EfTMov9TwHihnzN/TFWFRe5azi7ztI85q
	/GSK+4hjfh3DikfybgOkKeyxw9dW/XUXDhnNGW+Ay7kVBlG4R3u1TwS5/xaLutjszZ26aShTKuLLC
	H5xDrSnxIvsi0MtUZeXaa3XK1a8bLGo8cPfvot2DFAGVskgTS/Ya9QJRDkT/GkbX9S0hrhf0xDrZ2
	RvanUgcXLIfFj9OYLfkw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRHQh-0003Po-Q3; Thu, 16 May 2019 14:32:19 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRHQc-0003PA-83
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 14:32:15 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 16 May 2019 07:32:13 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga007.fm.intel.com with ESMTP; 16 May 2019 07:32:13 -0700
Date: Thu, 16 May 2019 08:26:58 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190516142657.GD23333@localhost.localdomain>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
 <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_073214_300942_34FA0791 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux-nvme <linux-nvme@lists.infradead.org>, "Busch,
 Keith" <keith.busch@intel.com>, Kai Heng Feng <kai.heng.feng@canonical.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 02:29:10AM -0700, Rafael J. Wysocki wrote:
> This is a bit problematic with respect to hibernation.
> 
> Sorry for failing to mention that before, it escaped me somehow.
> 
> So the problem is that this will be invoked as the ->restore()
> callback and it need not be suitable for that depending on whether or
> not the driver is present in the restore kernel.  [There is another
> issue related to the fact that the last stage of hibernation doesn't
> return "true" from pm_suspend_via_firmware(), but that needs to be
> fixed elsewhere.]  If it is there, it will run nvme_deep_state(ndev),
> so all should be fine, but if it isn't there, the PCI bus type will
> apply the default handling to the device and that's to disable it via
> do_pci_disable_device() it this particular case, as per
> pci_pm_freeze(), so nvme_make_operational(ndev) should not be called
> then AFAICS.
> 
> IMO it is better to just do the nvme_dev_disable()/nvme_reset_ctrl()
> things in the hibernation path anyway, so I would rename the existing
> nvme_suspend/resume() to nvme_simple_suspend/resume() (or similar),
> respectively, and define new nvme_suspend/resume() to do something
> like:
> 
> return pm_suspend_via_firmware() || !ndev->ctrl.npss ?
> nvme_simple_suspend(dev) : nvme_deep_state(ndev);
> 
> and
> 
> return pm_resume_via_firmware() || !ndev->ctrl.npss ?
> nvme_simple_resume(dev) : nvme_make_operational(ndev);
> 
> respectively.
> 
> >         nvme_reset_ctrl(&ndev->ctrl);
> >         return 0;
> >  }
> > --
> 
> Then, you can populate nvme_dev_pm_ops as follows:
> 
> static const struct dev_pm_ops = {
>     .suspend = nvme_suspend,
>     .resume = nvme_resume,
>     .freeze = nvme_simple_suspend,
>     .thaw = nvme_simple_resume,
>     .poweroff = nvme_simple_suspend,
>     .restore = nvme_simple_resume,
> };
> 
> and it should all work.

Thanks for the pointers, I'll give that idea a shot.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
