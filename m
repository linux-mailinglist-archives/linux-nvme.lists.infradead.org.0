Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 955872696F
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 19:53:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DJkLHIC+6kZhbQEqpxpJMaVo+RZPn0A5tIm8RcO3mPU=; b=gmVLLOg0venwlCiw0+c9CY4Uqn
	zTR4UgN0z30oUAs4D9of09DYgufdofJkZzZwz5qcj3sc2Abrj7FIqi3+qOgcWhgLRKlwp5XVDN4kI
	wuu7r0HlZNYKF2BneZNUlI7QHPPW0rhzX+aQkGL5t3pSQoN/ysDPVHXMoOsSfz5Sg8bxiZ0tBJaVY
	D0x8vrDx9LIIjKtQ8svmp/ErMdUCCBeCBbx17eEDmFY1qfngTmty/LOriDe0gTxYvwPzd0kKwUC5a
	1vuM8uIxetSdhkpX/2uqWdSaNpxUKQrbVCxQJ9i9Ob4ez2wEsfvkxBF6jjVuXG+7WHXsfQKfJQeTW
	tTWllLBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTVQj-0002cy-4F; Wed, 22 May 2019 17:53:33 +0000
Received: from mga05.intel.com ([192.55.52.43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTVQU-0002T5-0Z
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 17:53:19 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 May 2019 10:53:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,500,1549958400"; d="scan'208";a="174471731"
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by fmsmga002.fm.intel.com with ESMTP; 22 May 2019 10:53:15 -0700
From: Keith Busch <keith.busch@intel.com>
To: Jens Axboe <axboe@kernel.dk>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org, linux-block@vger.kernel.org
Subject: [PATCH 1/2] blk-mq: provide way to reset rq deadline
Date: Wed, 22 May 2019 11:48:11 -0600
Message-Id: <20190522174812.5597-2-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
In-Reply-To: <20190522174812.5597-1-keith.busch@intel.com>
References: <20190522174812.5597-1-keith.busch@intel.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_105318_065174_B0267C36 
X-CRM114-Status: GOOD (  13.80  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.43 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <keith.busch@intel.com>, Ming Lei <ming.lei@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If hardware has temporarily paused processing requests that its driver
has dispatched, the driver may need to halt timeout detection during that
temporary stoppage. When the hardware has un-paused request processing,
the driver needs a way to rebase all dispatched request dealines using
current jiffies so that time accrued during the paused state doesn't
count against that request.

Signed-off-by: Keith Busch <keith.busch@intel.com>
---
 block/blk-mq.c         | 30 ++++++++++++++++++++++++++++++
 include/linux/blk-mq.h |  1 +
 2 files changed, 31 insertions(+)

diff --git a/block/blk-mq.c b/block/blk-mq.c
index 08a6248d8536..9d85903d4e0c 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -960,6 +960,36 @@ static void blk_mq_timeout_work(struct work_struct *work)
 	blk_queue_exit(q);
 }
 
+static bool blk_mq_reset_rq(struct blk_mq_hw_ctx *hctx, struct request *rq,
+			    void *priv, bool reserved)
+{
+	if (blk_mq_rq_state(rq) == MQ_RQ_IN_FLIGHT)
+		blk_add_timer(rq);
+	return true;
+}
+
+/**
+ * blk_mq_reset_rqs - reset the timers on all inflight requests
+ *
+ * @q - request queue to iterate
+ *
+ * This is intended for use when a driver detects its hardware has temporarily
+ * paused processing commands. When the condition is initially detected, the
+ * driver should call blk_mq_quiesce_queue() to block new requests from
+ * dispatching, then blk_sync_queue() to halt any timeout work. When the
+ * hardware becomes operational again, the driver should call this function to
+ * reset previously dispatched request timers who's processing had been paused
+ * by the hardware, then call blk_mq_unquiesce_queue() to unblock future
+ * dispatch.
+ */
+void blk_mq_reset_rqs(struct request_queue *q)
+{
+	if (WARN_ON(!blk_queue_quiesced(q)))
+		return;
+	blk_mq_queue_tag_busy_iter(q, blk_mq_reset_rq, NULL);
+}
+EXPORT_SYMBOL_GPL(blk_mq_reset_rqs);
+
 struct flush_busy_ctx_data {
 	struct blk_mq_hw_ctx *hctx;
 	struct list_head *list;
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index 15d1aa53d96c..28c421ba5094 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -327,6 +327,7 @@ void blk_freeze_queue_start(struct request_queue *q);
 void blk_mq_freeze_queue_wait(struct request_queue *q);
 int blk_mq_freeze_queue_wait_timeout(struct request_queue *q,
 				     unsigned long timeout);
+void blk_mq_reset_rqs(struct request_queue *q);
 
 int blk_mq_map_queues(struct blk_mq_queue_map *qmap);
 void blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set, int nr_hw_queues);
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
