Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 835439012B
	for <lists+linux-nvme@lfdr.de>; Fri, 16 Aug 2019 14:16:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KXcvg8KAWn1Hw3T7ID6oi7Tw5sL61YDb+S7ghPdADdU=; b=cMR3sHoHVEQoCI
	Db3zfqQRJG3jF4zWqRxf3Dp2iPQ18eKrxyCB+TlqIH9tQjIDW/zMBivxcX+Iq6MYwVQMxePCNS2UC
	TsnNfOoaiicUgtdSi1BCyS1DeGmmwygFYlvB/Yc3kqGCgl8l8suxxJLp3kBMT6oHW2w9PgZPi6DNl
	8MLBHJljDJTmwjdbhReePnsEB/zCWJ9EnOhEiqia7NPr9VDnQqGtWjNpgD6f+XiSreX/LNPButpxG
	9Hs4L8Ha7H9uu8bDBrH+dCGFY4DFWVPE8dq6VLus24wLsJWurlgS6mLcJfMH8Cfqqpv7kQU9xas0f
	G+1gG9ko16UXyMK6js/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hyb9f-0001u3-95; Fri, 16 Aug 2019 12:16:27 +0000
Received: from mail.fireflyinternet.com ([109.228.58.192]
 helo=fireflyinternet.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hyb9S-0001t4-O7
 for linux-nvme@lists.infradead.org; Fri, 16 Aug 2019 12:16:17 +0000
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from haswell.alporthouse.com (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP id 18162519-1500050 
 for multiple; Fri, 16 Aug 2019 13:16:00 +0100
From: Chris Wilson <chris@chris-wilson.co.uk>
To: intel-gfx@lists.freedesktop.org
Subject: [PATCH] Revert "nvme-pci: use host managed power state for suspend"
Date: Fri, 16 Aug 2019 13:15:49 +0100
Message-Id: <20190816121549.8754-1-chris@chris-wilson.co.uk>
X-Mailer: git-send-email 2.23.0.rc1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_051615_060753_98040C86 
X-CRM114-Status: GOOD (  15.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [109.228.58.192 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 "Rafael J . Wysocki" <rafael.j.wysocki@intel.com>,
 linux-nvme@lists.infradead.org, Chris Wilson <chris@chris-wilson.co.uk>,
 Keith Busch <keith.busch@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

commit d916b1be94b6dc8d293abed2451f3062f6af7551
Author: Keith Busch <keith.busch@intel.com>
Date:   Thu May 23 09:27:35 2019 -0600

    nvme-pci: use host managed power state for suspend

Bisected as cause of suspend failure for gem_eio/suspend on multiple kbl
hosts.

Cc: Rafael J. Wysocki <rafael.j.wysocki@intel.com>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: linux-nvme@lists.infradead.org
---
 drivers/nvme/host/pci.c | 95 ++---------------------------------------
 1 file changed, 3 insertions(+), 92 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index db160cee42ad..bdc9e0625bb7 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -18,7 +18,6 @@
 #include <linux/mutex.h>
 #include <linux/once.h>
 #include <linux/pci.h>
-#include <linux/suspend.h>
 #include <linux/t10-pi.h>
 #include <linux/types.h>
 #include <linux/io-64-nonatomic-lo-hi.h>
@@ -111,7 +110,6 @@ struct nvme_dev {
 	u32 cmbsz;
 	u32 cmbloc;
 	struct nvme_ctrl ctrl;
-	u32 last_ps;
 
 	mempool_t *iod_mempool;
 
@@ -2831,94 +2829,16 @@ static void nvme_remove(struct pci_dev *pdev)
 }
 
 #ifdef CONFIG_PM_SLEEP
-static int nvme_get_power_state(struct nvme_ctrl *ctrl, u32 *ps)
-{
-	return nvme_get_features(ctrl, NVME_FEAT_POWER_MGMT, 0, NULL, 0, ps);
-}
-
-static int nvme_set_power_state(struct nvme_ctrl *ctrl, u32 ps)
-{
-	return nvme_set_features(ctrl, NVME_FEAT_POWER_MGMT, ps, NULL, 0, NULL);
-}
-
-static int nvme_resume(struct device *dev)
-{
-	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
-	struct nvme_ctrl *ctrl = &ndev->ctrl;
-
-	if (pm_resume_via_firmware() || !ctrl->npss ||
-	    nvme_set_power_state(ctrl, ndev->last_ps) != 0)
-		nvme_reset_ctrl(ctrl);
-	return 0;
-}
-
 static int nvme_suspend(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
-	struct nvme_ctrl *ctrl = &ndev->ctrl;
-	int ret = -EBUSY;
-
-	/*
-	 * The platform does not remove power for a kernel managed suspend so
-	 * use host managed nvme power settings for lowest idle power if
-	 * possible. This should have quicker resume latency than a full device
-	 * shutdown.  But if the firmware is involved after the suspend or the
-	 * device does not support any non-default power states, shut down the
-	 * device fully.
-	 */
-	if (pm_suspend_via_firmware() || !ctrl->npss) {
-		nvme_dev_disable(ndev, true);
-		return 0;
-	}
-
-	nvme_start_freeze(ctrl);
-	nvme_wait_freeze(ctrl);
-	nvme_sync_queues(ctrl);
-
-	if (ctrl->state != NVME_CTRL_LIVE &&
-	    ctrl->state != NVME_CTRL_ADMIN_ONLY)
-		goto unfreeze;
-
-	ndev->last_ps = 0;
-	ret = nvme_get_power_state(ctrl, &ndev->last_ps);
-	if (ret < 0)
-		goto unfreeze;
-
-	ret = nvme_set_power_state(ctrl, ctrl->npss);
-	if (ret < 0)
-		goto unfreeze;
-
-	if (ret) {
-		/*
-		 * Clearing npss forces a controller reset on resume. The
-		 * correct value will be resdicovered then.
-		 */
-		nvme_dev_disable(ndev, true);
-		ctrl->npss = 0;
-		ret = 0;
-		goto unfreeze;
-	}
-	/*
-	 * A saved state prevents pci pm from generically controlling the
-	 * device's power. If we're using protocol specific settings, we don't
-	 * want pci interfering.
-	 */
-	pci_save_state(pdev);
-unfreeze:
-	nvme_unfreeze(ctrl);
-	return ret;
-}
-
-static int nvme_simple_suspend(struct device *dev)
-{
-	struct nvme_dev *ndev = pci_get_drvdata(to_pci_dev(dev));
 
 	nvme_dev_disable(ndev, true);
 	return 0;
 }
 
-static int nvme_simple_resume(struct device *dev)
+static int nvme_resume(struct device *dev)
 {
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
@@ -2926,16 +2846,9 @@ static int nvme_simple_resume(struct device *dev)
 	nvme_reset_ctrl(&ndev->ctrl);
 	return 0;
 }
+#endif
 
-static const struct dev_pm_ops nvme_dev_pm_ops = {
-	.suspend	= nvme_suspend,
-	.resume		= nvme_resume,
-	.freeze		= nvme_simple_suspend,
-	.thaw		= nvme_simple_resume,
-	.poweroff	= nvme_simple_suspend,
-	.restore	= nvme_simple_resume,
-};
-#endif /* CONFIG_PM_SLEEP */
+static SIMPLE_DEV_PM_OPS(nvme_dev_pm_ops, nvme_suspend, nvme_resume);
 
 static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
 						pci_channel_state_t state)
@@ -3042,11 +2955,9 @@ static struct pci_driver nvme_driver = {
 	.probe		= nvme_probe,
 	.remove		= nvme_remove,
 	.shutdown	= nvme_shutdown,
-#ifdef CONFIG_PM_SLEEP
 	.driver		= {
 		.pm	= &nvme_dev_pm_ops,
 	},
-#endif
 	.sriov_configure = pci_sriov_configure_simple,
 	.err_handler	= &nvme_err_handler,
 };
-- 
2.23.0.rc1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
