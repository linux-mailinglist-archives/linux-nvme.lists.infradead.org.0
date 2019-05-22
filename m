Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD46270A5
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 22:14:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aXy/LDgdlHAe5sPhLOl2NEM9MuQr/ydEGdFa8rMPsLI=; b=rDylT0J35QCmlv
	Q779JI2Yydkno0+UeukZdYIhgndVogPpqj4u6iXDZi9vDwBUH6jDKF9bIjkyY58qpicrbLCCDd5Zw
	RslTbeT7/7kNYu9BlXs/nrvzb/vvj9wTQ8RevVigBZds8JjQ4iBf0RVGVd2YJQ71doa7sv/XWYH3x
	2PYJyJAniifek14OVLu9GxtI77yXu45yIlntEq/KFTonI0fqmlBqh8YvzUlCk2XvZa+KfAOpTFjeV
	ppZrN3OxMTWLlOsTzz6M7ZbH5K5twvI1/bxw7f5kpXbberxXPhFRiNfv9YqeaKkxM/9BWym3eekx7
	UeVFuuRjaAXIYcnGPv5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTXd6-00069N-5Y; Wed, 22 May 2019 20:14:28 +0000
Received: from mga09.intel.com ([134.134.136.24])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTXd1-00068c-6n
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 20:14:24 +0000
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 13:14:21 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga003.jf.intel.com with ESMTP; 22 May 2019 13:14:21 -0700
Date: Wed, 22 May 2019 14:09:18 -0600
From: Keith Busch <kbusch@kernel.org>
To: Kenneth Heitke <kenneth.heitke@intel.com>
Subject: Re: [RFC PATCH] nvme: Ignore timeouts while a PCIe reset is pending
Message-ID: <20190522200918.GC5486@localhost.localdomain>
References: <20190522003741.26755-1-kenneth.heitke@intel.com>
 <20190522192656.GB5486@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190522192656.GB5486@localhost.localdomain>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_131423_300034_7248810F 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.24 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: axboe@fb.com, hch@lst.de, linux-nvme@lists.infradead.org, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Wed, May 22, 2019 at 01:26:57PM -0600, Keith Busch wrote:
> The disable reclaims all commands, including the ones it dispatches, so
> it sounds like you're talking about a race between the ones it dispatched
> and its timeout work. If so, we can just make sure commands sent during
> nvme_dev_disable never timeout, which are just the delete queue commands:
> 
> ---
> diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
> index f562154551ce..4678704c2138 100644
> --- a/drivers/nvme/host/pci.c
> +++ b/drivers/nvme/host/pci.c
> @@ -2210,7 +2210,7 @@ static int nvme_delete_queue(struct nvme_queue *nvmeq, u8 opcode)
>  	if (IS_ERR(req))
>  		return PTR_ERR(req);
>  
> -	req->timeout = ADMIN_TIMEOUT;
> +	req->timeout = UINT_MAX;
>  	req->end_io_data = nvmeq;
>  
>  	init_completion(&nvmeq->delete_done);
> --

I think we should do the above anyway, but it isn't going to help if
commands dispatched outside disabling timeout. This should fix that.
Note, we never needed to have a sync'ed reset on reset_done(), but
this makes it necessary.

---
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index f562154551ce..3edb9d098eb8 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1257,13 +1257,14 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 	struct nvme_dev *dev = nvmeq->dev;
 	struct request *abort_req;
 	struct nvme_command cmd;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u32 csts = readl(dev->bar + NVME_REG_CSTS);
 
 	/* If PCI error recovery process is happening, we cannot reset or
 	 * the recovery mechanism will surely fail.
 	 */
 	mb();
-	if (pci_channel_offline(to_pci_dev(dev->dev)))
+	if (pci_channel_offline(pdev) || pdev->block_cfg_access)
 		return BLK_EH_RESET_TIMER;
 
 	/*
@@ -2782,12 +2783,13 @@ static void nvme_reset_prepare(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
 	nvme_dev_disable(dev, false);
+	nvme_sync_queues(&dev->ctrl);
 }
 
 static void nvme_reset_done(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
-	nvme_reset_ctrl_sync(&dev->ctrl);
+	nvme_reset_ctrl(&dev->ctrl);
 }
 
 static void nvme_shutdown(struct pci_dev *pdev)
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
