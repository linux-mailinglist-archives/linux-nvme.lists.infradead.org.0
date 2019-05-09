Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D94E193DB
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 22:54:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RKPZEorDHBZkqPRq/LWTClZoCjLhbHsOmJPAF4IE+KA=; b=uqIFQ4Gz975GDo
	8FHqy6ffNAgxQMcDCETkRYFT217+JjFckYv3rUJE8HvyeX+U//RAhqs/jsRy2n/ra8Brw/Z6C+6SQ
	WlmrSTzZVDiWuvCj4eqlkVyyTElmBkAoOrclVtC3S0ilYLC3PM2farzk45LfMCeNPWEuseIQTOCKZ
	qVOsuuuvY9RyzN2hYT4ScYlw8PL6spKY1v/fxBKJlykMUdxJcev+mplRsvA8cR0nBv4UUfOJLOIRQ
	MmuVX2OnO0IWeP/bc3fuX9RFbY2HUhPrnJgppOS6HCEB+aJ94LBXagpLYhFIweUNZbHacmhOMD36j
	H0IqlA96iEq2ej5BxaoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOq3b-0000D5-28; Thu, 09 May 2019 20:54:23 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOq3V-0000CS-93
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 20:54:18 +0000
Received: by mail-ot1-f68.google.com with SMTP id r10so2891810otd.4
 for <linux-nvme@lists.infradead.org>; Thu, 09 May 2019 13:54:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=60ekcbJtI6yZwQK328DWx4KfVWdYhF9HdCOSd8tn+fc=;
 b=N1crtbBQjM6gQGp8R3ssf5EZ1nIMcBzr+iauPJrlsAAZnHo0CIqIdAMXcBZH7SxekS
 fN31uKx5QrcrepE0DC3t9ZRgGJsmzfDGo9GhqXLYPuc1mCUp6o4dpQ7+cYdLqHRXb7Cb
 RJPF/RGqWyGSsL5w++010NnDjnLHrEr8+i3Y/vuZhgUozIxsDX2dRy72kkVeFq2nXoCm
 R2du/l+22BtRDYOQHZV/n0AYJi2DxuPdGajPq6mWO+kEdocksuUrshrXNH7ymYFsThn7
 cfiCwdr9R4KA9GQ8qgCOndmys9Gvrkv7r83DpD6pj++JoMoaDq3qzzpzRk2ROVYW0Qip
 2w2g==
X-Gm-Message-State: APjAAAXmkedmPokYdYqm9Vt/V4cZ4s7Gu9MU+2TjTHMoLgsJntSVTaSu
 JcVMYjr+u7dMsc279cw0BV0om7FvdS5//vSUXiI=
X-Google-Smtp-Source: APXvYqxd9HcbPWkz6t/Wpszcx4IS7BBEVuQ1Dmtlk6ndVnBj5wsJIJBWBYXfRyX1i+OvDo1jfPVbVdUN317opZrbVcA=
X-Received: by 2002:a9d:4c86:: with SMTP id m6mr4219435otf.168.1557435256055; 
 Thu, 09 May 2019 13:54:16 -0700 (PDT)
MIME-Version: 1.0
References: <b43f2c0078f245398101fa9a40cfc2dc@AUSX13MPC105.AMER.DELL.COM>
 <20190509061237.GA15229@lst.de>
 <064701C3-2BD4-4D93-891D-B7FBB5040FC4@canonical.com>
 <CAJZ5v0ggMwpJt=XWXu4gU51o8y4BpJ4KZ5RKzfk3+v8GGb-QbQ@mail.gmail.com>
 <A4DD2E9F-054E-4D4B-9F77-D69040EBE120@canonical.com>
 <20190509095601.GA19041@lst.de>
 <225CF4F7-C8E1-4C66-B362-97E84596A54E@canonical.com>
 <20190509103142.GA19550@lst.de>
 <AB325926-0D77-4851-8E8A-A10599756BF9@canonical.com>
 <31b7d7959bf94c15a04bab0ced518444@AUSX13MPC101.AMER.DELL.COM>
 <20190509192807.GB9675@localhost.localdomain>
In-Reply-To: <20190509192807.GB9675@localhost.localdomain>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 9 May 2019 22:54:04 +0200
Message-ID: <CAJZ5v0ivyByegTMzqdvxqRM2kyjcWmg-LktuwpQJETjMCzGJiw@mail.gmail.com>
Subject: Re: [PATCH] nvme-pci: Use non-operational power state instead of D3
 on Suspend-to-Idle
