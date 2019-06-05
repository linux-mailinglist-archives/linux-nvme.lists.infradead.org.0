Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A30413641A
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:10:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FY3OmRJwMnWiZMh0L2zJIzffSBDBkhJ5pQI8Y377DVY=; b=OvqgF5qS3koC7N
	mvX7FNmoJpFtenCrb8s9ONLgcMKZOGDzqdrTlQIBD0NbtZyeeVVeCPqsdIPuYrO6PdpO6MyBBgiq1
	mze8EqFV4WJLgSzyEDXtV1YfqlVPUKKbYiabwo3NTILDvGUy4BZxZWNTJyXAw55Q+I7WHHHJeZsU3
	V3HK7mQaA4H16PKVPBYbGmjdhCdfumZb3hdrJUheWOuwTqykEvizZXW7DdS/smqYOz4xxWapdBOYP
	mo1ImgqJvkZQVRu4leMwFxHn/hUVLnZ/3lEkvk5RpWxlRDsA7HXRgXvxmyXjbqicwN32/R8r+oCNa
	NzWA6LF106CGuZEB5nHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbIT-0006qj-Ca; Wed, 05 Jun 2019 19:10:05 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbHh-0005zB-51; Wed, 05 Jun 2019 19:09:17 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH 10/13] megaraid_sas: set virt_boundary_mask in the scsi host
Date: Wed,  5 Jun 2019 21:08:33 +0200
Message-Id: <20190605190836.32354-11-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
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
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, Sebastian Ott <sebott@linux.ibm.com>,
 linux-rdma@vger.kernel.org, Oliver Neukum <oneukum@suse.com>,
 linux-mmc@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>, linux-scsi@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, MPT-FusionLinux.pdl@broadcom.com,
 megaraidlinux.pdl@broadcom.com, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This ensures all proper DMA layer handling is taken care of by the
SCSI midlayer.  Note that the effect is global, as the IOMMU merging
is based off a paramters in struct device.  We could still turn if off
if no PCIe devices are present, but I don't know how to find that out.

Also remove the bogus nomerges flag, merges do take the virt_boundary
into account.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/megaraid/megaraid_sas_base.c   | 46 +++++----------------
 drivers/scsi/megaraid/megaraid_sas_fusion.c |  7 ++++
 2 files changed, 18 insertions(+), 35 deletions(-)

diff --git a/drivers/scsi/megaraid/megaraid_sas_base.c b/drivers/scsi/megaraid/megaraid_sas_base.c
index 3dd1df472dc6..20b3b3f8bc16 100644
--- a/drivers/scsi/megaraid/megaraid_sas_base.c
+++ b/drivers/scsi/megaraid/megaraid_sas_base.c
@@ -1870,39 +1870,6 @@ void megasas_set_dynamic_target_properties(struct scsi_device *sdev,
 	}
 }
 
-/*
- * megasas_set_nvme_device_properties -
- * set nomerges=2
- * set virtual page boundary = 4K (current mr_nvme_pg_size is 4K).
- * set maximum io transfer = MDTS of NVME device provided by MR firmware.
- *
- * MR firmware provides value in KB. Caller of this function converts
- * kb into bytes.
- *
- * e.a MDTS=5 means 2^5 * nvme page size. (In case of 4K page size,
- * MR firmware provides value 128 as (32 * 4K) = 128K.
- *
- * @sdev:				scsi device
- * @max_io_size:				maximum io transfer size
- *
- */
-static inline void
-megasas_set_nvme_device_properties(struct scsi_device *sdev, u32 max_io_size)
-{
-	struct megasas_instance *instance;
-	u32 mr_nvme_pg_size;
-
-	instance = (struct megasas_instance *)sdev->host->hostdata;
-	mr_nvme_pg_size = max_t(u32, instance->nvme_page_size,
-				MR_DEFAULT_NVME_PAGE_SIZE);
-
-	blk_queue_max_hw_sectors(sdev->request_queue, (max_io_size / 512));
-
-	blk_queue_flag_set(QUEUE_FLAG_NOMERGES, sdev->request_queue);
-	blk_queue_virt_boundary(sdev->request_queue, mr_nvme_pg_size - 1);
-}
-
-
 /*
  * megasas_set_static_target_properties -
  * Device property set by driver are static and it is not required to be
@@ -1961,8 +1928,10 @@ static void megasas_set_static_target_properties(struct scsi_device *sdev,
 		max_io_size_kb = le32_to_cpu(instance->tgt_prop->max_io_size_kb);
 	}
 
-	if (instance->nvme_page_size && max_io_size_kb)
-		megasas_set_nvme_device_properties(sdev, (max_io_size_kb << 10));
+	if (instance->nvme_page_size && max_io_size_kb) {
+		blk_queue_max_hw_sectors(sdev->request_queue,
+				(max_io_size_kb << 10) / 512);
+	}
 
 	scsi_change_queue_depth(sdev, device_qd);
 
@@ -6258,6 +6227,7 @@ static int megasas_start_aen(struct megasas_instance *instance)
 static int megasas_io_attach(struct megasas_instance *instance)
 {
 	struct Scsi_Host *host = instance->host;
+	u32 nvme_page_size = instance->nvme_page_size;
 
 	/*
 	 * Export parameters required by SCSI mid-layer
@@ -6298,6 +6268,12 @@ static int megasas_io_attach(struct megasas_instance *instance)
 	host->max_lun = MEGASAS_MAX_LUN;
 	host->max_cmd_len = 16;
 
+	if (nvme_page_size) {
+		if (nvme_page_size > MR_DEFAULT_NVME_PAGE_SIZE)
+			nvme_page_size = MR_DEFAULT_NVME_PAGE_SIZE;
+		host->virt_boundary_mask = nvme_page_size - 1;
+	}
+
 	/*
 	 * Notify the mid-layer about the new controller
 	 */
diff --git a/drivers/scsi/megaraid/megaraid_sas_fusion.c b/drivers/scsi/megaraid/megaraid_sas_fusion.c
index 4dfa0685a86c..a9ff3a648e7b 100644
--- a/drivers/scsi/megaraid/megaraid_sas_fusion.c
+++ b/drivers/scsi/megaraid/megaraid_sas_fusion.c
@@ -1935,6 +1935,13 @@ megasas_is_prp_possible(struct megasas_instance *instance,
 			build_prp = true;
 	}
 
+/*
+ * XXX: All the code following should go away.  The block layer guarantees
+ * merging according to the virt boundary.  And while we might have had some
+ * issues with that in the past we fixed them, and any new bug should be fixed
+ * in the core code as well.
+ */
+
 /*
  * Below code detects gaps/holes in IO data buffers.
  * What does holes/gaps mean?
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
