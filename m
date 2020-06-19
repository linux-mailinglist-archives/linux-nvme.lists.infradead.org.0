Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590D71FFF48
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jun 2020 02:30:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPvex3had/JZ+XMvlS/pIxwe7EqEBGJWjD+gHc83ai4=; b=W73BHxXt/rcbnw
	XzBFDLHbCSgLu3oE0Sdt6kWCw8h7+DpifNq4nE3TX1tJ4zfYRpFLGdXC1pVZY1mSCUgvxaXO6c33X
	dMnQ8ik/Ru5M7AagYD5aMBoi2HVS8qyJIKGzsOLwkopwNUoIMhmH/fQAtll+hwLDgkGPBZwC/BJyN
	MOJcjQCuat1Px3RzJAjz4EWV6t/cI9ejlUzwuHVjPfV1LOyBqHUcflQPWbAzOl7Qg0PpRt30tjw48
	LeTncquJKPVof5xkT3J0QTaEDfDKScPWkm3pVnkLSHzMKSybru0BPiCyxbcUbcksi+GET9cao8aUD
	bC3E/X5a1Oo8n7sBRNBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jm4vU-0002e6-Fi; Fri, 19 Jun 2020 00:30:36 +0000
Received: from [2601:647:4802:9070:1cb6:2f11:eeb8:2d3d]
 (helo=localhost.localdomain)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jm4vK-0002b7-4s; Fri, 19 Jun 2020 00:30:26 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH 1/3] nvme-tcp: have queue prod/cons send list become a llist
Date: Thu, 18 Jun 2020 17:30:22 -0700
Message-Id: <20200619003024.153517-2-sagi@grimberg.me>
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

The queue processing will splice to a queue local list, this should
alleviate some contention on the send_list lock, but also prepares
us to the next patch where we look on these lists for network stack
flag optimization.

Remove queue lock as its unused anymore.

Tested-by: Mark Wunderlich <mark.wunderlich@intel.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 39 +++++++++++++++++++++++++++++----------
 1 file changed, 29 insertions(+), 10 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 79ef2b8e2b3c..93fc6d9f97df 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -46,6 +46,7 @@ struct nvme_tcp_request {
 	u32			pdu_sent;
 	u16			ttag;
 	struct list_head	entry;
+	struct llist_node	lentry;
 	__le32			ddgst;
 
 	struct bio		*curr_bio;
@@ -75,8 +76,8 @@ struct nvme_tcp_queue {
 	struct work_struct	io_work;
 	int			io_cpu;
 
-	spinlock_t		lock;
 	struct mutex		send_mutex;
+	struct llist_head	req_list;
 	struct list_head	send_list;
 
 	/* recv state */
@@ -266,10 +267,8 @@ static inline void nvme_tcp_queue_request(struct nvme_tcp_request *req,
 	struct nvme_tcp_queue *queue = req->queue;
 	bool empty;
 
-	spin_lock(&queue->lock);
-	empty = list_empty(&queue->send_list) && !queue->request;
-	list_add_tail(&req->entry, &queue->send_list);
-	spin_unlock(&queue->lock);
+	empty = llist_add(&req->lentry, &queue->req_list) &&
+		list_empty(&queue->send_list) && !queue->request;
 
 	/*
 	 * if we're the first on the send_list and we can try to send
@@ -285,18 +284,38 @@ static inline void nvme_tcp_queue_request(struct nvme_tcp_request *req,
 	}
 }
 
+static void nvme_tcp_process_req_list(struct nvme_tcp_queue *queue)
+{
+	struct nvme_tcp_request *req;
+	struct llist_node *node;
+
+	node = llist_del_all(&queue->req_list);
+	if (!node)
+		return;
+
+	while (node) {
+		req = llist_entry(node, struct nvme_tcp_request, lentry);
+		list_add(&req->entry, &queue->send_list);
+		node = node->next;
+	}
+}
+
 static inline struct nvme_tcp_request *
 nvme_tcp_fetch_request(struct nvme_tcp_queue *queue)
 {
 	struct nvme_tcp_request *req;
 
-	spin_lock(&queue->lock);
 	req = list_first_entry_or_null(&queue->send_list,
 			struct nvme_tcp_request, entry);
-	if (req)
-		list_del(&req->entry);
-	spin_unlock(&queue->lock);
+	if (!req) {
+		nvme_tcp_process_req_list(queue);
+		req = list_first_entry_or_null(&queue->send_list,
+				struct nvme_tcp_request, entry);
+		if (unlikely(!req))
+			return NULL;
+	}
 
+	list_del(&req->entry);
 	return req;
 }
 
@@ -1342,8 +1361,8 @@ static int nvme_tcp_alloc_queue(struct nvme_ctrl *nctrl,
 	int ret, rcv_pdu_size;
 
 	queue->ctrl = ctrl;
+	init_llist_head(&queue->req_list);
 	INIT_LIST_HEAD(&queue->send_list);
-	spin_lock_init(&queue->lock);
 	mutex_init(&queue->send_mutex);
 	INIT_WORK(&queue->io_work, nvme_tcp_io_work);
 	queue->queue_size = queue_size;
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
