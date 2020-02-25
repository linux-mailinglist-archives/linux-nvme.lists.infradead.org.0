Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADFF816F3F7
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Feb 2020 00:54:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bjAdF4vUj435BGHl8a7TaRCC3bMxrV1kl5Fc86k+aXI=; b=RUtcoL8IJryckt
	YHGdpiZtZoCDkADhQb631zO8c2cq4F3J7tThP2dDSFA8VPEfS3LZ40aDZUmVYgGF11G176nhGYarN
	PpaV43qwshPhEqXaEDLS+8xJN3a8Akx7ns0wv2CP2CLgA7PTLo6nWGJjNEsIbMSnR5dqfXjX9lN82
	3mjma9YKtXZ5SiOt+635pHofJi4PPRpdYuwK6PUI1IBIIKdJ8pmHfhqaJsQi4eRxNQwZoj3IlV4wC
	+5T2NUglIDl/KAeYSd7Q2qkHflg0wn+DZ3/KF68c3HVjnj6scDqIEhANlBKnU1ZeqlCjWgW/yKYtm
	Hdei8xZBxLUoRrngpQ5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6k1z-0005pS-Fc; Tue, 25 Feb 2020 23:54:27 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6k0m-0004j5-I6; Tue, 25 Feb 2020 23:53:12 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvme-tcp: optimize queue io_cpu assignment for multiple queue
 maps
Date: Tue, 25 Feb 2020 15:53:09 -0800
Message-Id: <20200225235309.4508-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
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
Cc: Mark Wunderlich <mark.wunderlich@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Currently, queue io_cpu assignment is done sequentially for default,
read and poll queues based on queue id. This causes miss-alignment between
context of CPU initiating I/O and the I/O worker thread processing
queued requests or completions.

Change to modify queue io_cpu assignment to take into account queue
maps offset. Each queue io_cpu will start at zero for each queue map.
This essentially aligns read/poll queues to start over the same range as
default queues.

Testing performed by Mark with:
- ram device (nvmet)
- single CPU core (pinned)
- 100% 4k reads
- engine io_uring (not using sq_thread option)
- hipri flag set

Micro-benchmark results show a net gain of:
- increase of 18%-29% in IOPs
- reduction of 16%-22% in average latency
- reduction of 7%-23% in 99.99% latency

Baseline:
========
QDepth/Batch	| IOPs [k]	| Avg. Lat [us]	| 99.99% Lat [us]
-----------------------------------------------------------------
1/1 		| 32.4		| 30.11		| 50.94
32/8		| 179		| 168.20	| 371

CPU alignment:
=============
QDepth/Batch	| IOPs [k]	| Avg. Lat [us]	| 99.99% Lat [us]
-----------------------------------------------------------------
1/1 		| 38.5		|   25.18	| 39.16
32/8		| 231		|   130.75	| 343

Reported-by: Mark Wunderlich <mark.wunderlich@intel.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 62 +++++++++++++++++++++++++++++++++++++----
 1 file changed, 56 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index e384239af880..11a7c26f8573 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1258,13 +1258,67 @@ static int nvme_tcp_init_connection(struct nvme_tcp_queue *queue)
 	return ret;
 }
 
+static bool nvme_tcp_admin_queue(struct nvme_tcp_queue *queue)
+{
+	return nvme_tcp_queue_id(queue) == 0;
+}
+
+static bool nvme_tcp_default_queue(struct nvme_tcp_queue *queue)
+{
+	struct nvme_tcp_ctrl *ctrl = queue->ctrl;
+	int qid = nvme_tcp_queue_id(queue);
+
+	return !nvme_tcp_admin_queue(queue) &&
+		qid < 1 + ctrl->io_queues[HCTX_TYPE_DEFAULT];
+}
+
+static bool nvme_tcp_read_queue(struct nvme_tcp_queue *queue)
+{
+	struct nvme_tcp_ctrl *ctrl = queue->ctrl;
+	int qid = nvme_tcp_queue_id(queue);
+
+	return !nvme_tcp_admin_queue(queue) &&
+		!nvme_tcp_default_queue(queue) &&
+		qid < 1 + ctrl->io_queues[HCTX_TYPE_DEFAULT] +
+			  ctrl->io_queues[HCTX_TYPE_READ];
+}
+
+static bool nvme_tcp_poll_queue(struct nvme_tcp_queue *queue)
+{
+	struct nvme_tcp_ctrl *ctrl = queue->ctrl;
+	int qid = nvme_tcp_queue_id(queue);
+
+	return !nvme_tcp_admin_queue(queue) &&
+		!nvme_tcp_default_queue(queue) &&
+		!nvme_tcp_read_queue(queue) &&
+		qid < 1 + ctrl->io_queues[HCTX_TYPE_DEFAULT] +
+			  ctrl->io_queues[HCTX_TYPE_READ] +
+			  ctrl->io_queues[HCTX_TYPE_POLL];
+}
+
+static void nvme_tcp_set_queue_io_cpu(struct nvme_tcp_queue *queue)
+{
+	struct nvme_tcp_ctrl *ctrl = queue->ctrl;
+	int qid = nvme_tcp_queue_id(queue);
+	int n = 0;
+
+	if (nvme_tcp_default_queue(queue))
+		n = qid - 1;
+	else if (nvme_tcp_read_queue(queue))
+		n = qid - ctrl->io_queues[HCTX_TYPE_DEFAULT] - 1;
+	else if (nvme_tcp_poll_queue(queue))
+		n = qid - ctrl->io_queues[HCTX_TYPE_DEFAULT] -
+				ctrl->io_queues[HCTX_TYPE_READ] - 1;
+	queue->io_cpu = cpumask_next_wrap(n - 1, cpu_online_mask, -1, false);
+}
+
 static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 		int qid, size_t queue_size)
 {
 	struct nvme_tcp_ctrl *ctrl = to_tcp_ctrl(nctrl);
 	struct nvme_tcp_queue *queue = &ctrl->queues[qid];
 	struct linger sol = { .l_onoff = 1, .l_linger = 0 };
-	int ret, opt, rcv_pdu_size, n;
+	int ret, opt, rcv_pdu_size;
 
 	queue->ctrl = ctrl;
 	INIT_LIST_HEAD(&queue->send_list);
@@ -1343,11 +1397,7 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	}
 
 	queue->sock->sk->sk_allocation = GFP_ATOMIC;
-	if (!qid)
-		n = 0;
-	else
-		n = (qid - 1) % num_online_cpus();
-	queue->io_cpu = cpumask_next_wrap(n - 1, cpu_online_mask, -1, false);
+	nvme_tcp_set_queue_io_cpu(queue);
 	queue->request = NULL;
 	queue->data_remaining = 0;
 	queue->ddgst_remaining = 0;
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
