Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA02E1ACEB
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 17:55:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4VDAOTnlxvjJ+MEWBoqw9TVrh8CMNHnzR2FyNdBkk1Q=; b=etXRrpBOb7cM5VMlxm/QJGEBXu
	JGoDnfb+ctemwNaVBskfWboobRZtgTdRr/CZ53HwEzS8StpqhxSYX+//MlR+8MkQ5wl4eLhr8cksO
	9fqQi2n8buCuHUkoBcmRHeKGZdE5y5/c8axFtuVUaqiL+fz4g3sNXGACHydZ2ZNyY7DnGnmTReklY
	zKOwY7TAlZoZGwAq+Bj2xzBGJoDj1F3GOZsE8ctBa8H2GYlUsdW/UuXd9e/Us8pg9q+vP9gfkYYEB
	XhdP4/lPcJgKxFDERdJI9BiVNbd7bjbP4lPLE8yBcatkPugty6vTOt7pDBx01nvXyFSohLYGMuW2Y
	BkHvkuCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPqp1-0002Ag-0j; Sun, 12 May 2019 15:55:31 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqod-0000w4-F3
 for linux-nvme@bombadil.infradead.org; Sun, 12 May 2019 15:55:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=/RSvBfwSgHPK+AwTlO+Q/ljV/lIxCORJ8Om4rSVjchY=; b=QGSwZNmCUPytFcHJWrtm7j2D0
 8pxujZFLP6w60Ll8jFE3lrDwrjTKWbMvNS/WzZZEbosRBWI5i/lRXfTWKVBcSX5J8UU8KQ9yPyYZY
 tPEE/CG3QVBGJN6UNAqNcFV8U7duBdizf9psdcPQLU93aRZsGmrVwWZZbHASckjzRfD3d4D+jYlML
 kK22gn1pubn/hUpaPby3+dF3tgKnF1I0Hfp7LinHGEuf03aH1C/pfbFG2m6l6SkuPgasdKpVZNG8R
 XYmpkgz80yCXzUw/boUW6KjA8YKjoemqi1c567cro9WYX9F4kTp9Nfi+NsUo/UpUsLdkXlvQcRuUm
 jGMPzCyFA==;
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPqoa-00018L-6X
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 15:55:05 +0000
Received: by mail-pf1-x443.google.com with SMTP id t87so5819099pfa.2
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 08:54:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/RSvBfwSgHPK+AwTlO+Q/ljV/lIxCORJ8Om4rSVjchY=;
 b=eHPwjWHKGNbQrIba+h0WS/NU55onEkPMWUh35HEfZlyS/noOAtj9X40j+2FM8SA8O1
 vtvjcwmtdDEJXtyeVnjxQPObPcVxhiNPtYMsBs1zZ9fzawVUs1zYrNkG36N9LmeONc7u
 KorTsfmcjRBko58i4IUT6I4+uSFAEvm0pV0yylA+/Ag3XLkEyqOpswczqjO1B72vBW1v
 Ui0Z+LDlOJu3w17/yxPIbAMWGxfilb08ZIaRBIBxCHHmxzlYXcXQp0gWvHD7UpnLASuQ
 KoG87UgwbtvQE/HNvnBTeJKyQmlYQhsC05yCzqfIPMRgPX72/a+gl18l33uEjftBi9i/
 3Dgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/RSvBfwSgHPK+AwTlO+Q/ljV/lIxCORJ8Om4rSVjchY=;
 b=lphNqY6LOQ3nJrfQSMgTqFgM6sXNeqyXueHS0OvZWYOyvzRsTVG/roDS2JHzocXQOg
 6XdkmCnQccLxF0eLglVN1srYn+EwlNa3np7KMROqcPun1qXu8sosB6pAHaMwene/uXRi
 x9x/OZi1pH435kEa6MHbFHGcaOplZfA86qtR8l26EIn/xFgcq126DWvFA4eJB540dqZ1
 UhT3nV9ndT+uE8l9CgBUZvZ7MJTpcBwrl0hA4KsfZ52wN9aLMiKgRUiaboywvvLxYlzw
 R9EPd8Qy5dKoBeL4KICbWv28CTqSFwRaVYNXu2xmy7Co7bBDcvFRxtQKTLg0V5mi1OFc
 uYzQ==
