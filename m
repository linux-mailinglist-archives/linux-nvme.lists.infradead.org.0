Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 728914D30A
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:13:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=v5jkAKsvfCxjwy3+RUXYaqYZJ7C8ddCJoc/9f4BYUKI=; b=PiIBnd7CHdQJFV
	8bkghGDy1Rnr0/tJEdXBReTmFbaTs8Fc1d9XIKphqZYRMMfQj43JN5cG9O5x0yPxehkRq+p2YBsv2
	80gGmATROA31wjrru6t66rpZe5nUyQAgt1fCepVeBbeji2jTQhwVfo0CVyw7/zVY/lx2bWrRXoZIl
	f2GMfvE1z7Rf8xwusz7lxwLIIYWhc91DccBchdwrClBd8Y9Q66OmchvZyWx4nzPl+aTE9AQYeYJ5f
	4t3hBmIvv9E1xTOuT0aoEEvj3t33xJk/y6+nFI0dEuNPCATPiYJ6MFV85+7pNnoDCuo7kqLWOEwpy
	98B/jvx4cUYiWp91As8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzgp-0004xs-M6; Thu, 20 Jun 2019 16:13:31 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgG-0004f2-2U
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:12:57 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046U-6A; Thu, 20 Jun 2019 10:12:53 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg5-0005wW-1p; Thu, 20 Jun 2019 10:12:45 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:25 -0600
Message-Id: <20190620161240.22738-14-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190620161240.22738-1-logang@deltatee.com>
References: <20190620161240.22738-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org, axboe@kernel.dk, hch@lst.de, bhelgaas@google.com,
 dan.j.williams@intel.com, sagi@grimberg.me, kbusch@kernel.org, jgg@ziepe.ca,
 sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [RFC PATCH 13/28] block: Generalize bvec_should_split()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091256_160757_0588CE61 
X-CRM114-Status: GOOD (  13.09  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, Sagi Grimberg <sagi@grimberg.me>,
 Jason Gunthorpe <jgg@ziepe.ca>, Stephen Bates <sbates@raithlin.com>,
 Keith Busch <kbusch@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
 Dan Williams <dan.j.williams@intel.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

bvec_should_split() will need to also operate on dma_vecs so
generalize it to take an offset and length instead of a bio_vec.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/blk-merge.c | 31 +++++++++++++++++--------------
 1 file changed, 17 insertions(+), 14 deletions(-)

diff --git a/block/blk-merge.c b/block/blk-merge.c
index d9e89c0ad40d..32653fca53ce 100644
--- a/block/blk-merge.c
+++ b/block/blk-merge.c
@@ -206,23 +206,25 @@ struct blk_segment_split_ctx {
 	unsigned sectors;
 
 	bool prv_valid;
-	struct bio_vec bvprv;
+	unsigned prv_offset;
+	unsigned prv_len;
 
 	const unsigned max_sectors;
 	const unsigned max_segs;
 };
 
-static bool bvec_should_split(struct request_queue *q, struct bio_vec *bv,
-			      struct blk_segment_split_ctx *ctx)
+static bool vec_should_split(struct request_queue *q, unsigned offset,
+			     unsigned len, struct blk_segment_split_ctx *ctx)
 {
 	/*
 	 * If the queue doesn't support SG gaps and adding this
 	 * offset would create a gap, disallow it.
 	 */
-	if (ctx->prv_valid && bvec_gap_to_prev(q, &ctx->bvprv, bv->bv_offset))
+	if (ctx->prv_valid &&
+	    vec_gap_to_prev(q, ctx->prv_offset, ctx->prv_len, offset))
 		return true;
 
-	if (ctx->sectors + (bv->bv_len >> 9) > ctx->max_sectors) {
+	if (ctx->sectors + (len >> 9) > ctx->max_sectors) {
 		/*
 		 * Consider this a new segment if we're splitting in
 		 * the middle of this vector.
@@ -230,9 +232,9 @@ static bool bvec_should_split(struct request_queue *q, struct bio_vec *bv,
 		if (ctx->nsegs < ctx->max_segs &&
 		    ctx->sectors < ctx->max_sectors) {
 			/* split in the middle of bvec */
-			bv->bv_len = (ctx->max_sectors - ctx->sectors) << 9;
-			bvec_split_segs(q, bv, &ctx->nsegs,
-					&ctx->sectors, ctx->max_segs);
+			len = (ctx->max_sectors - ctx->sectors) << 9;
+			vec_split_segs(q, offset, len, &ctx->nsegs,
+				       &ctx->sectors, ctx->max_segs);
 		}
 		return true;
 	}
@@ -240,14 +242,15 @@ static bool bvec_should_split(struct request_queue *q, struct bio_vec *bv,
 	if (ctx->nsegs == ctx->max_segs)
 		return true;
 
-	ctx->bvprv = *bv;
+	ctx->prv_offset = offset;
+	ctx->prv_len = len;
 	ctx->prv_valid = true;
 
-	if (bv->bv_offset + bv->bv_len <= PAGE_SIZE) {
+	if (offset + len <= PAGE_SIZE) {
 		ctx->nsegs++;
-		ctx->sectors += bv->bv_len >> 9;
-	} else if (bvec_split_segs(q, bv, &ctx->nsegs, &ctx->sectors,
-				   ctx->max_segs)) {
+		ctx->sectors += len >> 9;
+	} else if (vec_split_segs(q, offset, len, &ctx->nsegs, &ctx->sectors,
+				  ctx->max_segs)) {
 		return true;
 	}
 
@@ -270,7 +273,7 @@ static struct bio *blk_bio_segment_split(struct request_queue *q,
 	};
 
 	bio_for_each_bvec(bv, bio, iter) {
-		do_split = bvec_should_split(q, &bv, &ctx);
+		do_split = vec_should_split(q, bv.bv_offset, bv.bv_len, &ctx);
 		if (do_split)
 			break;
 	}
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
