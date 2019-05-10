Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD441A063
	for <lists+linux-nvme@lfdr.de>; Fri, 10 May 2019 17:42:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KXDD2KliOHN/9BUm8GXgb6xnI/+KQ5W5jz93CHLBIao=; b=XSP+HKdPdf65Y0
	P4zn+Kkq/e2fRBqRN69qRo0xZDFMLGqca9F4/mJ5R2yqUoZpOdPljBud15UzD5rldeKI0BrXcUR4H
	P062DaWxiMAk171BxIZfvBt26XP8iLj7KcfxRKaBR+Ypb6Z4g+uK1zOVoM4a3iHHzAe0ludqfGhU6
	fca2B8wJhgz0jBMJzselDlO0NLWk1kZg+7Xv+qY6kc33bXvWnwva6VTiIFLFSvsvwoWEpAuKQUV1A
	J86DWoB9kx6tvLFVz+vZj5DX0j78rVLyZG8xtl2GZZOnWRRKZ4LKZiz/uM+8wh9+FFaAX/kWNPWbl
	ExZXjuT8GnXQggPwNxcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP7fN-0004f9-Pn; Fri, 10 May 2019 15:42:33 +0000
Received: from mga07.intel.com ([134.134.136.100])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP7fJ-0004eH-4Y
 for linux-nvme@lists.infradead.org; Fri, 10 May 2019 15:42:30 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 10 May 2019 08:42:27 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga004.fm.intel.com with ESMTP; 10 May 2019 08:42:26 -0700
Date: Fri, 10 May 2019 09:36:58 -0600
From: Keith Busch <kbusch@kernel.org>
To: Kai Heng Feng <kai.heng.feng@canonical.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
Message-ID: <20190510153658.GI9675@localhost.localdomain>
References: <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
 <7a002851c435481593f8629ec9193e40@AUSX13MPC101.AMER.DELL.COM>
 <20190509215409.GD9675@localhost.localdomain>
 <495d76c66aec41a8bfbbf527820f8eb9@AUSX13MPC101.AMER.DELL.COM>
 <BC5EB1D0-8718-48B3-ACAB-F7E5571D821D@canonical.com>
 <CAJZ5v0jAcX-Q2twygKoKvmx2H6tneHWimmH+c2GsYitHK5-knw@mail.gmail.com>
 <54E4999C-DBE8-4FC1-8E82-17FEDFDA9CA6@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <54E4999C-DBE8-4FC1-8E82-17FEDFDA9CA6@canonical.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_084229_234629_447CA687 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [134.134.136.100 listed in list.dnswl.org]
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
 "Rafael J. Wysocki" <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, May 10, 2019 at 11:15:05PM +0800, Kai Heng Feng wrote:
> Sorry, I should mention that I use a slightly modified drivers/nvme/host/pci.c:
> 
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 3e4fb891a95a..ece428ce6876 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -18,6 +18,7 @@
>  #include <linux/mutex.h>
>  #include <linux/once.h>
>  #include <linux/pci.h>
> +#include <linux/suspend.h>
>  #include <linux/t10-pi.h>
>  #include <linux/types.h>
>  #include <linux/io-64-nonatomic-lo-hi.h>
> @@ -2833,6 +2834,11 @@ static int nvme_suspend(struct device *dev)
>         struct pci_dev *pdev = to_pci_dev(dev);
>         struct nvme_dev *ndev = pci_get_drvdata(pdev);
>  
> +       if (!pm_suspend_via_firmware()) {
> +               nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);
> +               pci_save_state(pdev);
> +       }
> +
>         nvme_dev_disable(ndev, true);

This won't work because you're falling through to nvme_dev_disable after
setting the power, so the resume side would certainly fail.

This is what you'd want:

       if (!pm_suspend_via_firmware()) {
               pci_save_state(pdev);
               return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);
       }

>         return 0;
>  }
> @@ -2842,6 +2848,10 @@ static int nvme_resume(struct device *dev)
>         struct pci_dev *pdev = to_pci_dev(dev);
>         struct nvme_dev *ndev = pci_get_drvdata(pdev);
>  
> +       if (!pm_resume_via_firmware()) {
> +               return nvme_set_power(&ndev->ctrl, 0);
> +       }
> +
>         nvme_reset_ctrl(&ndev->ctrl);
>         return 0;
> }
> 
> Does pci_save_state() here enough to prevent the device enter to D3?

Yes, saving the state during suspend will prevent pci pm from assuming
control over this device's power. It's a bit non-intuitive as Christoph
mentioned, so we'll need to make that clear in the comments. For
reference, here's the relevant part in pci-driver.c:

---
static int pci_pm_suspend_noirq(struct device *dev)
{
...

	if (!pci_dev->state_saved) {
		pci_save_state(pci_dev);
		if (pci_power_manageable(pci_dev))
			pci_prepare_to_sleep(pci_dev);
	}
...
}
--

So by saving the state in our suspend callback, pci will skip
pci_prepare_to_sleep(), which is what's setting your device most likely
to a D3hot, undermining our nvme power state setting.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