X-Gm-Message-State: APjAAAWJBgZWQtD3YDtS4S2IkNVOLnqXpwLiVRQjiLTJvXlcZXFvCh00
 6dOg8qX8e/anIonuuXtbzAyteIxI
X-Google-Smtp-Source: APXvYqyesTKSGfie/SmRn45k8KBFsF5TkJakltXKy2qHrDO7Hza+OLjhhLeIb5VkoOfUH37PL90hog==
X-Received: by 2002:a62:3381:: with SMTP id z123mr28901831pfz.42.1557676497115; 
 Sun, 12 May 2019 08:54:57 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:918e:f7e4:1728:3f45])
 by smtp.gmail.com with ESMTPSA id v2sm4470058pgr.2.2019.05.12.08.54.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 12 May 2019 08:54:56 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v3 6/7] nvme-pci: trigger device coredump on command timeout
Date: Mon, 13 May 2019 00:54:16 +0900
Message-Id: <1557676457-4195-7-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
References: <1557676457-4195-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_115504_249405_DE898E60 
X-CRM114-Status: GOOD (  19.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 Kenneth Heitke <kenneth.heitke@intel.com>,
 Akinobu Mita <akinobu.mita@gmail.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Johannes Berg <johannes@sipsolutions.net>,
 Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This enables the nvme driver to trigger a device coredump when command
timeout occurs, and it helps diagnose and debug issues.

This can be tested with fail_io_timeout fault injection.

	# echo 1 > /sys/kernel/debug/fail_io_timeout/probability
	# echo 1 > /sys/kernel/debug/fail_io_timeout/times
	# echo 1 > /sys/block/nvme0n1/io-timeout-fail
	# dd if=/dev/nvme0n1 of=/dev/null

Cc: Johannes Berg <johannes@sipsolutions.net>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Minwoo Im <minwoo.im.dev@gmail.com>
Cc: Kenneth Heitke <kenneth.heitke@intel.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v3
- Don't try to get telemetry log when admin queue is not available

 drivers/nvme/host/pci.c | 39 +++++++++++++++++++++++----------------
 1 file changed, 23 insertions(+), 16 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 3eebb98..6522592 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -87,12 +87,12 @@ MODULE_PARM_DESC(poll_queues, "Number of queues to use for polled IO.");
 struct nvme_dev;
 struct nvme_queue;
 
-static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown);
+static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown, bool dump);
 static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode);
 
-static void __maybe_unused nvme_coredump_init(struct nvme_dev *dev);
-static void __maybe_unused nvme_coredump_logs(struct nvme_dev *dev);
-static void __maybe_unused nvme_coredump_complete(struct nvme_dev *dev);
+static void nvme_coredump_init(struct nvme_dev *dev);
+static void nvme_coredump_logs(struct nvme_dev *dev);
+static void nvme_coredump_complete(struct nvme_dev *dev);
 
 /*
  * Represents an NVM Express device.  Each nvme_dev is a PCI function.
@@ -1280,7 +1280,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 	 */
 	if (nvme_should_reset(dev, csts)) {
 		nvme_warn_reset(dev, csts);
-		nvme_dev_disable(dev, false);
+		nvme_dev_disable(dev, false, true);
 		nvme_reset_ctrl(&dev->ctrl);
 		return BLK_EH_DONE;
 	}
@@ -1309,7 +1309,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 		dev_warn_ratelimited(dev->ctrl.device,
 			 "I/O %d QID %d timeout, disable controller\n",
 			 req->tag, nvmeq->qid);
-		nvme_dev_disable(dev, shutdown);
+		nvme_dev_disable(dev, shutdown, true);
 		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
 		return BLK_EH_DONE;
 	default:
@@ -1325,7 +1325,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 		dev_warn(dev->ctrl.device,
 			 "I/O %d QID %d timeout, reset controller\n",
 			 req->tag, nvmeq->qid);
-		nvme_dev_disable(dev, false);
+		nvme_dev_disable(dev, false, true);
 		nvme_reset_ctrl(&dev->ctrl);
 
 		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
@@ -2382,7 +2382,7 @@ static void nvme_pci_disable(struct nvme_dev *dev)
 	}
 }
 
