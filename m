Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B6804D382
	for <lists+linux-nvme@lfdr.de>; Thu, 20 Jun 2019 18:19:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SdVvLQWgQsbXvB0KrKdMvlRtHSxOsi7aYtAtIuKZB78=; b=FO5wcEMg2Wfg5E
	nDxQ4QqqXSgCEGEnY+SuOTsF1RhCY/qN6INYbmI47GuUGjqUacGAKYBJHd28bs6gYScgVC6BATlEW
	ZDE7COzIS6d+C2RThGA3EgSJzEBvK41X953PfD3IdJ4Ed3fvq0LgcjDLp7bWpvPHgfWUGH5A/iBji
	qmIhf5FikJd4TkSGmJhJNfzyZxTamzkw4L39U6TlWZ1Klc+Ll1ns9m56d9hv1bhIFZ5d8bMP0XLBu
	CONK9bvxQd8VoNttUCLpOD7qCZnBFpcIOo/dp3DMCS6Leh8me+0EX9eL3u6vEugmb0rMw/fQvy0GB
	uYu9Ko8DwiOOXlRbkumA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdzmN-0002Qa-NZ; Thu, 20 Jun 2019 16:19:15 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdzgM-0004oK-HX
 for linux-nvme@lists.infradead.org; Thu, 20 Jun 2019 16:13:06 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hdzgC-00046M-Ja; Thu, 20 Jun 2019 10:13:01 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hdzg5-0005wr-OX; Thu, 20 Jun 2019 10:12:45 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-pci@vger.kernel.org,
 linux-rdma@vger.kernel.org
Date: Thu, 20 Jun 2019 10:12:32 -0600
Message-Id: <20190620161240.22738-21-logang@deltatee.com>
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
Subject: [RFC PATCH 20/28] IB/core: Introduce API for initializing a RW ctx
 from a DMA address
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_091303_032269_1244AA35 
X-CRM114-Status: GOOD (  14.53  )
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

Introduce rdma_rw_ctx_dma_init() and rdma_rw_ctx_dma_destroy() which
peform the same operation as rdma_rw_ctx_init() and
rdma_rw_ctx_destroy() respectively except they operate on a DMA
address and length instead of an SGL.

This will be used for struct page-less P2PDMA, but there's also
been opinions expressed to migrate away from SGLs and struct
pages in the RDMA APIs and this will likely fit with that
effort.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/infiniband/core/rw.c | 74 ++++++++++++++++++++++++++++++------
 include/rdma/rw.h            |  6 +++
 2 files changed, 69 insertions(+), 11 deletions(-)

diff --git a/drivers/infiniband/core/rw.c b/drivers/infiniband/core/rw.c
index 32ca8429eaae..cefa6b930bc8 100644
--- a/drivers/infiniband/core/rw.c
+++ b/drivers/infiniband/core/rw.c
@@ -319,6 +319,39 @@ int rdma_rw_ctx_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
 }
 EXPORT_SYMBOL(rdma_rw_ctx_init);
 