To: Keith Busch <kbusch@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_135417_316026_5A94DB82 
X-CRM114-Status: GOOD (  19.25  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (rjwysocki[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Keith Busch <keith.busch@intel.com>,
 Rafael Wysocki <rafael.j.wysocki@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Linux PM <linux-pm@vger.kernel.org>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 linux-nvme <linux-nvme@lists.infradead.org>, Jens Axboe <axboe@fb.com>,
 Kai-Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Thu, May 9, 2019 at 9:33 PM Keith Busch <kbusch@kernel.org> wrote:
>
> On Thu, May 09, 2019 at 06:57:34PM +0000, Mario.Limonciello@dell.com wrote:
> > No, current Windows versions don't transition to D3 with inbox NVME driver.
> > You're correct, it's explicit state transitions even if APST was enabled
> > (as this patch is currently doing as well).
>
> The proposed patch does too much, and your resume latency will be worse
> off for doing an unnecessary controller reset.
>
> The following should be all that's needed if the device is spec
> compliant. The resume part isn't necessary if npss is non-operational, but
> we're not saving that info, and it shouldn't hurt to be explicit anyway.
>
> I don't have any PS capable devices, so this is just compile tested.
>
> ---
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 6265d9225ec8..ce8b9bc949b9 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -1132,6 +1132,22 @@ static int nvme_set_features(struct nvme_ctrl *dev, unsigned fid, unsigned dword
>         return ret;
>  }
>
> +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned npss)
> +{
> +       int ret;
> +
> +       mutex_lock(&ctrl->scan_lock);
> +       nvme_start_freeze(ctrl);
> +       nvme_wait_freeze(ctrl);
> +       ret = nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, npss, NULL, 0,
> +                               NULL);
> +       nvme_unfreeze(ctrl);
> +       mutex_unlock(&ctrl->scan_lock);
> +
> +       return ret;
> +}
> +EXPORT_SYMBOL_GPL(nvme_set_power);
> +
>  int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count)
>  {
>         u32 q_count = (*count - 1) | ((*count - 1) << 16);
> diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
> index 527d64545023..f2be6aad9804 100644
> --- a/drivers/nvme/host/nvme.h
> +++ b/drivers/nvme/host/nvme.h
> @@ -459,6 +459,7 @@ int __nvme_submit_sync_cmd(struct request_queue *q, struct nvme_command *cmd,
>                 unsigned timeout, int qid, int at_head,
>                 blk_mq_req_flags_t flags, bool poll);
>  int nvme_set_queue_count(struct nvme_ctrl *ctrl, int *count);
> +int nvme_set_power(struct nvme_ctrl *ctrl, unsigned npss);
>  void nvme_stop_keep_alive(struct nvme_ctrl *ctrl);
>  int nvme_reset_ctrl(struct nvme_ctrl *ctrl);
>  int nvme_reset_ctrl_sync(struct nvme_ctrl *ctrl);
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index a90cf5d63aac..2c4154cb4e79 100644
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
> @@ -2851,6 +2852,8 @@ static int nvme_suspend(struct device *dev)
>         struct pci_dev *pdev = to_pci_dev(dev);
>         struct nvme_dev *ndev = pci_get_drvdata(pdev);
>
> +       if (!pm_suspend_via_firmware())
> +               return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);

You probably want to call pci_save_state(pdev) in the branch above to
prevent pci_pm_suspend_noirq() from calling pci_prepare_to_sleep()
going forward, so I would write this routine as

if (pm_suspend_via_firmware()) {
        nvme_dev_disable(ndev, true);
        return 0;
}

pci_save_state(pdev)
return nvme_set_power(&ndev->ctrl, ndev->ctrl.npss);

>         nvme_dev_disable(ndev, true);
>         return 0;
>  }
> @@ -2860,6 +2863,8 @@ static int nvme_resume(struct device *dev)
>         struct pci_dev *pdev = to_pci_dev(dev);
>         struct nvme_dev *ndev = pci_get_drvdata(pdev);
>
> +       if (!pm_suspend_via_firmware())
> +               return nvme_set_power(&ndev->ctrl, 0);
>         nvme_reset_ctrl(&ndev->ctrl);
>         return 0;
>  }

The rest of the patch LGTM.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
