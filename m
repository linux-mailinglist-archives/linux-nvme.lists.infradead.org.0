Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F6C422712
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 17:08:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mFLtEjOSzyVqd4oQI+/oNNHL2bSeYWIvmZDoK+p6QGA=; b=XaF9ufn4LH1ZAJdKBNKwvNOV1X
	913d3suyXUnbYuVS9fNbbIgW5M+CMz0BrwNmSYbYza0jzTpQ6sgHPSKJp2Uj2Tzch+m4VQNEkA4Bg
	mZXr371+wrkOwbYHVssTw4tIszfqCuwqtxHyVtS7fCfydTBErvi9vOTcVEQ0gaejUVrPSf25sN4u7
	89ovBBv7R371DeKw4b8nX2I7TdNgNmdgDbrYF5XGCxyWqMdi/XGWdIbIUjbh2wrS4+J/bWh/XggJZ
	Rlfteq/nRozJBn3XTtSbVWT+mpfor2QAzbDYRzd9fkFXYaOqWc2SPHc64KDJddEITfvbJxQLteROh
	PyYJGXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSNQ6-0005cp-K6; Sun, 19 May 2019 15:08:14 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSNPQ-0004vj-UG
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 15:07:50 +0000
Received: by mail-pg1-x544.google.com with SMTP id z16so5525865pgv.11
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 08:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=clJHY7KyFyDcM9FkV4yHc3Tj8r0uZgSu3tfBFo7C+aY=;
 b=KFPKUQZNtyglYSGyldyc0U0Pa14GqiTJrcbRXwVIjV6nQ8+y8qkBgdJCSBimIjltfq
 k5ra/g8y5IHzwWhPqMQlcFCiCjIVeRs3oxboogMipNXB0prlMqY7hI1UQmcUm7cOMC3g
 p6oL2Igq4PjUDdNsej1qxElqZJMSzEMtcE0GHHGGL2ih2xhxEUTOXlYWoFWW40fG+SAC
 Zs9BplhcuHu0kvEScraT+01B2ZG07BEkulX5LMU8neCXQXzzQ0B/wP0hVWltMmdhLue8
 7KhkM3OtmlBe4R5hi6GnTJeIDH2PMDivRXnZPpkV3fxQ+8z9Pox1I7Op9PWe2YSg62Tu
 52QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=clJHY7KyFyDcM9FkV4yHc3Tj8r0uZgSu3tfBFo7C+aY=;
 b=WCt+/iBO1VjU2kFbdSbkiZxivXS3Yly6gBgfFFkFlrYH2B4bRS3Sv5jjd2/48ZD848
 1PsSXRX+/RaQytPgdz3Csbxz2zSO7PTKTbqWnZ5X7tsrfMlI6l4L9HQyUTxJ156hO0EF
 ksj+m5qoiRsRzWFHXOM/xfGHm6JLc/V2evq4qv9Etc+pU79ywDq6DeHzA/oN8cBlfNWk
 u+voT1tZzQj23iNmtILgSIPDkvfpEysFqsagLgZD9oOysPZlOR9DbEVGepI7zYU+byE0
 3nuRrec7ts5z9SmpvFG1UY9G1sjYfSSIHqANcunlTZuhOFf5xWbtMoQQHJ14TOZtiEsH
 bDxg==
X-Gm-Message-State: APjAAAVL4PG4bfHow1kYcKpf03r0D5CC/42YhS9RYHN++y+RPsdXW0SQ
 Iy9jR2URMYkLQ1LtBedcxCqNv3ZT
X-Google-Smtp-Source: APXvYqyDwgvW1xe02eBXhVjmNxyvJppF3skscKoM538q4GCNdvOPLkS7NGAZ4/Wz20SfFSzUTKwVvQ==
X-Received: by 2002:aa7:8b57:: with SMTP id i23mr54011253pfd.54.1558278452344; 
 Sun, 19 May 2019 08:07:32 -0700 (PDT)
