Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66F2A19146C
	for <lists+linux-nvme@lfdr.de>; Tue, 24 Mar 2020 16:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ebu4qZr4zOToj6OMkxdXr4y5988+LAtJnz6bYVokvKw=; b=lnrt1iuHR3ywTk4Qa/ry2F58yC
	OkU54fzlumjTmcpIxM/0UYF0iwGENOkIOpH7Ofmn9vtuu5T0hA9CZrmkJOtIcorYiqKOHYYdnAVsf
	eMl/wYT53kJ+nBglZsfpzFZm3UoB0ATBGPkl4Zp96+2ufkwcm09mtAZKUJs9RAIiTKw32ZkZnt9Cc
	5zqjT97g3z/qr14VB1pGJTw+PSqfmWkxMJM6BpKNG1+B/+kspRwTHdCJo/3GV+3DZYBgPiw3XrnXU
	7qRHOnZNVJ/5NpXQD5AyQJD10xZkHSzgxtHAJotzOJRpUt7BfKBZE4DxoQghs+NS0l/akBQjmlTSY
	Rp2VTrdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGlW0-0005WO-GX; Tue, 24 Mar 2020 15:30:52 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGlV6-0003ip-Bu
 for linux-nvme@lists.infradead.org; Tue, 24 Mar 2020 15:29:59 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Mar 2020 17:29:47 +0200
Received: from rsws50.mtr.labs.mlnx (rsws50.mtr.labs.mlnx [10.209.40.61])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02OFTkEO013985;
 Tue, 24 Mar 2020 17:29:47 +0200
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
Subject: [PATCH 4/7] nvme: Make nvme_uninit_ctrl symmetric to nvme_init_ctrl
Date: Tue, 24 Mar 2020 17:29:42 +0200
Message-Id: <1585063785-14268-5-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
In-Reply-To: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
References: <1585063785-14268-1-git-send-email-israelr@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200324_082956_808952_F781B842 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Put the ctrl reference count at nvme_uninit_ctrl as opposed to
nvme_init_ctrl which takes it. This decrease the reference count at the
core layer instead of decreasing it on each transport separately.
Also move the call of nvme_uninit_ctrl at PCI driver after calling to
nvme_release_prp_pools and nvme_dev_unmap, in order to put the reference
count after using the dev. This is safe because those functions use
nvme_dev which is freed only later at nvme_pci_free_ctrl.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
---
 drivers/nvme/host/core.c   | 2 +-
 drivers/nvme/host/fc.c     | 1 -
 drivers/nvme/host/pci.c    | 3 +--
 drivers/nvme/host/rdma.c   | 1 -
 drivers/nvme/host/tcp.c    | 1 -
 drivers/nvme/target/loop.c | 2 --
 6 files changed, 2 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 5ccbcac..ba064fd 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -171,7 +171,6 @@ static void nvme_do_delete_ctrl(struct nvme_ctrl *ctrl)
 	nvme_remove_namespaces(ctrl);
 	ctrl->ops->delete_ctrl(ctrl);
 	nvme_uninit_ctrl(ctrl);
-	nvme_put_ctrl(ctrl);
 }
 
 static void nvme_delete_ctrl_work(struct work_struct *work)
@@ -4048,6 +4047,7 @@ void nvme_uninit_ctrl(struct nvme_ctrl *ctrl)
 	nvme_fault_inject_fini(&ctrl->fault_inject);
 	dev_pm_qos_hide_latency_tolerance(ctrl->device);
 	cdev_device_del(&ctrl->cdev, ctrl->device);
+	nvme_put_ctrl(ctrl);
 }
 EXPORT_SYMBOL_GPL(nvme_uninit_ctrl);
 
diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 59d2e2b..a8bf2fb 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -3206,7 +3206,6 @@ enum {
 
 	/* initiate nvme ctrl ref counting teardown */
 	nvme_uninit_ctrl(&ctrl->ctrl);
-	nvme_put_ctrl(&ctrl->ctrl);
 
 	/* Remove core ctrl ref. */
 	nvme_put_ctrl(&ctrl->ctrl);
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 4e062c3..4e79e41 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2873,10 +2873,9 @@ static void nvme_remove(struct pci_dev *pdev)
 	nvme_free_host_mem(dev);
 	nvme_dev_remove_admin(dev);
 	nvme_free_queues(dev, 0);
-	nvme_uninit_ctrl(&dev->ctrl);
 	nvme_release_prp_pools(dev);
 	nvme_dev_unmap(dev);
-	nvme_put_ctrl(&dev->ctrl);
+	nvme_uninit_ctrl(&dev->ctrl);
 }
 
 #ifdef CONFIG_PM_SLEEP
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index ca782de..c99a882 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -2052,7 +2052,6 @@ static struct nvme_ctrl *nvme_rdma_create_ctrl(struct device *dev,
 out_uninit_ctrl:
 	nvme_uninit_ctrl(&ctrl->ctrl);
 	nvme_put_ctrl(&ctrl->ctrl);
-	nvme_put_ctrl(&ctrl->ctrl);
 	if (ret > 0)
 		ret = -EIO;
 	return ERR_PTR(ret);
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 202f08e2..2fc2687 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -2438,7 +2438,6 @@ static struct nvme_ctrl *nvme_tcp_create_ctrl(struct device *dev,
 out_uninit_ctrl:
 	nvme_uninit_ctrl(&ctrl->ctrl);
 	nvme_put_ctrl(&ctrl->ctrl);
-	nvme_put_ctrl(&ctrl->ctrl);
 	if (ret > 0)
 		ret = -EIO;
 	return ERR_PTR(ret);
diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index a425e28..0d54e73 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -485,7 +485,6 @@ static void nvme_loop_reset_ctrl_work(struct work_struct *work)
 out_disable:
 	dev_warn(ctrl->ctrl.device, "Removing after reset failure\n");
 	nvme_uninit_ctrl(&ctrl->ctrl);
-	nvme_put_ctrl(&ctrl->ctrl);
 }
 
 static const struct nvme_ctrl_ops nvme_loop_ctrl_ops = {
@@ -635,7 +634,6 @@ static struct nvme_ctrl *nvme_loop_create_ctrl(struct device *dev,
 	kfree(ctrl->queues);
 out_uninit_ctrl:
 	nvme_uninit_ctrl(&ctrl->ctrl);
-	nvme_put_ctrl(&ctrl->ctrl);
 out_put_ctrl:
 	nvme_put_ctrl(&ctrl->ctrl);
 	if (ret > 0)
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
