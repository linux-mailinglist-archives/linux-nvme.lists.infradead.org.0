Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04438131317
	for <lists+linux-nvme@lfdr.de>; Mon,  6 Jan 2020 14:40:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V0LNnSiD7cXuFEVZSAV9GKbAH7lkK4iUSg9HIlrra90=; b=KHDF+kZbmgP/de
	co0I5X/ZTzk3qEoYE98rHB7KyZgBzKJh6PVDlyxy3rQwaPu5sSwnYZ5p/muTVy/MUBNo2QEOKY5O6
	TSkOyhK6XxuIz9QJcyfk46MjLmmMgIr08SVVZeyE/AsdxeSiU2pwvtj2imMQw3QetNtpJrY5AksQ7
	H9dU3WZgOCmxQ8chAi/mD87E+6w5LnIXVkUPKlTlzE4yazKkg3wEcGTGPXrDrkRLdh/XN/TbXn444
	nPFhJMRbT7EQkqPTyxGFHtANKkt4eZSlehJntB3fyP6u96oHb5eBZAl+ATklyG/tT1HW8dNKVfxIP
	TwzmkEZTvh+uV+284d+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioScO-0007hE-Ag; Mon, 06 Jan 2020 13:40:28 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSZp-0005cc-Pr
 for linux-nvme@lists.infradead.org; Mon, 06 Jan 2020 13:37:59 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 6 Jan 2020 15:37:38 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 006DbaFP029740;
 Mon, 6 Jan 2020 15:37:38 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me, martin.petersen@oracle.com
Subject: [PATCH 14/15] nvmet: Add metadata support for block devices
Date: Mon,  6 Jan 2020 15:37:35 +0200
Message-Id: <20200106133736.123038-16-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200106133736.123038-1-maxg@mellanox.com>
References: <20200106133736.123038-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_053750_263612_8C899F92 
X-CRM114-Status: GOOD (  11.82  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, oren@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

Create a block IO request for the metadata from the protection SG list.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/io-cmd-bdev.c | 87 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 85 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 9f99b9d..1d84e71 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -164,6 +164,61 @@ static void nvmet_bio_done(struct bio *bio)
 		bio_put(bio);
 }
 
+#ifdef CONFIG_BLK_DEV_INTEGRITY
+static int nvmet_bdev_alloc_bip(struct nvmet_req *req, struct bio *bio,
+				struct sg_mapping_iter *miter)
+{
+	struct blk_integrity *bi;
+	struct bio_integrity_payload *bip;
+	struct block_device *bdev = req->ns->bdev;
+	int rc;
+	size_t resid, len;
+
+	bi = bdev_get_integrity(bdev);
+	if (unlikely(!bi)) {
+		pr_err("Unable to locate bio_integrity\n");
+		return -ENODEV;
+	}
+
+	bip = bio_integrity_alloc(bio, GFP_NOIO,
+			min_t(unsigned int, req->prot_sg_cnt, BIO_MAX_PAGES));
+	if (IS_ERR(bip)) {
+		pr_err("Unable to allocate bio_integrity_payload\n");
+		return PTR_ERR(bip);
+	}
+
+	bip->bip_iter.bi_size = bio_integrity_bytes(bi, bio_sectors(bio));
+	/* virtual start sector must be in integrity interval units */
+	bip_set_seed(bip, bio->bi_iter.bi_sector >>
+				  (bi->interval_exp - SECTOR_SHIFT));
+
+	resid = bip->bip_iter.bi_size;
+	while (resid > 0 && sg_miter_next(miter)) {
+		len = min_t(size_t, miter->length, resid);
+		rc = bio_integrity_add_page(bio, miter->page, len,
+					    offset_in_page(miter->addr));
+		if (unlikely(rc != len)) {
+			pr_err("bio_integrity_add_page() failed; %d\n", rc);
+			sg_miter_stop(miter);
+			return -ENOMEM;
+		}
+
+		resid -= len;
+		if (len < miter->length)
+			miter->consumed -= miter->length - len;
+	}
+	sg_miter_stop(miter);
+
+	return 0;
+}
+#else
+static int nvmet_bdev_alloc_bip(struct nvmet_req *req, struct bio *bio,
+				struct sg_mapping_iter *miter)
+{
+	return 0;
+}
+#endif /* CONFIG_BLK_DEV_INTEGRITY */
+
 static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 {
 	int sg_cnt = req->sg_cnt;
@@ -171,9 +226,11 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	struct scatterlist *sg;
 	struct blk_plug plug;
 	sector_t sector;
-	int op, i;
+	int op, i, rc;
+	struct sg_mapping_iter prot_miter;
 
-	if (!nvmet_check_transfer_len(req, nvmet_rw_data_len(req)))
+	if (!nvmet_check_transfer_len(req,
+				      nvmet_rw_data_len(req) + req->prot_len))
 		return;
 
 	if (!req->sg_cnt) {
@@ -208,11 +265,25 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	bio->bi_opf = op;
 
 	blk_start_plug(&plug);
+	if (req->use_pi)
+		sg_miter_start(&prot_miter, req->prot_sg, req->prot_sg_cnt,
+			       op == REQ_OP_READ ? SG_MITER_FROM_SG :
+						   SG_MITER_TO_SG);
+
 	for_each_sg(req->sg, sg, req->sg_cnt, i) {
 		while (bio_add_page(bio, sg_page(sg), sg->length, sg->offset)
 				!= sg->length) {
 			struct bio *prev = bio;
 
+			if (req->use_pi) {
+				rc = nvmet_bdev_alloc_bip(req, bio,
+							  &prot_miter);
+				if (unlikely(rc)) {
+					bio_io_error(bio);
+					return;
+				}
+			}
+
 			bio = bio_alloc(GFP_KERNEL, min(sg_cnt, BIO_MAX_PAGES));
 			bio_set_dev(bio, req->ns->bdev);
 			bio->bi_iter.bi_sector = sector;
@@ -226,6 +297,14 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 		sg_cnt--;
 	}
 
+	if (req->use_pi) {
+		rc = nvmet_bdev_alloc_bip(req, bio, &prot_miter);
+		if (unlikely(rc)) {
+			bio_io_error(bio);
+			return;
+		}
+	}
+
 	submit_bio(bio);
 	blk_finish_plug(&plug);
 }
@@ -353,6 +432,10 @@ u16 nvmet_bdev_parse_io_cmd(struct nvmet_req *req)
 	case nvme_cmd_read:
 	case nvme_cmd_write:
 		req->execute = nvmet_bdev_execute_rw;
+		if (req->sq->ctrl->pi_support && nvmet_ns_has_pi(req->ns)) {
+			req->use_pi = true;
+			req->prot_len = nvmet_rw_prot_len(req);
+		}
 		return 0;
 	case nvme_cmd_flush:
 		req->execute = nvmet_bdev_execute_flush;
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
