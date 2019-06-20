Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE18E4D36D
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:16:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tpjxhRS6iAYbeWvuG9fPuPjmTpXZ7QvjC7T6BU0vkKY=; b=IwXELEcyPc2Ug5
	XAJNYTNvlo5bmV77Kk5xFH6ZtJ/iW/mZtlT6AEvoSP3DypyMXlcr3mqqS0yjxbby/meffe4AHMrlR
	NvLRQzsHRFTjqqWV/WL0e7l3RbvX4Dk+PR3jc8hTlbjr4y3BedtQSx2MstJWKNtXVJ58kxtJX61GZ
	nxlFtzGw9EPES4/sM/m6mRBcQqNHLMaA0kFWJ/BjsAX4UH150CbyLXaPS0uxfsvYU0398gk0RfIIa
	szF9BAkWJqqf8aNXM4cEjcqM6KqzQ3ruaEAm0nRgxOj5J23fzyc/69d9EZ7VmgbofuzstSSZ/pWRC
	73X3ks0Y44ax7O+0ADwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzj6-0008CH-4p; Thu, 20 Jun 2019 16:15:52 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgI-0004eD-Bt
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:01 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg6-00046I-68; Thu, 20 Jun 2019 10:12:52 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg3-0005vw-T4; Thu, 20 Jun 2019 10:12:43 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:13 -0600
Message-Id: <20190620161240.22738-2-logang@deltatee.com>
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
Subject: [RFC PATCH 01/28] block: Introduce DMA direct request type
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091258_930765_B21A1EF0 
X-CRM114-Status: GOOD (  11.99  )
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

A DMA direct request allows passing DMA addresses directly through
the block layer, instead of struct pages. This allows the calling
layer to take care of the mapping and unmapping and also creates
a path to doing peer-to-peer transactions without using struct pages.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 include/linux/blk_types.h |  9 ++++++++-
 include/linux/blkdev.h    | 10 ++++++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/include/linux/blk_types.h b/include/linux/blk_types.h
index 95202f80676c..f3cabfdb6774 100644
--- a/include/linux/blk_types.h
+++ b/include/linux/blk_types.h
@@ -322,6 +322,7 @@ enum req_flag_bits {
 	__REQ_NOUNMAP,		/* do not free blocks when zeroing */
 
 	__REQ_HIPRI,
+	__REQ_DMA_DIRECT,	/* DMA address direct request */
 
 	/* for driver use */
 	__REQ_DRV,
@@ -345,6 +346,7 @@ enum req_flag_bits {
 #define REQ_NOWAIT		(1ULL << __REQ_NOWAIT)
 #define REQ_NOUNMAP		(1ULL << __REQ_NOUNMAP)
 #define REQ_HIPRI		(1ULL << __REQ_HIPRI)
+#define REQ_DMA_DIRECT		(1ULL << __REQ_DMA_DIRECT)
 
 #define REQ_DRV			(1ULL << __REQ_DRV)
 #define REQ_SWAP		(1ULL << __REQ_SWAP)
@@ -353,7 +355,7 @@ enum req_flag_bits {
 	(REQ_FAILFAST_DEV | REQ_FAILFAST_TRANSPORT | REQ_FAILFAST_DRIVER)
 
 #define REQ_NOMERGE_FLAGS \
-	(REQ_NOMERGE | REQ_PREFLUSH | REQ_FUA)
+	(REQ_NOMERGE | REQ_PREFLUSH | REQ_FUA | REQ_DMA_DIRECT)
 
 enum stat_group {
 	STAT_READ,
@@ -412,6 +414,11 @@ static inline int op_stat_group(unsigned int op)
 	return op_is_write(op);
 }
 
+static inline int op_is_dma_direct(unsigned int op)
+{
+	return op & REQ_DMA_DIRECT;
+}
+
 typedef unsigned int blk_qc_t;
 #define BLK_QC_T_NONE		-1U
 #define BLK_QC_T_SHIFT		16
diff --git a/include/linux/blkdev.h b/include/linux/blkdev.h
index 592669bcc536..ce70d5dded5f 100644
--- a/include/linux/blkdev.h
+++ b/include/linux/blkdev.h
@@ -271,6 +271,16 @@ static inline bool bio_is_passthrough(struct bio *bio)
 	return blk_op_is_scsi(op) || blk_op_is_private(op);
 }
 
+static inline bool bio_is_dma_direct(struct bio *bio)
+{
+	return op_is_dma_direct(bio->bi_opf);
+}
+
+static inline bool blk_rq_is_dma_direct(struct request *rq)
+{
+	return op_is_dma_direct(rq->cmd_flags);
+}
+
 static inline unsigned short req_get_ioprio(struct request *req)
 {
 	return req->ioprio;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
