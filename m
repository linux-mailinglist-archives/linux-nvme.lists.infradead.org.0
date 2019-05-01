Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30889109AF
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 16:58:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=l5+9ssR5+uySbLGUMOR80RBe63U4eyt3W9E9KBzPm6U=; b=mvcTO0I8aOu2TZK0ylX98pGtVM
	frFLfawStima5zGdhae/1oDMau2u9S2cBaBE6DnE1IOMgzVN09o8/iKCtZsCCaU3ISWnBFh067NPE
	6HAULCqy6bUbSPSJnZq83eJM8Q+Q55zNqQiD2nR3oU/rzDmpwS4VshsXCm5PTNcTDE5B7q2tTwL8n
	ehnthtYsq292iDS03n4IaqROMNVWz/P6p0T79ZjhnEUgeM1STpQ7tk/YYYyLxmA/YlNmGtnDgOWK7
	m1VCMLOEXR9s11A1skh6embEfSuRYdiXT496bmovjWmIgC2kHTqDHCML8ZvOdvYUbXyleutpxgyuM
	3zo+9+sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqgs-0000Co-In; Wed, 01 May 2019 14:58:34 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqTk-00025I-Iz
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 14:45:07 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 talgi@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 1 May 2019 17:44:53 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (gen-l-vrt-692.mtl.labs.mlnx
 [10.141.69.20])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x41Eirqf019853;
 Wed, 1 May 2019 17:44:53 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (localhost [127.0.0.1])
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7) with ESMTP id x41Eirwt036052;
 Wed, 1 May 2019 17:44:53 +0300
Received: (from talgi@localhost)
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7/Submit) id x41Eir40036051;
 Wed, 1 May 2019 17:44:53 +0300
From: Tal Gilboa <talgi@mellanox.com>
To: linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
Subject: [PATCH rdma-for-next 7/9] linux/dim: Add completions count to
 dim_sample
Date: Wed,  1 May 2019 17:44:37 +0300
Message-Id: <1556721879-35987-8-git-send-email-talgi@mellanox.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
References: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_074501_022832_C712EB6D 
X-CRM114-Status: GOOD (  12.33  )
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

From: Yamin Friedman <yaminf@mellanox.com>

Added a measurement of completions per/msec to allow for completion based
dim algorithms.

Signed-off-by: Yamin Friedman <yaminf@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Tal Gilboa <talgi@mellanox.com>
---
 drivers/net/ethernet/broadcom/bcmsysport.c        |  2 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c         |  1 +
 drivers/net/ethernet/broadcom/genet/bcmgenet.c    |  2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c |  6 ++++--
 include/linux/dim.h                               |  8 +++++++-
 lib/dim/dim.c                                     | 13 ++++++++++++-
 lib/dim/net_dim.c                                 |  2 +-
 7 files changed, 27 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bcmsysport.c b/drivers/net/ethernet/broadcom/bcmsysport.c
index b2c5b1a..fc21432 100644
--- a/drivers/net/ethernet/broadcom/bcmsysport.c
+++ b/drivers/net/ethernet/broadcom/bcmsysport.c
@@ -1029,7 +1029,7 @@ static int bcm_sysport_poll(struct napi_struct *napi, int budget)
 
 	if (priv->dim.use_dim) {
 		dim_create_sample(priv->dim.event_ctr, priv->dim.packets,
-				  priv->dim.bytes, &dim_sample);
+				  priv->dim.bytes, 0, &dim_sample);
 		net_dim(&priv->dim.dim, dim_sample);
 	}
 
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 9e62e3f..91607ef 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -2130,6 +2130,7 @@ static int bnxt_poll(struct napi_struct *napi, int budget)
 		dim_create_sample(cpr->event_ctr,
 				  cpr->rx_packets,
 				  cpr->rx_bytes,
+				  0,
 				  &dim_sample);
 		net_dim(&cpr->dim, dim_sample);
 	}
diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index 68d96e3..aca82ef 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -1910,7 +1910,7 @@ static int bcmgenet_rx_poll(struct napi_struct *napi, int budget)
 
 	if (ring->dim.use_dim) {
 		dim_create_sample(ring->dim.event_ctr, ring->dim.packets,
-				  ring->dim.bytes, &dim_sample);
+				  ring->dim.bytes, 0, &dim_sample);
 		net_dim(&ring->dim.dim, dim_sample);
 	}
 
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
index 4324747..ab68d7d 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
@@ -53,7 +53,8 @@ static void mlx5e_handle_tx_dim(struct mlx5e_txqsq *sq)
 	if (unlikely(!test_bit(MLX5E_SQ_STATE_AM, &sq->state)))
 		return;
 
-	dim_create_sample(sq->cq.event_ctr, stats->packets, stats->bytes, &dim_sample);
+	dim_create_sample(sq->cq.event_ctr, stats->packets, stats->bytes, 0,
+			  &dim_sample);
 	net_dim(&sq->dim, dim_sample);
 }
 
