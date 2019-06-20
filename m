Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E5854D38D
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:20:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YPz/wj7E9UU9gxMfz4pQu7AAnFMu80wdtOM49SXbq5w=; b=cwGaX1FKU8aJgn
	MkTwF1qY0XCQvm8xIB9mew8LVyXen6Ed3I22dypDG3QXC7Kwvjnk6f8RfEIUA0DS4NwLlS5ZdKff2
	QTdvV5hnqx9LWCdTADUrREjlev/8xMpGbkfUo32pp4FtbRuqqBWKM/BWVzjfOIrDg00kfjD3AYZY3
	6hC40AUP3tli2FPfk1Jtx5fTQRfabAqoGKoE5swK/wEOxoFjyajxJZZ9+mTvErXldEqyvKM5p1omU
	5rRaX69k6YuINlBafM/sHs5jOTN9COtvEPnYBoj2Az/6nU7uQTV8CRtKYb5/tUj9Eht1I0yUpfK5F
	gF/QcTg2scQT3+uv9QCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdznq-0004VA-Pq; Thu, 20 Jun 2019 16:20:47 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgR-0004ts-Jk
 for linux-nvme@bombadil.infradead.org; Thu, 20 Jun 2019 16:13:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Subject:Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Cc:To:From:Sender:
 Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sCY/nX+Ax0FBNtBCvwjC8V5ENwvvTwinYzpCDizIymY=; b=MakpB/rei8UhiLpHZTpYPxsVNf
 LNrEWpm4qlv9LiDMxDkJnTTWsqPdRFujEv7Xz0xMnAdQ7iVSV1RKgoUrnOuljAUzAppRjVb6ercmt
 i4IJIhGX1C91d156pZTtFgLofGhzXo/Ll7KBkn56EnQfDMUYhFFWDMCvjp8ZnM0e7EQSgPAiCLrK3
 6HyQzSxwjGVTzjeIrQEpagHBqNxuhhg5/uKsGCbhg/Fr7KX6qZGkDI5Qj4PAtU7ElMFncgzOqwRjq
 zHC/651DGC7y5ppVuqIrF6JbHFMx0dTG1g1W3EaIoH9lXVL5hdolBDkTml7O5IbK1RNkVchIBuRto
 SZRY+jJg==;
Received: from ale.deltatee.com ([207.54.116.67])
 by casper.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgP-000387-3R
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:07 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046J-6C; Thu, 20 Jun 2019 10:12:48 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg4-0005vz-02; Thu, 20 Jun 2019 10:12:44 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:14 -0600
Message-Id: <20190620161240.22738-3-logang@deltatee.com>
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
Subject: [RFC PATCH 02/28] block: Add dma_vec structure
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_171305_310579_280C5DE8 
X-CRM114-Status: GOOD (  21.35  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.0 points, 5.0 required)
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

The dma_vec structure is similar to the bio_vec structure except
it only stores DMA addresses instead of the struct page address.

struct bios will be able to make use of dma_vecs with a union and,
therefore, we need to ensure that struct dma_vec is no larger
than struct bvec, as they will share the allocated memory.

dma_vecs can make the same use of the bvec_iter structure
to iterate through the vectors.

This will be used for passing DMA addresses directly through the block
layer. I expect something like struct dma_vec will also be used in
Christoph's work to improve the dma_mapping layer and remove sgls.
At some point, these would use the same structure.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 include/linux/bio.h       | 12 +++++++++++
 include/linux/blk_types.h |  5 ++++-
 include/linux/bvec.h      | 43 +++++++++++++++++++++++++++++++++++++++
 3 files changed, 59 insertions(+), 1 deletion(-)

diff --git a/include/linux/bio.h b/include/linux/bio.h
index 0f23b5682640..8180309123d7 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -28,6 +28,8 @@
 
 #define bio_iter_iovec(bio, iter)				\
 	bvec_iter_bvec((bio)->bi_io_vec, (iter))
+#define bio_iter_dma_vec(bio, iter)				\
+	bvec_iter_dvec((bio)->bi_dma_vec, (iter))
 
 #define bio_iter_page(bio, iter)				\
 	bvec_iter_page((bio)->bi_io_vec, (iter))
@@ -39,6 +41,7 @@
 #define bio_page(bio)		bio_iter_page((bio), (bio)->bi_iter)
 #define bio_offset(bio)		bio_iter_offset((bio), (bio)->bi_iter)
 #define bio_iovec(bio)		bio_iter_iovec((bio), (bio)->bi_iter)
