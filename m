Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAA5A17A28C
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Mar 2020 10:56:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dvKs2m08UunBet2AAQEtdvu1iPfnnCmHdSn0yeR5qxE=; b=NL0/Jc09uIGHwC
	U3KPmZ0AgL/fCZEcP5MdsyMWHW9VMScZIenwF/U44LEd+C8K/RQxenNxFc5mhSrKA/S40Q7lbbMCs
	Ranw9501DqjVu6Qsv4SlNLYaIOFONhk6hLGQDYF/lDoCVWiIDq51rNKjmk0qWtN7bKHEpUbXC9ssu
	RFvgfQgcUq0yakgutOsk2cg77Tmim9CxiVAeW5vnK4LjfeYt++eDYb495c1q9DHgB1RxPO4Q01SpO
	Ufw9XWMb/27KsZE7AOiCyGmsTYPBO/0ShewvbkWaVbcSUde7bnIqGJ1pIj8Zv7uq573RwW86E37zn
	LboK0RRqCUr6vv3JJKDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9nET-0001As-Ks; Thu, 05 Mar 2020 09:55:57 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9nEB-00012S-7m
 for linux-nvme@lists.infradead.org; Thu, 05 Mar 2020 09:55:41 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 5 Mar 2020 11:55:31 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 0259tUhQ020720;
 Thu, 5 Mar 2020 11:55:30 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: jgg@mellanox.com, linux-nvme@lists.infradead.org, sagi@grimberg.me,
 hch@lst.de, kbusch@kernel.org, Chaitanya.Kulkarni@wdc.com
Subject: [PATCH V2 3/3] nvmet-rdma: allocate RW ctxs according to mdts
Date: Thu,  5 Mar 2020 11:55:30 +0200
Message-Id: <20200305095530.132858-3-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200305095530.132858-1-maxg@mellanox.com>
References: <20200305095530.132858-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200305_015539_680525_56F5BF78 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: krishna2@chelsio.com, Max Gurtovoy <maxg@mellanox.com>, bharat@chelsio.com,
 nirranjan@chelsio.com, bvanassche@acm.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Current nvmet-rdma code allocates MR pool budget based on queue size,
assuming both host and target use the same "max_pages_per_mr" count.
After limiting the mdts value for RDMA controllers, we know the factor
of maximum MR's per IO operation. Thus, make sure MR pool will be
sufficient for the required IO depth and IO size.

That is, say host's SQ size is 100, then the MR pool budget allocated
currently at target will also be 100 MRs. But 100 IO WRITE Requests
with 256 sg_count(IO size above 1MB) require 200 MRs when target's
"max_pages_per_mr" is 128.

Reported-by: Krishnamraju Eraparaju <krishna2@chelsio.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---

changes from V1:
 - added "Reviewed-by" signature (Christoph)

---
 drivers/nvme/target/rdma.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index d12ef0d..daab656 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -976,7 +976,7 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
 {
 	struct ib_qp_init_attr qp_attr;
 	struct nvmet_rdma_device *ndev = queue->dev;
-	int comp_vector, nr_cqe, ret, i;
+	int comp_vector, nr_cqe, ret, i, factor;
 
 	/*
 	 * Spread the io queues across completion vectors,
@@ -1009,7 +1009,9 @@ static int nvmet_rdma_create_queue_ib(struct nvmet_rdma_queue *queue)
 	qp_attr.qp_type = IB_QPT_RC;
 	/* +1 for drain */
 	qp_attr.cap.max_send_wr = queue->send_queue_size + 1;
-	qp_attr.cap.max_rdma_ctxs = queue->send_queue_size;
+	factor = rdma_rw_mr_factor(ndev->device, queue->cm_id->port_num,
+				   1 << NVMET_RDMA_MAX_MDTS);
+	qp_attr.cap.max_rdma_ctxs = queue->send_queue_size * factor;
 	qp_attr.cap.max_send_sge = max(ndev->device->attrs.max_sge_rd,
 					ndev->device->attrs.max_send_sge);
 
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
