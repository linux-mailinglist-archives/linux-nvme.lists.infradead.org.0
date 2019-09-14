Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2958FB2CEC
	for <lists+linux-nvme@lfdr.de>; Sat, 14 Sep 2019 22:34:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=JQpLzptHmgrz9iL8Pv0RWlIrRGuuWIdma39+vWnEzGY=; b=pKukSjvodzzvlWy5vgBflk2eXw
	ahtHMs+lt5jyHihguzQG5ZZ4fdGq2UVZ8ZrCIxdc1gTuqf4PdQDxOljt9Es98itdyKYj51yAmfgBv
	1QfM/e7lCsn1y0LFcqpQsqpC9eamVyOhN/a1RgbrW2jcVdIn3vjrbu8OzzaDmED8JSvOSGkIPFM9t
	OiAr2tY0F2azbZacYXKyslAFsZZFuCc6MI+HdDXUroNbJlqG22RCEs3O1SzhspomKja7y8a6ncZ0a
	ZvTZ0fTrzq24iKoAlo0DE6kFMD4mw+qcKl+t46WkSUBp/5U2DFENSOkAlf4iB5ld7cdzfLAh4YvkV
	0VExaPBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i9Ekp-0006j8-Ay; Sat, 14 Sep 2019 20:34:47 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9EkS-0006eW-VR
 for linux-nvme@lists.infradead.org; Sat, 14 Sep 2019 20:34:27 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 14 Sep 2019 23:34:14 +0300
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x8EKYDfe002665;
 Sat, 14 Sep 2019 23:34:13 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-block@vger.kernel.org, axboe@kernel.dk, martin.petersen@oracle.com, 
 linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH 2/2] block: centralize PI remapping logic to the block layer
Date: Sat, 14 Sep 2019 23:34:13 +0300
Message-Id: <1568493253-18142-2-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1568493253-18142-1-git-send-email-maxg@mellanox.com>
References: <1568493253-18142-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190914_133425_409634_7B059A63 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Max Gurtovoy <maxg@mellanox.com>, shlomin@mellanox.com,
 israelr@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Currently t10_pi_prepare/t10_pi_complete functions are called during the
NVMe and SCSi layers command preparetion/completion, but their actual
place should be the block layer since T10-PI is a general data integrity
feature that is used by block storage protocols. Introduce .prepare_fn
and .complete_fn callbacks within the integrity profile that each type
can implement according to its needs.

Suggested-by: Christoph Hellwig <hch@lst.de>
Suggested-by: Martin K. Petersen <martin.petersen@oracle.com>
Reviewed-by: Martin K. Petersen <martin.petersen@oracle.com>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---

changes from v5:
 - removed extra new lines
 - use q pointer directly instead of rq->q
 - added Reviewed-by signature

changes from v4:
 - added .prepare_fn and .complete_fn callbacks
 - removed patches 2/3 and 3/3 from v4

changes from v3:
 - fix > 80 liner
 - move the protection_type assignment into nvme_update_disk_info
 - added a comment regarding dps and DIF type values
 - drop redundant externs from t10-pi.h

changes from v2:
 - remove local variable for protection_type
 - remove remapping between NVMe T10 definition to blk definition
 - added patches 2/3 and 3/3
 - remove pi_type from ns structure

changes from v1:
 - seperate from nvme_cleanup command patches
 - introduce blk_integrity_interval_shift to avoid div in fast path
---
 block/blk-core.c          |   5 ++
 block/blk-integrity.c     |  11 ++++
 block/blk-mq.c            |   4 ++
 block/t10-pi.c            | 144 ++++++++++++++++++++++++----------------------
 drivers/md/dm-integrity.c |  10 ++++
 drivers/nvme/host/core.c  |   9 ---
 drivers/scsi/sd.c         |   8 ---
 include/linux/blkdev.h    |   4 ++
 include/linux/t10-pi.h    |  14 -----
 9 files changed, 110 insertions(+), 99 deletions(-)

diff --git a/block/blk-core.c b/block/blk-core.c
index d0cc6e1..e01e1a3 100644
--- a/block/blk-core.c
+++ b/block/blk-core.c
@@ -34,6 +34,7 @@
 #include <linux/ratelimit.h>
 #include <linux/pm_runtime.h>
 #include <linux/blk-cgroup.h>
