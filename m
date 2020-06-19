Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 433F51FFF46
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jun 2020 02:30:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZ+mf5V9607nuzXD4eJevpfH9R4ARfPYL+PQ1pjt2x8=; b=hFbHSH2hOUB1vE
	JPOlifXix4A5a4DAtQwXUCF6DPA5jhz6n8dBuQtMoTP+awe3++uzCGJYaA+PPCdtDt87FBIX9h9oc
	enlioTMwcAwxNLW9vcNg1jPpFAl3R/ospnlN+g/PmjMp1Ir6WCTU5TYUkRajgq7ySLbG3Utg3gqI4
	jumjb5+FVpK7xhIkch9RYapCsJlqMljQvtJXRPdbXU/1+PrepMbNqebX4dCAtQy7hskQsZIPEESkx
	5KOWE8rBpwoGHSS+HC/Sv2m73KoqnOsrO/Q2QZGiUhZ5Q3t+i49nOwjonUIAuTJoNeYJG2nUerIDh
	dqZAjcU7LhYM+ZcNEZqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm4vN-0002bq-V6; Fri, 19 Jun 2020 00:30:30 +0000
Received: from [2601:647:4802:9070:1cb6:2f11:eeb8:2d3d]
 (helo=localhost.localdomain)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm4vK-0002b7-E2; Fri, 19 Jun 2020 00:30:26 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH 3/3] nvme-tcp: optimize network stack with setting msg flags
 according to batch size
Date: Thu, 18 Jun 2020 17:30:24 -0700
Message-Id: <20200619003024.153517-4-sagi@grimberg.me>
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

If we have a long list of request to send, signal the network stack
that more is coming (MSG_MORE). If we have nothing else, signal MSG_EOR.

Tested-by: Mark Wunderlich <mark.wunderlich@intel.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 20 +++++++++++++++++---
 1 file changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 76fd587acc2e..0a13a0812dbc 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -79,6 +79,7 @@ struct nvme_tcp_queue {
 	struct mutex		send_mutex;
 	struct llist_head	req_list;
 	struct list_head	send_list;
+	bool			more_requests;
 
 	/* recv state */
 	void			*pdu;
@@ -277,7 +278,9 @@ static inline void nvme_tcp_queue_request(struct nvme_tcp_request *req,
 	 */
 	if (queue->io_cpu == smp_processor_id() &&
 	    sync && empty && mutex_trylock(&queue->send_mutex)) {
+		queue->more_requests = !last;
 		nvme_tcp_try_send(queue);
+		queue->more_requests = false;
 		mutex_unlock(&queue->send_mutex);
 	} else if (last) {
 		queue_work_on(queue->io_cpu, nvme_tcp_wq, &queue->io_work);
@@ -880,6 +883,12 @@ static void nvme_tcp_state_change(struct sock *sk)
 	read_unlock(&sk->sk_callback_lock);
 }
 
+static inline bool nvme_tcp_queue_more(struct nvme_tcp_queue *queue)
+{
+	return !list_empty(&queue->send_list) ||
+		!llist_empty(&queue->req_list) || queue->more_requests;
+}
+
 static inline void nvme_tcp_done_send_req(struct nvme_tcp_queue *queue)
 {
 	queue->request = NULL;
@@ -901,7 +910,7 @@ static int nvme_tcp_try_send_data(struct nvme_tcp_request *req)
 		bool last = nvme_tcp_pdu_last_send(req, len);
 		int ret, flags = MSG_DONTWAIT;
 
-		if (last && !queue->data_digest)
+		if (last && !queue->data_digest && !nvme_tcp_queue_more(queue))
 			flags |= MSG_EOR;
 		else
 			flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
@@ -948,7 +957,7 @@ static int nvme_tcp_try_send_cmd_pdu(struct nvme_tcp_request *req)
 	int flags = MSG_DONTWAIT;
 	int ret;
 
-	if (inline_data)
+	if (inline_data || nvme_tcp_queue_more(queue))
 		flags |= MSG_MORE | MSG_SENDPAGE_NOTLAST;
 	else
 		flags |= MSG_EOR;
@@ -1013,12 +1022,17 @@ static int nvme_tcp_try_send_ddgst(struct nvme_tcp_request *req)
 {
 	struct nvme_tcp_queue *queue = req->queue;
 	int ret;
-	struct msghdr msg = { .msg_flags = MSG_DONTWAIT | MSG_EOR };
+	struct msghdr msg = { .msg_flags = MSG_DONTWAIT };
 	struct kvec iov = {
 		.iov_base = &req->ddgst + req->offset,
 		.iov_len = NVME_TCP_DIGEST_LENGTH - req->offset
 	};
 
+	if (nvme_tcp_queue_more(queue))
+		msg.msg_flags |= MSG_MORE;
+	else
+		msg.msg_flags |= MSG_EOR;
+
 	ret = kernel_sendmsg(queue->sock, &msg, &iov, 1, iov.iov_len);
 	if (unlikely(ret <= 0))
 		return ret;
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
