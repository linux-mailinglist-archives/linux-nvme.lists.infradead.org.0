Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 76521188A0
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 13:05:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CbpLHghTZqk3HsB2gRjKWmeJ0f1M805W7q3MJXF/whQ=; b=HBdcUx/2tMAMdj
	518iZq93yRlwU+h9SS1fKrlKTXqe1dfbW/BPtixvErvL+X+zXGS3UdxnU4cpAnAfZMpb9ZCW+POR3
	+Gn79+tPVhTkQlPs0v85SAD++jAFXqlzf5WEdsXVCtNvkSv5qbDMsxF/q2W2rbyFMtadYKHCZA0xR
	oDqOUMVKcPSxoZbFlXCsHI1/jDTcv3v44W79yxgeeqCmbs5wC6x+1GvXGU2a9iC9mbWZYqwiU6RAk
	Rc3807B+j1FeIS6PEv4p5RKO/L30mqcb3KuxM2zhk3L5e9NAmdWfgtNUo9960CyCOkb1uwxRjxBkh
	XbK78wcqjiUPY+qq5oeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOgr8-0005AU-PW; Thu, 09 May 2019 11:04:54 +0000
Received: from clnet-p19-102.ikbnet.co.at ([83.175.77.102] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOgr3-0005AG-US; Thu, 09 May 2019 11:04:50 +0000
From: Christoph Hellwig <hch@lst.de>
To: keith.busch@intel.com,
	sagi@grimberg.me,
	axboe@fb.com
Subject: [PATCH] nvme-pci: fix single segment detection
Date: Thu,  9 May 2019 13:04:09 +0200
Message-Id: <20190509110409.19647-1-hch@lst.de>
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

blk_rq_nr_phys_segments isn't exactly accurate at the request/bio
level, so work around that fact with a few crude sanity checks.  To
be fixed for real in the block layer soon.

Fixes: 297910571f08 ("nvme-pci: optimize mapping single segment requests using SGLs")
Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/pci.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 2a8708c9ac18..9a4253be2723 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -824,7 +824,15 @@ static blk_status_t nvme_map_data(struct nvme_dev *dev, struct request *req,
 	blk_status_t ret = BLK_STS_RESOURCE;
 	int nr_mapped;
 
-	if (blk_rq_nr_phys_segments(req) == 1) {
+	/*
+	 * Crude hack to work around the block layer accounting for the fact
+	 * that the SG mapping can merge multiple physically contigous segments
+	 * in blk_rq_nr_phys_segments() despite the fact that not everyone is
+	 * mapping the request to a scatterlist.  To be fixed for real in the
+	 * block layer eventually..
+	 */
+	if (blk_rq_nr_phys_segments(req) == 1 &&
+	    !req->bio->bi_next && req->bio->bi_vcnt == 1) {
 		struct bio_vec bv = req_bvec(req);
 
 		if (!is_pci_p2pdma_page(bv.bv_page)) {
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
