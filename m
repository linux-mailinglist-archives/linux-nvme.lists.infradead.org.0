Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D4441FF7C
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 08:26:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TEXsQEXWNgdl6Hdxu8GKWSBXbrFhQNvbKSse8GXdYLE=; b=db6yqL6ATFw0Fj
	PXS1vQgwK8KUKZbnVXFk9wvMJwYd0IZQdl7JZG99LCu/+B3FeOFh6bk0NL4yO/dvMBdrEt4hZJ6G6
	tRW7JBvDpypwpOlf1gaGB/PyfihimpSQLfBcbEVAY0KO0lp1VEVNCfMrEkoAXlHnbjFl8+nuGpusu
	TnTzuqa1fezRKeYLKBhOOY4pDueYOQ9tUBgUN+Zzm79hBJ+XtC8hOYVOnI9X3MQayw4Fdj78nWQ8q
	JHgJAudJ47FvOVyY1s5AIjPa6+uWbB6BNy9scvOsJ1cTIf8B4kmvJDnx6PjTV9BICSbUSjLcNDEg9
	ZMk2pp0tf5ht3OdrWbqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hR9q2-000716-Op; Thu, 16 May 2019 06:25:58 +0000
Received: from verein.lst.de ([213.95.11.211] helo=newverein.lst.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hR9px-00070j-GF
 for linux-nvme@lists.infradead.org; Thu, 16 May 2019 06:25:55 +0000
Received: by newverein.lst.de (Postfix, from userid 2407)
 id E529D67358; Thu, 16 May 2019 08:25:28 +0200 (CEST)
Date: Thu, 16 May 2019 08:25:28 +0200
From: Christoph Hellwig <hch@lst.de>
To: Keith Busch <keith.busch@intel.com>
Subject: Re: [PATCHv2 6/6] nvme-pci: Use host managed power state for suspend
Message-ID: <20190516062528.GA29930@lst.de>
References: <20190515163625.21776-1-keith.busch@intel.com>
 <20190515163625.21776-6-keith.busch@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190515163625.21776-6-keith.busch@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_232553_690824_CBE525D7 
X-CRM114-Status: GOOD (  12.93  )
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Mario Limonciello <Mario.Limonciello@dell.com>,
 Rafael Wysocki <rafael@kernel.org>, linux-nvme@lists.infradead.org,
 Kai Heng Feng <kai.heng.feng@canonical.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

>  
>  #ifdef CONFIG_PM_SLEEP
> +static int nvme_deep_state(struct nvme_dev *dev)
> +{
> +	struct pci_dev *pdev = to_pci_dev(dev->dev);
> +	struct nvme_ctrl *ctrl = &dev->ctrl;
> +	int ret = -EBUSY;;
> +
> +	nvme_start_freeze(ctrl);
> +	nvme_wait_freeze(ctrl);
> +	nvme_sync_queues(ctrl);
> +
> +	if (ctrl->state != NVME_CTRL_LIVE &&
> +	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
> +		goto unfreeze;
> +
> +	if (dev->host_mem_descs) {
> +		ret = nvme_set_host_mem(dev, 0);
> +		if (ret < 0)
> +			goto unfreeze;
> +	}

I've still not heard an explanation of anyone why we need to disable
the HMB here. Even if there are states where we have to disable it
we need to restrict it to just those system power states where we have
to, as reclaiming and recreating the HMB is very costly for the device.

> +	if (ret) {
> +		/*
> +		 * Clearing npss forces a controller reset on resume. The
> +		 * correct value will be resdicovered then.
> +		 */
> +		ctrl->npss = 0;
> +		nvme_dev_disable(dev, true);

Can't we just reuse the nvme_dev_disable call in the caller?

> +	if (dev->host_mem_descs) {
> +		ret = nvme_setup_host_mem(dev);
> +		if (ret)
> +			goto reset;
> +	}

This call could/should set the Memory Return bit in the Set Features
call to enable the HMB.

>  static int nvme_suspend(struct device *dev)
>  {
>  	struct pci_dev *pdev = to_pci_dev(dev);
>  	struct nvme_dev *ndev = pci_get_drvdata(pdev);
>  
> +	if (!pm_suspend_via_firmware() && ndev->ctrl.npss)
> +		return nvme_deep_state(ndev);

And this still needs a comment why we try to just meddle with the
power state and queues instead of turning the device off only if
not suspended via firmware.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
