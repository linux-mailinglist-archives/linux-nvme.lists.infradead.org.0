Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C254D378
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:17:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rV8lmEfwvJiP9S46nGwTVMxnfuHO9GKYpiBSYiX8gs4=; b=HOChPlBsvn+1UJ
	ULzqLurj9x0O/zHchCBlGOImaH+OVyTM2p2uIu2p8KzypPZBsB83DijOH3YDG7jcFUNMFBKmTCW05
	i6K4KzABhFXhKDSs3GDjYPUeO6bZXRW2NFZ9nVchBxGOtKUvs6vW/3DsppokRC/mO+mmo1CbOkJT2
	PwzK9ozsNjr17YJ7y0nTo2R/s/jQ2Dx9oVVCokxMnYc9iShLStU+vsDg5BAL5DIcipmaeDre8AZDO
	+yIvDot3chxvmEpAdYSooE1BZV5A8bTxQCMQdwJY8EN8h8Hj59+9FkW8hhcawtompOU+q3A7kRWaZ
	tcf5wRtvBZxKHb0IosvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzkL-0000s4-6K; Thu, 20 Jun 2019 16:17:09 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgI-0004dm-Bx
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:03 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046K-69; Thu, 20 Jun 2019 10:12:51 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg4-0005w2-39; Thu, 20 Jun 2019 10:12:44 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:15 -0600
Message-Id: <20190620161240.22738-4-logang@deltatee.com>
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
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [RFC PATCH 03/28] block: Warn on mis-use of dma-direct bios
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091258_927006_6FEC5937 
X-CRM114-Status: GOOD (  10.14  )
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

This is a result of an audit of users of 'bi_io_vec'. A number of
warnings and blocking conditions are added to ensure dma-direct bios
are not incorrectly accessing the 'bi_io_vec' when they should access
the 'bi_dma_vec'. These are largely just protecting against mis-uses
in future development so depending on taste and public opinion some
or all of these checks may not be necessary.

A few other issues with dma-direct bios will be tackled in subsequent
patches.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/bio.c      | 33 +++++++++++++++++++++++++++++++++
 block/blk-core.c |  3 +++
 2 files changed, 36 insertions(+)

diff --git a/block/bio.c b/block/bio.c
index 683cbb40f051..6998fceddd36 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -525,6 +525,9 @@ void zero_fill_bio_iter(struct bio *bio, struct bvec_iter start)
 	struct bio_vec bv;
 	struct bvec_iter iter;
 
