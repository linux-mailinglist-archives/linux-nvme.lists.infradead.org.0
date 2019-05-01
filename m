Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 573FA1098A
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 16:45:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=7NqG5+ILBtWuX+X5JV/mZrRBqCgzBOBZVSxqcljVKSI=; b=IDm/+0LFz7KzbLrAjrr+uFic+6
	KbxaIi2baPbLL4vaEF98P6NSca1Fcuxykmy8uIutL1cV7o+y8bbPCrOTQ2jt24dNS/EtWcgEne3hf
	ZizICDEioUwGPmdh799HdKsOffQmdcSfgwsi5oCEUXXWTvC+2SxnEGoxI7Uo5r18g+kG23qTP8J6t
	UrXLf/LJHmvcCQfw0RNuyP2BY+lQNvvo9WhYY2v1++huMCBx9MBQEXxlhqohq30dTwpeh3GFekCYB
	+5dsVUPiKO0mV9tw5ARmZ/Gxa+GOketOmjyoa36Zw8K5qxBE00zAeV1wHsZ9QvQwlauh6W+mIQ76w
	2O3XQmEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqUR-00043F-86; Wed, 01 May 2019 14:45:43 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqTk-00025P-9B
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 14:45:07 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 talgi@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 1 May 2019 17:44:53 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (gen-l-vrt-692.mtl.labs.mlnx
 [10.141.69.20])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x41Eirhk019856;
 Wed, 1 May 2019 17:44:53 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (localhost [127.0.0.1])
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7) with ESMTP id x41EiriV036054;
 Wed, 1 May 2019 17:44:53 +0300
Received: (from talgi@localhost)
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7/Submit) id x41EirAt036053;
 Wed, 1 May 2019 17:44:53 +0300
From: Tal Gilboa <talgi@mellanox.com>
To: linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
Subject: [PATCH rdma-for-next 8/9] linux/dim: Implement rdma_dim
Date: Wed,  1 May 2019 17:44:38 +0300
Message-Id: <1556721879-35987-9-git-send-email-talgi@mellanox.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
References: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_074500_729366_4D28AA6F 
X-CRM114-Status: GOOD (  24.71  )
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

rdma_dim implements a different algorithm than net_dim and is based on
completions which is how we can implement interrupt moderation in RDMA.
The algorithm optimizes for number of completions and ratio between
completions and events.
It also has a feature for fast reduction of moderation level when the
traffic changes in such a way as to no longer require high moderation in
order to avoid long latencies.

rdma_dim.h will be called from the ib_core module.

Signed-off-by: Yamin Friedman <yaminf@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Tal Gilboa <talgi@mellanox.com>
---
 MAINTAINERS              |   1 +
 include/linux/rdma_dim.h |  57 +++++++++++++++++
 lib/dim/Makefile         |   7 ++-
 lib/dim/rdma_dim.c       | 161 +++++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 225 insertions(+), 1 deletion(-)
 create mode 100644 include/linux/rdma_dim.h
 create mode 100644 lib/dim/rdma_dim.c

diff --git a/MAINTAINERS b/MAINTAINERS
index c405029..c7ebd38 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -5472,6 +5472,7 @@ DYNAMIC INTERRUPT MODERATION
 M:	Tal Gilboa <talgi@mellanox.com>
 S:	Maintained
 F:	include/linux/net_dim.h
+F:	include/linux/blk_dim.h
 F:	include/linux/dim.h
 F:	lib/dim/
 
