Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F181FD08
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 17:39:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ca3swaiExLVNbx0/goEchiPsmr6198zkqi9MwKN3ldg=; b=gVd44W+TKBfU0z
	21uP0hmDgXJYVffvHvphWfx6XgrzhShPSvQBQTwUV4tGdqDLE48oFXqNIb1uLgGiLx58UUDCdyMQy
	q47ppvmtq9V0bjgge5xyZw9RnOmTEEHNlIAoBqOo8W4YLqGUgwiyTDEYhl3E/evWMvcIp7fnTEuFo
	Jpr3JN5C5z7gFH3ppufXxib63OvCn1d9kLPpts4mwj+tEnZPIjr/4iRkWEnyzs4OkhHVbt+VYrzOa
	4vc0fzU+IFzRJqo0kjYwE8W/HsoaJU7qNHkhO/RwskcOZt2oMEUnKYquIPGNDCwPqm+7oQgkHE49H
	YNTukCjUWInoVkGcqKWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUqg-0001Nd-LM; Tue, 30 Apr 2019 15:39:14 +0000
Received: from adsl-173-228-226-134.prtc.net ([173.228.226.134] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUqc-0001NP-VY; Tue, 30 Apr 2019 15:39:11 +0000
From: Christoph Hellwig <hch@lst.de>
To: keith.busch@intel.com,
	sagi@grimberg.me
Subject: [PATCH 1/2] nvme: move command size checks to the core
Date: Tue, 30 Apr 2019 11:38:32 -0400
Message-Id: <20190430153833.9011-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Most command aren't PCIe specific, so move the size checking for them
to core.c

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/core.c | 27 +++++++++++++++++++++++++++
 drivers/nvme/host/pci.c  | 31 +++----------------------------
 2 files changed, 30 insertions(+), 28 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 3dd043aa6d1f..e970c5adee28 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3879,10 +3879,37 @@ void nvme_start_queues(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_start_queues);
 
+/*
+ * Check we didn't inadvertently grow the command structure sizes:
+ */
+static inline void _nvme_check_size(void)
+{
+	BUILD_BUG_ON(sizeof(struct nvme_common_command) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_rw_command) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_identify) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_features) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_download_firmware) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_format_cmd) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_dsm_cmd) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_write_zeroes_cmd) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_abort_cmd) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_get_log_page_command) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_command) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_id_ctrl) != NVME_IDENTIFY_DATA_SIZE);
+	BUILD_BUG_ON(sizeof(struct nvme_id_ns) != NVME_IDENTIFY_DATA_SIZE);
+	BUILD_BUG_ON(sizeof(struct nvme_lba_range_type) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_smart_log) != 512);
+	BUILD_BUG_ON(sizeof(struct nvme_dbbuf) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_directive_cmd) != 64);
+}
+
+
 int __init nvme_core_init(void)
 {
 	int result = -ENOMEM;
 
+	_nvme_check_size();
+
 	nvme_wq = alloc_workqueue("nvme-wq",
 			WQ_UNBOUND | WQ_MEM_RECLAIM | WQ_SYSFS, 0);
 	if (!nvme_wq)
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 9b02c4576591..1c4da31a97c2 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -226,33 +226,6 @@ struct nvme_iod {
 	struct scatterlist *sg;
 };
 
-/*
- * Check we didin't inadvertently grow the command struct
- */
-static inline void _nvme_check_size(void)
-{
-	BUILD_BUG_ON(sizeof(struct nvme_common_command) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_rw_command) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_identify) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_create_cq) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_create_sq) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_delete_queue) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_features) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_download_firmware) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_format_cmd) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_dsm_cmd) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_write_zeroes_cmd) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_abort_cmd) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_get_log_page_command) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_command) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_id_ctrl) != NVME_IDENTIFY_DATA_SIZE);
-	BUILD_BUG_ON(sizeof(struct nvme_id_ns) != NVME_IDENTIFY_DATA_SIZE);
-	BUILD_BUG_ON(sizeof(struct nvme_lba_range_type) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_smart_log) != 512);
-	BUILD_BUG_ON(sizeof(struct nvme_dbbuf) != 64);
-	BUILD_BUG_ON(sizeof(struct nvme_directive_cmd) != 64);
-}
-
 static unsigned int max_io_queues(void)
 {
 	return num_possible_cpus() + write_queues + poll_queues;
@@ -2981,6 +2954,9 @@ static struct pci_driver nvme_driver = {
 
 static int __init nvme_init(void)
 {
+	BUILD_BUG_ON(sizeof(struct nvme_create_cq) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_create_sq) != 64);
+	BUILD_BUG_ON(sizeof(struct nvme_delete_queue) != 64);
 	BUILD_BUG_ON(IRQ_AFFINITY_MAX_SETS < 2);
 	return pci_register_driver(&nvme_driver);
 }
@@ -2989,7 +2965,6 @@ static void __exit nvme_exit(void)
 {
 	pci_unregister_driver(&nvme_driver);
 	flush_workqueue(nvme_wq);
-	_nvme_check_size();
 }
 
 MODULE_AUTHOR("Matthew Wilcox <willy@linux.intel.com>");
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