+#include <linux/t10-pi.h>
 #include <linux/debugfs.h>
 #include <linux/bpf.h>
 
@@ -1405,6 +1406,10 @@ bool blk_update_request(struct request *req, blk_status_t error,
 	if (!req->bio)
 		return false;
 
+	if (blk_integrity_rq(req) && req_op(req) == REQ_OP_READ &&
+	    error == BLK_STS_OK)
+		req->q->integrity.profile->complete_fn(req, nr_bytes);
+
 	if (unlikely(error && !blk_rq_is_passthrough(req) &&
 		     !(req->rq_flags & RQF_QUIET)))
 		print_req_error(req, error, __func__);
diff --git a/block/blk-integrity.c b/block/blk-integrity.c
index ca39b46..ff1070e 100644
--- a/block/blk-integrity.c
+++ b/block/blk-integrity.c
@@ -368,10 +368,21 @@ static blk_status_t blk_integrity_nop_fn(struct blk_integrity_iter *iter)
 	return BLK_STS_OK;
 }
 
+static void blk_integrity_nop_prepare(struct request *rq)
+{
+}
+
+static void blk_integrity_nop_complete(struct request *rq,
+		unsigned int nr_bytes)
+{
+}
+
 static const struct blk_integrity_profile nop_profile = {
 	.name = "nop",
 	.generate_fn = blk_integrity_nop_fn,
 	.verify_fn = blk_integrity_nop_fn,
+	.prepare_fn = blk_integrity_nop_prepare,
+	.complete_fn = blk_integrity_nop_complete,
 };
 
 /**
diff --git a/block/blk-mq.c b/block/blk-mq.c
index 0835f4d..23783b5 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -30,6 +30,7 @@
 #include <trace/events/block.h>
 
 #include <linux/blk-mq.h>
+#include <linux/t10-pi.h>
 #include "blk.h"
 #include "blk-mq.h"
 #include "blk-mq-debugfs.h"
@@ -693,6 +694,9 @@ void blk_mq_start_request(struct request *rq)
 		 */
 		rq->nr_phys_segments++;
 	}
+
+	if (blk_integrity_rq(rq) && req_op(rq) == REQ_OP_WRITE)
+		q->integrity.profile->prepare_fn(rq);
 }
 EXPORT_SYMBOL(blk_mq_start_request);
 
diff --git a/block/t10-pi.c b/block/t10-pi.c
index 7fed587..0c0120a 100644
--- a/block/t10-pi.c
+++ b/block/t10-pi.c
@@ -120,76 +120,22 @@ static blk_status_t t10_pi_type1_verify_ip(struct blk_integrity_iter *iter)
 	return t10_pi_verify(iter, t10_pi_ip_fn, T10_PI_TYPE1_PROTECTION);
 }
 
