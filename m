Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C21529076
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 07:43:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:To:References:Message-Id:Date:In-Reply-To:From:
	Subject:Mime-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jxWqK66HjPiHVSJtvhRxjdvvhoWJbUy8huzrwPZO+8w=; b=aMLkmoPP8Bj5fg6kCUYj9Gko2
	8NQiPPQHJhS9/Sttio6h2o1uAwqgM73V+F4meFBCjE/cB9bmWe16hk989mTsT4iSSmFMFYx4kUQgR
	5bRE0965bXqLtTegzi6bLPeaT0T9L6HqP08/HmIiMTPXk4yEf/JDgqF4U9ThjaAlr7BLA8YtKuX6T
	heyJsmscHULDY9r7m1MSPLkjNue5tXraXfyZS1KP0vCU4yTo1C6EC/5zfuxia7d7YQSqiABnZR7mZ
	h3qR1O1jq0CbPhXtB2zfma1nJcfXbDWiuLBsrCC8T3syiy4ubBzk864K6sxoWPHDTTngD8xyDavyL
	jl4MKeYCg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU2yh-0000gM-71; Fri, 24 May 2019 05:42:51 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU2yY-0000XZ-Tf
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 05:42:45 +0000
Received: from mail-pf1-f199.google.com ([209.85.210.199])
 by youngberry.canonical.com with esmtps (TLS1.0:RSA_AES_128_CBC_SHA1:16)
 (Exim 4.76) (envelope-from <kai.heng.feng@canonical.com>)
 id 1hU2yU-0007qg-UL
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 05:42:39 +0000
Received: by mail-pf1-f199.google.com with SMTP id m7so4843014pfh.9
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 22:42:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
 :content-transfer-encoding:message-id:references:to;
 bh=RlpjGiO7Yslis613bSkVYe28h6VEWUI8gF7n8niLFYU=;
 b=EPQCX6zPLVf+pb/Tp9WZTl8nJxFO93C9AOy9LJO0Ip3UmnPoK0F/K+De/wN2grMHbn
 8mbhbzBsyNl9LGVmt2B4EAMSOgFYokVvq2EAbafLolIlDhFKUktO3OSNG0uIajhhMuT9
 c0ehlVm/Tw6QDLU7UMXtuYSZ7gV2pDFhmkW+YkNEsDRZ9oZIKfdZ+xAbbcuMQ/xzhX2m
 R+u23uVpNJOvkWDrMJp1KFEZzrIu1M8uB8KNojrNaMkik5xtQMMjsbifEXp7jYvqL2Kg
 v4qev4nj4e9Zo/skHhbcl8Z5biKvUi13umJB+T34S9sH+ofY3QIcWgsYqoOTrtqCFnND
 Rt/Q==
X-Gm-Message-State: APjAAAXQas9ai7L5kvLPs3OeBo4KxEp36fTIMo29tBF0Nk8uNK7vPosa
 6i+EtYYGsNyVxj9CJWKZ1Odz4BdPxS+NZ/jB2lvH3u7Vimq95Gj5lmEoEoe4uVFLF3YTEzikVQZ
 jESwLbkQiAFcqBnzEBjMbkJ0VeC+lnHCxyxEYH/4q9OJF
X-Received: by 2002:a17:902:d715:: with SMTP id
 w21mr88380214ply.234.1558676557668; 
 Thu, 23 May 2019 22:42:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqydcVqcckluzoSVHPzQaEzVniywI2Xh5iNb/wsutxOZjC3Ia0gQg9vKsDO6CoZhoR6GAgSXYg==
X-Received: by 2002:a17:902:d715:: with SMTP id
 w21mr88380197ply.234.1558676557270; 
 Thu, 23 May 2019 22:42:37 -0700 (PDT)
Received: from 2001-b011-380f-14b9-b5df-596e-8e22-6cc6.dynamic-ip6.hinet.net
 (2001-b011-380f-14b9-b5df-596e-8e22-6cc6.dynamic-ip6.hinet.net.
 [2001:b011:380f:14b9:b5df:596e:8e22:6cc6])
 by smtp.gmail.com with ESMTPSA id r4sm953795pjd.28.2019.05.23.22.42.31
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 22:42:36 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCHv3 2/2] nvme-pci: Use host managed power state for suspend
From: Kai-Heng Feng <kai.heng.feng@canonical.com>
In-Reply-To: <20190523152735.15052-2-keith.busch@intel.com>
Date: Fri, 24 May 2019 13:42:30 +0800
Message-Id: <966745B5-CA0F-486D-B784-0018302F6DE9@canonical.com>
References: <20190523152735.15052-1-keith.busch@intel.com>
 <20190523152735.15052-2-keith.busch@intel.com>
