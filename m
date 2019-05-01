Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E7E010980
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 16:45:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QLjSfRRYCbpCUWjRVHl9iXFCP/G+3d1aS2GOqM5BwwU=; b=tBPX2GhwY5w65efIg0JgCu/bsv
	W6SaKYCOczXo2zbO2keTQ7Dvklt6l9FWO/wekXnYSnl5bb4mYcHSxzvGlLvy7oY4nEgs8jcJec/en
	Y3G+o8pIOoddKRyVi46a6bUjZNjpqkAen+W3F7FTY/RgS0s3OQ2zdGItgN1wXjDfDaUt8seJBd7g+
	ZCYtrkxX6CUt+Y+IGBGsuBM9JINXAcV/9aYc5D4fyRjBfnyh5x1mad7jWWiYW3UrvJS/L5kAne3+F
	/lXmLVeVg33IIQNn/ldtFa4BAl1ueQNWR2WSSA2KuwvUknBuOefKDupa2fZMuz+jhK6HUMRjZINX3
	H9wz6x+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqU1-0002yM-Lg; Wed, 01 May 2019 14:45:17 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqTj-000254-R6
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 14:45:02 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 talgi@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 1 May 2019 17:44:50 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (gen-l-vrt-692.mtl.labs.mlnx
 [10.141.69.20])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x41Eiogd019831;
 Wed, 1 May 2019 17:44:50 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (localhost [127.0.0.1])
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7) with ESMTP id x41Eiong036038;
 Wed, 1 May 2019 17:44:50 +0300
Received: (from talgi@localhost)
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7/Submit) id x41EioKV036037;
 Wed, 1 May 2019 17:44:50 +0300
From: Tal Gilboa <talgi@mellanox.com>
To: linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
Subject: [PATCH rdma-for-next 1/9] linux/dim: Move logic to dim.h
Date: Wed,  1 May 2019 17:44:31 +0300
Message-Id: <1556721879-35987-2-git-send-email-talgi@mellanox.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
References: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_074500_308690_93466FF5 
X-CRM114-Status: GOOD (  19.65  )
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

In preparation for supporting more implementations of the DIM
algorithm, I'm moving what would become common logic to a common
library. Downstream DIM implementations will use the common lib
for their implementation.

Signed-off-by: Tal Gilboa <talgi@mellanox.com>
---
 include/linux/dim.h     | 182 ++++++++++++++++++++++++++++++++++++++++++++++++
 include/linux/net_dim.h | 148 +--------------------------------------
 2 files changed, 184 insertions(+), 146 deletions(-)
 create mode 100644 include/linux/dim.h

