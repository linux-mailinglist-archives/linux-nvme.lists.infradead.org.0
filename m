Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60FE82F901
	for <lists+linux-nvme@lfdr.de>; Thu, 30 May 2019 11:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b/joCyuqrGJZg/2kv3t7nKiFd8Km3/ZrB3yuwsmLWQ4=; b=W4n0YKtN3R5Gk8
	bzqMW0rbmusIGAtAr821FFDRbHt3eN5ocyBDOOSrShnR/32FNJq40Mt3/66iaUSmYt+FJNnL2Adb5
	Sj6f1X2hPUPzup/MzeA3OE9nrvazEbmNqLBMw8FluCiYeUUsafQ2oyalYePiIVY9HiLOTGeSQ+PFH
	vgY/c1GINadmuwdYSRHfWntbWULifY6wowWK9Iq36l8KNnqXQtRnVkpYifKtMe2cXcZkOvchgpVMY
	AIYylCT8S4w+18IvYYOtxkorAglLquCzLqrpE/bNDsfd2/ODI++m0oE7Bohp0Q8EcA7fjo0B+MXeS
	zH+NXEoN/qj4jfHXeQrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWH43-0000wH-Ah; Thu, 30 May 2019 09:09:35 +0000
Received: from mail-oi1-f196.google.com ([209.85.167.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWH3y-0000vu-VM
 for linux-nvme@lists.infradead.org; Thu, 30 May 2019 09:09:32 +0000
Received: by mail-oi1-f196.google.com with SMTP id b21so436986oic.8
 for <linux-nvme@lists.infradead.org>; Thu, 30 May 2019 02:09:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=TcdJCIuzxxmepBvhKr+a5xWepvpTMq1c/mdE6TwCCUU=;
 b=jgirKVw7GVWs9oRNS6wBIyrBSV2WPKvYdQuezeEXS71U91hWz8rmrItd5T8u9UqQjg
 unqPsKqjlEtY2eGdIi16bJTHi3hfZBSTyeQtDnpXjAVqHlBs0B/aznpdX36BMCX0CV4c
 O8n/FsdJVdlWdYQL3Eqi0rMe5GOh6ZBe19XeLJwCtThCe53RFABCRxIwUAKvxjdeQLNK
 nyIGXzNQic+YMvcHLnV5byOpbdDwEf9b3omjSHo6pXWTjLfHIBZ2TZOCLbit/68laxaV
 Zd2f1C3Lq8RBI7ZUzprl5h2pHgMQDFLRjjdA7yqJeTtnE2w+sPmlr6xCYda07eieSZdX
 n1jQ==
X-Gm-Message-State: APjAAAUPCKUyjjmRgzfRPPLOFTmGVGKktj2ItbjMXcR/5tJCK95r+yGU
 rT7inpZwu9fEXcjkH8YINrbNangPYGAh25IGU5Q=
X-Google-Smtp-Source: APXvYqwRkgwLHIc0MVZ036wnlFOBz7RRkS/N7ztWbCSs1wNMxxrw+E+p1AbzzXuorQkvfCiDWtmaRPsLW62ymZltbUo=
X-Received: by 2002:aca:c3d5:: with SMTP id t204mr274573oif.57.1559207368835; 
 Thu, 30 May 2019 02:09:28 -0700 (PDT)
MIME-Version: 1.0
References: <20190523152735.15052-1-keith.busch@intel.com>
 <20190523152735.15052-2-keith.busch@intel.com>
In-Reply-To: <20190523152735.15052-2-keith.busch@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 30 May 2019 11:09:17 +0200
Message-ID: <CAJZ5v0j2kJ-ojWdCfdUAe1Rud7i8u72eWqzRBKWYsoPz0unoFw@mail.gmail.com>
Subject: Re: [PATCHv3 2/2] nvme-pci: Use host managed power state for suspend
To: Keith Busch <keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_020931_011316_7BCA2144 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.3 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.196 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Rafael Wysocki <rafael@kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>,
 Kai Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 23, 2019 at 5:32 PM Keith Busch <keith.busch@intel.com> wrote:
>
> The nvme pci driver prepares its devices for power loss during suspend
> by shutting down the controllers. The power setting is deferred to
> pci driver's power management before the platform removes power. The
> suspend-to-idle mode, however, does not remove power.
>
> NVMe devices that implement host managed power settings can achieve
> lower power and better transition latencies than using generic PCI power
> settings. Try to use this feature if the platform is not involved with
> the suspend. If successful, restore the previous power state on resume.
>
> Cc: Mario Limonciello <Mario.Limonciello@dell.com>
> Cc: Kai Heng Feng <kai.heng.feng@canonical.com>
> Signed-off-by: Keith Busch <keith.busch@intel.com>

No concerns from me:

Reviewed-by: Rafael J. Wysocki <rafael.j.wysocki@intel.com>

> ---
> v2 -> v3:
>
>   Removed the HMB handling. We've determined this is not be
>   necessary in a s2i state.
>
>   Splitting PM ops (Rafael)
>
>   Incorporated improvements from Christoph
>
>  drivers/nvme/host/pci.c | 96 +++++++++++++++++++++++++++++++++++++++++++++++--
>  1 file changed, 93 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 599065ed6a32..47da55abb56b 100644
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
> @@ -116,6 +117,7 @@ struct nvme_dev {
>         u32 cmbsz;
>         u32 cmbloc;
>         struct nvme_ctrl ctrl;
> +       u32 last_ps;
>
>         mempool_t *iod_mempool;
>
> @@ -2829,16 +2831,94 @@ static void nvme_remove(struct pci_dev *pdev)
>  }
>
>  #ifdef CONFIG_PM_SLEEP
> +static int nvme_get_power_state(struct nvme_ctrl *ctrl, u32 *ps)
> +{
> +       return nvme_get_features(ctrl, NVME_FEAT_POWER_MGMT, 0, NULL, 0, ps);
> +}
> +
> +static int nvme_set_power_state(struct nvme_ctrl *ctrl, u32 ps)
> +{
> +       return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0, NULL);
> +}
> +
> +static int nvme_resume(struct device *dev)
> +{
> +       struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
> +       struct nvme_ctrl *ctrl = &ndev->ctrl;
> +
> +       if (pm_resume_via_firmware() || !ctrl->npss ||
> +           nvme_set_power_state(ctrl, ndev->last_ps) != 0)
> +               nvme_reset_ctrl(ctrl);
> +       return 0;
> +}
> +
>  static int nvme_suspend(struct device *dev)
>  {
>         struct pci_dev *pdev = to_pci_dev(dev);
>         struct nvme_dev *ndev = pci_get_drvdata(pdev);
> +       struct nvme_ctrl *ctrl = &ndev->ctrl;
> +       int ret = -EBUSY;
> +
> +       /*
> +        * The platform does not remove power for a kernel managed suspend so
> +        * use host managed nvme power settings for lowest idle power if
> +        * possible. This should have quicker resume latency than a full device
> +        * shutdown.  But if the firmware is involved after the suspend or the
> +        * device does not support any non-default power states, shut down the
> +        * device fully.
> +        */
> +       if (pm_suspend_via_firmware() || !ctrl->npss) {
> +               nvme_dev_disable(ndev, true);
> +               return 0;
> +       }
> +
> +       nvme_start_freeze(ctrl);
> +       nvme_wait_freeze(ctrl);
> +       nvme_sync_queues(ctrl);
> +
> +       if (ctrl->state != NVME_CTRL_LIVE &&
> +           ctrl->state != NVME_CTRL_ADMIN_ONLY)
> +               goto unfreeze;
> +
> +       ndev->last_ps = 0;
> +       ret = nvme_get_power_state(ctrl, &ndev->last_ps);
> +       if (ret < 0)
> +               goto unfreeze;
> +
> +       ret = nvme_set_power_state(ctrl, ctrl->npss);
> +       if (ret < 0)
> +               goto unfreeze;
> +
> +       if (ret) {
> +               /*
> +                * Clearing npss forces a controller reset on resume. The
> +                * correct value will be resdicovered then.
> +                */
> +               nvme_dev_disable(ndev, true);
> +               ctrl->npss = 0;
> +               ret = 0;
> +               goto unfreeze;
> +       }
> +       /*
> +        * A saved state prevents pci pm from generically controlling the
> +        * device's power. If we're using protocol specific settings, we don't
> +        * want pci interfering.
> +        */
> +       pci_save_state(pdev);
> +unfreeze:
> +       nvme_unfreeze(ctrl);
> +       return ret;
> +}
> +
> +static int nvme_simple_suspend(struct device *dev)
> +{
> +       struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
>
>         nvme_dev_disable(ndev, true);
>         return 0;
>  }
>
> -static int nvme_resume(struct device *dev)
> +static int nvme_simple_resume(struct device *dev)
>  {
>         struct pci_dev *pdev = to_pci_dev(dev);
>         struct nvme_dev *ndev = pci_get_drvdata(pdev);
> @@ -2846,9 +2926,19 @@ static int nvme_resume(struct device *dev)
>         nvme_reset_ctrl(&ndev->ctrl);
>         return 0;
>  }
> -#endif
>
> -static SIMPLE_DEV_PM_OPS(nvme_dev_pm_ops, nvme_suspend, nvme_resume);
> +const struct dev_pm_ops nvme_dev_pm_ops = {
> +       .suspend        = nvme_suspend,
> +       .resume         = nvme_resume,
> +       .freeze         = nvme_simple_suspend,
> +       .thaw           = nvme_simple_resume,
> +       .poweroff       = nvme_simple_suspend,
> +       .restore        = nvme_simple_resume,
> +};
> +
> +#else
> +#define nvme_dev_pm_ops                NULL
> +#endif
>
>  static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
>                                                 pci_channel_state_t state)
> --
> 2.14.4
>

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