-static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
+static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown, bool dump)
 {
 	bool dead = true;
 	struct pci_dev *pdev = to_pci_dev(dev->dev);
@@ -2407,6 +2407,9 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 			nvme_wait_freeze_timeout(&dev->ctrl, NVME_IO_TIMEOUT);
 	}
 
+	if (dump)
+		nvme_coredump_init(dev);
+
 	nvme_stop_queues(&dev->ctrl);
 
 	if (!dead && dev->ctrl.queue_count > 0) {
@@ -2477,7 +2480,7 @@ static void nvme_remove_dead_ctrl(struct nvme_dev *dev, int status)
 	dev_warn(dev->ctrl.device, "Removing after probe failure status: %d\n", status);
 
 	nvme_get_ctrl(&dev->ctrl);
-	nvme_dev_disable(dev, false);
+	nvme_dev_disable(dev, false, false);
 	nvme_kill_queues(&dev->ctrl);
 	if (!queue_work(nvme_wq, &dev->remove_work))
 		nvme_put_ctrl(&dev->ctrl);
@@ -2499,7 +2502,7 @@ static void nvme_reset_work(struct work_struct *work)
 	 * moving on.
 	 */
 	if (dev->ctrl.ctrl_config & NVME_CC_ENABLE)
-		nvme_dev_disable(dev, false);
+		nvme_dev_disable(dev, false, false);
 
 	mutex_lock(&dev->shutdown_lock);
 	result = nvme_pci_enable(dev);
@@ -2536,6 +2539,9 @@ static void nvme_reset_work(struct work_struct *work)
 	if (result)
 		goto out;
 
+	nvme_coredump_logs(dev);
+	nvme_coredump_complete(dev);
+
 	if (dev->ctrl.oacs & NVME_CTRL_OACS_SEC_SUPP) {
 		if (!dev->ctrl.opal_dev)
 			dev->ctrl.opal_dev =
@@ -2598,6 +2604,7 @@ static void nvme_reset_work(struct work_struct *work)
  out_unlock:
 	mutex_unlock(&dev->shutdown_lock);
  out:
+	nvme_coredump_complete(dev);
 	nvme_remove_dead_ctrl(dev, result);
 }
 
@@ -2788,7 +2795,7 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 static void nvme_reset_prepare(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
-	nvme_dev_disable(dev, false);
+	nvme_dev_disable(dev, false, false);
 }
 
 static void nvme_reset_done(struct pci_dev *pdev)
@@ -2800,7 +2807,7 @@ static void nvme_reset_done(struct pci_dev *pdev)
 static void nvme_shutdown(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
-	nvme_dev_disable(dev, true);
+	nvme_dev_disable(dev, true, false);
 }
 
 /*
@@ -2817,14 +2824,14 @@ static void nvme_remove(struct pci_dev *pdev)
 
 	if (!pci_device_is_present(pdev)) {
 		nvme_change_ctrl_state(&dev->ctrl, NVME_CTRL_DEAD);
-		nvme_dev_disable(dev, true);
+		nvme_dev_disable(dev, true, false);
 		nvme_dev_remove_admin(dev);
 	}
 
 	flush_work(&dev->ctrl.reset_work);
 	nvme_stop_ctrl(&dev->ctrl);
 	nvme_remove_namespaces(&dev->ctrl);
-	nvme_dev_disable(dev, true);
+	nvme_dev_disable(dev, true, false);
 	nvme_release_cmb(dev);
 	nvme_free_host_mem(dev);
 	nvme_dev_remove_admin(dev);
@@ -2841,7 +2848,7 @@ static int nvme_suspend(struct device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
-	nvme_dev_disable(ndev, true);
+	nvme_dev_disable(ndev, true, false);
 	return 0;
 }
 
@@ -3313,7 +3320,7 @@ static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
 	case pci_channel_io_frozen:
 		dev_warn(dev->ctrl.device,
 			"frozen state error detected, reset controller\n");
-		nvme_dev_disable(dev, false);
+		nvme_dev_disable(dev, false, false);
 		return PCI_ERS_RESULT_NEED_RESET;
 	case pci_channel_io_perm_failure:
 		dev_warn(dev->ctrl.device,
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
