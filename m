Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7E8F19487
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 23:21:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rBzjrP4qAA3OSx8vXhyBbKnaSddR5eFH6dCp3A9xHMM=; b=szjYo9+wERCv9L
	Xybdeq5zpZhXtu46dQw5/zuFbXxjHIupRFBykuN39LkRS4nTTl2e2EQ+U6oi1/94p/GZgeL9ffW19
	DJFGXjKymEFrvCcXgULGSxG1HAQajiMO7mJMx79QZWsN6lzDD1yn8TE4YHBsTStRyHpprJQOTenI1
	zB3gOYjNNboU9Wx7/BRHFuUET4im1b355OfVR1bcrjYu6PqEL60vdEvF3L6HrEplPhNTSNOx/OzTQ
	Q2AhNY8bVX438Yn3kvmS440+m3jrc/vcTMQEmy2iQO/QMA04czJEVCD+IuaqBh/dESMHJn+xOzerf
	03mXgstW+Pbzgjy5BLfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOqU7-0002t7-1g; Thu, 09 May 2019 21:21:47 +0000
Received: from mga14.intel.com ([192.55.52.115])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOqU0-0002sf-Q4
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 21:21:42 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 09 May 2019 14:21:39 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 09 May 2019 14:21:38 -0700
Date: Thu, 9 May 2019 15:16:09 -0600
From: Keith Busch <kbusch@kernel.org>
To: "Rafael J. Wysocki" <rafael@kernel.org>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Message-ID: <20190509211608.GC9675@localhost.localdomain>
References: <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <CAJZ5v0ivyByegTMzqdvxqRM2kyjcWmg-LktuwpQJETjMCzGJiw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJZ5v0ivyByegTMzqdvxqRM2kyjcWmg-LktuwpQJETjMCzGJiw@mail.gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_142140_857371_ADBEA34C 
X-CRM114-Status: GOOD (  16.54  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.115 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 Linux PM <linux-pm@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Jens Axboe <axboe@fb.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 09, 2019 at 10:54:04PM +0200, Rafael J. Wysocki wrote:
> On Thu, May 9, 2019 at 9:33 PM Keith Busch <kbusch@kernel.org> wrote:
> >  #include <linux/io-64-nonatomic-lo-hi.h>
> > @@ -2851,6 +2852,8 @@ static int nvme_suspend(struct device *dev)
> >         struct pci_dev *pdev = to_pci_dev(dev);
> >         struct nvme_dev *ndev = pci_get_drvdata(pdev);
> >
> > +       if (!pm_suspend_via_firmware())
> > +               return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);
> 
> You probably want to call pci_save_state(pdev) in the branch above to
> prevent pci_pm_suspend_noirq() from calling pci_prepare_to_sleep()
> going forward, so I would write this routine as
> 
> if (pm_suspend_via_firmware()) {
>         nvme_dev_disable(ndev, true);
>         return 0;
> }
> 
> pci_save_state(pdev)
> return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);

Ah, good point. I'll make sure that's added and will wait to see hear if
there's any other feedback.

I am trying to test the paths by faking out PS capabilities, and have
a question on how to force each:

Running "rtcwake -m freeze ...", that takes the !pm_suspend_via_firmware()
path as I expected.

But trying to test the original path, I thought using "-m mem" would
have been a suspend via firmware, but that is still returning false.

Is that expected? I've only tried this on one platform so far, so might
just be this particular one is missing a firmware capability. 

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
