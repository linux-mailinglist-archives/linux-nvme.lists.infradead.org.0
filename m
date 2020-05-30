Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F109A1E91DC
	for <lists+linux-nvme@lfdr.de>; Sat, 30 May 2020 15:53:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HP6l8TNn34HzWqYeQSykDvdt/AIje8fDIXzBMPQh+Q0=; b=hcIBlhFlEJPDQO
	B6k/fgFr2gv9aIuV6d/Gg4yVTy2BFT9WIityuRem2q32OkiZm0l6vHQl2OrFuumznD9s8eFvVg2+d
	7yM+aKVSVL3zjA+NBFSczzmdOmE8RYWE6qvDG1w5zNCr69/eGJPLVAltNa+sY7lffPhaJaqx2OwOq
	LwpOnXhNJLV6i1oFfNbfY8/4HOB4rPRuXbVFNS2U6+lo9Dpf/nY/dzs3WdeaQ7XnFPOzBW2zU+gSa
	H+6pMDkhHjTCr0/pJgqnrH46tlzrhKfcpoe7DRmh58XEdCOXnL7E1XYfcfemAfEQb/sEtcHLLyiki
	bsI6BRGePjHyCY5/0P+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf1vX-0006gI-Hl; Sat, 30 May 2020 13:53:31 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf1uy-0006L9-Fp
 for linux-nvme@lists.infradead.org; Sat, 30 May 2020 13:52:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590846775;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=TNnr3qLTdHB28Ad+/AEnpk05q0jlMEs2ygmx4qV3lRM=;
 b=QTpvQu7lyC6EykeGX28985pYx/fC9ZwTMis3uk2LxwQvn86LuFc3iJq8EDb7FJp7c5g6Da
 e3QVUdloKbpLZhpgxCn8wvqhsCDVFco9jm2uDTw7VFtcamMgLq//UxNeD7gqxRKPCSW/4S
 xghV++RC/9ZZK4cZkVBh591AJvyxlXE=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-212-lLoCN4SXMfKt5oYqy0ODtA-1; Sat, 30 May 2020 09:52:50 -0400
X-MC-Unique: lLoCN4SXMfKt5oYqy0ODtA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 1EDFB18FE860;
 Sat, 30 May 2020 13:52:49 +0000 (UTC)
