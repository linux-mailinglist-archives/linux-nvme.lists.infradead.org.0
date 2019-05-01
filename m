Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 671EB1098B
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 16:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gu3eW5dzb0nK6uN5/dUYyqxjUdiqXppA9QJtb0t2ULI=; b=tth0B5aIKk8Uy90hiV3qoAZN4h
	byj5FsdsdOrQ6obRtbgrA74B6+vC6uRLiY0sRzFezl0fYN7emJ2X17fPppZs710BJKQ+4Evh1nQi/
	7D1OsJ234xDSAfG34N9O1VNVCctheQ0QDzwqiqNzd3/wRtrZ5u/WqEGtLE8/cwF+spc3FTDciC0L4
	6molveWzxA54fEy5FpnXEenATJLJbjfKXjaQTFOgEZ8zu4iY23HUZXEX/hTjcomGxhUQEZALv09CR
	s1lAWNb+sc1af+8A6yXnwtQYP1vTd2V7AWOhTVHMUl1MPGLCg+B+R3EQc8aEnkmZX4JNAAkunZx1g
	IzlirZ2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqUc-0004L1-KV; Wed, 01 May 2019 14:45:54 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqTk-000253-Uf
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 14:45:13 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 talgi@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 1 May 2019 17:44:51 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (gen-l-vrt-692.mtl.labs.mlnx
 [10.141.69.20])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x41EipEY019840;
 Wed, 1 May 2019 17:44:51 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (localhost [127.0.0.1])
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7) with ESMTP id x41EipQa036044;
 Wed, 1 May 2019 17:44:51 +0300
Received: (from talgi@localhost)
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7/Submit) id x41EipeW036043;
 Wed, 1 May 2019 17:44:51 +0300
From: Tal Gilboa <talgi@mellanox.com>
To: linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
Subject: [PATCH rdma-for-next 3/9] linux/dim: Rename externally exposed macros
Date: Wed,  1 May 2019 17:44:33 +0300
Message-Id: <1556721879-35987-4-git-send-email-talgi@mellanox.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
References: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_074501_498412_CD2D8D3A 
X-CRM114-Status: GOOD (  11.39  )
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
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Yamin Friedman <yaminf@mellanox.com>, Leon Romanovsky <leon@kernel.org>,
 Saeed Mahameed <saeedm@mellanox.com>, Yishai Hadas <yishaih@mellanox.com>,
 Tal Gilboa <talgi@mellanox.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Doug Ledford <dledford@redhat.com>, Max Gurtovoy <maxg@mellanox.com>,
 Idan Burstein <idanb@mellanox.com>, Tariq Toukan <tariqt@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Renamed macros in use by external drivers.

Signed-off-by: Tal Gilboa <talgi@mellanox.com>
---
 drivers/net/ethernet/broadcom/bcmsysport.c        |  4 ++--
 drivers/net/ethernet/broadcom/bnxt/bnxt.c         |  2 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt_dim.c     |  2 +-
 drivers/net/ethernet/broadcom/genet/bcmgenet.c    |  4 ++--
 drivers/net/ethernet/mellanox/mlx5/core/en_dim.c  |  2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c | 10 +++++-----
 include/linux/dim.h                               | 12 ++++++------
 include/linux/net_dim.h                           | 18 +++++++++---------
 8 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bcmsysport.c b/drivers/net/ethernet/broadcom/bcmsysport.c
index bc3ac36..480089f 100644
--- a/drivers/net/ethernet/broadcom/bcmsysport.c
+++ b/drivers/net/ethernet/broadcom/bcmsysport.c
@@ -1108,7 +1108,7 @@ static void bcm_sysport_dim_work(struct work_struct *work)
 			net_dim_get_rx_moderation(dim->mode, dim->profile_ix);
 
 	bcm_sysport_set_rx_coalesce(priv, cur_profile.usec, cur_profile.pkts);
-	dim->state = NET_DIM_START_MEASURE;
+	dim->state = DIM_START_MEASURE;
 }
 
 /* RX and misc interrupt routine */
