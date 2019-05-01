Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36FE610989
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 16:45:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ct8VAf0ntOuxTqgR3XEluxupt3QhzMWIjgycxwV7Vok=; b=N+ADROXRlKpQl93w9G2paLgpJw
	4YeuKl5DBirp+zCptEYtZJDc21JtZQa66Jw50g0VLyDddRXgwr5uDNT8sX0bZMtoj5qJxNQqdO7fC
	3RsWneJ3Gem7fzM1FTXnB+cnyXmztO/mdUcbaR0CKiLS4Ancp/tdrUzvVMnN2h1aIvMTcmupwjweQ
	6Unv9qtj0cv/VGGT6OeqzGIHUtAV6+EYkXNHJDu8biFdMmmn7FaKQ8CtKFx+p1EwSvz0PkxkDnz0O
	+7mrVPg2Kir2DprKdHZgpXqPBTBxYBskmg5BlUSAkAgxoRPfxtcQaD8OS4m/aCdkChfT/HbH+4WUf
	lMPpuRFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqUL-0003sg-Gm; Wed, 01 May 2019 14:45:37 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqTk-000255-1L
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 14:45:06 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 talgi@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 1 May 2019 17:44:51 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (gen-l-vrt-692.mtl.labs.mlnx
 [10.141.69.20])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x41Eiphk019837;
 Wed, 1 May 2019 17:44:51 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (localhost [127.0.0.1])
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7) with ESMTP id x41Eip1p036040;
 Wed, 1 May 2019 17:44:51 +0300
Received: (from talgi@localhost)
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7/Submit) id x41Eip1H036039;
 Wed, 1 May 2019 17:44:51 +0300
From: Tal Gilboa <talgi@mellanox.com>
To: linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
Subject: [PATCH rdma-for-next 2/9] linux/dim: Remove "net" prefix from
 internal DIM members
Date: Wed,  1 May 2019 17:44:32 +0300
Message-Id: <1556721879-35987-3-git-send-email-talgi@mellanox.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
References: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_074500_590606_CC9A45A8 
X-CRM114-Status: GOOD (  11.95  )
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

Only renaming functions and structs which aren't used by an external code.

Signed-off-by: Tal Gilboa <talgi@mellanox.com>
---
 include/linux/dim.h     | 88 ++++++++++++++++++++++++-------------------------
 include/linux/net_dim.h | 86 +++++++++++++++++++++++------------------------
 2 files changed, 86 insertions(+), 88 deletions(-)

diff --git a/include/linux/dim.h b/include/linux/dim.h
index d06f6e4..e5e3d0cf 100644
--- a/include/linux/dim.h
+++ b/include/linux/dim.h
@@ -36,7 +36,7 @@
 
 #include <linux/module.h>
 
-#define NET_DIM_NEVENTS 64
+#define DIM_NEVENTS 64
 #define IS_SIGNIFICANT_DIFF(val, ref) \
 	(((100UL * abs((val) - (ref))) / (ref)) > 10) /* more than 10% difference */
 #define BIT_GAP(bits, end, start) ((((end) - (start)) + BIT_ULL(bits)) & (BIT_ULL(bits) - 1))
@@ -54,7 +54,7 @@ struct net_dim_sample {
 	u16     event_ctr;
 };
 
