Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CBAA87258A
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 05:49:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FHaVXMtbJ1/pXrgIbO9+z1ChMFZqaeT4xjnfcKPZqX4=; b=sFpHBhXOihIvnw
	UNZu7Djk4pkP87JXRGDOE1mAkTcBphs85H6j3ckrIQ8Ph4fUk9g/VL46kAtqqHURVCFeylU2O/QsL
	VPn9zwMR3Eueb3RHfNXOl1T19QmvVCDXcT5wI9XaCxNmDrsxKyMf8MliadL3GDA3V0v18G78ov2o+
	nyMociZwP9hBsNlHZ6ACdxKE2T9ds3ozfucKdANvJ5nNc73cJr+2fZX/ErRsFSyZqJlxcIjR5L1LP
	OuhgdWQM3nqHc/yJIT8QLHXnEC20RFlNvG9GxvNW8rSr20yIxhpddPrdyN38C74hVtkxRsswT9PF3
	lOII1WhbABQzGubuFZcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq8HF-0007OT-KK; Wed, 24 Jul 2019 03:49:17 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq8Gv-0007Jv-TG
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 03:48:59 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 96160859FE;
 Wed, 24 Jul 2019 03:48:57 +0000 (UTC)
Received: from localhost (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 5307C5D71A;
 Wed, 24 Jul 2019 03:48:55 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH V2 1/5] blk-mq: introduce blk_mq_request_completed()
Date: Wed, 24 Jul 2019 11:48:39 +0800
Message-Id: <20190724034843.10879-2-ming.lei@redhat.com>
In-Reply-To: <20190724034843.10879-1-ming.lei@redhat.com>
References: <20190724034843.10879-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.26]); Wed, 24 Jul 2019 03:48:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_204858_021115_0C74C217 
X-CRM114-Status: GOOD (  12.54  )
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

NVMe needs this function to decide if one request to be aborted has
been completed in normal IO path already.

So introduce it.

Cc: Max Gurtovoy <maxg@mellanox.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Christoph Hellwig <hch@lst.de>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 block/blk-mq.c         | 6 ++++++
 include/linux/blk-mq.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/block/blk-mq.c b/block/blk-mq.c
index b038ec680e84..e1d0b4567388 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -665,6 +665,12 @@ int blk_mq_request_started(struct request *rq)
 }
 EXPORT_SYMBOL_GPL(blk_mq_request_started);
 
+int blk_mq_request_completed(struct request *rq)
+{
+	return blk_mq_rq_state(rq) == MQ_RQ_COMPLETE;
+}
+EXPORT_SYMBOL_GPL(blk_mq_request_completed);
+
 void blk_mq_start_request(struct request *rq)
 {
 	struct request_queue *q = rq->q;
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index ab25e69a15d1..cc5115ca0e19 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -303,6 +303,7 @@ static inline u16 blk_mq_unique_tag_to_tag(u32 unique_tag)
 
 
 int blk_mq_request_started(struct request *rq);
+int blk_mq_request_completed(struct request *rq);
 void blk_mq_start_request(struct request *rq);
 void blk_mq_end_request(struct request *rq, blk_status_t error);
 void __blk_mq_end_request(struct request *rq, blk_status_t error);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
