Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47C9AA5A00
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Sep 2019 17:01:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=11UQIwInliKbOQVz43tbFp/Cfk6oo/GU0qDG/mPXT4A=; b=D/CHAKwciXPKGgXb1q2AnCaxhu
	pR3hOP8mROKzptWzTUThDQczPk2P8DgJXoR93oHS5b2qBrUhwctevWkGAt6f8X9gnFnIKi1nRtCDy
	Not7R8FE4z9iUwC0p9oGhbbemzS8rbLm6anzlijS346WTPvk6qQFu8cA0emoybKOKFqUymwgBa3f0
	b1N3VQz9BCFbse3pvM0KFIrJszJfKh+T1C04QnRhlnRvnC4XrgBZy2yByTFoXpjCbZs2CdoDpYoFX
	dsHUn2849IjLqw0rwbwm/wwt0ygZSICiAcGyb9VW+qDI1+71PUe6y9cdPnIHz/vcQEAV1/gy9QwVY
	E3E8pMVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4npn-000571-8o; Mon, 02 Sep 2019 15:01:35 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4npO-00050T-Pj
 for linux-nvme@lists.infradead.org; Mon, 02 Sep 2019 15:01:12 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 2 Sep 2019 18:01:03 +0300
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x82F13o1012407;
 Mon, 2 Sep 2019 18:01:03 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de,
 james.smart@broadcom.com, sagi@grimberg.me
Subject: [PATCH 3/3] nvme-rdma: avoid un-needed dereference of request sqe
Date: Mon,  2 Sep 2019 18:01:02 +0300
Message-Id: <1567436462-23218-3-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1567436462-23218-1-git-send-email-maxg@mellanox.com>
References: <1567436462-23218-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_080111_269311_5D08ED4C 
X-CRM114-Status: UNSURE (   8.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: israelr@mellanox.com, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Instead, use the local variable that was set previously.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/rdma.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index cd94f8a..458b5f4 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1727,10 +1727,10 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
 
 	dev = queue->device->dev;
 
-	req->sqe.dma = ib_dma_map_single(dev, req->sqe.data,
-					 sizeof(struct nvme_command),
-					 DMA_TO_DEVICE);
-	err = ib_dma_mapping_error(dev, req->sqe.dma);
+	sqe->dma = ib_dma_map_single(dev, sqe->data,
+				     sizeof(struct nvme_command),
+				     DMA_TO_DEVICE);
+	err = ib_dma_mapping_error(dev, sqe->dma);
 	if (unlikely(err))
 		return BLK_STS_RESOURCE;
 
@@ -1771,7 +1771,7 @@ static blk_status_t nvme_rdma_queue_rq(struct blk_mq_hw_ctx *hctx,
 		ret = BLK_STS_IOERR;
 	nvme_cleanup_cmd(rq);
 unmap_qe:
-	ib_dma_unmap_single(dev, req->sqe.dma, sizeof(struct nvme_command),
+	ib_dma_unmap_single(dev, sqe->dma, sizeof(struct nvme_command),
 			    DMA_TO_DEVICE);
 	return ret;
 }
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