@@ -65,7 +66,8 @@ static void mlx5e_handle_rx_dim(struct mlx5e_rq *rq)
 	if (unlikely(!test_bit(MLX5E_RQ_STATE_AM, &rq->state)))
 		return;
 
-	dim_create_sample(rq->cq.event_ctr, stats->packets, stats->bytes, &dim_sample);
+	dim_create_sample(rq->cq.event_ctr, stats->packets, stats->bytes, 0,
+			  &dim_sample);
 	net_dim(&rq->dim, dim_sample);
 }
 
diff --git a/include/linux/dim.h b/include/linux/dim.h
index ffaea87..2bc4c40 100644
--- a/include/linux/dim.h
+++ b/include/linux/dim.h
@@ -44,6 +44,7 @@
 struct dim_cq_moder {
 	u16 usec;
 	u16 pkts;
+	u16 comps;
 	u8 cq_period_mode;
 };
 
@@ -52,18 +53,22 @@ struct dim_sample {
 	u32     pkt_ctr;
 	u32     byte_ctr;
 	u16     event_ctr;
+	u32     comp_ctr;
 };
 
 struct dim_stats {
 	int ppms; /* packets per msec */
 	int bpms; /* bytes per msec */
 	int epms; /* events per msec */
+	int cpms; /* completions per msec */
+	int cpe_ratio; /* ratio of completions to events */
 };
 
 struct dim { /* Dynamic Interrupt Moderation */
 	u8                                      state;
 	struct dim_stats                        prev_stats;
 	struct dim_sample                       start_sample;
+	struct dim_sample                       measuring_sample;
 	struct work_struct                      work;
 	u8                                      profile_ix;
 	u8                                      mode;
@@ -112,7 +117,8 @@ enum {
 
 void dim_park_tired(struct dim *dim);
 
-void dim_create_sample(u16 event_ctr, u64 packets, u64 bytes, struct dim_sample *s);
+void dim_create_sample(u16 event_ctr, u64 packets, u64 bytes, u64 comps,
+		       struct dim_sample *s);
 
 void dim_calc_stats(struct dim_sample *start, struct dim_sample *end,
 		    struct dim_stats *curr_stats);
diff --git a/lib/dim/dim.c b/lib/dim/dim.c
index 93e1ddd..4f25c0f 100644
--- a/lib/dim/dim.c
+++ b/lib/dim/dim.c
@@ -54,12 +54,14 @@ void dim_park_tired(struct dim *dim)
 }
 EXPORT_SYMBOL(dim_park_tired);
 
-void dim_create_sample(u16 event_ctr, u64 packets, u64 bytes, struct dim_sample *s)
+void dim_create_sample(u16 event_ctr, u64 packets, u64 bytes, u64 comps,
+		       struct dim_sample *s)
 {
 	s->time	     = ktime_get();
 	s->pkt_ctr   = packets;
 	s->byte_ctr  = bytes;
 	s->event_ctr = event_ctr;
+	s->comp_ctr  = comps;
 }
 EXPORT_SYMBOL(dim_create_sample);
 
@@ -71,6 +73,8 @@ void dim_calc_stats(struct dim_sample *start, struct dim_sample *end,
 	u32 npkts = BIT_GAP(BITS_PER_TYPE(u32), end->pkt_ctr, start->pkt_ctr);
 	u32 nbytes = BIT_GAP(BITS_PER_TYPE(u32), end->byte_ctr,
 			     start->byte_ctr);
+	u32 ncomps = BIT_GAP(BITS_PER_TYPE(u32), end->comp_ctr,
+			     start->comp_ctr);
 
 	if (!delta_us)
 		return;
@@ -79,5 +83,12 @@ void dim_calc_stats(struct dim_sample *start, struct dim_sample *end,
 	curr_stats->bpms = DIV_ROUND_UP(nbytes * USEC_PER_MSEC, delta_us);
 	curr_stats->epms = DIV_ROUND_UP(DIM_NEVENTS * USEC_PER_MSEC,
 					delta_us);
+	curr_stats->cpms = DIV_ROUND_UP(ncomps * USEC_PER_MSEC, delta_us);
+	if (curr_stats->epms != 0)
+		curr_stats->cpe_ratio =
+				(curr_stats->cpms * 100) / curr_stats->epms;
+	else
+		curr_stats->cpe_ratio = 0;
+
 }
 EXPORT_SYMBOL(dim_calc_stats);
diff --git a/lib/dim/net_dim.c b/lib/dim/net_dim.c
index 05d259e..67a8f82 100644
--- a/lib/dim/net_dim.c
+++ b/lib/dim/net_dim.c
@@ -181,7 +181,7 @@ void net_dim(struct dim *dim, struct dim_sample end_sample)
 		/* fall through */
 	case DIM_START_MEASURE:
 		dim_create_sample(end_sample.event_ctr, end_sample.pkt_ctr,
-				  end_sample.byte_ctr, &dim->start_sample);
+				  end_sample.byte_ctr, 0, &dim->start_sample);
 		dim->state = DIM_MEASURE_IN_PROGRESS;
 		break;
 	case DIM_APPLY_NEW_PROFILE:
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
