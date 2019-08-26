Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A55FD9D463
	for <lists+linux-nvme@lfdr.de>; Mon, 26 Aug 2019 18:48:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P0Tq4GY4CrBnjbp8YL7xiUGF+UbCk2HFkbm2rDLPvwo=; b=gYIqmFBUQLgxAK
	aC9ow823M4rPOkuQNSi4J50vjLpjz70aJTxqE14Y062fqnpiTXRoE6ja2fcjw5soHooq8IibaxmWR
	1M4r80oDEpf81CmmQHJ4j5xx1PgUAO39Zr5yumpMEoEa/yG4RPmzxlgPysJe7o9jTzKR/PlSNQkNO
	Goo6qUZUICLEotu6cAMmN2vxutZpznSBXQPCiTg/JhlOUkQJPasmhlixJKZ/eeYl7aTGC1SPGuz6z
	K9yj+nRY50B5zodU/DlwW72tDLjP47tMdIgyxdjzrhOQuTtYCM0rrKqHaaYRN2j0rU1i8Mr6HX7qo
	tWMu3tbeVx3oumobSs6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2IAc-0005CX-J1; Mon, 26 Aug 2019 16:48:42 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2IAJ-00050L-3F
 for linux-nvme@lists.infradead.org; Mon, 26 Aug 2019 16:48:24 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 09:48:15 -0700
X-IronPort-AV: E=Sophos;i="5.64,433,1559545200"; d="scan'208";a="174261430"
Received: from caliente.lm.intel.com ([10.232.116.25])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Aug 2019 09:48:15 -0700
From: Edmund Nadolski <edmund.nadolski@intel.com>
To: linux-nvme@lists.infradead.org,
	keith.busch@intel.com
Subject: [PATCH] nvme: avoid race between FLR and command timeout
Date: Mon, 26 Aug 2019 10:47:36 -0600
Message-Id: <20190826164736.4707-1-edmund.nadolski@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_094823_160976_825B69CE 
X-CRM114-Status: GOOD (  11.01  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch syncs queues from nvme_reset_prepare, in order to prevent
a race where nvme_timeout can execute between the reset_prepare and
reset_done. The race results in an extra call to nvme_dev_disable
before nvme_reset_done can complete, which causes controller
de-enumeration (from the timeout thread) with the following dmesg:

[  365.427991] nvme nvme3: I/O 6 QID 0 timeout, reset controller
[  368.434070] nvme 0000:1a:00.0: enabling device (0000 -> 0002)
[  368.434207] nvme nvme3: Removing after probe failure status: -19

The probe fails because the driver can no longer read NVME_REG_CSTS.
The driver has to be re-loaded into order to bring back the controller.

The following triggers the race (timout < normal completion time):

nvme format /dev/${1} --ses=1 --timeout=4000 &
sleep 2
echo 1 > /sys/class/nvme/${1}/device/reset

Note, shutdown_lock is not sufficient to prevent the race, since it
is not held across the reset_prepare/reset_done.

Signed-off-by: Edmund Nadolski <edmund.nadolski@intel.com>
---
 drivers/nvme/host/core.c | 3 +++
 drivers/nvme/host/pci.c  | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 4660505eded9..43c12f8c030f 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3974,6 +3974,9 @@ void nvme_sync_queues(struct nvme_ctrl *ctrl)
 	list_for_each_entry(ns, &ctrl->namespaces, list)
 		blk_sync_queue(ns->queue);
 	up_read(&ctrl->namespaces_rwsem);
+
+	if (ctrl->admin_q)
+		blk_sync_queue(ctrl->admin_q);
 }
 EXPORT_SYMBOL_GPL(nvme_sync_queues);
 
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bf54b128c5a4..845f540f1707 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2786,6 +2786,9 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 static void nvme_reset_prepare(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
+
+	nvme_sync_queues(&dev->ctrl);
+	flush_work(&dev->ctrl.reset_work);
 	nvme_dev_disable(dev, false);
 }
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
