Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6ECF94D375
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:16:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IO9ZL4FURi2h0dN4XcGcrJnLRsKmeiAM25IiwaGZ3Jw=; b=hON1gqFXRpBQLG
	Ykjzavx8YiJMyOQy5lB+2C+hffl3EWGEv+Bn+kxbE9dkC9F8wj3mlatsXJXpJqEm62QRzllBzNvbZ
	z8q8BQYBcWhOVMsqdnUJmNULwLLjHm57Xfa8H5Lfu3wsbDnOEmwENbCelQzXP6aE17XqlsHjWJIY7
	7UVD4GHiUQab4z2hXWjD0KUstVMMLuzAU2a/0Ka0No7lFGEMG7HruYKm2HYB+XJ9uOzrdKTZPIBkQ
	7zZKY4Ibc0YQOonw8dR5CpRG2szzIIyZVarUORku6EnthFo4vh5Y+fwuExi8Gr5ZMogR2M/BjrYJO
	hDH9dntPikDydJLKMCOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzjy-0000d7-PH; Thu, 20 Jun 2019 16:16:46 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgI-0004dF-Ch
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:02 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046W-67; Thu, 20 Jun 2019 10:12:49 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg5-0005wc-82; Thu, 20 Jun 2019 10:12:45 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:27 -0600
Message-Id: <20190620161240.22738-16-logang@deltatee.com>
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
Subject: [RFC PATCH 15/28] block: Support counting dma-direct bio segments
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091258_897182_D1DE2E18 
X-CRM114-Status: GOOD (  11.27  )
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

Change __blk_recalc_rq_segments() to loop through dma_vecs when
appropriate. It calls vec_split_segs() for each dma_vec or bio_vec.

Once this is done the bvec_split_segs() helper is no longer used.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/blk-merge.c | 41 ++++++++++++++++++++++++++++++-----------
 1 file changed, 30 insertions(+), 11 deletions(-)

diff --git a/block/blk-merge.c b/block/blk-merge.c
index c4c016f994f6..a7a5453987f9 100644
--- a/block/blk-merge.c
+++ b/block/blk-merge.c
@@ -194,13 +194,6 @@ static bool vec_split_segs(struct request_queue *q, unsigned offset,
 	return !!len;
 }
 
-static bool bvec_split_segs(struct request_queue *q, struct bio_vec *bv,
-		unsigned *nsegs, unsigned *sectors, unsigned max_segs)
-{
-	return vec_split_segs(q, bv->bv_offset, bv->bv_len, nsegs,
-			      sectors, max_segs);
-}
-
 struct blk_segment_split_ctx {
 	unsigned nsegs;
 	unsigned sectors;
@@ -366,12 +359,36 @@ void blk_queue_split(struct request_queue *q, struct bio **bio)
 }
 EXPORT_SYMBOL(blk_queue_split);
 
+static unsigned int bio_calc_segs(struct request_queue *q, struct bio *bio)
+{
+	unsigned int nsegs = 0;
+	struct bvec_iter iter;
+	struct bio_vec bv;
+
+	bio_for_each_bvec(bv, bio, iter)
+		vec_split_segs(q, bv.bv_offset, bv.bv_len, &nsegs,
+			       NULL, UINT_MAX);
+
+	return nsegs;
+}
+
+static unsigned int bio_dma_calc_segs(struct request_queue *q, struct bio *bio)
+{
+	unsigned int nsegs = 0;
+	struct bvec_iter iter;
+	struct dma_vec dv;
+
+	bio_for_each_dvec(dv, bio, iter)
+		vec_split_segs(q, dv.dv_addr, dv.dv_len, &nsegs,
+			       NULL, UINT_MAX);
+
+	return nsegs;
+}
+
 static unsigned int __blk_recalc_rq_segments(struct request_queue *q,
 					     struct bio *bio)
 {
 	unsigned int nr_phys_segs = 0;
-	struct bvec_iter iter;
-	struct bio_vec bv;
 
 	if (!bio)
 		return 0;
@@ -386,8 +403,10 @@ static unsigned int __blk_recalc_rq_segments(struct request_queue *q,
 	}
 
 	for_each_bio(bio) {
-		bio_for_each_bvec(bv, bio, iter)
-			bvec_split_segs(q, &bv, &nr_phys_segs, NULL, UINT_MAX);
+		if (bio_is_dma_direct(bio))
+			nr_phys_segs += bio_calc_segs(q, bio);
+		else
+			nr_phys_segs += bio_dma_calc_segs(q, bio);
 	}
 
 	return nr_phys_segs;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
