Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1A6B20285
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 11:29:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UhRu+3S/mDiiLQjYg/Hp/WVH1z0en+Ilg0OvdwI+rDY=; b=pft9c+fB48dBv6
	mMGkZb4JCX1DMPS7a9GxOdtrC9K6JlsYf5pcmQUyk1JZCdy+U2psOmbs5PKVgI6ZZEfZeiQT/36J8
	f3oauTWb3Yrdu5JxHk9b5kh3AAsctjvEAcSHTrKkEPZ6IUD8uZjhVTamAZLQIvZXCWeL7WecNn77v
	RqMudLAcvFwBOy5p5j2Htu71yHIQ7MWYGhWOkk94Kis+3sT7Ior9gHAZU5NwihrIUptBxFdV/rab3
	83mvVeHsfFhE4appeuAbpyY+FkdUM6v+VpPDcHmKA7iTyIhye37y6GQNYGOZkme26b/Ruic+1oMTq
	g+RMOf8aXSiOmBBzSE/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRChd-0002lY-Qz; Thu, 16 May 2019 09:29:29 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRChW-0002kb-VH
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 09:29:24 +0000
Received: by mail-ot1-f67.google.com with SMTP id r10so2807903otd.4
 for <linux-nvme@lists.infradead.org>; Thu, 16 May 2019 02:29:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=2LfvdAGtHxqQM/BxOzHP+62blVaxIIYiz9oUJtZwni4=;
 b=lQ/iLNmivZxL8B1gsTlss5VwJoHAV+2wBwA01Gkar2xOXjFWIwLZsLaMZ3AmAeLitF
 /SV3WjjcOpoHTqPL+26p2sy6AUB9vJrRjU6Md9oJ+gZbEjGFFMECLKLYU7pjR6+qUBY/
 OvwJcudVp3DdYYoTPORC7R1Wk84ey+MN3ZlbZGMlhhYiNjV286N8C4wCuvFbljqfrJSf
 QwPi7ldLiCltLYwCICp3lpsBowEIVKPnFky7AluU9l70/HjgSWL4CydXIrhywesbLUYG
 NavPGCKdicX64RpQAubQGTUfKzfiBPEHKhFnav4ezHt7EF1sZl9lCmYBf/IOR/Gi7Qtf
 2sJw==
X-Gm-Message-State: APjAAAWqAb79VE0EYEtmwAEg9jwA4e7U/2r/F7JumRSWJZ1rBUc3TzyW
 5yPLv8U5embKoRHn93vTpuF52jz0prMTYorkQQo=
X-Google-Smtp-Source: APXvYqzI8qHrsepYa342d8lCxBoQ/Tx6F0+sdEWOJxsbVqYjNtWOvPvXoTV0Bb8uOqo2HpknByBP+RdJ6aueoVxVjGY=
X-Received: by 2002:a9d:6a14:: with SMTP id g20mr8161050otn.310.1557998961373; 
 Thu, 16 May 2019 02:29:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
