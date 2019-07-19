Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD5236EB33
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 21:43:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=gsjC0n7S6kiOTo4EGTWNbxU7AhgdPuCz7S6SOJ/7SUw=; b=WDe
	oaJIIw3OgvxLZHGPy0ETPL3nJ7YpmrMVdwTReLWQDNA9Sll2+DuSPynYaK2qNXgxmSWGjLP5VJ452
	p1crLsK2Hj0LRaJpoBMgTGe+8Sksf6Z79lo29cmlT8v/sPlbqBV8wjIv5kbYf5QXqfLOGTGefPc1I
	HrJRp3fHI5CX9E7JALw1Dop2sulM/5yOlOxVb3lIkoCmqRMV8qija0UNhBJgGYfNIDW3gfO99qnIO
	g6XbcFjUp9fmCH3D9jkdafeasEnOTosw3Nx84961/WfwRhgweYowppgEBy2Jo78HVP1pzN9QafEvA
	tDN0AvDvm6YxJcUt84opjyG7hddFQQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYmZ-0006pj-U6; Fri, 19 Jul 2019 19:43:07 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYmS-0006pT-Im; Fri, 19 Jul 2019 19:43:00 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-pci: fix probe and remove race
Date: Fri, 19 Jul 2019 12:42:56 -0700
Message-Id: <20190719194256.23618-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, lizhongfs@gmail.com,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

It is possible that nvme_remove() being ran concurrently with
nvme_reset_work(), with following sequence:

nvme_probe()
  nvme_init_ctrl()
    //set to NEW
  nvme_async_probe()
                                                      nvme_remove()
                                                        //can not change to
                                                        //DELETING from NEW
    nvme_reset_ctrl_sync()
        nvme_reset_ctrl()
          //change from NEW
          //to RESETTING
                                                       flush reset_work()
                                                       //not yet queued
          queue reset_work
            nvme_reset_work()
              ....                                     ....

With the above running concurrently, then it is possible to cause some
strange issues, like kernel crash with illegal memory accessing
or something like:
kernel: pci 0000:00:1f.0: can't enable device: BAR 0
 [mem 0xc0000000-0xc0003fff] not claimed

Fix this by waiting for the async probe to complete before allowing
remove to make forward progress.

Reported-by: Li Zhong <lizhongfs@gmail.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/pci.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 4b508d5e45cf..50061abe49c6 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -127,6 +127,7 @@ struct nvme_dev {
 	dma_addr_t host_mem_descs_dma;
 	struct nvme_host_mem_buf_desc *host_mem_descs;
 	void **host_mem_desc_bufs;
+	async_cookie_t async_probe;
 };
 
 static int io_queue_depth_set(const char *val, const struct kernel_param *kp)
@@ -2765,7 +2766,7 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	dev_info(dev->ctrl.device, "pci function %s\n", dev_name(&pdev->dev));
 
 	nvme_get_ctrl(&dev->ctrl);
-	async_schedule(nvme_async_probe, dev);
+	dev->async_probe = async_schedule(nvme_async_probe, dev);
 
 	return 0;
 
@@ -2810,6 +2811,8 @@ static void nvme_remove(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
 
+	/* wait for async probe to complete */
+	async_synchronize_cookie(dev->async_probe + 1);
 	nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
 	pci_set_drvdata(pdev, NULL);
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
