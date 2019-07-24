Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE13A7258F
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 05:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5uqBYWnPyE9aJh/oRD1jU6MPxJq9fVwEdMW9LamebQU=; b=cs6WyQy0xNKRWF
	taykYnU7YHda17v3Qub+07Dq+Tr/psnUXM4fhsEC/iIT3NsegcK7EqorSp3KHOexAWVIBFBffuheV
	NCZuX2yAE9/HiHaG3CIoTswkOI8/t25Y41PKTOxVexN8UX3le4rCI7gt1tR6mIT0QKqAU5g0ynQm2
	891SoQepHbWKLB77IjxyycTUtRyWiJ7JXGV+rH8d3I+JeDVdSIV1SaH9hTQvlgIsySUxJYSEL0Gkc
	mirQ3qwJj3Po7OCyxAshNZVSDHfNw60xR45aihxQaV1i9FFcQkP9hgT/hwm0vEbmVfsCP6rn7d2xQ
	P51f+tjAgoodP0BtHLRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq8HW-0007cC-Nj; Wed, 24 Jul 2019 03:49:34 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq8H2-0007R1-Hj
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 03:49:07 +0000
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2D0C030BD1C6;
 Wed, 24 Jul 2019 03:49:04 +0000 (UTC)
Received: from localhost (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id EFE9819C58;
 Wed, 24 Jul 2019 03:49:00 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH V2 2/5] blk-mq: introduce
 blk_mq_tagset_wait_completed_request()
Date: Wed, 24 Jul 2019 11:48:40 +0800
Message-Id: <20190724034843.10879-3-ming.lei@redhat.com>
In-Reply-To: <20190724034843.10879-1-ming.lei@redhat.com>
References: <20190724034843.10879-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.49]); Wed, 24 Jul 2019 03:49:04 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_204904_659125_A5A959C8 
X-CRM114-Status: GOOD (  15.67  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

blk-mq may schedule to call queue's complete function on remote CPU via
IPI, but doesn't provide any way to synchronize the request's complete
fn. The current queue freeze interface can't provide the synchonization
because aborted requests stay at blk-mq queues during EH.

In some driver's EH(such as NVMe), hardware queue's resource may be freed &
re-allocated. If the completed request's complete fn is run finally after the
hardware queue's resource is released, kernel crash will be triggered.

Prepare for fixing this kind of issue by introducing
blk_mq_tagset_wait_completed_request().

Cc: Max Gurtovoy <maxg@mellanox.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Christoph Hellwig <hch@lst.de>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 block/blk-mq-tag.c     | 32 ++++++++++++++++++++++++++++++++
 include/linux/blk-mq.h |  1 +
 2 files changed, 33 insertions(+)

diff --git a/block/blk-mq-tag.c b/block/blk-mq-tag.c
index da19f0bc8876..008388e82b5c 100644
--- a/block/blk-mq-tag.c
+++ b/block/blk-mq-tag.c
@@ -10,6 +10,7 @@
 #include <linux/module.h>
 
 #include <linux/blk-mq.h>
+#include <linux/delay.h>
 #include "blk.h"
 #include "blk-mq.h"
 #include "blk-mq-tag.h"
@@ -354,6 +355,37 @@ void blk_mq_tagset_busy_iter(struct blk_mq_tag_set *tagset,
 }
 EXPORT_SYMBOL(blk_mq_tagset_busy_iter);
 
+static bool blk_mq_tagset_count_completed_rqs(struct request *rq,
+		void *data, bool reserved)
+{
+	unsigned *count = data;
+
+	if (blk_mq_request_completed(rq))
+		(*count)++;
+	return true;
+}
+
+/**
+ * blk_mq_tagset_wait_completed_request - wait until all completed req's
+ * complete funtion is run
+ * @tagset:	Tag set to drain completed request
+ *
+ * Note: This function has to be run after all IO queues are shutdown
+ */
+void blk_mq_tagset_wait_completed_request(struct blk_mq_tag_set *tagset)
+{
+	while (true) {
+		unsigned count = 0;
+
+		blk_mq_tagset_busy_iter(tagset,
+				blk_mq_tagset_count_completed_rqs, &count);
+		if (!count)
+			break;
+		msleep(5);
+	}
+}
+EXPORT_SYMBOL(blk_mq_tagset_wait_completed_request);
+
 /**
  * blk_mq_queue_tag_busy_iter - iterate over all requests with a driver tag
  * @q:		Request queue to examine.
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index cc5115ca0e19..f9f722aeb535 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -329,6 +329,7 @@ bool blk_mq_run_hw_queue(struct blk_mq_hw_ctx *hctx, bool async);
 void blk_mq_run_hw_queues(struct request_queue *q, bool async);
 void blk_mq_tagset_busy_iter(struct blk_mq_tag_set *tagset,
 		busy_tag_iter_fn *fn, void *priv);
+void blk_mq_tagset_wait_completed_request(struct blk_mq_tag_set *tagset);
 void blk_mq_freeze_queue(struct request_queue *q);
 void blk_mq_unfreeze_queue(struct request_queue *q);
 void blk_freeze_queue_start(struct request_queue *q);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
