Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1389EFFE
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 18:20:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KSKLU2ZpqlcHx+ZrDKBQaYm4gKaLWTUwuddAjDQqEvY=; b=Vkl8OaNEW3r7Gp
	Jael0QJmufDU7dpybnzRykQWTbaszYnrVQVBKQzFW4OQZHjljYXN7i1Z8V6UAJOsAViR5hkssxrQn
	pwWoSny43Fwr02Rl2w0PQ1Z6BJGiKdHCsEksp2dgG44zCAx+zC46jFw+judgi2626ppgbpmNZkrzA
	nXInriinZ1+O5xmR08inssbCgV+RmBg57izjkPiFegPqxV48mriwEobcGZIHU3pbsAhERLRpvo97T
	yi4t2TSOOpwchwV9SWscezPiSHzXt5KHkCigw9I6VySBaWu/chhQRkqHJyXEO+W7d+3yv7ji1KU52
	Z8+7eqHLPf/eGn8H+57Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2eCK-0006XB-FL; Tue, 27 Aug 2019 16:19:56 +0000
Received: from mga06.intel.com ([134.134.136.31])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2eCD-0006Tu-TO
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 16:19:51 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Aug 2019 09:19:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,437,1559545200"; d="scan'208";a="192291031"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga002.jf.intel.com with ESMTP; 27 Aug 2019 09:19:44 -0700
Date: Tue, 27 Aug 2019 10:17:57 -0600
From: Keith Busch <kbusch@kernel.org>
To: Edmund Nadolski <edmund.nadolski@intel.com>
Subject: Re: [PATCH] nvme: avoid race between FLR and command timeout
Message-ID: <20190827161756.GA23183@localhost.localdomain>
References: <20190826164736.4707-1-edmund.nadolski@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190826164736.4707-1-edmund.nadolski@intel.com>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_091949_993621_FE56E50D 
X-CRM114-Status: GOOD (  21.81  )
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
Cc: keith.busch@intel.com, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Mon, Aug 26, 2019 at 10:47:36AM -0600, Edmund Nadolski wrote:
> This patch syncs queues from nvme_reset_prepare, in order to prevent
> a race where nvme_timeout can execute between the reset_prepare and
> reset_done. The race results in an extra call to nvme_dev_disable
> before nvme_reset_done can complete, which causes controller
> de-enumeration (from the timeout thread) with the following dmesg:
> 
> [  365.427991] nvme nvme3: I/O 6 QID 0 timeout, reset controller
> [  368.434070] nvme 0000:1a:00.0: enabling device (0000 -> 0002)
> [  368.434207] nvme nvme3: Removing after probe failure status: -19
> 
> The probe fails because the driver can no longer read NVME_REG_CSTS.
> The driver has to be re-loaded into order to bring back the controller.
> 
> The following triggers the race (timout < normal completion time):
> 
> nvme format /dev/${1} --ses=1 --timeout=4000 &
> sleep 2
> echo 1 > /sys/class/nvme/${1}/device/reset
> 
> Note, shutdown_lock is not sufficient to prevent the race, since it
> is not held across the reset_prepare/reset_done.
> 
> Signed-off-by: Edmund Nadolski <edmund.nadolski@intel.com>
> ---
>  drivers/nvme/host/core.c | 3 +++
>  drivers/nvme/host/pci.c  | 3 +++
>  2 files changed, 6 insertions(+)
> 
> diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
> index 4660505eded9..43c12f8c030f 100644
> --- a/drivers/nvme/host/core.c
> +++ b/drivers/nvme/host/core.c
> @@ -3974,6 +3974,9 @@ void nvme_sync_queues(struct nvme_ctrl *ctrl)
>  	list_for_each_entry(ns, &ctrl->namespaces, list)
>  		blk_sync_queue(ns->queue);
>  	up_read(&ctrl->namespaces_rwsem);
> +
> +	if (ctrl->admin_q)
> +		blk_sync_queue(ctrl->admin_q);

This part can probably go in separately as its own patch.

>  }
>  EXPORT_SYMBOL_GPL(nvme_sync_queues);
>  
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index bf54b128c5a4..845f540f1707 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2786,6 +2786,9 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
>  static void nvme_reset_prepare(struct pci_dev *pdev)
>  {
>  	struct nvme_dev *dev = pci_get_drvdata(pdev);
> +
> +	nvme_sync_queues(&dev->ctrl);
> +	flush_work(&dev->ctrl.reset_work);
>  	nvme_dev_disable(dev, false);
>  }

Looks like we'd have a similar problem if a reset is occuring at the
same time as a suspend...

I'm starting to reconsider this approach. I believe it works most
of the time, but maybe underestimating the chance of a low timeout
command slipping in after the sync.

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
