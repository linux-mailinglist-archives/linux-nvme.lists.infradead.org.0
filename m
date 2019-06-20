Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9309F4D32E
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:14:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahzpyeescialCyi0jBAok9WAj9UW9C4qPt6i7Y3iCJg=; b=aOACR1CN8S0whV
	BBXZuA4UY4N1rj/qYxOiW5gH3NZ84xSJdHJOvfsfq+mWyD4w1WoIJUQBCeuMwncXZsKf8/4bvUNO0
	7pP7HI7rtLrWScea+3+k6wrn/3vhQkKuDeIWbWKN896ImfaYEOPUzUy1IPohrhsfWhmuGGCjaDznX
	1xlt0NtPlPCfb+Ki0p1LLOevrzx2ibG9wW8m/jwRNfSB/gK3d33FpGjDVc3oj+WA8rT6Hg/QWjS49
	mF4KaeubUFIA/VMIwc4ZgBhnFpyYJE0ouDtVsGIa5qrsKATkPsMnjMsmh0MNjtgyXSRQP8BCERXkH
	+DTvXjaG29WESXark4Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzhU-0005dW-Gx; Thu, 20 Jun 2019 16:14:12 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgH-0004fb-4b
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:12:59 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzgA-00046R-AF; Thu, 20 Jun 2019 10:12:56 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg4-0005wN-Oc; Thu, 20 Jun 2019 10:12:44 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:22 -0600
Message-Id: <20190620161240.22738-11-logang@deltatee.com>
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
Subject: [RFC PATCH 10/28] block: Create generic vec_split_segs() from
 bvec_split_segs()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091257_542122_D797E6E2 
X-CRM114-Status: GOOD (  12.16  )
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

bvec_split_segs() only requires the address and length of the
vector. In order to generalize it to work with dma_vecs, we just
take the address and length directly instead of the bio_vec.

The function is renamed to vec_split_segs() and a helper is added
to avoid having to adjust the existing callsites.

Note: the new bvec_split_segs() helper will be removed in a subsequent
patch.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/blk-merge.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/block/blk-merge.c b/block/blk-merge.c
index 17713d7d98d5..3581c7ac3c1b 100644
--- a/block/blk-merge.c
+++ b/block/blk-merge.c
@@ -158,13 +158,13 @@ static unsigned get_max_segment_size(struct request_queue *q,
 }
 
 /*
- * Split the bvec @bv into segments, and update all kinds of
- * variables.
+ * Split the an address/offset and length into segments, and
+ * update all kinds of variables.
  */
-static bool bvec_split_segs(struct request_queue *q, struct bio_vec *bv,
-		unsigned *nsegs, unsigned *sectors, unsigned max_segs)
+static bool vec_split_segs(struct request_queue *q, unsigned offset,
+			   unsigned len, unsigned *nsegs, unsigned *sectors,
+			   unsigned max_segs)
 {
-	unsigned len = bv->bv_len;
 	unsigned total_len = 0;
 	unsigned new_nsegs = 0, seg_size = 0;
 
@@ -173,14 +173,14 @@ static bool bvec_split_segs(struct request_queue *q, struct bio_vec *bv,
 	 * current bvec has to be splitted as multiple segments.
 	 */
 	while (len && new_nsegs + *nsegs < max_segs) {
-		seg_size = get_max_segment_size(q, bv->bv_offset + total_len);
+		seg_size = get_max_segment_size(q, offset + total_len);
 		seg_size = min(seg_size, len);
 
 		new_nsegs++;
 		total_len += seg_size;
 		len -= seg_size;
 
-		if ((bv->bv_offset + total_len) & queue_virt_boundary(q))
+		if ((offset + total_len) & queue_virt_boundary(q))
 			break;
 	}
 
@@ -194,6 +194,13 @@ static bool bvec_split_segs(struct request_queue *q, struct bio_vec *bv,
 	return !!len;
 }
 
+static bool bvec_split_segs(struct request_queue *q, struct bio_vec *bv,
+		unsigned *nsegs, unsigned *sectors, unsigned max_segs)
+{
+	return vec_split_segs(q, bv->bv_offset, bv->bv_len, nsegs,
+			      sectors, max_segs);
+}
+
 static struct bio *blk_bio_segment_split(struct request_queue *q,
 					 struct bio *bio,
 					 struct bio_set *bs,
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