diff --git a/include/linux/dim.h b/include/linux/dim.h
new file mode 100644
index 0000000..d06f6e4
--- /dev/null
+++ b/include/linux/dim.h
@@ -0,0 +1,182 @@
+/*
+ * Copyright (c) 2016, Mellanox Technologies. All rights reserved.
+ * Copyright (c) 2017-2018, Broadcom Limited. All rights reserved.
+ *
+ * This software is available to you under a choice of one of two
+ * licenses.  You may choose to be licensed under the terms of the GNU
+ * General Public License (GPL) Version 2, available from the file
+ * COPYING in the main directory of this source tree, or the
+ * OpenIB.org BSD license below:
+ *
+ *     Redistribution and use in source and binary forms, with or
+ *     without modification, are permitted provided that the following
+ *     conditions are met:
+ *
+ *      - Redistributions of source code must retain the above
+ *        copyright notice, this list of conditions and the following
+ *        disclaimer.
+ *
+ *      - Redistributions in binary form must reproduce the above
+ *        copyright notice, this list of conditions and the following
+ *        disclaimer in the documentation and/or other materials
+ *        provided with the distribution.
+ *
+ * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
+ * EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
+ * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
+ * NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS
+ * BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN
+ * ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
+ * CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
+ * SOFTWARE.
+ */
+
+#ifndef DIM_H
+#define DIM_H
+
+#include <linux/module.h>
+
+#define NET_DIM_NEVENTS 64
+#define IS_SIGNIFICANT_DIFF(val, ref) \
+	(((100UL * abs((val) - (ref))) / (ref)) > 10) /* more than 10% difference */
+#define BIT_GAP(bits, end, start) ((((end) - (start)) + BIT_ULL(bits)) & (BIT_ULL(bits) - 1))
+
+struct net_dim_cq_moder {
+	u16 usec;
+	u16 pkts;
+	u8 cq_period_mode;
+};
+
+struct net_dim_sample {
+	ktime_t time;
+	u32     pkt_ctr;
+	u32     byte_ctr;
+	u16     event_ctr;
+};
+
+struct net_dim_stats {
+	int ppms; /* packets per msec */
+	int bpms; /* bytes per msec */
+	int epms; /* events per msec */
+};
+
+struct net_dim { /* Dynamic Interrupt Moderation */
+	u8                                      state;
+	struct net_dim_stats                    prev_stats;
+	struct net_dim_sample                   start_sample;
+	struct work_struct                      work;
+	u8                                      profile_ix;
+	u8                                      mode;
+	u8                                      tune_state;
+	u8                                      steps_right;
+	u8                                      steps_left;
+	u8                                      tired;
+};
+
+enum {
+	NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE = 0x0,
+	NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE = 0x1,
+	NET_DIM_CQ_PERIOD_NUM_MODES
+};
+
+enum {
+	NET_DIM_START_MEASURE,
+	NET_DIM_MEASURE_IN_PROGRESS,
+	NET_DIM_APPLY_NEW_PROFILE,
+};
+
+enum {
+	NET_DIM_PARKING_ON_TOP,
+	NET_DIM_PARKING_TIRED,
+	NET_DIM_GOING_RIGHT,
+	NET_DIM_GOING_LEFT,
+};
+
+enum {
+	NET_DIM_STATS_WORSE,
+	NET_DIM_STATS_SAME,
+	NET_DIM_STATS_BETTER,
+};
+
+enum {
+	NET_DIM_STEPPED,
+	NET_DIM_TOO_TIRED,
+	NET_DIM_ON_EDGE,
+};
+
+static inline bool net_dim_on_top(struct net_dim *net_dim)
+{
+	switch (net_dim->tune_state) {
+	case NET_DIM_PARKING_ON_TOP:
+	case NET_DIM_PARKING_TIRED:
+		return true;
+	case NET_DIM_GOING_RIGHT:
+		return (net_dim->steps_left > 1) && (net_dim->steps_right == 1);
+	default: /* NET_DIM_GOING_LEFT */
+		return (net_dim->steps_right > 1) && (net_dim->steps_left == 1);
+	}
+}
+
+static inline void net_dim_turn(struct net_dim *net_dim)
+{
+	switch (net_dim->tune_state) {
+	case NET_DIM_PARKING_ON_TOP:
+	case NET_DIM_PARKING_TIRED:
+		break;
+	case NET_DIM_GOING_RIGHT:
+		net_dim->tune_state = NET_DIM_GOING_LEFT;
+		net_dim->steps_left = 0;
+		break;
+	case NET_DIM_GOING_LEFT:
+		net_dim->tune_state = NET_DIM_GOING_RIGHT;
+		net_dim->steps_right = 0;
+		break;
+	}
+}
+
+static inline void net_dim_park_on_top(struct net_dim *net_dim)
+{
+	net_dim->steps_right  = 0;
+	net_dim->steps_left   = 0;
+	net_dim->tired        = 0;
+	net_dim->tune_state   = NET_DIM_PARKING_ON_TOP;
+}
+
+static inline void net_dim_park_tired(struct net_dim *net_dim)
+{
+	net_dim->steps_right  = 0;
+	net_dim->steps_left   = 0;
+	net_dim->tune_state   = NET_DIM_PARKING_TIRED;
+}
+
+static inline void net_dim_sample(u16 event_ctr,
+				  u64 packets,
+				  u64 bytes,
+				  struct net_dim_sample *s)
+{
+	s->time	     = ktime_get();
+	s->pkt_ctr   = packets;
+	s->byte_ctr  = bytes;
+	s->event_ctr = event_ctr;
+}
+
+static inline void net_dim_calc_stats(struct net_dim_sample *start,
+				      struct net_dim_sample *end,
+				      struct net_dim_stats *curr_stats)
+{
+	/* u32 holds up to 71 minutes, should be enough */
+	u32 delta_us = ktime_us_delta(end->time, start->time);
+	u32 npkts = BIT_GAP(BITS_PER_TYPE(u32), end->pkt_ctr, start->pkt_ctr);
+	u32 nbytes = BIT_GAP(BITS_PER_TYPE(u32), end->byte_ctr,
+			     start->byte_ctr);
+
+	if (!delta_us)
+		return;
+
+	curr_stats->ppms = DIV_ROUND_UP(npkts * USEC_PER_MSEC, delta_us);
+	curr_stats->bpms = DIV_ROUND_UP(nbytes * USEC_PER_MSEC, delta_us);
+	curr_stats->epms = DIV_ROUND_UP(NET_DIM_NEVENTS * USEC_PER_MSEC,
+					delta_us);
+}
+
+#endif /* DIM_H */
diff --git a/include/linux/net_dim.h b/include/linux/net_dim.h
index fd45838..373cda7 100644
--- a/include/linux/net_dim.h
+++ b/include/linux/net_dim.h
@@ -35,73 +35,10 @@
 #define NET_DIM_H
 
 #include <linux/module.h>