Received: from mita-MS-7A45.lan ([240f:34:212d:1:5085:bb4a:e3a8:fc9d])
 by smtp.gmail.com with ESMTPSA id g17sm2441105pfb.56.2019.05.19.08.07.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 19 May 2019 08:07:31 -0700 (PDT)
From: Akinobu Mita <akinobu.mita@gmail.com>
To: linux-nvme@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v4 6/7] nvme-pci: trigger device coredump on command timeout
Date: Mon, 20 May 2019 00:06:57 +0900
Message-Id: <1558278418-5702-7-git-send-email-akinobu.mita@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
References: <1558278418-5702-1-git-send-email-akinobu.mita@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_080733_426257_0AE9BB39 
X-CRM114-Status: GOOD (  17.73  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (akinobu.mita[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
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
Cc: Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>
Signed-off-by: Akinobu Mita <akinobu.mita@gmail.com>
---
* v4
- Abandon the reset if nvme_coredump_logs() returns error code

 drivers/nvme/host/pci.c | 41 +++++++++++++++++++++++++----------------
 1 file changed, 25 insertions(+), 16 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 8a29c52..6436e72 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -87,12 +87,12 @@ MODULE_PARM_DESC(poll_queues, "Number of queues to use for polled IO.");
 struct nvme_dev;
 struct nvme_queue;
 
-static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown);
+static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown, bool dump);
 static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode);
 
-static void __maybe_unused nvme_coredump_init(struct nvme_dev *dev);
-static int __maybe_unused nvme_coredump_logs(struct nvme_dev *dev);
-static void __maybe_unused nvme_coredump_complete(struct nvme_dev *dev);
+static void nvme_coredump_init(struct nvme_dev *dev);
+static int nvme_coredump_logs(struct nvme_dev *dev);
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
@@ -1310,7 +1310,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 		dev_warn_ratelimited(dev->ctrl.device,
 			 "I/O %d QID %d timeout, disable controller\n",
 			 req->tag, nvmeq->qid);
-		nvme_dev_disable(dev, shutdown);
+		nvme_dev_disable(dev, shutdown, true);
 		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
 		return BLK_EH_DONE;
 	default:
@@ -1326,7 +1326,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
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
@@ -2536,6 +2539,11 @@ static void nvme_reset_work(struct work_struct *work)
 	if (result)
 		goto out;
 
+	result = nvme_coredump_logs(dev);
+	if (result)
+		goto out;
+	nvme_coredump_complete(dev);
+
 	if (dev->ctrl.oacs & NVME_CTRL_OACS_SEC_SUPP) {
 		if (!dev->ctrl.opal_dev)
 			dev->ctrl.opal_dev =
@@ -2598,6 +2606,7 @@ static void nvme_reset_work(struct work_struct *work)
  out_unlock:
 	mutex_unlock(&dev->shutdown_lock);
  out:
+	nvme_coredump_complete(dev);
 	nvme_remove_dead_ctrl(dev, result);
 }
 
@@ -2788,7 +2797,7 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 static void nvme_reset_prepare(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
-	nvme_dev_disable(dev, false);
+	nvme_dev_disable(dev, false, false);
 }
 
 static void nvme_reset_done(struct pci_dev *pdev)
@@ -2800,7 +2809,7 @@ static void nvme_reset_done(struct pci_dev *pdev)
 static void nvme_shutdown(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
-	nvme_dev_disable(dev, true);
+	nvme_dev_disable(dev, true, false);
 }
 
 /*
@@ -2817,14 +2826,14 @@ static void nvme_remove(struct pci_dev *pdev)
 
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
@@ -2841,7 +2850,7 @@ static int nvme_suspend(struct device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
-	nvme_dev_disable(ndev, true);
+	nvme_dev_disable(ndev, true, false);
 	return 0;
 }
 
@@ -3290,7 +3299,7 @@ static pci_ers_result_t nvme_error_detected(struct pci_dev *pdev,
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