@@ -1460,7 +1460,7 @@ static void bcm_sysport_init_dim(struct bcm_sysport_priv *priv,
 	struct bcm_sysport_net_dim *dim = &priv->dim;
 
 	INIT_WORK(&dim->dim.work, cb);
-	dim->dim.mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+	dim->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 	dim->event_ctr = 0;
 	dim->packets = 0;
 	dim->bytes = 0;
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 4c586ba..21db503 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -7703,7 +7703,7 @@ static void bnxt_enable_napi(struct bnxt *bp)
 
 		if (bp->bnapi[i]->rx_ring) {
 			INIT_WORK(&cpr->dim.work, bnxt_dim_work);
-			cpr->dim.mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+			cpr->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 		}
 		napi_enable(&bp->bnapi[i]->napi);
 	}
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt_dim.c b/drivers/net/ethernet/broadcom/bnxt/bnxt_dim.c
index afa97c8..16a4588 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt_dim.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt_dim.c
@@ -28,5 +28,5 @@ void bnxt_dim_work(struct work_struct *work)
 	cpr->rx_ring_coal.coal_bufs = cur_moder.pkts;
 
 	bnxt_hwrm_set_ring_coal(bnapi->bp, bnapi);
-	dim->state = NET_DIM_START_MEASURE;
+	dim->state = DIM_START_MEASURE;
 }
diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 983245c..eee48da 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -1928,7 +1928,7 @@ static void bcmgenet_dim_work(struct work_struct *work)
 			net_dim_get_rx_moderation(dim->mode, dim->profile_ix);
 
 	bcmgenet_set_rx_coalesce(ring, cur_profile.usec, cur_profile.pkts);
-	dim->state = NET_DIM_START_MEASURE;
+	dim->state = DIM_START_MEASURE;
 }
 
 /* Assign skb to RX DMA descriptor. */