-
-struct net_dim_cq_moder {
-	u16 usec;
-	u16 pkts;
-	u8 cq_period_mode;
-};
-
-struct net_dim_sample {
-	ktime_t time;
-	u32     pkt_ctr;
-	u32     byte_ctr;
-	u16     event_ctr;
-};
-
-struct net_dim_stats {
-	int ppms; /* packets per msec */
-	int bpms; /* bytes per msec */
-	int epms; /* events per msec */
-};
-
-struct net_dim { /* Adaptive Moderation */
-	u8                                      state;
-	struct net_dim_stats                    prev_stats;
-	struct net_dim_sample                   start_sample;
-	struct work_struct                      work;
-	u8                                      profile_ix;
-	u8                                      mode;
-	u8                                      tune_state;
-	u8                                      steps_right;
-	u8                                      steps_left;
-	u8                                      tired;
-};
-
-enum {
-	NET_DIM_CQ_PERIOD_MODE_START_FROM_EQE = 0x0,
-	NET_DIM_CQ_PERIOD_MODE_START_FROM_CQE = 0x1,
-	NET_DIM_CQ_PERIOD_NUM_MODES
-};
-
-/* Adaptive moderation logic */
-enum {
-	NET_DIM_START_MEASURE,
-	NET_DIM_MEASURE_IN_PROGRESS,
-	NET_DIM_APPLY_NEW_PROFILE,
-};
-
-enum {
-	NET_DIM_PARKING_ON_TOP,
-	NET_DIM_PARKING_TIRED,
-	NET_DIM_GOING_RIGHT,
-	NET_DIM_GOING_LEFT,
-};
-
-enum {
-	NET_DIM_STATS_WORSE,
-	NET_DIM_STATS_SAME,
-	NET_DIM_STATS_BETTER,
-};
-
-enum {
-	NET_DIM_STEPPED,
-	NET_DIM_TOO_TIRED,
-	NET_DIM_ON_EDGE,
-};
+#include <linux/dim.h>
 
 #define NET_DIM_PARAMS_NUM_PROFILES 5
-/* Adaptive moderation profiles */
+/* Netdev dynamic interrupt moderation profiles */
 #define NET_DIM_DEFAULT_RX_CQ_MODERATION_PKTS_FROM_EQE 256
 #define NET_DIM_DEFAULT_TX_CQ_MODERATION_PKTS_FROM_EQE 128
 #define NET_DIM_DEF_PROFILE_CQE 1
@@ -188,36 +125,6 @@ enum {
 	return net_dim_get_tx_moderation(cq_period_mode, profile_ix);
 }
 