Received: from localhost (ovpn-12-60.pek2.redhat.com [10.72.12.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id B04046ACF8;
 Sat, 30 May 2020 13:52:45 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Subject: [PATCH V2 3/3] nvme-pci: make nvme reset more reliable
Date: Sat, 30 May 2020 21:52:21 +0800
Message-Id: <20200530135221.1152749-4-ming.lei@redhat.com>
In-Reply-To: <20200530135221.1152749-1-ming.lei@redhat.com>
References: <20200530135221.1152749-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_065256_644420_4A6B747D 
X-CRM114-Status: GOOD (  19.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [205.139.110.61 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Dongli Zhang <dongli.zhang@oracle.com>,
 Ming Lei <ming.lei@redhat.com>, Alan Adamson <alan.adamson@oracle.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

During waiting for in-flight IO completion in reset handler, timeout
or controller failure still may happen, then the controller is deleted
and all inflight IOs are failed. This way is too violent: 1) the timeout
may be triggered exactly during nvme_wait_freeze() after controller is
recovered by one occasional event; 2) the claimed retry times isn't
respected.

Improve the reset handling by replacing nvme_wait_freeze with query
& check controller. If all ns queues are frozen, the controller is reset
successfully, otherwise check and see if the controller has been disabled.
If yes, break from the current recovery and schedule a fresh new reset.

This way avoids to failing IO & removing controller unnecessarily.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/nvme/host/core.c |  3 ++-
 drivers/nvme/host/nvme.h |  2 ++
 drivers/nvme/host/pci.c  | 50 +++++++++++++++++++++++++++++++++-------
 3 files changed, 46 insertions(+), 9 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 469010607383..f4a00a85a47e 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -45,9 +45,10 @@ static unsigned char shutdown_timeout = 5;
 module_param(shutdown_timeout, byte, 0644);
 MODULE_PARM_DESC(shutdown_timeout, "timeout in seconds for controller shutdown");
 
-static u8 nvme_max_retries = 5;
+u8 nvme_max_retries = 5;
 module_param_named(max_retries, nvme_max_retries, byte, 0644);
 MODULE_PARM_DESC(max_retries, "max number of retries a command may have");
+EXPORT_SYMBOL_GPL(nvme_max_retries);
 
 static unsigned long default_ps_max_latency_us = 100000;
 module_param(default_ps_max_latency_us, ulong, 0644);
diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 459e5952ff5f..ba4c84f16a0b 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -25,6 +25,8 @@ extern unsigned int nvme_io_timeout;
 extern unsigned int admin_timeout;
 #define ADMIN_TIMEOUT	(admin_timeout * HZ)
 
+extern u8 nvme_max_retries;
+
 #define NVME_DEFAULT_KATO	5
 #define NVME_KATO_GRACE		10
 
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index e13c370de830..9b75f1d855f9 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -24,6 +24,7 @@
 #include <linux/io-64-nonatomic-lo-hi.h>
 #include <linux/sed-opal.h>
 #include <linux/pci-p2pdma.h>
+#include <linux/delay.h>
 
 #include "trace.h"
 #include "nvme.h"
@@ -106,6 +107,7 @@ struct nvme_dev {
 	unsigned long bar_mapped_size;
 	struct work_struct remove_work;
 	struct mutex shutdown_lock;
+	int successive_shutdown;
 	bool subsystem;
 	u64 cmb_size;
 	bool cmb_use_sqes;
@@ -1243,9 +1245,6 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 	 * shutdown, so we return BLK_EH_DONE.
 	 */
 	switch (dev->ctrl.state) {
-	case NVME_CTRL_CONNECTING:
-		nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DELETING);
-		/* fall through */
 	case NVME_CTRL_DELETING:
 		dev_warn_ratelimited(dev->ctrl.device,
 			 "I/O %d QID %d timeout, disable controller\n",
@@ -2383,11 +2382,13 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 	struct pci_dev *pdev = to_pci_dev(dev->dev);
 
 	mutex_lock(&dev->shutdown_lock);
+	dev->successive_shutdown++;
 	if (pci_is_enabled(pdev)) {
 		u32 csts = readl(dev->bar + NVME_REG_CSTS);
 
 		if (dev->ctrl.state == NVME_CTRL_LIVE ||
-		    dev->ctrl.state == NVME_CTRL_RESETTING) {
+		    dev->ctrl.state == NVME_CTRL_RESETTING ||
+		    dev->ctrl.state == NVME_CTRL_CONNECTING) {
 			freeze = true;
 			nvme_start_freeze(&dev->ctrl);
 		}
@@ -2498,12 +2499,34 @@ static void nvme_remove_dead_ctrl(struct nvme_dev *dev)
 		nvme_put_ctrl(&dev->ctrl);
 }
 
+static bool nvme_wait_freeze_and_check(struct nvme_dev *dev)
+{
+	bool frozen;
+
+	while (true) {
+		frozen = nvme_frozen(&dev->ctrl);
+		if (frozen)
+			break;
+
+		/*
+		 * controller may has been shutdown because of new timeout, so
+		 * break from the loop and report the event to reset handler.
+		 */
+		if (!dev->online_queues)
+			break;
+		msleep(3);
+	}
+
+	return frozen;
+}
+
 static void nvme_reset_work(struct work_struct *work)
 {
 	struct nvme_dev *dev =
 		container_of(work, struct nvme_dev, ctrl.reset_work);
 	bool was_suspend = !!(dev->ctrl.ctrl_config & NVME_CC_SHN_NORMAL);
 	int result;
+	bool reset_done = true;
 
 	if (WARN_ON(dev->ctrl.state != NVME_CTRL_RESETTING)) {
 		result = -ENODEV;
@@ -2600,23 +2623,34 @@ static void nvme_reset_work(struct work_struct *work)
 		nvme_free_tagset(dev);
 	} else {
 		nvme_start_queues(&dev->ctrl);
-		nvme_wait_freeze(&dev->ctrl);
-		nvme_dev_add(dev);
+		reset_done = nvme_wait_freeze_and_check(dev);
+		if (reset_done)
+			nvme_dev_add(dev);
 		nvme_unfreeze(&dev->ctrl);
 	}
 
 	/*
 	 * If only admin queue live, keep it to do further investigation or
 	 * recovery.
+	 *
+	 * Or we can't move on after retrying enough times.
 	 */
-	if (!nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_LIVE)) {
+	if (!nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_LIVE) ||
+	    (!reset_done && dev->successive_shutdown >= nvme_max_retries)) {
 		dev_warn(dev->ctrl.device,
 			"failed to mark controller live state\n");
 		result = -ENODEV;
 		goto out;
 	}
 
-	nvme_start_ctrl(&dev->ctrl);
+	/* New error happens during reset, so schedule a new reset */
+	if (!reset_done) {
+		dev_warn(dev->ctrl.device, "new error during reset\n");
+		nvme_reset_ctrl(&dev->ctrl);
+	} else {
+		dev->successive_shutdown = 0;
+		nvme_start_ctrl(&dev->ctrl);
+	}
 	return;
 
  out_unlock:
-- 
2.25.2


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