diff --git a/include/linux/rdma_dim.h b/include/linux/rdma_dim.h
new file mode 100644
index 0000000..c0bed9c
--- /dev/null
+++ b/include/linux/rdma_dim.h
@@ -0,0 +1,57 @@
+/* SPDX-License-Identifier: (GPL-2.0 OR Linux-OpenIB) */
+/* Copyright (c) 2018-2019 Mellanox Technologies. All rights reserved.
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
+#ifndef RDMA_DIM_H
+#define RDMA_DIM_H
+
+#include <linux/module.h>
+#include <linux/dim.h>
+
+#define RDMA_DIM_PARAMS_NUM_PROFILES 9
+#define RDMA_DIM_START_PROFILE 0
+
+static const struct dim_cq_moder
+rdma_dim_prof[RDMA_DIM_PARAMS_NUM_PROFILES] = {
+	{1,   0, 1,  0},
+	{1,   0, 4,  0},
+	{2,   0, 4,  0},
+	{2,   0, 8,  0},
+	{4,   0, 8,  0},
+	{16,  0, 8,  0},
+	{16,  0, 16, 0},
+	{32,  0, 16, 0},
+	{32,  0, 32, 0},
+};
+
+void rdma_dim(struct dim *dim, struct dim_sample *end_sample);
+
+#endif /* RDMA_DIM_H */
diff --git a/lib/dim/Makefile b/lib/dim/Makefile
index 160afe2..73ddd0c 100644
--- a/lib/dim/Makefile
+++ b/lib/dim/Makefile
@@ -2,8 +2,13 @@
 # DIM Dynamic Interrupt Moderation library
 #
 
-obj-$(CONFIG_DIMLIB) = net_dim.o
+obj-$(CONFIG_DIMLIB) += net_dim.o
+obj-$(CONFIG_DIMLIB) += rdma_dim.o
 
 net_dim-y = \
 	dim.o		\
 	net_dim.o