-static blk_status_t t10_pi_type3_generate_crc(struct blk_integrity_iter *iter)
-{
-	return t10_pi_generate(iter, t10_pi_crc_fn, T10_PI_TYPE3_PROTECTION);
-}
-
-static blk_status_t t10_pi_type3_generate_ip(struct blk_integrity_iter *iter)
-{
-	return t10_pi_generate(iter, t10_pi_ip_fn, T10_PI_TYPE3_PROTECTION);
-}
-
-static blk_status_t t10_pi_type3_verify_crc(struct blk_integrity_iter *iter)
-{
-	return t10_pi_verify(iter, t10_pi_crc_fn, T10_PI_TYPE3_PROTECTION);
-}
-
-static blk_status_t t10_pi_type3_verify_ip(struct blk_integrity_iter *iter)
-{
-	return t10_pi_verify(iter, t10_pi_ip_fn, T10_PI_TYPE3_PROTECTION);
-}
-
-const struct blk_integrity_profile t10_pi_type1_crc = {
-	.name			= "T10-DIF-TYPE1-CRC",
-	.generate_fn		= t10_pi_type1_generate_crc,
-	.verify_fn		= t10_pi_type1_verify_crc,
-};
-EXPORT_SYMBOL(t10_pi_type1_crc);
-
-const struct blk_integrity_profile t10_pi_type1_ip = {
-	.name			= "T10-DIF-TYPE1-IP",
-	.generate_fn		= t10_pi_type1_generate_ip,
-	.verify_fn		= t10_pi_type1_verify_ip,
-};
-EXPORT_SYMBOL(t10_pi_type1_ip);
-
-const struct blk_integrity_profile t10_pi_type3_crc = {
-	.name			= "T10-DIF-TYPE3-CRC",
-	.generate_fn		= t10_pi_type3_generate_crc,
-	.verify_fn		= t10_pi_type3_verify_crc,
-};
-EXPORT_SYMBOL(t10_pi_type3_crc);
-
-const struct blk_integrity_profile t10_pi_type3_ip = {
-	.name			= "T10-DIF-TYPE3-IP",
-	.generate_fn		= t10_pi_type3_generate_ip,
-	.verify_fn		= t10_pi_type3_verify_ip,
-};
-EXPORT_SYMBOL(t10_pi_type3_ip);
-
 /**
- * t10_pi_prepare - prepare PI prior submitting request to device
+ * t10_pi_type1_prepare - prepare PI prior submitting request to device
  * @rq:              request with PI that should be prepared
- * @protection_type: PI type (Type 1/Type 2/Type 3)
  *
  * For Type 1/Type 2, the virtual start sector is the one that was
  * originally submitted by the block layer for the ref_tag usage. Due to
  * partitioning, MD/DM cloning, etc. the actual physical start sector is
  * likely to be different. Remap protection information to match the
  * physical LBA.
- *
- * Type 3 does not have a reference tag so no remapping is required.
  */
-void t10_pi_prepare(struct request *rq, u8 protection_type)
+static void t10_pi_type1_prepare(struct request *rq)
 {
 	const int tuple_sz = rq->q->integrity.tuple_size;
 	u32 ref_tag = t10_pi_ref_tag(rq);
 	struct bio *bio;
 
-	if (protection_type == T10_PI_TYPE3_PROTECTION)
-		return;
-
 	__rq_for_each_bio(bio, rq) {
 		struct bio_integrity_payload *bip = bio_integrity(bio);
 		u32 virt = bip_get_seed(bip) & 0xffffffff;
@@ -222,13 +168,11 @@ void t10_pi_prepare(struct request *rq, u8 protection_type)
 		bip->bip_flags |= BIP_MAPPED_INTEGRITY;
 	}
 }
-EXPORT_SYMBOL(t10_pi_prepare);
 
 /**
- * t10_pi_complete - prepare PI prior returning request to the block layer
+ * t10_pi_type1_complete - prepare PI prior returning request to the blk layer
  * @rq:              request with PI that should be prepared
- * @protection_type: PI type (Type 1/Type 2/Type 3)
- * @intervals:       total elements to prepare
+ * @nr_bytes:        total bytes to prepare
  *
  * For Type 1/Type 2, the virtual start sector is the one that was
  * originally submitted by the block layer for the ref_tag usage. Due to
@@ -236,19 +180,14 @@ void t10_pi_prepare(struct request *rq, u8 protection_type)
  * likely to be different. Since the physical start sector was submitted
  * to the device, we should remap it back to virtual values expected by the
  * block layer.
- *
- * Type 3 does not have a reference tag so no remapping is required.
  */
-void t10_pi_complete(struct request *rq, u8 protection_type,
-		     unsigned int intervals)
+static void t10_pi_type1_complete(struct request *rq, unsigned int nr_bytes)
 {
+	unsigned intervals = nr_bytes >> rq->q->integrity.interval_exp;
 	const int tuple_sz = rq->q->integrity.tuple_size;
 	u32 ref_tag = t10_pi_ref_tag(rq);
 	struct bio *bio;
 
-	if (protection_type == T10_PI_TYPE3_PROTECTION)
-		return;
-
 	__rq_for_each_bio(bio, rq) {
 		struct bio_integrity_payload *bip = bio_integrity(bio);
 		u32 virt = bip_get_seed(bip) & 0xffffffff;
@@ -276,4 +215,73 @@ void t10_pi_complete(struct request *rq, u8 protection_type,
 		}
 	}
 }