To: Keith Busch <keith.busch@intel.com>
X-Mailer: Apple Mail (2.3445.104.11)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_224243_322451_4EB4E96F 
X-CRM114-Status: GOOD (  24.56  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mario Limonciello <Mario.Limonciello@dell.com>,
 Rafael Wysocki <rafael@kernel.org>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"; DelSp="yes"
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

at 23:27, Keith Busch <keith.busch@intel.com> wrote:

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

Tested-by: Kai-Heng Feng <kai.heng.feng@canonical.com>

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
>  	u32 cmbsz;
>  	u32 cmbloc;
>  	struct nvme_ctrl ctrl;
> +	u32 last_ps;
>
>  	mempool_t *iod_mempool;
>
> @@ -2829,16 +2831,94 @@ static void nvme_remove(struct pci_dev *pdev)
>  }
>
>  #ifdef CONFIG_PM_SLEEP
> +static int nvme_get_power_state(struct nvme_ctrl *ctrl, u32 *ps)
> +{
> +	return nvme_get_features(ctrl, NVME_FEAT_POWER_MGMT, 0, NULL, 0, ps);
> +}
> +
> +static int nvme_set_power_state(struct nvme_ctrl *ctrl, u32 ps)
> +{
> +	return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0, NULL);
> +}
> +
> +static int nvme_resume(struct device *dev)
> +{
> +	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
> +	struct nvme_ctrl *ctrl = &ndev->ctrl;
> +
> +	if (pm_resume_via_firmware() || !ctrl->npss ||
> +	    nvme_set_power_state(ctrl, ndev->last_ps) != 0)
> +		nvme_reset_ctrl(ctrl);
> +	return 0;
> +}
> +
>  static int nvme_suspend(struct device *dev)
>  {
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> +	struct nvme_ctrl *ctrl = &ndev->ctrl;
> +	int ret = -EBUSY;
> +
> +	/*
> +	 * The platform does not remove power for a kernel managed suspend so
> +	 * use host managed nvme power settings for lowest idle power if
> +	 * possible. This should have quicker resume latency than a full device
> +	 * shutdown.  But if the firmware is involved after the suspend or the
> +	 * device does not support any non-default power states, shut down the
> +	 * device fully.
> +	 */
> +	if (pm_suspend_via_firmware() || !ctrl->npss) {
> +		nvme_dev_disable(ndev, true);
> +		return 0;
> +	}
> +
> +	nvme_start_freeze(ctrl);
> +	nvme_wait_freeze(ctrl);
> +	nvme_sync_queues(ctrl);
> +
> +	if (ctrl->state != NVME_CTRL_LIVE &&
> +	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
> +		goto unfreeze;
> +
> +	ndev->last_ps = 0;
> +	ret = nvme_get_power_state(ctrl, &ndev->last_ps);
> +	if (ret < 0)
> +		goto unfreeze;
> +
> +	ret = nvme_set_power_state(ctrl, ctrl->npss);
> +	if (ret < 0)
> +		goto unfreeze;
> +
> +	if (ret) {
> +		/*
> +		 * Clearing npss forces a controller reset on resume. The
> +		 * correct value will be resdicovered then.
> +		 */
> +		nvme_dev_disable(ndev, true);
> +		ctrl->npss = 0;
> +		ret = 0;
> +		goto unfreeze;
> +	}
> +	/*
> +	 * A saved state prevents pci pm from generically controlling the
> +	 * device's power. If we're using protocol specific settings, we don't
> +	 * want pci interfering.
> +	 */
> +	pci_save_state(pdev);
> +unfreeze:
> +	nvme_unfreeze(ctrl);
> +	return ret;
> +}
> +
> +static int nvme_simple_suspend(struct device *dev)
> +{
> +	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
>
>  	nvme_dev_disable(ndev, true);
>  	return 0;
>  }
>
> -static int nvme_resume(struct device *dev)
> +static int nvme_simple_resume(struct device *dev)
>  {
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
> @@ -2846,9 +2926,19 @@ static int nvme_resume(struct device *dev)
>  	nvme_reset_ctrl(&ndev->ctrl);
>  	return 0;
>  }
> -#endif
>
> -static SIMPLE_DEV_PM_OPS(nvme_dev_pm_ops, nvme_suspend, nvme_resume);
> +const struct dev_pm_ops nvme_dev_pm_ops = {
> +	.suspend	= nvme_suspend,
> +	.resume		= nvme_resume,
> +	.freeze		= nvme_simple_suspend,
> +	.thaw		= nvme_simple_resume,
> +	.poweroff	= nvme_simple_suspend,
> +	.restore	= nvme_simple_resume,
> +};
> +
> +#else
> +#define nvme_dev_pm_ops		NULL
> +#endif
>
>  static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
>  						pci_channel_state_t state)
> -- 
> 2.14.4



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
