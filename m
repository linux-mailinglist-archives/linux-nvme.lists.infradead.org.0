Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B06CA6CA9
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Sep 2019 17:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=wOeDinEhK0xTD9fYTkKRC5LTsDsYa2Phdhf3GSmlasg=; b=m80bfQmwhC4NN+K96v1b3wQIkH
	f7nx5Kvg2/SxtaLPjRRDxp9X8WM0TRP+y2KxwFnn0jQduXiTk1B17w+2E6+FxgNdzT+qqd87oQxE9
	/RQKfv0eSHDczuYNjf2u5ddZhs0tDXEPDvApe89GsB387DGhGnveAGuAYh0TCsHZFBn3Lh6B4rJPc
	27KsGcha4LMjALP+FXcxYeOUqPlj+4ZbHWnTRHAObfwPLfJArOsEKzWdc5Fm4EPj+UBtkkJzQFhsZ
	hYWhOGL1POafLHkQfXMGe8jWhw1Ua6AgACt9JbK+v1AwvbPK1gorik5UHG7SdR5mKCibfonz0gf9w
	xb11U5TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5AVv-0000Rd-Iq; Tue, 03 Sep 2019 15:14:35 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5AVi-0000PV-L7
 for linux-nvme@lists.infradead.org; Tue, 03 Sep 2019 15:14:24 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 3 Sep 2019 18:14:15 +0300
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x83FEFl2016624;
 Tue, 3 Sep 2019 18:14:15 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-block@vger.kernel.org, axboe@kernel.dk, martin.petersen@oracle.com, 
 linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH 2/4] nvme-rdma: simplify error flow in nvme_rdma_queue_rq
Date: Tue,  3 Sep 2019 18:14:13 +0300
Message-Id: <1567523655-23989-2-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1567523655-23989-1-git-send-email-maxg@mellanox.com>
References: <1567523655-23989-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_081423_080922_E5A01380 
X-CRM114-Status: UNSURE (   8.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Max Gurtovoy <maxg@mellanox.com>, shlomin@mellanox.com,
 israelr@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Make the error flow symmetric to the good flow by moving the call to
nvme_cleanup_cmd from nvme_rdma_unmap_data function.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/rdma.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 1a6449b..db4a60f 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1149,7 +1149,6 @@ static void nvme_rdma_unmap_data(struct nvme_rdma_queue *queue,
 			req->nents, rq_data_dir(rq) ==
 				    WRITE ? DMA_TO_DEVICE : DMA_FROM_DEVICE);
 
-	nvme_cleanup_cmd(rq);
 	sg_free_table_chained(&req->sg_table, SG_CHUNK_SIZE);
 }
 
@@ -1748,7 +1747,6 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
 	if (unlikely(err < 0)) {
 		dev_err(queue->ctrl->ctrl.device,
 			     "Failed to map data (%d)\n", err);
-		nvme_cleanup_cmd(rq);
 		goto err;
 	}
 
@@ -1759,18 +1757,19 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
 
 	err = nvme_rdma_post_send(queue, sqe, req->sge, req->num_sge,
 			req->mr ? &req->reg_wr.wr : NULL);
-	if (unlikely(err)) {
-		nvme_rdma_unmap_data(queue, rq);
-		goto err;
-	}
+	if (unlikely(err))
+		goto err_unmap;
 
 	return BLK_STS_OK;
 
+err_unmap:
+	nvme_rdma_unmap_data(queue, rq);
 err:
 	if (err == -ENOMEM || err == -EAGAIN)
 		ret = BLK_STS_RESOURCE;
 	else
 		ret = BLK_STS_IOERR;
+	nvme_cleanup_cmd(rq);
 unmap_qe:
 	ib_dma_unmap_single(dev, req->sqe.dma, sizeof(struct nvme_command),
 			    DMA_TO_DEVICE);
@@ -1791,6 +1790,7 @@ static void nvme_rdma_complete_rq(struct request *rq)
 	struct ib_device *ibdev = queue->device->dev;
 
 	nvme_rdma_unmap_data(queue, rq);
+	nvme_cleanup_cmd(rq);
 	ib_dma_unmap_single(ibdev, req->sqe.dma, sizeof(struct nvme_command),
 			    DMA_TO_DEVICE);
 	nvme_complete_rq(rq);
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