-struct net_dim_stats {
+struct dim_stats {
 	int ppms; /* packets per msec */
 	int bpms; /* bytes per msec */
 	int epms; /* events per msec */
@@ -62,7 +62,7 @@ struct net_dim_stats {
 
 struct net_dim { /* Dynamic Interrupt Moderation */
 	u8                                      state;
-	struct net_dim_stats                    prev_stats;
+	struct dim_stats                        prev_stats;
 	struct net_dim_sample                   start_sample;
 	struct work_struct                      work;
 	u8                                      profile_ix;
@@ -86,67 +86,67 @@ enum {
 };
 
 enum {
-	NET_DIM_PARKING_ON_TOP,
-	NET_DIM_PARKING_TIRED,
-	NET_DIM_GOING_RIGHT,
-	NET_DIM_GOING_LEFT,
+	DIM_PARKING_ON_TOP,
+	DIM_PARKING_TIRED,
+	DIM_GOING_RIGHT,
+	DIM_GOING_LEFT,
 };
 
 enum {
-	NET_DIM_STATS_WORSE,
-	NET_DIM_STATS_SAME,
-	NET_DIM_STATS_BETTER,
+	DIM_STATS_WORSE,
+	DIM_STATS_SAME,
+	DIM_STATS_BETTER,
 };
 
 enum {
-	NET_DIM_STEPPED,
-	NET_DIM_TOO_TIRED,
-	NET_DIM_ON_EDGE,
+	DIM_STEPPED,
+	DIM_TOO_TIRED,
+	DIM_ON_EDGE,
 };
 
-static inline bool net_dim_on_top(struct net_dim *net_dim)
+static inline bool dim_on_top(struct net_dim *dim)
 {
-	switch (net_dim->tune_state) {
-	case NET_DIM_PARKING_ON_TOP:
-	case NET_DIM_PARKING_TIRED:
+	switch (dim->tune_state) {
+	case DIM_PARKING_ON_TOP:
+	case DIM_PARKING_TIRED:
 		return true;
-	case NET_DIM_GOING_RIGHT:
-		return (net_dim->steps_left > 1) && (net_dim->steps_right == 1);
-	default: /* NET_DIM_GOING_LEFT */
-		return (net_dim->steps_right > 1) && (net_dim->steps_left == 1);
+	case DIM_GOING_RIGHT:
+		return (dim->steps_left > 1) && (dim->steps_right == 1);
+	default: /* DIM_GOING_LEFT */
+		return (dim->steps_right > 1) && (dim->steps_left == 1);
 	}
 }
 
-static inline void net_dim_turn(struct net_dim *net_dim)
+static inline void dim_turn(struct net_dim *dim)
 {
-	switch (net_dim->tune_state) {
-	case NET_DIM_PARKING_ON_TOP:
-	case NET_DIM_PARKING_TIRED:
+	switch (dim->tune_state) {
+	case DIM_PARKING_ON_TOP:
+	case DIM_PARKING_TIRED:
 		break;
-	case NET_DIM_GOING_RIGHT:
-		net_dim->tune_state = NET_DIM_GOING_LEFT;
-		net_dim->steps_left = 0;
+	case DIM_GOING_RIGHT:
+		dim->tune_state = DIM_GOING_LEFT;
+		dim->steps_left = 0;
 		break;
-	case NET_DIM_GOING_LEFT:
-		net_dim->tune_state = NET_DIM_GOING_RIGHT;
-		net_dim->steps_right = 0;
+	case DIM_GOING_LEFT:
+		dim->tune_state = DIM_GOING_RIGHT;
+		dim->steps_right = 0;
 		break;
 	}
 }
 
-static inline void net_dim_park_on_top(struct net_dim *net_dim)
+static inline void dim_park_on_top(struct net_dim *dim)
 {
-	net_dim->steps_right  = 0;
-	net_dim->steps_left   = 0;
-	net_dim->tired        = 0;
-	net_dim->tune_state   = NET_DIM_PARKING_ON_TOP;
+	dim->steps_right  = 0;
+	dim->steps_left   = 0;
+	dim->tired        = 0;
+	dim->tune_state   = DIM_PARKING_ON_TOP;
 }
 
-static inline void net_dim_park_tired(struct net_dim *net_dim)
+static inline void dim_park_tired(struct net_dim *dim)
 {
-	net_dim->steps_right  = 0;
-	net_dim->steps_left   = 0;
-	net_dim->tune_state   = NET_DIM_PARKING_TIRED;
+	dim->steps_right  = 0;
+	dim->steps_left   = 0;
+	dim->tune_state   = DIM_PARKING_TIRED;
 }
 
 static inline void net_dim_sample(u16 event_ctr,
@@ -160,9 +160,9 @@ static inline void net_dim_sample(u16 event_ctr,
 	s->event_ctr = event_ctr;
 }
 
-static inline void net_dim_calc_stats(struct net_dim_sample *start,
-				      struct net_dim_sample *end,
-				      struct net_dim_stats *curr_stats)
+static inline void dim_calc_stats(struct net_dim_sample *start,
+				  struct net_dim_sample *end,
+				  struct dim_stats *curr_stats)
 {
 	/* u32 holds up to 71 minutes, should be enough */
 	u32 delta_us = ktime_us_delta(end->time, start->time);
@@ -175,7 +175,7 @@ static inline void net_dim_calc_stats(struct net_dim_sample *start,
 
 	curr_stats->ppms = DIV_ROUND_UP(npkts * USEC_PER_MSEC, delta_us);
 	curr_stats->bpms = DIV_ROUND_UP(nbytes * USEC_PER_MSEC, delta_us);
-	curr_stats->epms = DIV_ROUND_UP(NET_DIM_NEVENTS * USEC_PER_MSEC,
+	curr_stats->epms = DIV_ROUND_UP(DIM_NEVENTS * USEC_PER_MSEC,
 					delta_us);
 }
 
diff --git a/include/linux/net_dim.h b/include/linux/net_dim.h
index 373cda7..3d9a2ff 100644
--- a/include/linux/net_dim.h
+++ b/include/linux/net_dim.h
@@ -128,67 +128,67 @@
 static inline int net_dim_step(struct net_dim *dim)
 {
 	if (dim->tired == (NET_DIM_PARAMS_NUM_PROFILES * 2))
-		return NET_DIM_TOO_TIRED;
+		return DIM_TOO_TIRED;
 
 	switch (dim->tune_state) {
-	case NET_DIM_PARKING_ON_TOP:
-	case NET_DIM_PARKING_TIRED:
+	case DIM_PARKING_ON_TOP:
+	case DIM_PARKING_TIRED:
 		break;
-	case NET_DIM_GOING_RIGHT:
+	case DIM_GOING_RIGHT:
 		if (dim->profile_ix == (NET_DIM_PARAMS_NUM_PROFILES - 1))
-			return NET_DIM_ON_EDGE;
+			return DIM_ON_EDGE;
 		dim->profile_ix++;
 		dim->steps_right++;
 		break;
-	case NET_DIM_GOING_LEFT:
+	case DIM_GOING_LEFT:
 		if (dim->profile_ix == 0)
-			return NET_DIM_ON_EDGE;
+			return DIM_ON_EDGE;
 		dim->profile_ix--;
 		dim->steps_left++;
 		break;
 	}
 
 	dim->tired++;
-	return NET_DIM_STEPPED;
+	return DIM_STEPPED;
 }
 
 static inline void net_dim_exit_parking(struct net_dim *dim)
 {
-	dim->tune_state = dim->profile_ix ? NET_DIM_GOING_LEFT :
-					  NET_DIM_GOING_RIGHT;
+	dim->tune_state = dim->profile_ix ? DIM_GOING_LEFT :
+					  DIM_GOING_RIGHT;
 	net_dim_step(dim);
 }
 
-static inline int net_dim_stats_compare(struct net_dim_stats *curr,
-					struct net_dim_stats *prev)
+static inline int net_dim_stats_compare(struct dim_stats *curr,
+					struct dim_stats *prev)
 {
 	if (!prev->bpms)
-		return curr->bpms ? NET_DIM_STATS_BETTER :
-				    NET_DIM_STATS_SAME;
+		return curr->bpms ? DIM_STATS_BETTER :
+				    DIM_STATS_SAME;
 
 	if (IS_SIGNIFICANT_DIFF(curr->bpms, prev->bpms))
-		return (curr->bpms > prev->bpms) ? NET_DIM_STATS_BETTER :
-						   NET_DIM_STATS_WORSE;
+		return (curr->bpms > prev->bpms) ? DIM_STATS_BETTER :
+						   DIM_STATS_WORSE;
 
 	if (!prev->ppms)
-		return curr->ppms ? NET_DIM_STATS_BETTER :
-				    NET_DIM_STATS_SAME;
+		return curr->ppms ? DIM_STATS_BETTER :
+				    DIM_STATS_SAME;
 
 	if (IS_SIGNIFICANT_DIFF(curr->ppms, prev->ppms))
-		return (curr->ppms > prev->ppms) ? NET_DIM_STATS_BETTER :
-						   NET_DIM_STATS_WORSE;
+		return (curr->ppms > prev->ppms) ? DIM_STATS_BETTER :
+						   DIM_STATS_WORSE;
 
 	if (!prev->epms)
-		return NET_DIM_STATS_SAME;
+		return DIM_STATS_SAME;
 
 	if (IS_SIGNIFICANT_DIFF(curr->epms, prev->epms))
-		return (curr->epms < prev->epms) ? NET_DIM_STATS_BETTER :
-						   NET_DIM_STATS_WORSE;
+		return (curr->epms < prev->epms) ? DIM_STATS_BETTER :
+						   DIM_STATS_WORSE;
 
-	return NET_DIM_STATS_SAME;
+	return DIM_STATS_SAME;
 }
 
-static inline bool net_dim_decision(struct net_dim_stats *curr_stats,
+static inline bool net_dim_decision(struct dim_stats *curr_stats,
 				    struct net_dim *dim)
 {
 	int prev_state = dim->tune_state;
@@ -197,44 +197,43 @@ static inline bool net_dim_decision(struct net_dim_stats *curr_stats,
 	int step_res;
 
 	switch (dim->tune_state) {
-	case NET_DIM_PARKING_ON_TOP:
+	case DIM_PARKING_ON_TOP:
 		stats_res = net_dim_stats_compare(curr_stats, &dim->prev_stats);
-		if (stats_res != NET_DIM_STATS_SAME)
+		if (stats_res != DIM_STATS_SAME)
 			net_dim_exit_parking(dim);
 		break;
 
-	case NET_DIM_PARKING_TIRED:
+	case DIM_PARKING_TIRED:
 		dim->tired--;
 		if (!dim->tired)
 			net_dim_exit_parking(dim);
 		break;
 
-	case NET_DIM_GOING_RIGHT:
-	case NET_DIM_GOING_LEFT:
+	case DIM_GOING_RIGHT:
+	case DIM_GOING_LEFT:
 		stats_res = net_dim_stats_compare(curr_stats, &dim->prev_stats);
-		if (stats_res != NET_DIM_STATS_BETTER)
-			net_dim_turn(dim);
+		if (stats_res != DIM_STATS_BETTER)
+			dim_turn(dim);
 
-		if (net_dim_on_top(dim)) {
-			net_dim_park_on_top(dim);
+		if (dim_on_top(dim)) {
+			dim_park_on_top(dim);
 			break;
 		}
 
 		step_res = net_dim_step(dim);
 		switch (step_res) {
-		case NET_DIM_ON_EDGE:
-			net_dim_park_on_top(dim);
+		case DIM_ON_EDGE:
+			dim_park_on_top(dim);
 			break;
-		case NET_DIM_TOO_TIRED:
-			net_dim_park_tired(dim);
+		case DIM_TOO_TIRED:
+			dim_park_tired(dim);
 			break;
 		}
 
 		break;
 	}
 
-	if ((prev_state      != NET_DIM_PARKING_ON_TOP) ||
-	    (dim->tune_state != NET_DIM_PARKING_ON_TOP))
+	if (prev_state != DIM_PARKING_ON_TOP || dim->tune_state != DIM_PARKING_ON_TOP)
 		dim->prev_stats = *curr_stats;
 
 	return dim->profile_ix != prev_ix;
@@ -243,7 +242,7 @@ static inline bool net_dim_decision(struct net_dim_stats *curr_stats,
 static inline void net_dim(struct net_dim *dim,
 			   struct net_dim_sample end_sample)
 {
-	struct net_dim_stats curr_stats;
+	struct dim_stats curr_stats;
 	u16 nevents;
 
 	switch (dim->state) {
@@ -251,10 +250,9 @@ static inline void net_dim(struct net_dim *dim,
 		nevents = BIT_GAP(BITS_PER_TYPE(u16),
 				  end_sample.event_ctr,
 				  dim->start_sample.event_ctr);
-		if (nevents < NET_DIM_NEVENTS)
+		if (nevents < DIM_NEVENTS)
 			break;
-		net_dim_calc_stats(&dim->start_sample, &end_sample,
-				   &curr_stats);
+		dim_calc_stats(&dim->start_sample, &end_sample, &curr_stats);
 		if (net_dim_decision(&curr_stats, dim)) {
 			dim->state = NET_DIM_APPLY_NEW_PROFILE;
 			schedule_work(&dim->work);
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
