Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34A305EE15
	for <lists+linux-nvme@lfdr.de>; Wed,  3 Jul 2019 23:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cYk3+6LdD2Z3wWTPSd0Xk9fu1MwJ5Gkv5DZFiuC6vOo=; b=Njj
	SVP2E8F/xLgl01P+oTxNXNK9XOH8ddlJEGB4AMfJoZe1eBCxYIHZyv0LgIEYzTw9qO2+qK2Rb4HBp
	ChMRU1Jlq3mPrulGt80PMN95J5rzdsHNPEQb/Le6j6b5IOZx8JtxwPkfV1IWybjHfJjwgcjiOZ4T1
	CpxPyeAX8BLb/CTSNvGiN6pcmal0j8g8yBI/WKk9DsXRkFUzHBST0pTMCOQFzujzf8VLdYvr3mSO+
	tL2nXqYu8qo+NrgEYp0eCQtzY6+0RwE1fQpOlpjHFv1GVWhzpglaIf2lrhmN0+NTqM1BpztL0a+pE
	BO+D82m+JLhQLNEWJQ1o/6DSOOLlppw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1himU8-0003EX-AY; Wed, 03 Jul 2019 21:08:12 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1himU3-0003E8-Ik; Wed, 03 Jul 2019 21:08:07 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc] nvme-tcp: support simple polling
Date: Wed,  3 Jul 2019 14:08:04 -0700
Message-Id: <20190703210804.23137-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Simple polling support via socket busy_poll interface.
Although we do not shutdown interrupts but simply hammer
the socket poll, we can sometimes find completions faster
than the normal interrupt driven RX path.

We add per queue nr_cqe counter that resets every time
RX path is invoked such that .poll callback can return it
to stay consistent with the semantics.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
There is quite a bit more to do in this direction such as
asking the net device to allocate polling rings and steer our
polling queues to them, but that would require some infrastructure
work in the networking stack.

With this alone, even while still absorbing the net device interrupts
I'm seeing around 10%-20% latency improvement while sacrificing lots
of cpu cycles for it.

 drivers/nvme/host/tcp.c | 51 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 45 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 08a2501b9357..a4275bc932c3 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -13,6 +13,7 @@
 #include <net/tcp.h>
 #include <linux/blk-mq.h>
 #include <crypto/hash.h>
+#include <net/busy_poll.h>
 
 #include "nvme.h"
 #include "fabrics.h"
@@ -72,6 +73,7 @@ struct nvme_tcp_queue {
 	int			pdu_offset;
 	size_t			data_remaining;
 	size_t			ddgst_remaining;
+	unsigned int		nr_cqe;
 
 	/* send state */
 	struct nvme_tcp_request *request;
@@ -438,6 +440,7 @@ static int nvme_tcp_process_nvme_cqe(struct nvme_tcp_queue *queue,
 	}
 
 	nvme_end_request(rq, cqe->status, cqe->result);
+	queue->nr_cqe++;
 
 	return 0;
 }
@@ -701,8 +704,10 @@ static int nvme_tcp_recv_data(struct nvme_tcp_queue *queue, struct sk_buff *skb,
 			nvme_tcp_ddgst_final(queue->rcv_hash, &queue->exp_ddgst);
 			queue->ddgst_remaining = NVME_TCP_DIGEST_LENGTH;
 		} else {
-			if (pdu->hdr.flags & NVME_TCP_F_DATA_SUCCESS)
+			if (pdu->hdr.flags & NVME_TCP_F_DATA_SUCCESS) {
 				nvme_tcp_end_request(rq, NVME_SC_SUCCESS);
+				queue->nr_cqe++;
+			}
 			nvme_tcp_init_recv_ctx(queue);
 		}
 	}
@@ -742,6 +747,7 @@ static int nvme_tcp_recv_ddgst(struct nvme_tcp_queue *queue,
 						pdu->command_id);
 
 		nvme_tcp_end_request(rq, NVME_SC_SUCCESS);
+		queue->nr_cqe++;
 	}
 
 	nvme_tcp_init_recv_ctx(queue);
@@ -1023,6 +1029,7 @@ static int nvme_tcp_try_recv(struct nvme_tcp_queue *queue)
 	rd_desc.arg.data = queue;
 	rd_desc.count = 1;
 	lock_sock(sk);
+	queue->nr_cqe = 0;
 	consumed = tcp_read_sock(sk, &rd_desc, nvme_tcp_recv_skb);
 	release_sock(sk);
 	return consumed;
@@ -1364,6 +1371,7 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	queue->sock->sk->sk_data_ready = nvme_tcp_data_ready;
 	queue->sock->sk->sk_state_change = nvme_tcp_state_change;
 	queue->sock->sk->sk_write_space = nvme_tcp_write_space;
+	queue->sock->sk->sk_ll_usec = 1;
 	write_unlock_bh(&queue->sock->sk->sk_callback_lock);
 
 	return 0;