+#define bio_dma_vec(bio)	bio_iter_dma_vec((bio), (bio)->bi_iter)
 
 #define bio_multiple_segments(bio)				\
 	((bio)->bi_iter.bi_size != bio_iovec(bio).bv_len)
@@ -155,6 +158,15 @@ static inline void bio_advance_iter(struct bio *bio, struct bvec_iter *iter,
 #define bio_for_each_bvec(bvl, bio, iter)			\
 	__bio_for_each_bvec(bvl, bio, iter, (bio)->bi_iter)
 
+#define __bio_for_each_dvec(dvl, bio, iter, start)		\
+	for (iter = (start);						\
+	     (iter).bi_size &&						\
+		((dvl = bvec_iter_dvec((bio)->bi_dma_vec, (iter))), 1); \
+	     dvec_iter_advance((bio)->bi_dma_vec, &(iter), (dvl).dv_len))
+
+#define bio_for_each_dvec(dvl, bio, iter)			\
+	__bio_for_each_dvec(dvl, bio, iter, (bio)->bi_iter)
+
 #define bio_iter_last(bvec, iter) ((iter).bi_size == (bvec).bv_len)
 
 static inline unsigned bio_segments(struct bio *bio)
diff --git a/include/linux/blk_types.h b/include/linux/blk_types.h
index f3cabfdb6774..7f76ea73b77d 100644
--- a/include/linux/blk_types.h
+++ b/include/linux/blk_types.h
@@ -191,7 +191,10 @@ struct bio {
 
 	atomic_t		__bi_cnt;	/* pin count */
 
-	struct bio_vec		*bi_io_vec;	/* the actual vec list */
+	union {
+		struct bio_vec	*bi_io_vec;	/* the actual vec list */
+		struct dma_vec	*bi_dma_vec;	/* for dma direct bios*/
+	};
 
 	struct bio_set		*bi_pool;
 
diff --git a/include/linux/bvec.h b/include/linux/bvec.h
index a032f01e928c..f680e96132ef 100644
--- a/include/linux/bvec.h
+++ b/include/linux/bvec.h
@@ -21,6 +21,11 @@ struct bio_vec {
 	unsigned int	bv_offset;
 };
 
+struct dma_vec {
+	dma_addr_t	dv_addr;
+	unsigned int	dv_len;
+};
+
 struct bvec_iter {
 	sector_t		bi_sector;	/* device address in 512 byte
 						   sectors */
@@ -84,6 +89,18 @@ struct bvec_iter_all {
 	.bv_offset	= bvec_iter_offset((bvec), (iter)),	\
 })
 
+#define bvec_iter_dvec_addr(dvec, iter)	\
+	(__bvec_iter_bvec((dvec), (iter))->dv_addr + (iter).bi_bvec_done)
+#define bvec_iter_dvec_len(dvec, iter)	\
+	min((iter).bi_size,					\
+	    __bvec_iter_bvec((dvec), (iter))->dv_len - (iter).bi_bvec_done)
+
+#define bvec_iter_dvec(dvec, iter)				\
+((struct dma_vec) {						\
+	.dv_addr	= bvec_iter_dvec_addr((dvec), (iter)),	\
+	.dv_len		= bvec_iter_dvec_len((dvec), (iter)),	\
+})
+
 static inline bool bvec_iter_advance(const struct bio_vec *bv,
 		struct bvec_iter *iter, unsigned bytes)
 {
@@ -110,6 +127,32 @@ static inline bool bvec_iter_advance(const struct bio_vec *bv,
 	return true;
 }
 
+static inline bool dvec_iter_advance(const struct dma_vec *dv,
+		struct bvec_iter *iter, unsigned bytes)
+{
+	if (WARN_ONCE(bytes > iter->bi_size,
+		      "Attempted to advance past end of dvec iter\n")) {
+		iter->bi_size = 0;
+		return false;
+	}
+
+	while (bytes) {
+		const struct dma_vec *cur = dv + iter->bi_idx;
+		unsigned len = min3(bytes, iter->bi_size,
+				    cur->dv_len - iter->bi_bvec_done);
+
+		bytes -= len;
+		iter->bi_size -= len;
+		iter->bi_bvec_done += len;
+
+		if (iter->bi_bvec_done == cur->dv_len) {
+			iter->bi_bvec_done = 0;
+			iter->bi_idx++;
+		}
+	}
+	return true;
+}
+
 #define for_each_bvec(bvl, bio_vec, iter, start)			\
 	for (iter = (start);						\
 	     (iter).bi_size &&						\
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