-EXPORT_SYMBOL(t10_pi_complete);
+
+static blk_status_t t10_pi_type3_generate_crc(struct blk_integrity_iter *iter)
+{
+	return t10_pi_generate(iter, t10_pi_crc_fn, T10_PI_TYPE3_PROTECTION);
+}
+
+static blk_status_t t10_pi_type3_generate_ip(struct blk_integrity_iter *iter)
+{
+	return t10_pi_generate(iter, t10_pi_ip_fn, T10_PI_TYPE3_PROTECTION);
+}
+
+static blk_status_t t10_pi_type3_verify_crc(struct blk_integrity_iter *iter)
+{
+	return t10_pi_verify(iter, t10_pi_crc_fn, T10_PI_TYPE3_PROTECTION);
+}
+
+static blk_status_t t10_pi_type3_verify_ip(struct blk_integrity_iter *iter)
+{
+	return t10_pi_verify(iter, t10_pi_ip_fn, T10_PI_TYPE3_PROTECTION);
+}
+
+/**
+ * Type 3 does not have a reference tag so no remapping is required.
+ */
+static void t10_pi_type3_prepare(struct request *rq)
+{
+}
+
+/**
+ * Type 3 does not have a reference tag so no remapping is required.
+ */
+static void t10_pi_type3_complete(struct request *rq, unsigned int nr_bytes)
+{
+}
+
+const struct blk_integrity_profile t10_pi_type1_crc = {
+	.name			= "T10-DIF-TYPE1-CRC",
+	.generate_fn		= t10_pi_type1_generate_crc,
+	.verify_fn		= t10_pi_type1_verify_crc,
+	.prepare_fn		= t10_pi_type1_prepare,
+	.complete_fn		= t10_pi_type1_complete,
+};
+EXPORT_SYMBOL(t10_pi_type1_crc);
+
+const struct blk_integrity_profile t10_pi_type1_ip = {
+	.name			= "T10-DIF-TYPE1-IP",
+	.generate_fn		= t10_pi_type1_generate_ip,
+	.verify_fn		= t10_pi_type1_verify_ip,
+	.prepare_fn		= t10_pi_type1_prepare,
+	.complete_fn		= t10_pi_type1_complete,
+};
+EXPORT_SYMBOL(t10_pi_type1_ip);
+
+const struct blk_integrity_profile t10_pi_type3_crc = {
+	.name			= "T10-DIF-TYPE3-CRC",
+	.generate_fn		= t10_pi_type3_generate_crc,
+	.verify_fn		= t10_pi_type3_verify_crc,
+	.prepare_fn		= t10_pi_type3_prepare,
+	.complete_fn		= t10_pi_type3_complete,
+};
+EXPORT_SYMBOL(t10_pi_type3_crc);
+
+const struct blk_integrity_profile t10_pi_type3_ip = {
+	.name			= "T10-DIF-TYPE3-IP",
+	.generate_fn		= t10_pi_type3_generate_ip,
+	.verify_fn		= t10_pi_type3_verify_ip,
+	.prepare_fn		= t10_pi_type3_prepare,
+	.complete_fn		= t10_pi_type3_complete,
+};
+EXPORT_SYMBOL(t10_pi_type3_ip);
diff --git a/drivers/md/dm-integrity.c b/drivers/md/dm-integrity.c
index 9118ab8..dab4446 100644
--- a/drivers/md/dm-integrity.c
+++ b/drivers/md/dm-integrity.c
@@ -345,6 +345,14 @@ static void __DEBUG_bytes(__u8 *bytes, size_t len, const char *msg, ...)
 #define DEBUG_bytes(bytes, len, msg, ...)	do { } while (0)
 #endif
 
+static void dm_integrity_prepare(struct request *rq)
+{
+}
+
+static void dm_integrity_complete(struct request *rq, unsigned int nr_bytes)
+{
+}
+
 /*
  * DM Integrity profile, protection is performed layer above (dm-crypt)
  */
@@ -352,6 +360,8 @@ static void __DEBUG_bytes(__u8 *bytes, size_t len, const char *msg, ...)
 	.name			= "DM-DIF-EXT-TAG",
 	.generate_fn		= NULL,
 	.verify_fn		= NULL,
