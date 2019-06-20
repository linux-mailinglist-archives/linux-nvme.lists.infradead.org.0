Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911044D318
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:14:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SD7TSK7j5Eb/XPOS6XYZAMvbpPmIQyKNx7QFglYWnjU=; b=W2V7Uzr0NgSf2P
	B2THY0QEeC2ddFcMEzIHr3YOZQ6KkYiAfuX+IpMc6fXTONCoeGp+NX0QWlSx5DKnqtBf1CKUKkl3E
	EMi8wSMRkd95WuajlYuiELteVIJdlD+dL5Y+ovZvhr+UeU/F3H/4FdW7ONATPAeBT6ganWa9rPgmt
	lwJwnrXK6FptOcI6v8qrXu2ikR4aY7av39v9tpuzAF3FWxnIr3FNoq4kNVsOXRR9PA+47Bo7QphdV
	hbKO6zRMt9KDRQyz9LyfH5UsJ4E7/9zP5gstDXJPQHh+T5WIk0WyGu/H1/sEfkWO3AFF2WpSqGuTm
	dxWNbKSWNIPKWcG3mHhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzhB-0005ET-8D; Thu, 20 Jun 2019 16:13:53 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgG-0004f7-Eg
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:12:58 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046Q-68; Thu, 20 Jun 2019 10:12:54 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg4-0005wK-LN; Thu, 20 Jun 2019 10:12:44 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:21 -0600
Message-Id: <20190620161240.22738-10-logang@deltatee.com>
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
Subject: [RFC PATCH 09/28] block: Introduce vec_gap_to_prev()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091256_825477_A049C7CB 
X-CRM114-Status: GOOD (  10.35  )
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

Introduce vec_gap_to_prev() which is a more general
form of bvec_gap_to_prev().

In order to support splitting dma_vecs we will need to do a similar
calcualtion using the DMA address and length.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/blk.h | 21 +++++++++++++++++++--
 1 file changed, 19 insertions(+), 2 deletions(-)

diff --git a/block/blk.h b/block/blk.h
index 4142383eed7a..c5512fefe703 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -98,11 +98,19 @@ static inline bool dmavec_phys_mergeable(struct request_queue *q,
 				  vec2->dv_addr, vec2->dv_len);
 }
 
+static inline bool __vec_gap_to_prev(struct request_queue *q,
+		unsigned int prv_offset, unsigned int prv_len,
+		unsigned int nxt_offset)
+{
+	return (nxt_offset & queue_virt_boundary(q)) ||
+		((prv_offset + prv_len) & queue_virt_boundary(q));
+}
+
 static inline bool __bvec_gap_to_prev(struct request_queue *q,
 		struct bio_vec *bprv, unsigned int offset)
 {
-	return (offset & queue_virt_boundary(q)) ||
-		((bprv->bv_offset + bprv->bv_len) & queue_virt_boundary(q));
+	return __vec_gap_to_prev(q, bprv->bv_offset, bprv->bv_len,
+				 offset);
 }
 
 /*
@@ -117,6 +125,15 @@ static inline bool bvec_gap_to_prev(struct request_queue *q,
 	return __bvec_gap_to_prev(q, bprv, offset);
 }
 
+static inline bool vec_gap_to_prev(struct request_queue *q,
+		unsigned int prv_offset, unsigned int prv_len,
+		unsigned int nxt_offset)
+{
+	if (!queue_virt_boundary(q))
+		return false;
+	return __vec_gap_to_prev(q, prv_offset, prv_len, nxt_offset);
+}
+
 #ifdef CONFIG_BLK_DEV_INTEGRITY
 void blk_flush_integrity(void);
 bool __bio_integrity_endio(struct bio *);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