-static inline bool net_dim_on_top(struct net_dim *dim)
-{
-	switch (dim->tune_state) {
-	case NET_DIM_PARKING_ON_TOP:
-	case NET_DIM_PARKING_TIRED:
-		return true;
-	case NET_DIM_GOING_RIGHT:
-		return (dim->steps_left > 1) && (dim->steps_right == 1);
-	default: /* NET_DIM_GOING_LEFT */
-		return (dim->steps_right > 1) && (dim->steps_left == 1);
-	}
-}
-
-static inline void net_dim_turn(struct net_dim *dim)
-{
-	switch (dim->tune_state) {
-	case NET_DIM_PARKING_ON_TOP:
-	case NET_DIM_PARKING_TIRED:
-		break;
-	case NET_DIM_GOING_RIGHT:
-		dim->tune_state = NET_DIM_GOING_LEFT;
-		dim->steps_left = 0;
-		break;
-	case NET_DIM_GOING_LEFT:
-		dim->tune_state = NET_DIM_GOING_RIGHT;
-		dim->steps_right = 0;
-		break;
-	}
-}
-
 static inline int net_dim_step(struct net_dim *dim)
 {
 	if (dim->tired == (NET_DIM_PARAMS_NUM_PROFILES * 2))
@@ -245,21 +152,6 @@ static inline int net_dim_step(struct net_dim *dim)
 	return NET_DIM_STEPPED;
 }
 
-static inline void net_dim_park_on_top(struct net_dim *dim)
-{
-	dim->steps_right  = 0;
-	dim->steps_left   = 0;
-	dim->tired        = 0;
-	dim->tune_state   = NET_DIM_PARKING_ON_TOP;
-}
-
-static inline void net_dim_park_tired(struct net_dim *dim)
-{
-	dim->steps_right  = 0;
-	dim->steps_left   = 0;
-	dim->tune_state   = NET_DIM_PARKING_TIRED;
-}
-
 static inline void net_dim_exit_parking(struct net_dim *dim)
 {
 	dim->tune_state = dim->profile_ix ? NET_DIM_GOING_LEFT :
@@ -267,9 +159,6 @@ static inline void net_dim_exit_parking(struct net_dim *dim)
 	net_dim_step(dim);
 }
 
-#define IS_SIGNIFICANT_DIFF(val, ref) \
-	(((100UL * abs((val) - (ref))) / (ref)) > 10) /* more than 10% difference */
-
 static inline int net_dim_stats_compare(struct net_dim_stats *curr,
 					struct net_dim_stats *prev)
 {
@@ -351,39 +240,6 @@ static inline bool net_dim_decision(struct net_dim_stats *curr_stats,
 	return dim->profile_ix != prev_ix;
 }
 
-static inline void net_dim_sample(u16 event_ctr,
-				  u64 packets,
-				  u64 bytes,
-				  struct net_dim_sample *s)
-{
-	s->time	     = ktime_get();
-	s->pkt_ctr   = packets;
-	s->byte_ctr  = bytes;
-	s->event_ctr = event_ctr;
-}
-
-#define NET_DIM_NEVENTS 64
-#define BIT_GAP(bits, end, start) ((((end) - (start)) + BIT_ULL(bits)) & (BIT_ULL(bits) - 1))
-
-static inline void net_dim_calc_stats(struct net_dim_sample *start,
-				      struct net_dim_sample *end,
-				      struct net_dim_stats *curr_stats)
-{
-	/* u32 holds up to 71 minutes, should be enough */
-	u32 delta_us = ktime_us_delta(end->time, start->time);
-	u32 npkts = BIT_GAP(BITS_PER_TYPE(u32), end->pkt_ctr, start->pkt_ctr);
-	u32 nbytes = BIT_GAP(BITS_PER_TYPE(u32), end->byte_ctr,
-			     start->byte_ctr);
-
-	if (!delta_us)
-		return;
-
-	curr_stats->ppms = DIV_ROUND_UP(npkts * USEC_PER_MSEC, delta_us);
-	curr_stats->bpms = DIV_ROUND_UP(nbytes * USEC_PER_MSEC, delta_us);
-	curr_stats->epms = DIV_ROUND_UP(NET_DIM_NEVENTS * USEC_PER_MSEC,
-					delta_us);
-}
-
 static inline void net_dim(struct net_dim *dim,
 			   struct net_dim_sample end_sample)
 {
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
