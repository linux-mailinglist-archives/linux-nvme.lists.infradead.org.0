Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EB6E10974
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 16:45:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=J7eNU9YNQPPUcUXGeRD4M3AGo48nwbGTauhZ2zfIJvU=; b=T+OAGdg7BFeX80N6pn/xNAdfaW
	qe/7eyD0iFF10TOwVdjnQ+Bq0CjEBBaFrBi4XOrzuKW0kdmHYwZIJfTXPAWK7nBgRX5YkFTqmi6+W
	lXxd1aokKKyW2RgbvTWZNnOSG3HVzyTfE2hrw7/DSX58GpilTUE1VeRALHUWrt+kprFw31zhFiGmi
	arnGkZuLSIVmboMmj89fNDb+mh0z3SOTMwulbrzTX6hU2S6ykLmS7KMBbF/bV17dfXXpjKSmCqr/D
	Ne3a2+k26S9wAJThyN1J80Mf16e1GSoTqs/M0yBYkYkHL5UziuJjYHVIWnEhLMfwZmVmsKPiizjyP
	YcGUV13g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqTt-0002OA-8u; Wed, 01 May 2019 14:45:09 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqTj-000257-RY
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 14:45:02 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 talgi@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 1 May 2019 17:44:52 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (gen-l-vrt-692.mtl.labs.mlnx
 [10.141.69.20])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x41EiqNR019843;
 Wed, 1 May 2019 17:44:52 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (localhost [127.0.0.1])
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7) with ESMTP id x41EipUF036046;
 Wed, 1 May 2019 17:44:52 +0300
Received: (from talgi@localhost)
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7/Submit) id x41EipXr036045;
 Wed, 1 May 2019 17:44:51 +0300
From: Tal Gilboa <talgi@mellanox.com>
To: linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
Subject: [PATCH rdma-for-next 4/9] linux/dim: Rename net_dim_sample() to
 net_dim_create_sample()
Date: Wed,  1 May 2019 17:44:34 +0300
Message-Id: <1556721879-35987-5-git-send-email-talgi@mellanox.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
References: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_074500_313850_225F43EA 
X-CRM114-Status: UNSURE (   8.01  )
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

In order to avoid confusion between the function and the similarly
named struct.
In preparation for removing the 'net' prefix from dim members.

Signed-off-by: Tal Gilboa <talgi@mellanox.com>
---
 drivers/net/ethernet/broadcom/bcmsysport.c        | 4 ++--
 drivers/net/ethernet/broadcom/bnxt/bnxt.c         | 8 ++++----
 drivers/net/ethernet/broadcom/genet/bcmgenet.c    | 4 ++--
 drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c | 6 ++----
 include/linux/dim.h                               | 8 ++++----
 include/linux/net_dim.h                           | 4 ++--
 6 files changed, 16 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/broadcom/bcmsysport.c b/drivers/net/ethernet/broadcom/bcmsysport.c
index 480089f..7a41ec7 100644
--- a/drivers/net/ethernet/broadcom/bcmsysport.c
+++ b/drivers/net/ethernet/broadcom/bcmsysport.c
@@ -1028,8 +1028,8 @@ static int bcm_sysport_poll(struct napi_struct *napi, int budget)
 	}
 
 	if (priv->dim.use_dim) {
-		net_dim_sample(priv->dim.event_ctr, priv->dim.packets,
-			       priv->dim.bytes, &dim_sample);
+		net_dim_create_sample(priv->dim.event_ctr, priv->dim.packets,
+				      priv->dim.bytes, &dim_sample);
 		net_dim(&priv->dim.dim, dim_sample);
 	}
 