In-Reply-To: <20190515163625.21776-6-keith.busch@intel.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 16 May 2019 11:29:10 +0200
Message-ID: <CAJZ5v0iC44O_gLMHnLui+tH+BuHKJzh_WC7PV3JFJwhj041=1A@mail.gmail.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
To: Keith Busch <keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_022923_017819_64E3F9A3 
X-CRM114-Status: GOOD (  27.98  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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

On Wed, May 15, 2019 at 6:41 PM Keith Busch <keith.busch@intel.com> wrote:
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
> ---
> v1 -> v2:
>
>   Split prep patches for the get features
>
>   Ensure queued and dispatch IO completes before attempting to set the low
>   power state. This also required a sync to ensure that nothing timed
>   out or reset the controller while we attempted the intermittent queue freeze.
>
>   Disable HMB if enabled. It is not clear this should be necessary except
>   through empirical reports.
>
>  drivers/nvme/host/pci.c | 80 +++++++++++++++++++++++++++++++++++++++++++++++++
>  1 file changed, 80 insertions(+)
>
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index 599065ed6a32..42d5c6369803 100644
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
> @@ -2829,11 +2831,87 @@ static void nvme_remove(struct pci_dev *pdev)
>  }
>
>  #ifdef CONFIG_PM_SLEEP
> +static int nvme_deep_state(struct nvme_dev *dev)
> +{
> +       struct pci_dev *pdev = to_pci_dev(dev->dev);
> +       struct nvme_ctrl *ctrl = &dev->ctrl;
> +       int ret = -EBUSY;;
> +
> +       nvme_start_freeze(ctrl);
> +       nvme_wait_freeze(ctrl);
> +       nvme_sync_queues(ctrl);
> +
> +       if (ctrl->state != NVME_CTRL_LIVE &&
> +           ctrl->state != NVME_CTRL_ADMIN_ONLY)
> +               goto unfreeze;
> +
> +       if (dev->host_mem_descs) {
> +               ret = nvme_set_host_mem(dev, 0);
> +               if (ret < 0)
> +                       goto unfreeze;
> +       }
> +
> +       dev->last_ps = 0;
> +       ret = nvme_get_features(ctrl, NVME_FEAT_POWER_MGMT, 0, NULL, 0,
> +                               &dev->last_ps);
> +       if (ret < 0)
> +               goto unfreeze;
> +
> +       ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, dev->ctrl.npss,
> +                               NULL, 0, NULL);
> +       if (ret < 0)
> +               goto unfreeze;
> +
> +       if (ret) {
> +               /*
> +                * Clearing npss forces a controller reset on resume. The
> +                * correct value will be resdicovered then.
> +                */
> +               ctrl->npss = 0;
> +               nvme_dev_disable(dev, true);
> +               ret = 0;
> +               goto unfreeze;
> +       }
> +
> +       /*
> +        * A saved state prevents pci pm from generically controlling the
> +        * device's power. We're using protocol specific settings so we don't
> +        * want pci interfering.
> +        */
> +       pci_save_state(pdev);
> +unfreeze:
> +       nvme_unfreeze(ctrl);
> +       return ret;
> +}
> +
> +static int nvme_make_operational(struct nvme_dev *dev)
> +{
> +       struct nvme_ctrl *ctrl = &dev->ctrl;
> +       int ret;
> +
> +       ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, dev->last_ps,
> +                               NULL, 0, NULL);
> +       if (ret)
> +               goto reset;
> +
> +       if (dev->host_mem_descs) {
> +               ret = nvme_setup_host_mem(dev);
> +               if (ret)
> +                       goto reset;
> +       }
> +       return 0;
> +reset:
> +       nvme_reset_ctrl(ctrl);
> +       return 0;
> +}
> +
>  static int nvme_suspend(struct device *dev)
>  {
>         struct pci_dev *pdev = to_pci_dev(dev);
>         struct nvme_dev *ndev = pci_get_drvdata(pdev);
>
> +       if (!pm_suspend_via_firmware() && ndev->ctrl.npss)
> +               return nvme_deep_state(ndev);
>         nvme_dev_disable(ndev, true);
>         return 0;
>  }
> @@ -2843,6 +2921,8 @@ static int nvme_resume(struct device *dev)
>         struct pci_dev *pdev = to_pci_dev(dev);
>         struct nvme_dev *ndev = pci_get_drvdata(pdev);
>
> +       if (!pm_resume_via_firmware() && ndev->ctrl.npss)
> +               return nvme_make_operational(ndev);

This is a bit problematic with respect to hibernation.

Sorry for failing to mention that before, it escaped me somehow.

So the problem is that this will be invoked as the ->restore()
callback and it need not be suitable for that depending on whether or
not the driver is present in the restore kernel.  [There is another
issue related to the fact that the last stage of hibernation doesn't
return "true" from pm_suspend_via_firmware(), but that needs to be
fixed elsewhere.]  If it is there, it will run nvme_deep_state(ndev),
so all should be fine, but if it isn't there, the PCI bus type will
apply the default handling to the device and that's to disable it via
do_pci_disable_device() it this particular case, as per
pci_pm_freeze(), so nvme_make_operational(ndev) should not be called
then AFAICS.

IMO it is better to just do the nvme_dev_disable()/nvme_reset_ctrl()
things in the hibernation path anyway, so I would rename the existing
nvme_suspend/resume() to nvme_simple_suspend/resume() (or similar),
respectively, and define new nvme_suspend/resume() to do something
like:

return pm_suspend_via_firmware() || !ndev->ctrl.npss ?
nvme_simple_suspend(dev) : nvme_deep_state(ndev);

and

return pm_resume_via_firmware() || !ndev->ctrl.npss ?
nvme_simple_resume(dev) : nvme_make_operational(ndev);

respectively.

>         nvme_reset_ctrl(&ndev->ctrl);
>         return 0;
>  }
> --

Then, you can populate nvme_dev_pm_ops as follows:

static const struct dev_pm_ops = {
    .suspend = nvme_suspend,
    .resume = nvme_resume,
    .freeze = nvme_simple_suspend,
    .thaw = nvme_simple_resume,
    .poweroff = nvme_simple_suspend,
    .restore = nvme_simple_resume,
};

and it should all work.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
