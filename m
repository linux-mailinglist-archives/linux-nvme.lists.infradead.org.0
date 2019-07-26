Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D227704C
	for <lists+linux-nvme@lfdr.de>; Fri, 26 Jul 2019 19:30:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6VcwL1Y26cXtP+rjmZhiyPMIa6c7lY6I9FUykNL8VWw=; b=dx/
	9bkD+6gXB+01IVklopbTIpxvOQkRuAecD4JXbxhEZstNFpP6aTjIVyEU0lZSa/nu9qG45cBw4GLbb
	QCK/l8f4h6idwEbwRGAszuQX9mEuGNB/X3rpMr+HDp7pFNvH/SaQ6I0AhoC+mG3OpKXsdCcaAVEM4
	RkGinVLUpi1wDErFSEjWfNn6DvugF5wm9URMtid+NW5qdUMVcVzfgugyPRXIZHSiipCzlx81izd8D
	HD0Kw8mrRoyyc9nWz5TRSdP839J2ro4jLr14u5u8qAoJpTXb+65TxdHmjo2G1bR8uQq1KP8T0tJCF
	FtJSrFvFCqpdXp5fcZkWBv/S5HdexcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr42X-0005A9-06; Fri, 26 Jul 2019 17:29:57 +0000
Received: from [2601:647:4800:973f:3044:7ea3:7e19:4d2c]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hr42R-00052w-5m; Fri, 26 Jul 2019 17:29:51 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-rdma: fix possible use-after-free in connect error flow
Date: Fri, 26 Jul 2019 10:29:49 -0700
Message-Id: <20190726172949.1635-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 NMoreyChaisemartin@suse.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When start_queue fails, we need to make sure to drain the
queue cq before freeing the rdma resources because we might
still race with the completion path. Have start_queue() error
path safely stop the queue.

--
[30371.808111] nvme nvme1: Failed reconnect attempt 11
[30371.808113] nvme nvme1: Reconnecting in 10 seconds...
[...]
[30382.069315] nvme nvme1: creating 4 I/O queues.
[30382.257058] nvme nvme1: Connect Invalid SQE Parameter, qid 4
[30382.257061] nvme nvme1: failed to connect queue: 4 ret=386
[30382.305001] BUG: unable to handle kernel NULL pointer dereference at 0000000000000018
[30382.305022] IP: qedr_poll_cq+0x8a3/0x1170 [qedr]
[30382.305028] PGD 0 P4D 0
[30382.305037] Oops: 0000 [#1] SMP PTI
[...]
[30382.305153] Call Trace:
[30382.305166]  ? __switch_to_asm+0x34/0x70
[30382.305187]  __ib_process_cq+0x56/0xd0 [ib_core]
[30382.305201]  ib_poll_handler+0x26/0x70 [ib_core]
[30382.305213]  irq_poll_softirq+0x88/0x110
[30382.305223]  ? sort_range+0x20/0x20
[30382.305232]  __do_softirq+0xde/0x2c6
[30382.305241]  ? sort_range+0x20/0x20
[30382.305249]  run_ksoftirqd+0x1c/0x60
[30382.305258]  smpboot_thread_fn+0xef/0x160
[30382.305265]  kthread+0x113/0x130
[30382.305273]  ? kthread_create_worker_on_cpu+0x50/0x50
[30382.305281]  ret_from_fork+0x35/0x40
--

Reported-by: Nicolas Morey-Chaisemartin <NMoreyChaisemartin@suse.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/rdma.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 97f668a39ae1..7b074323bcdf 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -562,13 +562,17 @@ static int nvme_rdma_alloc_queue(struct nvme_rdma_ctrl *ctrl,
 	return ret;
 }
 
+static void __nvme_rdma_stop_queue(struct nvme_rdma_queue *queue)
+{
+	rdma_disconnect(queue->cm_id);
+	ib_drain_qp(queue->qp);
+}
+
 static void nvme_rdma_stop_queue(struct nvme_rdma_queue *queue)
 {
 	if (!test_and_clear_bit(NVME_RDMA_Q_LIVE, &queue->flags))
 		return;
-
-	rdma_disconnect(queue->cm_id);
-	ib_drain_qp(queue->qp);
+	__nvme_rdma_stop_queue(queue);
 }
 
 static void nvme_rdma_free_queue(struct nvme_rdma_queue *queue)
@@ -607,11 +611,13 @@ static int nvme_rdma_start_queue(struct nvme_rdma_ctrl *ctrl, int idx)
 	else
 		ret = nvmf_connect_admin_queue(&ctrl->ctrl);
 
-	if (!ret)
+	if (!ret) {
 		set_bit(NVME_RDMA_Q_LIVE, &queue->flags);
-	else
+	} else {
+		__nvme_rdma_stop_queue(queue);
 		dev_info(ctrl->ctrl.device,
 			"failed to connect queue: %d ret=%d\n", idx, ret);
+	}
 	return ret;
 }
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