+
+rdma_dim-y = \
+	dim.o		\
+	rdma_dim.o
diff --git a/lib/dim/rdma_dim.c b/lib/dim/rdma_dim.c
new file mode 100644
index 0000000..c126209
--- /dev/null
+++ b/lib/dim/rdma_dim.c
@@ -0,0 +1,161 @@
+// SPDX-License-Identifier: GPL-2.0 OR Linux-OpenIB
+/*
+ * Copyright (c) 2019, Mellanox Technologies inc.  All rights reserved.
+ */
+
+#include <linux/rdma_dim.h>
+
+/**
+ ** rdma_dim_step: - Moves the moderation profile one step.
+ ** @dim: The moderation struct.
+ **
+ ** Description: Moves the moderation profile of @dim by one step. If we
+ ** are at the edge of the profile range returns DIM_ON_EDGE without
+ ** moving.
+ **/
+int rdma_dim_step(struct dim *dim)
+{
+	switch (dim->tune_state) {
+	case DIM_PARKING_ON_TOP:
+		/* fall through */
+	case DIM_PARKING_TIRED:
+		break;
+	case DIM_GOING_RIGHT:
+		if (dim->profile_ix == (RDMA_DIM_PARAMS_NUM_PROFILES - 1))
+			return DIM_ON_EDGE;
+		dim->profile_ix++;
+		dim->steps_right++;
+		break;
+	case DIM_GOING_LEFT:
+		if (dim->profile_ix == 0)
+			return DIM_ON_EDGE;
+		dim->profile_ix--;
+		dim->steps_left++;
+		break;
+	}
+
+	return DIM_STEPPED;
+}
+
+/**
+ ** rdma_dim_stats_compare - Compares the current stats to the previous stats.
+ ** @curr: The current dim stats.
+ ** @prev: The previous dim stats.
+ **
+ ** Description: Checks to see if we have significantly more or less
+ ** completions.
+ ** If the completions are not greatly changed checks if the completion to
+ ** event ratio has significantly changed.
+ **/
+int rdma_dim_stats_compare(struct dim_stats *curr, struct dim_stats *prev)
+{
+	/* first stat */
+	if (!prev->cpms)
+		return DIM_STATS_SAME;
+
+	if (IS_SIGNIFICANT_DIFF(curr->cpms, prev->cpms))
+		return (curr->cpms > prev->cpms) ? DIM_STATS_BETTER :
+						DIM_STATS_WORSE;
+
+	if (IS_SIGNIFICANT_DIFF(curr->cpe_ratio, prev->cpe_ratio))
+		return (curr->cpe_ratio > prev->cpe_ratio) ? DIM_STATS_BETTER :
+						DIM_STATS_WORSE;
+
+	return DIM_STATS_SAME;
+}
+
+/**
+ ** rdma_dim_decision - Decides the next moderation level.
+ ** @curr_stats: The current dim stats.
+ ** @dim: The moderation struct.
+ **
+ ** Description: Uses rdma_dim_stats_compare to decide what the next moderation
+ ** level should be. If the completion to event ratio is low compared to the
+ ** current level we reset the moderation to keep latency low.
+ **/
+bool rdma_dim_decision(struct dim_stats *curr_stats, struct dim *dim)
+{
+	int prev_ix = dim->profile_ix;
+	int stats_res;
+	int step_res;
+
+	switch (dim->tune_state) {
+	case DIM_PARKING_ON_TOP:
+		/* fall through */
+	case DIM_PARKING_TIRED:
+		break;
+	case DIM_GOING_RIGHT:
+		/* fall through */
+	case DIM_GOING_LEFT:
+		stats_res = rdma_dim_stats_compare(curr_stats,
+						   &dim->prev_stats);
+
+		switch (stats_res) {
+		case DIM_STATS_SAME:
+			if (curr_stats->cpe_ratio <= 50 * prev_ix)
+				dim->profile_ix = 0;
+			break;
+		case DIM_STATS_WORSE:
+			dim_turn(dim);
+			/* fall through */
+		case DIM_STATS_BETTER:
+			step_res = rdma_dim_step(dim);
+			if (step_res == DIM_ON_EDGE)
+				dim_turn(dim);
+			break;
+		}
+		break;
+	}
+
+	dim->prev_stats = *curr_stats;
+
+	return dim->profile_ix != prev_ix;
+}
+
+/**
+ ** rdma_dim - Runs the adaptive moderation.
+ ** @dim: The moderation struct.
+ ** @end_sample: The sampled stats for the end of this profiling period.
+ **
+ ** Description: Each call to rdma_dim takes the latest stats that have been
+ ** sampled and uses them to decide on the next moderation level once enough
+ ** events have been collected.
+ **/
+void rdma_dim(struct dim *dim, struct dim_sample *end_sample)
+{
+	struct dim_stats curr_stats;
+	u32 nevents;
+
+	switch (dim->state) {
+	case DIM_MEASURE_IN_PROGRESS:
+		nevents = end_sample->event_ctr - dim->start_sample.event_ctr;
+		if (nevents < DIM_NEVENTS) {
+			dim_create_sample(end_sample->event_ctr,
+					  end_sample->pkt_ctr,
+					  end_sample->byte_ctr,
+					  end_sample->comp_ctr,
+					  &dim->measuring_sample);
+			break;
+		}
+		dim_calc_stats(&dim->start_sample, end_sample,
+			       &curr_stats);
+		if (rdma_dim_decision(&curr_stats, dim)) {
+			dim->state = DIM_APPLY_NEW_PROFILE;
+			schedule_work(&dim->work);
+			break;
+		}
+		/* fall through */
+	case DIM_START_MEASURE:
+		dim->state = DIM_MEASURE_IN_PROGRESS;
+		dim_create_sample(end_sample->event_ctr, end_sample->pkt_ctr,
+				  end_sample->byte_ctr, end_sample->comp_ctr,
+				  &dim->start_sample);
+		dim_create_sample(end_sample->event_ctr, end_sample->pkt_ctr,
+				  end_sample->byte_ctr, end_sample->comp_ctr,
+				  &dim->measuring_sample);
+		break;
+	case DIM_APPLY_NEW_PROFILE:
+		break;
+	}
+}
+EXPORT_SYMBOL(rdma_dim);
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
