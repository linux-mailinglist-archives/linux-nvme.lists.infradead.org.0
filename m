Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5948A4D372
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:16:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HHM25OtlaN0mVcoNvSDCJ4NZ2snR5A4rRZzQ7B+K3Hs=; b=bjeS8ZRL1t7Oqs
	KPKPOlXyx7kNSI7x7imWG9ClE73hEx2vIp1B3HFColn7zDmrRyFXmeDke2ZV4JD8pbipU9smpFDKe
	9zQojUqixITq18s/IVgy4IsQ3yVdW9AM6rB2y5fLL0ayXMMO8Ossvpp8SN8KZkotsxhuxinBAaDLs
	ioiMnnDq0aJuX/+otqyIn2fWixSxF1FnzosmowlaEgeq1qAKgtTz/FFFLXgm96aJA35oN3Wbv4Qj3
	UTOeXmac5ln4APM4zYLvsVnfGC9HwWesWicBagYFqbwm2fTovXPIowiM27G77D8UJsuCQ5hvPay+H
	XIbgTasmxUgWDA75lgMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzjX-0000Hu-9q; Thu, 20 Jun 2019 16:16:19 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgI-0004cf-Ca
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:00 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046V-6A; Thu, 20 Jun 2019 10:12:47 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg5-0005wZ-4g; Thu, 20 Jun 2019 10:12:45 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:26 -0600
Message-Id: <20190620161240.22738-15-logang@deltatee.com>
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
Subject: [RFC PATCH 14/28] block: Support splitting dma-direct bios
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091258_921447_FEA9225A 
X-CRM114-Status: GOOD (  11.65  )
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

If the bio is a dma-direct bio, loop through the dma_vecs instead
of the bio_vecs when calling vec_should_split().

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/blk-merge.c | 45 +++++++++++++++++++++++++++++++++++++--------
 1 file changed, 37 insertions(+), 8 deletions(-)

diff --git a/block/blk-merge.c b/block/blk-merge.c
index 32653fca53ce..c4c016f994f6 100644
--- a/block/blk-merge.c
+++ b/block/blk-merge.c
@@ -257,14 +257,44 @@ static bool vec_should_split(struct request_queue *q, unsigned offset,
 	return false;
 }
 
+static bool bio_should_split(struct request_queue *q, struct bio *bio,
+			     struct blk_segment_split_ctx *ctx)
+{
+	struct bvec_iter iter;
+	struct bio_vec bv;
+	bool ret;
+
+	bio_for_each_bvec(bv, bio, iter) {
+		ret = vec_should_split(q, bv.bv_offset, bv.bv_len, ctx);
+		if (ret)
+			return true;
+	}
+
+	return false;
+}
+
+static bool bio_dma_should_split(struct request_queue *q, struct bio *bio,
+				 struct blk_segment_split_ctx *ctx)
+{
+	struct bvec_iter iter;
+	struct dma_vec dv;
+	bool ret;
+
+	bio_for_each_dvec(dv, bio, iter) {
+		ret = vec_should_split(q, dv.dv_addr, dv.dv_len, ctx);
+		if (ret)
+			return true;
+	}
+
+	return false;
+}
+
 static struct bio *blk_bio_segment_split(struct request_queue *q,
 					 struct bio *bio,
 					 struct bio_set *bs,
 					 unsigned *segs)
 {
-	struct bio_vec bv;
-	struct bvec_iter iter;
-	bool do_split = false;
+	bool do_split;
 	struct bio *new = NULL;
 
 	struct blk_segment_split_ctx ctx = {
@@ -272,11 +302,10 @@ static struct bio *blk_bio_segment_split(struct request_queue *q,
 		.max_segs = queue_max_segments(q),
 	};
 
-	bio_for_each_bvec(bv, bio, iter) {
-		do_split = vec_should_split(q, bv.bv_offset, bv.bv_len, &ctx);
-		if (do_split)
-			break;
-	}
+	if (bio_is_dma_direct(bio))
+		do_split = bio_dma_should_split(q, bio, &ctx);
+	else
+		do_split = bio_should_split(q, bio, &ctx);
 
 	*segs = ctx.nsegs;
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