@@ -1462,7 +1470,7 @@ static struct blk_mq_tag_set *nvme_tcp_alloc_tagset(struct nvme_ctrl *nctrl,
 		set->driver_data = ctrl;
 		set->nr_hw_queues = nctrl->queue_count - 1;
 		set->timeout = NVME_IO_TIMEOUT;
-		set->nr_maps = 2 /* default + read */;
+		set->nr_maps = nctrl->opts->nr_poll_queues ? HCTX_MAX_TYPES : 2;
 	}
 
 	ret = blk_mq_alloc_tag_set(set);
@@ -1561,6 +1569,7 @@ static unsigned int nvme_tcp_nr_io_queues(struct nvme_ctrl *ctrl)
 
 	nr_io_queues = min(ctrl->opts->nr_io_queues, num_online_cpus());
 	nr_io_queues += min(ctrl->opts->nr_write_queues, num_online_cpus());
+	nr_io_queues += min(ctrl->opts->nr_poll_queues, num_online_cpus());
 
 	return nr_io_queues;
 }
@@ -1592,6 +1601,12 @@ static void nvme_tcp_set_io_queues(struct nvme_ctrl *nctrl,
 			min(opts->nr_io_queues, nr_io_queues);
 		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_DEFAULT];
 	}
+
+	if (opts->nr_poll_queues && nr_io_queues) {
+		/* map dedicated poll queues only if we have queues left */
+		ctrl->io_queues[HCTX_TYPE_POLL] =
+			min(opts->nr_poll_queues, nr_io_queues);
+	}
 }
 
 static int nvme_tcp_alloc_io_queues(struct nvme_ctrl *ctrl)
@@ -2144,14 +2159,36 @@ static int nvme_tcp_map_queues(struct blk_mq_tag_set *set)
 	blk_mq_map_queues(&set->map[HCTX_TYPE_DEFAULT]);
 	blk_mq_map_queues(&set->map[HCTX_TYPE_READ]);
 
+	if (opts->nr_poll_queues && ctrl->io_queues[HCTX_TYPE_POLL]) {
+		/* map dedicated poll queues only if we have queues left */
+		set->map[HCTX_TYPE_POLL].nr_queues =
+				ctrl->io_queues[HCTX_TYPE_POLL];
+		set->map[HCTX_TYPE_POLL].queue_offset =
+			ctrl->io_queues[HCTX_TYPE_DEFAULT] +
+			ctrl->io_queues[HCTX_TYPE_READ];
+		blk_mq_map_queues(&set->map[HCTX_TYPE_POLL]);
+	}
+
 	dev_info(ctrl->ctrl.device,
-		"mapped %d/%d default/read queues.\n",
+		"mapped %d/%d/%d default/read/poll queues.\n",
 		ctrl->io_queues[HCTX_TYPE_DEFAULT],
-		ctrl->io_queues[HCTX_TYPE_READ]);
+		ctrl->io_queues[HCTX_TYPE_READ],
+		ctrl->io_queues[HCTX_TYPE_POLL]);
 
 	return 0;
 }
 
+static int nvme_tcp_poll(struct blk_mq_hw_ctx *hctx)
+{
+	struct nvme_tcp_queue *queue = hctx->driver_data;
+	struct sock *sk = queue->sock->sk;
+
+	if (sk_can_busy_loop(sk) && skb_queue_empty(&sk->sk_receive_queue))
+		sk_busy_loop(sk, true);
+	nvme_tcp_try_recv(queue);
+	return queue->nr_cqe;
+}
+
 static struct blk_mq_ops nvme_tcp_mq_ops = {
 	.queue_rq	= nvme_tcp_queue_rq,
 	.complete	= nvme_complete_rq,
@@ -2160,6 +2197,7 @@ static struct blk_mq_ops nvme_tcp_mq_ops = {
 	.init_hctx	= nvme_tcp_init_hctx,
 	.timeout	= nvme_tcp_timeout,
 	.map_queues	= nvme_tcp_map_queues,
+	.poll		= nvme_tcp_poll,
 };
 
 static struct blk_mq_ops nvme_tcp_admin_mq_ops = {
@@ -2213,7 +2251,8 @@ static struct nvme_ctrl *nvme_tcp_create_ctrl(struct device *dev,
 
 	INIT_LIST_HEAD(&ctrl->list);
 	ctrl->ctrl.opts = opts;
-	ctrl->ctrl.queue_count = opts->nr_io_queues + opts->nr_write_queues + 1;
+	ctrl->ctrl.queue_count = opts->nr_io_queues + opts->nr_write_queues +
+				opts->nr_poll_queues + 1;
 	ctrl->ctrl.sqsize = opts->queue_size - 1;
 	ctrl->ctrl.kato = opts->kato;
 
@@ -2307,7 +2346,7 @@ static struct nvmf_transport_ops nvme_tcp_transport = {
 	.allowed_opts	= NVMF_OPT_TRSVCID | NVMF_OPT_RECONNECT_DELAY |
 			  NVMF_OPT_HOST_TRADDR | NVMF_OPT_CTRL_LOSS_TMO |
 			  NVMF_OPT_HDR_DIGEST | NVMF_OPT_DATA_DIGEST |
-			  NVMF_OPT_NR_WRITE_QUEUES,
+			  NVMF_OPT_NR_WRITE_QUEUES | NVMF_OPT_NR_POLL_QUEUES,
 	.create_ctrl	= nvme_tcp_create_ctrl,
 };
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
