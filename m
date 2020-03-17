Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 580A6188610
	for <lists+linux-nvme@lfdr.de>; Tue, 17 Mar 2020 14:41:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t/fVGGwpvJ34wT0lX1OPO3aJDH8Toj+J1imrbomtBZg=; b=L43aOb6OchB/WF
	XlP3N1lZSO9k9/80X8DuyL3ZqnvctLM9c+3OxO/JuA1MdO6J2yxOuxmPzx+JDznqRoHeVVCSVjRtv
	FWgNNbZXRIiWHsij3zhieZcO1QAy0CvTplapT1Bl+9h+A2FLKUvCcY0Ml2P1n02sBMkXXJETZYP0Y
	w5AAOxAx2Mdn6NCAcBpGoosSAhe+3QImKp3seaK/RCmh3XkXwvzb5VwKEV8IAOiaSHVmt/z9R11zY
	N2IO4lEBpP66HlPYpLzkw1vaoEvxKC6Hmr07dCizkPGKKcpotFDcYB+QnsRSQw2Bps2j5wLPQNGci
	5s2ynmVVlpxTO4SFZzZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jECTQ-0001SM-1N; Tue, 17 Mar 2020 13:41:36 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jECSU-0000a7-0T
 for linux-nvme@lists.infradead.org; Tue, 17 Mar 2020 13:40:55 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 17 Mar 2020 15:40:30 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02HDeUhd028750;
 Tue, 17 Mar 2020 15:40:30 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, sagi@grimberg.me, hch@lst.de,
 loberman@redhat.com, bvanassche@acm.org, linux-rdma@vger.kernel.org
Subject: [PATCH 2/5] nvmet-rdma: add srq pointer to rdma_cmd
Date: Tue, 17 Mar 2020 15:40:27 +0200
Message-Id: <20200317134030.152833-3-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200317134030.152833-1-maxg@mellanox.com>
References: <20200317134030.152833-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_064047_310294_AD6CCA9F 
X-CRM114-Status: UNSURE (   9.02  )
X-CRM114-Notice: Please train this message.
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
Cc: vladimirk@mellanox.com, shlomin@mellanox.com, leonro@mellanox.com,
 dledford@redhat.com, jgg@mellanox.com, oren@mellanox.com, kbusch@kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, idanb@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This is a preparetion patch for the SRQ per completion vector feature.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/rdma.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 37d262a..04062af 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -38,6 +38,7 @@ struct nvmet_rdma_cmd {
 	struct scatterlist	inline_sg[NVMET_RDMA_MAX_INLINE_SGE];
 	struct nvme_command     *nvme_cmd;
 	struct nvmet_rdma_queue	*queue;
+	struct ib_srq		*srq;
 };
 
 enum {
@@ -461,8 +462,8 @@ static int nvmet_rdma_post_recv(struct nvmet_rdma_device *ndev,
 		cmd->sge[0].addr, cmd->sge[0].length,
 		DMA_FROM_DEVICE);
 
-	if (ndev->srq)
-		ret = ib_post_srq_recv(ndev->srq, &cmd->wr, NULL);
+	if (cmd->srq)
+		ret = ib_post_srq_recv(cmd->srq, &cmd->wr, NULL);
 	else
 		ret = ib_post_recv(cmd->queue->cm_id->qp, &cmd->wr, NULL);
 
@@ -882,6 +883,7 @@ static int nvmet_rdma_init_srq(struct nvmet_rdma_device *ndev)
 	ndev->srq_size = srq_size;
 
 	for (i = 0; i < srq_size; i++) {
+		ndev->srq_cmds[i].srq = srq;
 		ret = nvmet_rdma_post_recv(ndev, &ndev->srq_cmds[i]);
 		if (ret)
 			goto out_free_cmds;
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
