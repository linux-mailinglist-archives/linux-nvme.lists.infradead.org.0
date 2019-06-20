Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5ED994D391
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:21:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=npCpCSrqk1Cr6QXACmJ6A5Xflsx8R0K/HhmtH81iHfI=; b=Ljg6TWL45NNN7Y
	Z40T57fTheQlMoW33LoKg7Q+pBc/RJTb4LdHSuBQQ4kW/pvIVoOBpOHvl61HDAl4pjc3v1udcyRPq
	PJsrxT8tSDYIzawrbn/wtJlYhgERjqDeEP6CrpUyVKkGrzz5fWEl+j/+7hh3V48+Qn6llTsEnR9vu
	ZluGVHykxkOv8xVU+GsfgdG7rV/JB+Dze5d2uyd63cK57vlOFfUP1r0pDVyymOnI7jzetIylu3gkf
	FwJ3trbUbt1VxXAGjXQUR1eDt9mpltZQp4XJx1ZtGWW5yLOA/NvqObmcPpTfeglJD/WNB0OStd+C8
	MC5gIVWlXUBtx5J1Bpmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzoL-0004r0-76; Thu, 20 Jun 2019 16:21:17 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgP-0004sM-Np
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:08 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzgA-00046Z-NW; Thu, 20 Jun 2019 10:13:05 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg5-0005wl-Hn; Thu, 20 Jun 2019 10:12:45 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:30 -0600
Message-Id: <20190620161240.22738-19-logang@deltatee.com>
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
Subject: [RFC PATCH 18/28] block: Introduce bio_add_dma_addr()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091306_554480_9BB9CA0E 
X-CRM114-Status: GOOD (  13.64  )
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

bio_add_dma_addr() is analagous to bio_add_page() except it
adds a dma address to a dma-direct bio instead of a struct page.

It also checks to ensure that the queue supports dma address bios and
that we are not mixing dma addresses and struct pages.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/bio.c         | 38 ++++++++++++++++++++++++++++++++++++++
 include/linux/bio.h | 10 ++++++++++
 2 files changed, 48 insertions(+)

diff --git a/block/bio.c b/block/bio.c
index 6998fceddd36..02ae72e3ccfa 100644
--- a/block/bio.c
+++ b/block/bio.c
@@ -874,6 +874,44 @@ static void bio_release_pages(struct bio *bio)
 		put_page(bvec->bv_page);
 }
 
+/**
+ *	bio_add_dma_addr - attempt to add a dma address to a bio
+ *	@q: the target queue
+ *	@bio: destination bio
+ *	@dma_addr: dma address to add
+ *	@len: vec entry length
+ *
+ *	Attempt to add a dma address to the dma_vec maplist. This can
+ *	fail for a number of reasons, such as the bio being full or
+ *	target block device limitations. The target request queue must
+ *	support dma-only bios and bios can not mix pages and dma_addresses.
+ */
+int bio_add_dma_addr(struct request_queue *q, struct bio *bio,
+		     dma_addr_t dma_addr, unsigned int len)
+{
+	struct dma_vec *dv = &bio->bi_dma_vec[bio->bi_vcnt];
+
+	if (!blk_queue_dma_direct(q))
+		return -EINVAL;
+
+	if (!bio_is_dma_direct(bio))
+		return -EINVAL;
+
+	if (bio_dma_full(bio))
+		return 0;
+
+	WARN_ON_ONCE(bio_flagged(bio, BIO_CLONED));
+
+	dv->dv_addr = dma_addr;
+	dv->dv_len = len;
+
+	bio->bi_iter.bi_size += len;
+	bio->bi_vcnt++;
+
+	return len;
+}
+EXPORT_SYMBOL_GPL(bio_add_dma_addr);
+
 static int __bio_iov_bvec_add_pages(struct bio *bio, struct iov_iter *iter)
 {
 	const struct bio_vec *bv = iter->bvec;
diff --git a/include/linux/bio.h b/include/linux/bio.h
index df7973932525..d775f381ae00 100644
--- a/include/linux/bio.h
+++ b/include/linux/bio.h
@@ -112,6 +112,13 @@ static inline bool bio_full(struct bio *bio)
 	return bio->bi_vcnt >= bio->bi_max_vecs;
 }
 
+static inline bool bio_dma_full(struct bio *bio)
+{
+	size_t vec_size = bio->bi_max_vecs * sizeof(struct bio_vec);
+
+	return bio->bi_vcnt >= (vec_size / sizeof(struct dma_vec));
+}
+
 static inline bool bio_next_segment(const struct bio *bio,
 				    struct bvec_iter_all *iter)
 {
@@ -438,6 +445,9 @@ void bio_chain(struct bio *, struct bio *);
 extern int bio_add_page(struct bio *, struct page *, unsigned int,unsigned int);
 extern int bio_add_pc_page(struct request_queue *, struct bio *, struct page *,
 			   unsigned int, unsigned int);
+extern int bio_add_dma_addr(struct request_queue *q, struct bio *bio,
+			    dma_addr_t dma_addr, unsigned int len);
+
 bool __bio_try_merge_page(struct bio *bio, struct page *page,
 		unsigned int len, unsigned int off, bool same_page);
 void __bio_add_page(struct bio *bio, struct page *page,
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
