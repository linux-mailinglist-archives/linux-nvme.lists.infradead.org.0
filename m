Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A329B6F8FC
	for <lists+linux-nvme@lfdr.de>; Mon, 22 Jul 2019 07:41:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oi/p6WcewE7MGi++PDuwYK/ZUQ3A8fk8QVhVoeRwPDA=; b=IJyDUS6EhkSVOq
	5/BG1LZqWfkV0KXqD+FrNT8MS21T0X0SI7IpoO7WPxmIehqUrNo96JN6Ij4zs2ueWntOBThdTaMAA
	G/FRnwGAeJ4NZD0LYD+EMbNRuJUWPLEHgOF3o/7318KtSOaymJL7qlK3SRA+jhHWQw1PVbHGjR9MD
	M7idSHxHvlJzMj76CEyojN/7XCfmAugh5UT9uwLw5ZcRsKACpw2bWviypOeoWx+uN2jbjt5eFE9E4
	R4CONguW/t0M5FvX5PqNGQ6XicdsH6frtqI21jIu3iseQ6prlx4SR97iJUcclImMtnFYg0xT+9i5B
	9EOko+8eZMXccL6x6zeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpR4w-0008Oc-Pw; Mon, 22 Jul 2019 05:41:43 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpR3r-0007mn-AK
 for linux-nvme@lists.infradead.org; Mon, 22 Jul 2019 05:40:38 +0000
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id B5C7D3083391;
 Mon, 22 Jul 2019 05:40:34 +0000 (UTC)
Received: from localhost (ovpn-8-23.pek2.redhat.com [10.72.8.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 983DF5C22D;
 Mon, 22 Jul 2019 05:40:31 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH 5/5] blk-mq: remove blk_mq_complete_request_sync
Date: Mon, 22 Jul 2019 13:39:54 +0800
Message-Id: <20190722053954.25423-6-ming.lei@redhat.com>
In-Reply-To: <20190722053954.25423-1-ming.lei@redhat.com>
References: <20190722053954.25423-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.44]); Mon, 22 Jul 2019 05:40:34 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_224035_442423_FD8F8132 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

blk_mq_tagset_wait_completed_request() has been applied for waiting
for completed request's fn, so not necessary to use
blk_mq_complete_request_sync() any more.

Cc: Max Gurtovoy <maxg@mellanox.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Christoph Hellwig <hch@lst.de>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 block/blk-mq.c           | 7 -------
 drivers/nvme/host/core.c | 2 +-
 include/linux/blk-mq.h   | 1 -
 3 files changed, 1 insertion(+), 9 deletions(-)

diff --git a/block/blk-mq.c b/block/blk-mq.c
index e1d0b4567388..9836a00d8c07 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -652,13 +652,6 @@ bool blk_mq_complete_request(struct request *rq)
 }
 EXPORT_SYMBOL(blk_mq_complete_request);
 
-void blk_mq_complete_request_sync(struct request *rq)
-{
-	WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);
-	rq->q->mq_ops->complete(rq);
-}
-EXPORT_SYMBOL_GPL(blk_mq_complete_request_sync);
-
 int blk_mq_request_started(struct request *rq)
 {
 	return blk_mq_rq_state(rq) != MQ_RQ_IDLE;
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index cb8007cce4d1..4beaed3b5022 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -293,7 +293,7 @@ bool nvme_cancel_request(struct request *req, void *data, bool reserved)
 				"Cancelling I/O %d", req->tag);
 
 	nvme_req(req)->status = NVME_SC_ABORT_REQ;
-	blk_mq_complete_request_sync(req);
+	blk_mq_complete_request(req);
 	return true;
 }
 EXPORT_SYMBOL_GPL(nvme_cancel_request);
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index ee0719b649b6..1cdd2788cfa6 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -305,7 +305,6 @@ void blk_mq_requeue_request(struct request *rq, bool kick_requeue_list);
 void blk_mq_kick_requeue_list(struct request_queue *q);
 void blk_mq_delay_kick_requeue_list(struct request_queue *q, unsigned long msecs);
 bool blk_mq_complete_request(struct request *rq);
-void blk_mq_complete_request_sync(struct request *rq);
 bool blk_mq_bio_list_merge(struct request_queue *q, struct list_head *list,
 			   struct bio *bio, unsigned int nr_segs);
 bool blk_mq_queue_stopped(struct request_queue *q);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