@@ -2085,7 +2085,7 @@ static void bcmgenet_init_dim(struct bcmgenet_rx_ring *ring,
 	struct bcmgenet_net_dim *dim = &ring->dim;
 
 	INIT_WORK(&dim->dim.work, cb);
-	dim->dim.mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+	dim->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 	dim->event_ctr = 0;
 	dim->packets = 0;
 	dim->bytes = 0;
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_dim.c b/drivers/net/ethernet/mellanox/mlx5/core/en_dim.c
index d67adf7..a80303a 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_dim.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_dim.c
@@ -38,7 +38,7 @@
 			struct mlx5_core_dev *mdev, struct mlx5_core_cq *mcq)
 {
 	mlx5_core_modify_cq_moderation(mdev, mcq, moder.usec, moder.pkts);
-	dim->state = NET_DIM_START_MEASURE;
+	dim->state = DIM_START_MEASURE;
 }
 
 void mlx5e_rx_dim_work(struct work_struct *work)
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
index b5fdbd3..589ecef 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_main.c
@@ -681,11 +681,11 @@ static int mlx5e_alloc_rq(struct mlx5e_channel *c,
 
 	switch (params->rx_cq_moderation.cq_period_mode) {
 	case MLX5_CQ_PERIOD_MODE_START_FROM_CQE:
-		rq->dim.mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE;
+		rq->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_CQE;
 		break;
 	case MLX5_CQ_PERIOD_MODE_START_FROM_EQE:
 	default:
-		rq->dim.mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+		rq->dim.mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 	}
 
 	rq->page_cache.head = 0;
@@ -2238,7 +2238,7 @@ static void mlx5e_build_ico_cq_param(struct mlx5e_priv *priv,
 
 	mlx5e_build_common_cq_param(priv, param);
 
-	param->cq_period_mode = NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+	param->cq_period_mode = DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 }
 
 static void mlx5e_build_icosq_param(struct mlx5e_priv *priv,
@@ -4485,8 +4485,8 @@ static struct net_dim_cq_moder mlx5e_get_def_rx_moderation(u8 cq_period_mode)
 static u8 mlx5_to_net_dim_cq_period_mode(u8 cq_period_mode)
 {
 	return cq_period_mode == MLX5_CQ_PERIOD_MODE_START_FROM_CQE ?
-		NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE :
-		NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE;
+		DIM_CQ_PERIOD_MODE_START_FROM_CQE :
+		DIM_CQ_PERIOD_MODE_START_FROM_EQE;
 }
 
 void mlx5e_set_tx_cq_mode_params(struct mlx5e_params *params, u8 cq_period_mode)
diff --git a/include/linux/dim.h b/include/linux/dim.h
index e5e3d0cf..67b80e9 100644
--- a/include/linux/dim.h
+++ b/include/linux/dim.h
@@ -74,15 +74,15 @@ struct net_dim { /* Dynamic Interrupt Moderation */
 };
 
 enum {
-	NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE = 0x0,
-	NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE = 0x1,
-	NET_DIM_CQ_PERIOD_NUM_MODES
+	DIM_CQ_PERIOD_MODE_START_FROM_EQE = 0x0,
+	DIM_CQ_PERIOD_MODE_START_FROM_CQE = 0x1,
+	DIM_CQ_PERIOD_NUM_MODES
 };
 
 enum {
-	NET_DIM_START_MEASURE,
-	NET_DIM_MEASURE_IN_PROGRESS,
-	NET_DIM_APPLY_NEW_PROFILE,
+	DIM_START_MEASURE,
+	DIM_MEASURE_IN_PROGRESS,
+	DIM_APPLY_NEW_PROFILE,
 };
 
 enum {
diff --git a/include/linux/net_dim.h b/include/linux/net_dim.h
index 3d9a2ff..d90f96f 100644
--- a/include/linux/net_dim.h
+++ b/include/linux/net_dim.h
@@ -78,13 +78,13 @@
 }
 
 static const struct net_dim_cq_moder
-rx_profile[NET_DIM_CQ_PERIOD_NUM_MODES][NET_DIM_PARAMS_NUM_PROFILES] = {
+rx_profile[DIM_CQ_PERIOD_NUM_MODES][NET_DIM_PARAMS_NUM_PROFILES] = {
 	NET_DIM_RX_EQE_PROFILES,
 	NET_DIM_RX_CQE_PROFILES,
 };
 
 static const struct net_dim_cq_moder
-tx_profile[NET_DIM_CQ_PERIOD_NUM_MODES][NET_DIM_PARAMS_NUM_PROFILES] = {
+tx_profile[DIM_CQ_PERIOD_NUM_MODES][NET_DIM_PARAMS_NUM_PROFILES] = {
 	NET_DIM_TX_EQE_PROFILES,
 	NET_DIM_TX_CQE_PROFILES,
 };
@@ -101,7 +101,7 @@
 static inline struct net_dim_cq_moder
 net_dim_get_def_rx_moderation(u8 cq_period_mode)
 {
-	u8 profile_ix = cq_period_mode == NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE ?
+	u8 profile_ix = cq_period_mode == DIM_CQ_PERIOD_MODE_START_FROM_CQE ?
 			NET_DIM_DEF_PROFILE_CQE : NET_DIM_DEF_PROFILE_EQE;
 
 	return net_dim_get_rx_moderation(cq_period_mode, profile_ix);
@@ -119,7 +119,7 @@
 static inline struct net_dim_cq_moder
 net_dim_get_def_tx_moderation(u8 cq_period_mode)
 {
-	u8 profile_ix = cq_period_mode == NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE ?
+	u8 profile_ix = cq_period_mode == DIM_CQ_PERIOD_MODE_START_FROM_CQE ?
 			NET_DIM_DEF_PROFILE_CQE : NET_DIM_DEF_PROFILE_EQE;
 
 	return net_dim_get_tx_moderation(cq_period_mode, profile_ix);
@@ -246,7 +246,7 @@ static inline void net_dim(struct net_dim *dim,
 	u16 nevents;
 
 	switch (dim->state) {
-	case NET_DIM_MEASURE_IN_PROGRESS:
+	case DIM_MEASURE_IN_PROGRESS:
 		nevents = BIT_GAP(BITS_PER_TYPE(u16),
 				  end_sample.event_ctr,
 				  dim->start_sample.event_ctr);
@@ -254,17 +254,17 @@ static inline void net_dim(struct net_dim *dim,
 			break;
 		dim_calc_stats(&dim->start_sample, &end_sample, &curr_stats);
 		if (net_dim_decision(&curr_stats, dim)) {
-			dim->state = NET_DIM_APPLY_NEW_PROFILE;
+			dim->state = DIM_APPLY_NEW_PROFILE;
 			schedule_work(&dim->work);
 			break;
 		}
 		/* fall through */
-	case NET_DIM_START_MEASURE:
+	case DIM_START_MEASURE:
 		net_dim_sample(end_sample.event_ctr, end_sample.pkt_ctr, end_sample.byte_ctr,
 			       &dim->start_sample);
-		dim->state = NET_DIM_MEASURE_IN_PROGRESS;
+		dim->state = DIM_MEASURE_IN_PROGRESS;
 		break;
-	case NET_DIM_APPLY_NEW_PROFILE:
+	case DIM_APPLY_NEW_PROFILE:
 		break;
 	}
 }
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