diff --git a/drivers/net/ethernet/broadcom/bnxt/bnxt.c b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
index 21db503..1528620 100644
--- a/drivers/net/ethernet/broadcom/bnxt/bnxt.c
+++ b/drivers/net/ethernet/broadcom/bnxt/bnxt.c
@@ -2127,10 +2127,10 @@ static int bnxt_poll(struct napi_struct *napi, int budget)
 	if (bp->flags & BNXT_FLAG_DIM) {
 		struct net_dim_sample dim_sample;
 
-		net_dim_sample(cpr->event_ctr,
-			       cpr->rx_packets,
-			       cpr->rx_bytes,
-			       &dim_sample);
+		net_dim_create_sample(cpr->event_ctr,
+				      cpr->rx_packets,
+				      cpr->rx_bytes,
+				      &dim_sample);
 		net_dim(&cpr->dim, dim_sample);
 	}
 	mmiowb();
diff --git a/drivers/net/ethernet/broadcom/genet/bcmgenet.c b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
index eee48da..8ab2d67 100644
--- a/drivers/net/ethernet/broadcom/genet/bcmgenet.c
+++ b/drivers/net/ethernet/broadcom/genet/bcmgenet.c
@@ -1909,8 +1909,8 @@ static int bcmgenet_rx_poll(struct napi_struct *napi, int budget)
 	}
 
 	if (ring->dim.use_dim) {
-		net_dim_sample(ring->dim.event_ctr, ring->dim.packets,
-			       ring->dim.bytes, &dim_sample);
+		net_dim_create_sample(ring->dim.event_ctr, ring->dim.packets,
+				      ring->dim.bytes, &dim_sample);
 		net_dim(&ring->dim.dim, dim_sample);
 	}
 
diff --git a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
index b4af5e1..6dd8202 100644
--- a/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
+++ b/drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c
@@ -53,8 +53,7 @@ static void mlx5e_handle_tx_dim(struct mlx5e_txqsq *sq)
 	if (unlikely(!test_bit(MLX5E_SQ_STATE_AM, &sq->state)))
 		return;
 
-	net_dim_sample(sq->cq.event_ctr, stats->packets, stats->bytes,
-		       &dim_sample);
+	net_dim_create_sample(sq->cq.event_ctr, stats->packets, stats->bytes, &dim_sample);
 	net_dim(&sq->dim, dim_sample);
 }
 
@@ -66,8 +65,7 @@ static void mlx5e_handle_rx_dim(struct mlx5e_rq *rq)
 	if (unlikely(!test_bit(MLX5E_RQ_STATE_AM, &rq->state)))
 		return;
 
-	net_dim_sample(rq->cq.event_ctr, stats->packets, stats->bytes,
-		       &dim_sample);
+	net_dim_create_sample(rq->cq.event_ctr, stats->packets, stats->bytes, &dim_sample);
 	net_dim(&rq->dim, dim_sample);
 }
 
diff --git a/include/linux/dim.h b/include/linux/dim.h
index 67b80e9..2413021 100644
--- a/include/linux/dim.h
+++ b/include/linux/dim.h
@@ -149,10 +149,10 @@ static inline void dim_park_tired(struct net_dim *dim)
 	dim->tune_state   = DIM_PARKING_TIRED;
 }
 
-static inline void net_dim_sample(u16 event_ctr,
-				  u64 packets,
-				  u64 bytes,
-				  struct net_dim_sample *s)
+static inline void net_dim_create_sample(u16 event_ctr,
+					 u64 packets,
+					 u64 bytes,
+					 struct net_dim_sample *s)
 {
 	s->time	     = ktime_get();
 	s->pkt_ctr   = packets;
diff --git a/include/linux/net_dim.h b/include/linux/net_dim.h
index d90f96f..93c4e21 100644
--- a/include/linux/net_dim.h
+++ b/include/linux/net_dim.h
@@ -260,8 +260,8 @@ static inline void net_dim(struct net_dim *dim,
 		}
 		/* fall through */
 	case DIM_START_MEASURE:
-		net_dim_sample(end_sample.event_ctr, end_sample.pkt_ctr, end_sample.byte_ctr,
-			       &dim->start_sample);
+		net_dim_create_sample(end_sample.event_ctr, end_sample.pkt_ctr,
+				      end_sample.byte_ctr, &dim->start_sample);
 		dim->state = DIM_MEASURE_IN_PROGRESS;
 		break;
 	case DIM_APPLY_NEW_PROFILE:
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
