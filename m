Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E70134D37E
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:18:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Nfcpx0PGy5MRn/8NN/FBjOFQS32EOvfGFKzPblCioM=; b=dIK51QCG+/3rJk
	ncaUMdQKGDRrHj6o/E6iL3JaGskZ3Wh4hcxhEK/s/dHE23YXZsCXIYPST66q5WfuqJUfMEUKbMuJb
	OQp4xk/6q1yWnwBAp8qJC3FC07olr7MFv29SsGgyRPvCGJezZt5lpyMRy3NeWrBf/AjLgvugdq3Xn
	HNmYMA6kZ6/Loj774+hPvBK3dPuqOFXNOiYhDdp6R+mRmy8whMs/40eISDtf4F2RDgv99uw6w3Qbe
	+PuiJKzNjkIdFovzbkfpjm56o9hkhjx6B3PyGCLYnbVSYqvIpvd+QR8uF3SMhWSStPrFZQU/U1Pgu
	VQlRBmVwrei5LEcqYFhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzlR-0001ee-W8; Thu, 20 Jun 2019 16:18:18 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgL-0004n9-7Q
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:04 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046S-68; Thu, 20 Jun 2019 10:12:59 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg4-0005wQ-RP; Thu, 20 Jun 2019 10:12:44 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:23 -0600
Message-Id: <20190620161240.22738-12-logang@deltatee.com>
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
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=unavailable
 autolearn_force=no version=3.4.2
Subject: [RFC PATCH 11/28] block: Create blk_segment_split_ctx
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091301_484237_5E58EAFB 
X-CRM114-Status: GOOD (  16.23  )
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

In order to support dma-direct bios, blk_bio_segment_split() will
need to operate on both bio_vecs and dma_vecs. In order to do
this the code inside bio_for_each_bvec() needs to be moved into
a generic helper. Step one to do this is to put some of the
variables used inside the loop into a context structure so we
don't need to pass a dozen variables to this new function.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/blk-merge.c | 55 ++++++++++++++++++++++++++++++-----------------
 1 file changed, 35 insertions(+), 20 deletions(-)

diff --git a/block/blk-merge.c b/block/blk-merge.c
index 3581c7ac3c1b..414e61a714bf 100644
--- a/block/blk-merge.c
+++ b/block/blk-merge.c
@@ -201,63 +201,78 @@ static bool bvec_split_segs(struct request_queue *q, struct bio_vec *bv,
 			      sectors, max_segs);
 }
 
+struct blk_segment_split_ctx {
+	unsigned nsegs;
+	unsigned sectors;
+
+	bool prv_valid;
+	struct bio_vec bvprv;
+
+	const unsigned max_sectors;
+	const unsigned max_segs;
+};
+
 static struct bio *blk_bio_segment_split(struct request_queue *q,
 					 struct bio *bio,
 					 struct bio_set *bs,
 					 unsigned *segs)
 {
-	struct bio_vec bv, bvprv, *bvprvp = NULL;
+	struct bio_vec bv;
 	struct bvec_iter iter;
-	unsigned nsegs = 0, sectors = 0;
 	bool do_split = true;
 	struct bio *new = NULL;
-	const unsigned max_sectors = get_max_io_size(q, bio);
-	const unsigned max_segs = queue_max_segments(q);
+
+	struct blk_segment_split_ctx ctx = {
+		.max_sectors = get_max_io_size(q, bio),
+		.max_segs = queue_max_segments(q),
+	};
 
 	bio_for_each_bvec(bv, bio, iter) {
 		/*
 		 * If the queue doesn't support SG gaps and adding this
 		 * offset would create a gap, disallow it.
 		 */
-		if (bvprvp && bvec_gap_to_prev(q, bvprvp, bv.bv_offset))
+		if (ctx.prv_valid && bvec_gap_to_prev(q, &ctx.bvprv,
+						      bv.bv_offset))
 			goto split;
 
-		if (sectors + (bv.bv_len >> 9) > max_sectors) {
+		if (ctx.sectors + (bv.bv_len >> 9) > ctx.max_sectors) {
 			/*
 			 * Consider this a new segment if we're splitting in
 			 * the middle of this vector.
 			 */
-			if (nsegs < max_segs &&
-			    sectors < max_sectors) {
+			if (ctx.nsegs < ctx.max_segs &&
+			    ctx.sectors < ctx.max_sectors) {
 				/* split in the middle of bvec */
-				bv.bv_len = (max_sectors - sectors) << 9;
-				bvec_split_segs(q, &bv, &nsegs,
-						&sectors, max_segs);
+				bv.bv_len =
+					(ctx.max_sectors - ctx.sectors) << 9;
+				bvec_split_segs(q, &bv, &ctx.nsegs,
+						&ctx.sectors, ctx.max_segs);
 			}
 			goto split;
 		}
 
-		if (nsegs == max_segs)
+		if (ctx.nsegs == ctx.max_segs)
 			goto split;
 
-		bvprv = bv;
-		bvprvp = &bvprv;
+		ctx.bvprv = bv;
+		ctx.prv_valid = true;
 
 		if (bv.bv_offset + bv.bv_len <= PAGE_SIZE) {
-			nsegs++;
-			sectors += bv.bv_len >> 9;
-		} else if (bvec_split_segs(q, &bv, &nsegs, &sectors,
-				max_segs)) {
+			ctx.nsegs++;
+			ctx.sectors += bv.bv_len >> 9;
+		} else if (bvec_split_segs(q, &bv, &ctx.nsegs, &ctx.sectors,
+				ctx.max_segs)) {
 			goto split;
 		}
 	}
 
 	do_split = false;
 split:
-	*segs = nsegs;
+	*segs = ctx.nsegs;
 
 	if (do_split) {
-		new = bio_split(bio, sectors, GFP_NOIO, bs);
+		new = bio_split(bio, ctx.sectors, GFP_NOIO, bs);
 		if (new)
 			bio = new;
 	}
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
