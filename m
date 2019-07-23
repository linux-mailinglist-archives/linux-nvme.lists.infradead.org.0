Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B99E7211A
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 22:50:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rk+lbUX5nK8ECzywd5qAXo8cNvubZatOXYNKmf6ss7g=; b=RKjlhr2vyP/wq3
	pThwaEaUy4KBYQtXfZJv0EAMAXriVt9dQR8zFjsx+c1ZYp0rHe37f4PyKRcPm/DP2Op5sIOFm2Az8
	2tLyJfh+mRBfJcmU6EN93job3lLBznnpDE1ngQdTHygUJODCFtdj4HMZ5deEUfnIy0kSicJj3nOPr
	NZzFcyfSe9HaK33ijb/45BpmjCrsKbslysaP9KJjaDB+0VvF17nFR5Zp0meA8PYUUIUPw7TZ1hqpX
	6CeVAmGktXWyy1M7ZvAtiQfh8ff4pmN7C7V112jkSXzZ+/Et1RAeQnrUL0zePTBhgR7+wg9Olmh49
	SJpW5KIsMDg09KbV3MVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq1jU-0007SV-WD; Tue, 23 Jul 2019 20:50:01 +0000
Received: from mga01.intel.com ([192.55.52.88])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq1jB-0007Kh-RR
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 20:49:43 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 13:49:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,300,1559545200"; d="scan'208";a="368560366"
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by fmsmga005.fm.intel.com with ESMTP; 23 Jul 2019 13:49:40 -0700
Date: Tue, 23 Jul 2019 14:46:43 -0600
From: Keith Busch <kbusch@kernel.org>
To: Sagi Grimberg <sagi@grimberg.me>
Subject: Re: [PATCH] nvme-pci: fix probe and remove race
Message-ID: <20190723204643.GC4002@localhost.localdomain>
References: <20190719194256.23618-1-sagi@grimberg.me>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190719194256.23618-1-sagi@grimberg.me>
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_134941_971718_0908D6E7 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.88 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "Busch, Keith" <keith.busch@intel.com>,
 "lizhongfs@gmail.com" <lizhongfs@gmail.com>, Christoph Hellwig <hch@lst.de>,
 "linux-nvme@lists.infradead.org" <linux-nvme@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

On Fri, Jul 19, 2019 at 12:42:56PM -0700, Sagi Grimberg wrote:
> It is possible that nvme_remove() being ran concurrently with
> nvme_reset_work(), with following sequence:
> 
> nvme_probe()
>   nvme_init_ctrl()
>     //set to NEW
>   nvme_async_probe()
>                                                       nvme_remove()
>                                                         //can not change to
>                                                         //DELETING from NEW
>     nvme_reset_ctrl_sync()
>         nvme_reset_ctrl()
>           //change from NEW
>           //to RESETTING
>                                                        flush reset_work()
>                                                        //not yet queued
>           queue reset_work
>             nvme_reset_work()
>               ....                                     ....
> 
> With the above running concurrently, then it is possible to cause some
> strange issues, like kernel crash with illegal memory accessing
> or something like:
> kernel: pci 0000:00:1f.0: can't enable device: BAR 0
>  [mem 0xc0000000-0xc0003fff] not claimed
> 
> Fix this by waiting for the async probe to complete before allowing
> remove to make forward progress.
> 
> Reported-by: Li Zhong <lizhongfs@gmail.com>
> Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

I still think we'd prefer not adding that async domain dependency and
relying on timeout to unstuck a hot-removal. So how about we schedule
the reset work in probe and have the async part just flush the reset
and scan work?

---
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index db160cee42ad..0c2c4b0c6655 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2695,7 +2695,7 @@ static void nvme_async_probe(void *data, async_cookie_t cookie)
 {
 	struct nvme_dev *dev = data;
 
-	nvme_reset_ctrl_sync(&dev->ctrl);
+	flush_work(&dev->ctrl.reset_work);
 	flush_work(&dev->ctrl.scan_work);
 	nvme_put_ctrl(&dev->ctrl);
 }
@@ -2761,6 +2761,7 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 
 	dev_info(dev->ctrl.device, "pci function %s\n", dev_name(&pdev->dev));
 
+	nvme_reset_ctrl(&dev->ctrl);
 	nvme_get_ctrl(&dev->ctrl);
 	async_schedule(nvme_async_probe, dev);
 
--

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
