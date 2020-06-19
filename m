Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72E501FFF49
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jun 2020 02:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9diM9mWc6zuJIC9XQJ2B3Zrm8jx5o/p5O28q7GX0SN8=; b=SS1+0uFQKmJKq0
	p7MporGjxwVXfE4ghifTcYkvQcGKRbusAhl6gJ3+eOI+YQKZzxzsudh9J6ZIGQ0UDtJLULOkziLbh
	vsYzI5hDusu0ZqPWrbw5zJI+24M/O3IieL0csIK6Txwezx49K5JO8NLsjEGBUp0nozoo7usgBvb/y
	ULbU9vU04Y8HeOylUEE/2OBBdLsa1oFEgXTYXe8P1eFsHi9q2TylNBdub+JNEPgMxzjDOMWrESnVl
	QxLYNkhUO+VHEoGpKQTXYIK2BBVHu1JSwh+2ORDbBdXiq76dKyAjvvpGkswrUYWiJ2OTLTztn7t90
	229eGTTS1+mQAPkmXp+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm4vh-0002pQ-Ef; Fri, 19 Jun 2020 00:30:49 +0000
Received: from [2601:647:4802:9070:1cb6:2f11:eeb8:2d3d]
 (helo=localhost.localdomain)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm4vK-0002b7-9J; Fri, 19 Jun 2020 00:30:26 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH 2/3] nvme-tcp: leverage request plugging
Date: Thu, 18 Jun 2020 17:30:23 -0700
Message-Id: <20200619003024.153517-3-sagi@grimberg.me>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200619003024.153517-1-sagi@grimberg.me>
References: <20200619003024.153517-1-sagi@grimberg.me>
MIME-Version: 1.0
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
Cc: Anil Vasudevan <anil.vasudevan@intel.com>,
 Mark Wunderlich <mark.wunderlich@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

blk-mq request plugging can improve the execution of our pipeline.
When we queue a request we actually trigger our I/O worker thread
yielding a context switch by definition. However if we know that
there are more requests in the pipe that are coming, we are better
off not trigger our I/O worker and only do that for the last request
in the batch (bd->last). By having it, we improve efficiency by
amortizing context switches over a batch of requests.

Tested-by: Mark Wunderlich <mark.wunderlich@intel.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 19 ++++++++++++++-----
 1 file changed, 14 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 93fc6d9f97df..76fd587acc2e 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -262,7 +262,7 @@ static inline void nvme_tcp_advance_req(struct nvme_tcp_request *req,
 }
 
 static inline void nvme_tcp_queue_request(struct nvme_tcp_request *req,
-		bool sync)
+		bool sync, bool last)
 {
 	struct nvme_tcp_queue *queue = req->queue;
 	bool empty;
@@ -279,7 +279,7 @@ static inline void nvme_tcp_queue_request(struct nvme_tcp_request *req,
 	    sync && empty && mutex_trylock(&queue->send_mutex)) {
 		nvme_tcp_try_send(queue);
 		mutex_unlock(&queue->send_mutex);
-	} else {
+	} else if (last) {
 		queue_work_on(queue->io_cpu, nvme_tcp_wq, &queue->io_work);
 	}
 }
@@ -614,7 +614,7 @@ static int nvme_tcp_handle_r2t(struct nvme_tcp_queue *queue,
 	req->state = NVME_TCP_SEND_H2C_PDU;
 	req->offset = 0;
 
-	nvme_tcp_queue_request(req, false);
+	nvme_tcp_queue_request(req, false, true);
 
 	return 0;
 }
@@ -2123,7 +2123,7 @@ static void nvme_tcp_submit_async_event(struct nvme_ctrl *arg)
 	ctrl->async_req.curr_bio = NULL;
 	ctrl->async_req.data_len = 0;
 
-	nvme_tcp_queue_request(&ctrl->async_req, true);
+	nvme_tcp_queue_request(&ctrl->async_req, true, true);
 }
 
 static enum blk_eh_timer_return
@@ -2235,6 +2235,14 @@ static blk_status_t nvme_tcp_setup_cmd_pdu(struct nvme_ns *ns,
 	return 0;
 }
 
+static void nvme_tcp_commit_rqs(struct blk_mq_hw_ctx *hctx)
+{
+	struct nvme_tcp_queue *queue = hctx->driver_data;
+
+	if (!llist_empty(&queue->req_list))
+		queue_work_on(queue->io_cpu, nvme_tcp_wq, &queue->io_work);
+}
+
 static blk_status_t nvme_tcp_queue_rq(struct blk_mq_hw_ctx *hctx,
 		const struct blk_mq_queue_data *bd)
 {
@@ -2254,7 +2262,7 @@ static blk_status_t nvme_tcp_queue_rq(struct blk_mq_hw_ctx *hctx,
 
 	blk_mq_start_request(rq);
 
-	nvme_tcp_queue_request(req, true);
+	nvme_tcp_queue_request(req, true, bd->last);
 
 	return BLK_STS_OK;
 }
@@ -2322,6 +2330,7 @@ static int nvme_tcp_poll(struct blk_mq_hw_ctx *hctx)
 
 static const struct blk_mq_ops nvme_tcp_mq_ops = {
 	.queue_rq	= nvme_tcp_queue_rq,
+	.commit_rqs	= nvme_tcp_commit_rqs,
 	.complete	= nvme_complete_rq,
 	.init_request	= nvme_tcp_init_request,
 	.exit_request	= nvme_tcp_exit_request,
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