+	.prepare_fn		= dm_integrity_prepare,
+	.complete_fn		= dm_integrity_complete,
 };
 
 static void dm_integrity_map_continue(struct dm_integrity_io *dio, bool from_map);
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d3d6b7b..5f39408 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -659,8 +659,6 @@ static inline blk_status_t nvme_setup_rw(struct nvme_ns *ns,
 			if (WARN_ON_ONCE(!nvme_ns_has_pi(ns)))
 				return BLK_STS_NOTSUPP;
 			control |= NVME_RW_PRINFO_PRACT;
-		} else if (req_op(req) == REQ_OP_WRITE) {
-			t10_pi_prepare(req, ns->pi_type);
 		}
 
 		switch (ns->pi_type) {
@@ -683,13 +681,6 @@ static inline blk_status_t nvme_setup_rw(struct nvme_ns *ns,
 
 void nvme_cleanup_cmd(struct request *req)
 {
-	if (blk_integrity_rq(req) && req_op(req) == REQ_OP_READ &&
-	    nvme_req(req)->status == 0) {
-		struct nvme_ns *ns = req->rq_disk->private_data;
-
-		t10_pi_complete(req, ns->pi_type,
-				blk_rq_bytes(req) >> ns->lba_shift);
-	}
 	if (req->rq_flags & RQF_SPECIAL_PAYLOAD) {
 		struct nvme_ns *ns = req->rq_disk->private_data;
 		struct page *page = req->special_vec.bv_page;
diff --git a/drivers/scsi/sd.c b/drivers/scsi/sd.c
index 149d406..2932d49 100644
--- a/drivers/scsi/sd.c
+++ b/drivers/scsi/sd.c
@@ -1211,9 +1211,6 @@ static blk_status_t sd_setup_read_write_cmnd(struct scsi_cmnd *cmd)
 	dix = scsi_prot_sg_count(cmd);
 	dif = scsi_host_dif_capable(cmd->device->host, sdkp->protection_type);
 
-	if (write && dix)
-		t10_pi_prepare(cmd->request, sdkp->protection_type);
-
 	if (dif || dix)
 		protect = sd_setup_protect_cmnd(cmd, dix, dif);
 	else
@@ -2051,11 +2048,6 @@ static int sd_done(struct scsi_cmnd *SCpnt)
 					   "sd_done: completed %d of %d bytes\n",
 					   good_bytes, scsi_bufflen(SCpnt)));
 
-	if (rq_data_dir(SCpnt->request) == READ && scsi_prot_sg_count(SCpnt) &&
-	    good_bytes)
-		t10_pi_complete(SCpnt->request, sdkp->protection_type,
-				good_bytes / scsi_prot_interval(SCpnt));
-
 	return good_bytes;
 }
 
diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index 1ef375d..d73dc68 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -1497,10 +1497,14 @@ struct blk_integrity_iter {
 };
 
 typedef blk_status_t (integrity_processing_fn) (struct blk_integrity_iter *);
+typedef void (integrity_prepare_fn) (struct request *);
+typedef void (integrity_complete_fn) (struct request *, unsigned int);
 
 struct blk_integrity_profile {
 	integrity_processing_fn		*generate_fn;
 	integrity_processing_fn		*verify_fn;
+	integrity_prepare_fn		*prepare_fn;
+	integrity_complete_fn		*complete_fn;
 	const char			*name;
 };
 
diff --git a/include/linux/t10-pi.h b/include/linux/t10-pi.h
index 3e2a80c..96305a6 100644
--- a/include/linux/t10-pi.h
+++ b/include/linux/t10-pi.h
@@ -53,18 +53,4 @@ static inline u32 t10_pi_ref_tag(struct request *rq)
 extern const struct blk_integrity_profile t10_pi_type3_crc;
 extern const struct blk_integrity_profile t10_pi_type3_ip;
 
-#ifdef CONFIG_BLK_DEV_INTEGRITY
-extern void t10_pi_prepare(struct request *rq, u8 protection_type);
-extern void t10_pi_complete(struct request *rq, u8 protection_type,
-			    unsigned int intervals);
-#else
-static inline void t10_pi_complete(struct request *rq, u8 protection_type,
-				   unsigned int intervals)
-{
-}
-static inline void t10_pi_prepare(struct request *rq, u8 protection_type)
-{
-}
-#endif
-
 #endif
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
