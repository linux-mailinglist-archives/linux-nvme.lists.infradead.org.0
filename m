Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00A4E4D371
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L/lIbFb47twIhPt5RVAPmDgphKEYZumAOFjC2umDhbI=; b=g5oDkfsK07WtXH
	VpwWOnanFBd1KiYs9s/cqd9MW81j1WeKHfD9lDBptQy7asgR1s4TOPp9/XZ1/dgb7Y5KHjyhszJDb
	b6zKNg9Faj53JyHVPtIlh9ruOo3zH2MwRcyEGquPoRr+9oNgGS8qd8Jdj1JnCxCP1b8nq0qxy/VwS
	MogvhjPjbCGQ3OnNCfiyjCKBo01I10jKO4QxTBLaWFqOnwV/6fb32A00kI/n9db9yGRDoy6S7Exqo
	w4hlITTzPRvIcKg3QhqykGtGhFlfNPmo5OotAlW5thK7UlDF1e1813eH9Sn6cLXUBZ/IU2yaqlV91
	+a+b0YKBKk21wUjKhMlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzjK-00006t-Vt; Thu, 20 Jun 2019 16:16:07 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgI-0004i0-5f
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:00 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046P-68; Thu, 20 Jun 2019 10:12:57 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg4-0005wH-If; Thu, 20 Jun 2019 10:12:44 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:20 -0600
Message-Id: <20190620161240.22738-9-logang@deltatee.com>
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
Subject: [RFC PATCH 08/28] block: Introduce dmavec_phys_mergeable()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091258_855495_5BAE1C81 
X-CRM114-Status: GOOD (  10.74  )
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

Introduce a new helper which is an analog of biovec_phys_mergeable()
for dma-direct vectors.

This also provides a common helper vec_phys_mergeable() for use in
code that's general to both bio_vecs and dma_vecs.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/blk.h | 28 ++++++++++++++++++++++------
 1 file changed, 22 insertions(+), 6 deletions(-)

diff --git a/block/blk.h b/block/blk.h
index 7814aa207153..4142383eed7a 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -66,20 +66,36 @@ static inline void blk_queue_enter_live(struct request_queue *q)
 	percpu_ref_get(&q->q_usage_counter);
 }
 
+static inline bool vec_phys_mergeable(struct request_queue *q,
+				      unsigned long addr1, unsigned int len1,
+				      unsigned long addr2, unsigned int len2)
+{
+	unsigned long mask = queue_segment_boundary(q);
+
+	if (addr1 + len1 != addr2)
+		return false;
+	if ((addr1 | mask) != ((addr2 + len2 - 1) | mask))
+		return false;
+	return true;
+}
+
 static inline bool biovec_phys_mergeable(struct request_queue *q,
 		struct bio_vec *vec1, struct bio_vec *vec2)
 {
-	unsigned long mask = queue_segment_boundary(q);
 	phys_addr_t addr1 = page_to_phys(vec1->bv_page) + vec1->bv_offset;
 	phys_addr_t addr2 = page_to_phys(vec2->bv_page) + vec2->bv_offset;
 
-	if (addr1 + vec1->bv_len != addr2)
-		return false;
 	if (xen_domain() && !xen_biovec_phys_mergeable(vec1, vec2->bv_page))
 		return false;
-	if ((addr1 | mask) != ((addr2 + vec2->bv_len - 1) | mask))
-		return false;
-	return true;
+
+	return vec_phys_mergeable(q, addr1, vec1->bv_len, addr2, vec2->bv_len);
+}
+
+static inline bool dmavec_phys_mergeable(struct request_queue *q,
+		struct dma_vec *vec1, struct dma_vec *vec2)
+{
+	return vec_phys_mergeable(q, vec1->dv_addr, vec1->dv_len,
+				  vec2->dv_addr, vec2->dv_len);
 }
 
 static inline bool __bvec_gap_to_prev(struct request_queue *q,
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
