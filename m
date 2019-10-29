Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D194E81DE
	for <lists+linux-nvme@lfdr.de>; Tue, 29 Oct 2019 08:12:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZQxpBEXrnVqayBxc2k4QlqSAIHF5RTzfvoWXR3hNpTk=; b=ddh8wFWAFOh/tb
	UjqiWTirrb+SoZDnLc9oCGDBXv9reeaXoiW5+AFHOWWFE6E7kuuvM24Ou5VXvw64COqBBthAKf9Bn
	UVa9ETP8GxZVmC67X9OF0KbjYicxsGDnnmrHl+dlfzewt1QfjEP9e2zu4Cuh2MtPnSi8S0FycK6N/
	oSA/JC4hptwgMfXxjj1e9P0ySQS8qceSGjVAFJ89Ag7LKMoH18Dqb3aILGUF+OHQRnTBIgrROawYx
	2muZVVtNMs9Ux4putaQPIEfVSOjO9CohrIaqaT+pzJ/0aALwe5hcCrnI5VGzQrrHksd+Pi5dJvfeG
	kS4pA0xs7MZvM6pIhK4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPLg7-0007yP-3o; Tue, 29 Oct 2019 07:12:31 +0000
Received: from [2001:4bb8:18c:c7d:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPLg3-0007yG-SH
 for linux-nvme@lists.infradead.org; Tue, 29 Oct 2019 07:12:28 +0000
From: Christoph Hellwig <hch@lst.de>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: stop using bio_set_op_attrs
Date: Tue, 29 Oct 2019 08:12:23 +0100
Message-Id: <20191029071223.24206-1-hch@lst.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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

bio_set_op_attrs has been long deprecated, replace it with a direct
assignment of the flags to bio->bi_opf.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/target/io-cmd-bdev.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 07e4f8c579d3..b6fca0e421ef 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -149,7 +149,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	struct scatterlist *sg;
 	struct blk_plug plug;
 	sector_t sector;
-	int op, op_flags = 0, i;
+	int op, i;
 
 	if (!nvmet_check_data_len(req, nvmet_rw_len(req)))
 		return;
@@ -160,16 +160,15 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	}
 
 	if (req->cmd->rw.opcode == nvme_cmd_write) {
-		op = REQ_OP_WRITE;
-		op_flags = REQ_SYNC | REQ_IDLE;
+		op = REQ_OP_WRITE | REQ_SYNC | REQ_IDLE;
 		if (req->cmd->rw.control & cpu_to_le16(NVME_RW_FUA))
-			op_flags |= REQ_FUA;
+			op |= REQ_FUA;
 	} else {
 		op = REQ_OP_READ;
 	}
 
 	if (is_pci_p2pdma_page(sg_page(req->sg)))
-		op_flags |= REQ_NOMERGE;
+		op |= REQ_NOMERGE;
 
 	sector = le64_to_cpu(req->cmd->rw.slba);
 	sector <<= (req->ns->blksize_shift - 9);
@@ -184,7 +183,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	bio->bi_iter.bi_sector = sector;
 	bio->bi_private = req;
 	bio->bi_end_io = nvmet_bio_done;
-	bio_set_op_attrs(bio, op, op_flags);
+	bio->bi_opf = op;
 
 	blk_start_plug(&plug);
 	for_each_sg(req->sg, sg, req->sg_cnt, i) {
@@ -195,7 +194,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 			bio = bio_alloc(GFP_KERNEL, min(sg_cnt, BIO_MAX_PAGES));
 			bio_set_dev(bio, req->ns->bdev);
 			bio->bi_iter.bi_sector = sector;
-			bio_set_op_attrs(bio, op, op_flags);
+			bio->bi_opf = op;
 
 			bio_chain(bio, prev);
 			submit_bio(prev);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
