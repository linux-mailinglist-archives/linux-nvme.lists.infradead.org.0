Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 178441C1292
	for <lists+linux-nvme@lfdr.de>; Fri,  1 May 2020 15:08:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=GSVDnDw3L8V81Ay7RUFD+2x2eFDLCbnkROBqy3VTTdQ=; b=MiDwk483z3q+Fa
	YHbTk/BMpXX+DoXxb0BnjtxPQ+QUwnWrtN5FGoiZy1s3gi9J6djAXUq9YJP36PROe7iNevgjvwSvF
	7smc2kpjb5EhGnzH8/j1NR6QJnXEY1QfX0GX1hZPMQ33FWF0tFHtwao/X8ZZQyqAh16HtGf+k4PYX
	V/uqx6Nkc5U/qcm7XGOJwya9eGDc2dmXCF8SQfqbS4z3OzZMhqSOMD+Q3njeZbWw94zouxFcLt8cc
	LhhCZYspFvihVAk9LBVSoOXoVVKPwGbkoeym+oHTP3Kpqq6faldGrATqd6TbBG6w1sOBvQ+phh4At
	ZacnlHk+DetP97ojLzUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUVP5-0006ZU-CP; Fri, 01 May 2020 13:08:31 +0000
Received: from [2001:4bb8:18c:10bd:c70:4a89:bc61:2] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUVP2-0006Z6-1N; Fri, 01 May 2020 13:08:28 +0000
From: Christoph Hellwig <hch@lst.de>
To: kbusch@kernel.org,
	sagi@grimberg.me
Subject: [PATCH] nvme-multipath: stop using ->queuedata
Date: Fri,  1 May 2020 15:08:25 +0200
Message-Id: <20200501130825.2627529-1-hch@lst.de>
X-Mailer: git-send-email 2.26.2
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
Cc: linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme-multipath already uses the gendisk private data, not need to
also set up the request_queue queuedata and use it in one place only.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/multipath.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 9f2844935fdfa..5f5537d0a024f 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -294,7 +294,7 @@ static bool nvme_available_path(struct nvme_ns_head *head)
 static blk_qc_t nvme_ns_head_make_request(struct request_queue *q,
 		struct bio *bio)
 {
-	struct nvme_ns_head *head = q->queuedata;
+	struct nvme_ns_head *head = bio->bi_disk->private_data;
 	struct device *dev = disk_to_dev(head->disk);
 	struct nvme_ns *ns;
 	blk_qc_t ret = BLK_QC_T_NONE;
@@ -378,7 +378,6 @@ int nvme_mpath_alloc_disk(struct nvme_ctrl *ctrl, struct nvme_ns_head *head)
 	q = blk_alloc_queue(nvme_ns_head_make_request, ctrl->numa_node);
 	if (!q)
 		goto out;
-	q->queuedata = head;
 	blk_queue_flag_set(QUEUE_FLAG_NONROT, q);
 	/* set to a default value for 512 until disk is validated */
 	blk_queue_logical_block_size(q, 512);
-- 
2.26.2


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