+/**
+ * rdma_rw_ctx_dma_init - initialize a RDMA READ/WRITE context from a
+ *	DMA address instead of SGL
+ * @ctx:	context to initialize
+ * @qp:		queue pair to operate on
+ * @port_num:	port num to which the connection is bound
+ * @addr:	DMA address to READ/WRITE from/to
+ * @len:	length of memory to operate on
+ * @remote_addr:remote address to read/write (relative to @rkey)
+ * @rkey:	remote key to operate on
+ * @dir:	%DMA_TO_DEVICE for RDMA WRITE, %DMA_FROM_DEVICE for RDMA READ
+ *
+ * Returns the number of WQEs that will be needed on the workqueue if
+ * successful, or a negative error code.
+ */
+int rdma_rw_ctx_dma_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
+		u8 port_num, dma_addr_t addr, u32 len, u64 remote_addr,
+		u32 rkey, enum dma_data_direction dir)
+{
+	struct scatterlist sg;
+
+	sg_dma_address(&sg) = addr;
+	sg_dma_len(&sg) = len;
+
+	if (rdma_rw_io_needs_mr(qp->device, port_num, dir, 1))
+		return rdma_rw_init_mr_wrs(ctx, qp, port_num, &sg, 1, 0,
+					   remote_addr, rkey, dir);
+	else
+		return rdma_rw_init_single_wr(ctx, qp, &sg, 0, remote_addr,
+					      rkey, dir);
+}
+EXPORT_SYMBOL(rdma_rw_ctx_dma_init);
+
 /**
  * rdma_rw_ctx_signature_init - initialize a RW context with signature offload
  * @ctx:	context to initialize
@@ -566,17 +599,7 @@ int rdma_rw_ctx_post(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
 }
 EXPORT_SYMBOL(rdma_rw_ctx_post);
 
-/**
- * rdma_rw_ctx_destroy - release all resources allocated by rdma_rw_ctx_init
- * @ctx:	context to release
- * @qp:		queue pair to operate on
- * @port_num:	port num to which the connection is bound
- * @sg:		scatterlist that was used for the READ/WRITE
- * @sg_cnt:	number of entries in @sg
- * @dir:	%DMA_TO_DEVICE for RDMA WRITE, %DMA_FROM_DEVICE for RDMA READ
- */
-void rdma_rw_ctx_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
-		struct scatterlist *sg, u32 sg_cnt, enum dma_data_direction dir)
+static void __rdma_rw_ctx_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp)
 {
 	int i;
 
@@ -596,6 +619,21 @@ void rdma_rw_ctx_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
 		BUG();
 		break;
 	}
+}
+
+/**
+ * rdma_rw_ctx_destroy - release all resources allocated by rdma_rw_ctx_init
+ * @ctx:	context to release
+ * @qp:		queue pair to operate on
+ * @port_num:	port num to which the connection is bound
+ * @sg:		scatterlist that was used for the READ/WRITE
+ * @sg_cnt:	number of entries in @sg
+ * @dir:	%DMA_TO_DEVICE for RDMA WRITE, %DMA_FROM_DEVICE for RDMA READ
+ */
+void rdma_rw_ctx_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
+		struct scatterlist *sg, u32 sg_cnt, enum dma_data_direction dir)
+{
+	__rdma_rw_ctx_destroy(ctx, qp);
 
 	/* P2PDMA contexts do not need to be unmapped */
 	if (!is_pci_p2pdma_page(sg_page(sg)))
@@ -603,6 +641,20 @@ void rdma_rw_ctx_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
 }
 EXPORT_SYMBOL(rdma_rw_ctx_destroy);
 
+/**
+ * rdma_rw_ctx_dma_destroy - release all resources allocated by
+ *	rdma_rw_ctx_dma_init
+ * @ctx:	context to release
+ * @qp:		queue pair to operate on
+ * @port_num:	port num to which the connection is bound
+ */
+void rdma_rw_ctx_dma_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
+			     u8 port_num)
+{
+	__rdma_rw_ctx_destroy(ctx, qp);
+}
+EXPORT_SYMBOL(rdma_rw_ctx_dma_destroy);
+
 /**
  * rdma_rw_ctx_destroy_signature - release all resources allocated by
  *	rdma_rw_ctx_init_signature
diff --git a/include/rdma/rw.h b/include/rdma/rw.h
index 494f79ca3e62..e47f8053af6e 100644
--- a/include/rdma/rw.h
+++ b/include/rdma/rw.h
@@ -58,6 +58,12 @@ void rdma_rw_ctx_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp, u8 port_num,
 		struct scatterlist *sg, u32 sg_cnt,
 		enum dma_data_direction dir);
 
+int rdma_rw_ctx_dma_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
+		u8 port_num, dma_addr_t addr, u32 len, u64 remote_addr,
+		u32 rkey, enum dma_data_direction dir);
+void rdma_rw_ctx_dma_destroy(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
+			     u8 port_num);
+
 int rdma_rw_ctx_signature_init(struct rdma_rw_ctx *ctx, struct ib_qp *qp,
 		u8 port_num, struct scatterlist *sg, u32 sg_cnt,
 		struct scatterlist *prot_sg, u32 prot_sg_cnt,
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