+	if (WARN_ON_ONCE(bio_is_dma_direct(bio)))
+		return;
+
 	__bio_for_each_segment(bv, bio, iter, start) {
 		char *data = bvec_kmap_irq(&bv, &flags);
 		memset(data, 0, bv.bv_len);
@@ -707,6 +710,8 @@ static int __bio_add_pc_page(struct request_queue *q, struct bio *bio,
 	 */
 	if (unlikely(bio_flagged(bio, BIO_CLONED)))
 		return 0;
+	if (unlikely(bio_is_dma_direct(bio)))
+		return 0;
 
 	if (((bio->bi_iter.bi_size + len) >> 9) > queue_max_hw_sectors(q))
 		return 0;
@@ -783,6 +788,8 @@ bool __bio_try_merge_page(struct bio *bio, struct page *page,
 {
 	if (WARN_ON_ONCE(bio_flagged(bio, BIO_CLONED)))
 		return false;
+	if (WARN_ON_ONCE(bio_is_dma_direct(bio)))
+		return false;
 
 	if (bio->bi_vcnt > 0) {
 		struct bio_vec *bv = &bio->bi_io_vec[bio->bi_vcnt - 1];
@@ -814,6 +821,7 @@ void __bio_add_page(struct bio *bio, struct page *page,
 
 	WARN_ON_ONCE(bio_flagged(bio, BIO_CLONED));
 	WARN_ON_ONCE(bio_full(bio));
+	WARN_ON_ONCE(bio_is_dma_direct(bio));
 
 	bv->bv_page = page;
 	bv->bv_offset = off;
@@ -851,6 +859,8 @@ static void bio_get_pages(struct bio *bio)
 	struct bvec_iter_all iter_all;
 	struct bio_vec *bvec;
 
+	WARN_ON_ONCE(bio_is_dma_direct(bio));
+
 	bio_for_each_segment_all(bvec, bio, iter_all)
 		get_page(bvec->bv_page);
 }
@@ -956,6 +966,8 @@ int bio_iov_iter_get_pages(struct bio *bio, struct iov_iter *iter)
 
 	if (WARN_ON_ONCE(bio->bi_vcnt))
 		return -EINVAL;
+	if (WARN_ON_ONCE(bio_is_dma_direct(bio)))
+		return -EINVAL;
 
 	do {
 		if (is_bvec)
@@ -1029,6 +1041,9 @@ void bio_copy_data_iter(struct bio *dst, struct bvec_iter *dst_iter,
 	void *src_p, *dst_p;
 	unsigned bytes;
 
+	if (WARN_ON_ONCE(bio_is_dma_direct(src) || bio_is_dma_direct(dst)))
+		return;
+
 	while (src_iter->bi_size && dst_iter->bi_size) {
 		src_bv = bio_iter_iovec(src, *src_iter);
 		dst_bv = bio_iter_iovec(dst, *dst_iter);
@@ -1143,6 +1158,9 @@ static int bio_copy_from_iter(struct bio *bio, struct iov_iter *iter)
 	struct bio_vec *bvec;
 	struct bvec_iter_all iter_all;
 
+	if (WARN_ON_ONCE(bio_is_dma_direct(bio)))
+		return -EINVAL;
+
 	bio_for_each_segment_all(bvec, bio, iter_all) {
 		ssize_t ret;
 
@@ -1174,6 +1192,9 @@ static int bio_copy_to_iter(struct bio *bio, struct iov_iter iter)
 	struct bio_vec *bvec;
 	struct bvec_iter_all iter_all;
 
+	if (WARN_ON_ONCE(bio_is_dma_direct(bio)))
+		return -EINVAL;
+
 	bio_for_each_segment_all(bvec, bio, iter_all) {
 		ssize_t ret;
 
@@ -1197,6 +1218,9 @@ void bio_free_pages(struct bio *bio)
 	struct bio_vec *bvec;
 	struct bvec_iter_all iter_all;
 
+	if (WARN_ON_ONCE(bio_is_dma_direct(bio)))
+		return;
+
 	bio_for_each_segment_all(bvec, bio, iter_all)
 		__free_page(bvec->bv_page);
 }
@@ -1653,6 +1677,9 @@ void bio_set_pages_dirty(struct bio *bio)
 	struct bio_vec *bvec;
 	struct bvec_iter_all iter_all;
 
+	if (unlikely(bio_is_dma_direct(bio)))
+		return;
+
 	bio_for_each_segment_all(bvec, bio, iter_all) {
 		if (!PageCompound(bvec->bv_page))
 			set_page_dirty_lock(bvec->bv_page);
@@ -1704,6 +1731,9 @@ void bio_check_pages_dirty(struct bio *bio)
 	unsigned long flags;
 	struct bvec_iter_all iter_all;
 
+	if (unlikely(bio_is_dma_direct(bio)))
+		return;
+
 	bio_for_each_segment_all(bvec, bio, iter_all) {
 		if (!PageDirty(bvec->bv_page) && !PageCompound(bvec->bv_page))
 			goto defer;
@@ -1777,6 +1807,9 @@ void bio_flush_dcache_pages(struct bio *bi)
 	struct bio_vec bvec;
 	struct bvec_iter iter;
 
+	if (unlikely(bio_is_dma_direct(bi)))
+		return;
+
 	bio_for_each_segment(bvec, bi, iter)
 		flush_dcache_page(bvec.bv_page);
 }
diff --git a/block/blk-core.c b/block/blk-core.c
index 8340f69670d8..ea152d54c7ce 100644
--- a/block/blk-core.c
+++ b/block/blk-core.c
@@ -1467,6 +1467,9 @@ void rq_flush_dcache_pages(struct request *rq)
 	struct req_iterator iter;
 	struct bio_vec bvec;
 
+	if (unlikely(blk_rq_is_dma_direct(rq)))
+		return;
+
 	rq_for_each_segment(bvec, rq, iter)
 		flush_dcache_page(bvec.bv_page);
 }
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
