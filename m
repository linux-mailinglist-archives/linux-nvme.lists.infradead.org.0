Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B30FE16AC01
	for <lists+linux-nvme@lfdr.de>; Mon, 24 Feb 2020 17:46:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i4PGgD3fyR90Kp0jAH0uXalBS1A64deZCDihJP8h61A=; b=sj/O6/KCj9JDF/
	KotLJglBirStUJgZvSiskSG/9djBbySasMHfyCUy/xasrX5hq905K/DHKMnxqyCbAI+k/DDfQH7tQ
	0Z6izJONIoNOqOUbanTdKlKpWpB+4ScphBQ++9hhBl8HMAN09JUmHGjp6naprJTlmWBAQeSmEl/1j
	yRO2C6lehwZ2EtEV7Nbq4yd0tOeczQihG4cg6eRHxjo5QeBn55WbCsvlGnachE30rLbHKizx2/vdo
	GY3jR81yC8o2cYCe2UNFIltLggkVeprDXTcz9X/88hWkjup0T1KA7inoMyffXLOxFS9TqtbSwV5rc
	9Na17bSRZhe/eG8S60DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6GsY-0001s3-7y; Mon, 24 Feb 2020 16:46:46 +0000
Received: from merlin.infradead.org ([205.233.59.134])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Grn-0001Kh-0E
 for linux-nvme@bombadil.infradead.org; Mon, 24 Feb 2020 16:45:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=/0BwuQ1Ay9IttLRsdhBHfrMhxDgTNj74wxx6suo7WDg=; b=vhg8X5ZtLrW3+J2c9EOiBsNJfz
 nAQZnY48X/KBFRZJ9G+0usiI3LfCVYgbv8nETSoT5vu0a6lOr44eA4hCULaoldn/UW7jWw8sLFnbZ
 ul5ekkBPeXxUDIM2TZDhhVjllhhz3Py2uTInmc6sNVAYrsJ4hVBQ9Ni3cif0ZfuBt++7o5Ctdha+1
 YrjHodDng1jw/GA3Fy9smb86k7tG4J0Z7HAQuQt+JpJmDSOOgmt96Yr9we2Z6SchStFoOg2NeDCLr
 JwLXwPPV9Ns74Cp5h12xyDRaFCYxWGZX49F2GyN1zOJzkGrUoI3BYNFhu/U6aKsSbzNU34MZ/9Cie
 e11kBhxA==;
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6Grk-0002Dk-EE
 for linux-nvme@lists.infradead.org; Mon, 24 Feb 2020 16:45:58 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 24 Feb 2020 18:45:47 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 01OGji9d013647;
 Mon, 24 Feb 2020 18:45:47 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, sagi@grimberg.me,
 linux-rdma@vger.kernel.org, kbusch@kernel.org, hch@lst.de,
 martin.petersen@oracle.com
Subject: [PATCH 17/19] RDMA/rw: Expose maximal page list for a device per 1 MR
Date: Mon, 24 Feb 2020 18:45:42 +0200
Message-Id: <20200224164544.219438-19-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200224164544.219438-1-maxg@mellanox.com>
References: <20200224164544.219438-1-maxg@mellanox.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: axboe@kernel.dk, vladimirk@mellanox.com, shlomin@mellanox.com,
 israelr@mellanox.com, idanb@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

ULP's will use this information to determine the maximal data transfer
size per IO operation.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/infiniband/core/rw.c | 14 ++++++++++++--
 include/rdma/rw.h            |  1 +
 2 files changed, 13 insertions(+), 2 deletions(-)

diff --git a/drivers/infiniband/core/rw.c b/drivers/infiniband/core/rw.c
index 4fad732..edc9bee 100644
--- a/drivers/infiniband/core/rw.c
+++ b/drivers/infiniband/core/rw.c
@@ -56,8 +56,17 @@ static inline bool rdma_rw_io_needs_mr(struct ib_device *dev, u8 port_num,
 	return false;
 }
 
-static inline u32 rdma_rw_fr_page_list_len(struct ib_device *dev,
-					   bool pi_support)
+/**
+ * rdma_rw_fr_page_list_len - return the max number of pages mapped by 1 MR
+ * @dev:	RDMA device that will eventually create a PD for needed MRs
+ * @pi_support:	Whether MRs will be created for protection information offload
+ *
+ * Returns the number of pages that one MR can map for RDMA operation by the
+ * given device. One can determine the maximal data size according to the
+ * result of this function, or chose using multiple MRs for the RDMA operation
+ * as well.
+ */
+u32 rdma_rw_fr_page_list_len(struct ib_device *dev, bool pi_support)
 {
 	u32 max_pages;
 
@@ -69,6 +78,7 @@ static inline u32 rdma_rw_fr_page_list_len(struct ib_device *dev,
 	/* arbitrary limit to avoid allocating gigantic resources */
 	return min_t(u32, max_pages, 256);
 }
+EXPORT_SYMBOL(rdma_rw_fr_page_list_len);
 
 static inline int rdma_rw_inv_key(struct rdma_rw_reg_ctx *reg)
 {
diff --git a/include/rdma/rw.h b/include/rdma/rw.h
index 6ad9dc8..a9bbda7 100644
--- a/include/rdma/rw.h
+++ b/include/rdma/rw.h
@@ -69,5 +69,6 @@ unsigned int rdma_rw_mr_factor(struct ib_device *device, u8 port_num,
 void rdma_rw_init_qp(struct ib_device *dev, struct ib_qp_init_attr *attr);
 int rdma_rw_init_mrs(struct ib_qp *qp, struct ib_qp_init_attr *attr);
 void rdma_rw_cleanup_mrs(struct ib_qp *qp);
+u32 rdma_rw_fr_page_list_len(struct ib_device *dev, bool pi_support);
 
 #endif /* _RDMA_RW_H */
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
