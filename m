Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90316FB1A2
	for <lists+linux-nvme@lfdr.de>; Wed, 13 Nov 2019 14:43:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bvmGKnod87hwfL2d2gzAy7dP4rtDymz7+OVK3p09bKk=; b=EwR/dUpPF2wLk3
	l3P+iedwpOp71gvju+UEFnRBlH3l3m8KaDCZn5OZxbjPhS+U2oNO6S8dOadYz+YONYZUvkFngBOFY
	YXN2Zl0BTe648VaAVPn6R9Tbe0GztBCNqRyc43F8dBsMCFiibzRIdhspLZFomhRdCG7nEBuoD1MdB
	htNJDgwktkgAzn2dxgbZs4VWU8MhNNVWz4tO6/C0Voc6eC/KQjiVGSao1e0CYAoQQ7pEz5xpdTDWz
	TqJC6vmOwbk+b/iv2Uh1V8Y+OlaB/qxs5BYnRozg9BN8konjvUJKG9NCGQNIBJjzVZJev6bf6+Qjf
	8Tz1rVAKUrlMSsdkN1Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUsvv-0003RX-TE; Wed, 13 Nov 2019 13:43:43 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUsvY-0003H5-TZ
 for linux-nvme@lists.infradead.org; Wed, 13 Nov 2019 13:43:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573652599;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=fTBlSgi+d7fey7uq9tAEIRVZOWTgawnx0H3bVZfsyIY=;
 b=VE4ORPorvSo+XrghsDK5u81rJobowQ4sjXDX9pjUvV343MwB4+QfHeGvWZpLFtjL0yZ6IL
 NcGaSNo51N3kml9zG1X9Ll5fLMGgBhtJ3ekdzIrSPBeHRTlFF4sGi61Db45VFGv9K9bqZQ
 QkhHynRbIWCS8rtwasC++DloNL8Xm90=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-294-hmoSApNrPXahRDZ4yymZtA-1; Wed, 13 Nov 2019 08:43:15 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 915DD107ACC8;
 Wed, 13 Nov 2019 13:43:14 +0000 (UTC)
Received: from localhost (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6CDB26117E;
 Wed, 13 Nov 2019 13:43:09 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 2/2] nvme-pci: check CQ after batch submission for
 Microsoft device
Date: Wed, 13 Nov 2019 21:42:48 +0800
Message-Id: <20191113134248.26022-3-ming.lei@redhat.com>
In-Reply-To: <20191113134248.26022-1-ming.lei@redhat.com>
References: <20191113134248.26022-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: hmoSApNrPXahRDZ4yymZtA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_054321_033635_6CF2F57F 
X-CRM114-Status: GOOD (  16.90  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

f9dde187fa92("nvme-pci: remove cq check after submission") removes
cq check after submission, this change actually causes performance
regression on Microsoft Corporation device in which aggressive interrupt
coalescing is used, for example, the max single interrupt per second
can reach 40~50K at most.

Checking CQ after submission can improve IO completion for Microsoft
Corporation device:

1) the check is very cheap, and lockless check on cq is enough,
see nvme_cqe_pending(). Especially the check can be done after batch
submission is done. Compared with the big latency added by aggressive
interrupt coalescing, cost of the check can be ignored.

2) when IO completion is observed via checking CQ in submission, the requst
may be completed without interrupt involved, or the interrupt handler
overload can be decreased.

3) when single sw queue is submiting IOs to this hw queue, if IOs completion
is observed via this check, the IO can be completed locally, which is
cheaper than remote completion.

Follows test result done on Azure L80sv2 guest with NVMe drive(
Microsoft Corporation Device b111). This guest has 80 CPUs and 10
numa nodes, and each NVMe drive supports 8 hw queues.

1) test script:
fio --bs=4k --ioengine=libaio --iodepth=64 --filename=/dev/nvme0n1 \
	--iodepth_batch_submit=16 --iodepth_batch_complete_min=16 \
	--direct=1 --runtime=30 --numjobs=1 --rw=randread \
	--name=test --group_reporting --gtod_reduce=1

2) test result:
     | v5.3       | v5.3 with this patchset
-------------------------------------------
IOPS | 130K       | 424K

Given IO is handled more efficiently in this way, the original report
of CPU lockup[1] on Hyper-V can't be observed any more after this patch
is applied, since this patch reduces IO completions much in interrupt
handler.

[1] https://lore.kernel.org/lkml/1566281669-48212-1-git-send-email-longli@linuxonhyperv.com

Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Long Li <longli@microsoft.com>
Fixes: f9dde187fa92("nvme-pci: remove cq check after submission")
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/nvme/host/nvme.h |  6 +++
 drivers/nvme/host/pci.c  | 95 +++++++++++++++++++++++++++++++++++-----
 2 files changed, 89 insertions(+), 12 deletions(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index 22e8401352c2..5575827016d1 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -115,6 +115,12 @@ enum nvme_quirks {
 	 * Prevent tag overlap between queues
 	 */
 	NVME_QUIRK_SHARED_TAGS                  = (1 << 13),
+
+	/*
+	 * Check CQ in submission for improving performance since
+	 * the device applies aggressive interrupt coalescing
+	 */
+	NVME_QUIRK_CHECK_CQ			= (1 << 14),
 };
 
 /*
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 01728409a7ea..87d7f55c2d6d 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -83,6 +83,7 @@ struct nvme_queue;
 
 static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown);
 static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode);
+static void nvme_check_cq(struct nvme_queue *nvmeq);
 
 /*
  * Represents an NVM Express device.  Each nvme_dev is a PCI function.
@@ -165,7 +166,10 @@ struct nvme_queue {
 	spinlock_t sq_lock;
 	void *sq_cmds;
 	 /* only used for poll queues: */
-	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
+	union {
+		spinlock_t cq_poll_lock;
+		spinlock_t cq_lock;
+	}____cacheline_aligned_in_smp;
 	volatile struct nvme_completion *cqes;
 	struct blk_mq_tags **tags;
 	dma_addr_t sq_dma_addr;
@@ -185,6 +189,7 @@ struct nvme_queue {
 #define NVMEQ_SQ_CMB		1
 #define NVMEQ_DELETE_ERROR	2
 #define NVMEQ_POLLED		3
+#define NVMEQ_CHECK_CQ		4
 	u32 *dbbuf_sq_db;
 	u32 *dbbuf_cq_db;
 	u32 *dbbuf_sq_ei;
@@ -912,6 +917,10 @@ static blk_status_t nvme_queue_rq(struct blk_mq_hw_ctx *hctx,
 
 	blk_mq_start_request(req);
 	nvme_submit_cmd(nvmeq, &cmnd, bd->last);
+
+	if (bd->last)
+		nvme_check_cq(nvmeq);
+
 	return BLK_STS_OK;
 out_unmap_data:
 	nvme_unmap_data(dev, req);
@@ -1017,6 +1026,19 @@ static inline int nvme_process_cq(struct nvme_queue *nvmeq, u16 *start,
 	return found;
 }
 
+static inline irqreturn_t
+nvme_update_cq(struct nvme_queue *nvmeq, u16 *start, u16 *end)
+{
+	irqreturn_t ret = IRQ_NONE;
+
+	if (nvmeq->cq_head != nvmeq->last_cq_head)
+		ret = IRQ_HANDLED;
+	nvme_process_cq(nvmeq, start, end, -1);
+	nvmeq->last_cq_head = nvmeq->cq_head;
+
+	return ret;
+}
+
 static irqreturn_t nvme_irq(int irq, void *data)
 {
 	struct nvme_queue *nvmeq = data;
@@ -1028,10 +1050,7 @@ static irqreturn_t nvme_irq(int irq, void *data)
 	 * the irq handler, even if that was on another CPU.
 	 */
 	rmb();
-	if (nvmeq->cq_head != nvmeq->last_cq_head)
-		ret = IRQ_HANDLED;
-	nvme_process_cq(nvmeq, &start, &end, -1);
-	nvmeq->last_cq_head = nvmeq->cq_head;
+	ret = nvme_update_cq(nvmeq, &start, &end);
 	wmb();
 
 	if (start != end) {
@@ -1042,6 +1061,24 @@ static irqreturn_t nvme_irq(int irq, void *data)
 	return ret;
 }
 
+static irqreturn_t nvme_irq_for_check_cq(int irq, void *data)
+{
+	struct nvme_queue *nvmeq = data;
+	irqreturn_t ret = IRQ_NONE;
+	u16 start, end;
+
+	spin_lock(&nvmeq->cq_lock);
+	ret = nvme_update_cq(nvmeq, &start, &end);
+	spin_unlock(&nvmeq->cq_lock);
+
+	if (start != end) {
+		nvme_complete_cqes(nvmeq, start, end);
+		return IRQ_HANDLED;
+	}
+
+	return ret;
+}
+
 static irqreturn_t nvme_irq_check(int irq, void *data)
 {
 	struct nvme_queue *nvmeq = data;
@@ -1050,6 +1087,24 @@ static irqreturn_t nvme_irq_check(int irq, void *data)
 	return IRQ_NONE;
 }
 
+static void nvme_check_cq(struct nvme_queue *nvmeq)
+{
+	if (test_bit(NVMEQ_CHECK_CQ, &nvmeq->flags) &&
+			nvme_cqe_pending(nvmeq)) {
+		unsigned long flags;
+
+		if (spin_trylock_irqsave(&nvmeq->cq_lock, flags)) {
+			u16 start, end;
+
+			nvme_update_cq(nvmeq, &start, &end);
+			spin_unlock_irqrestore(&nvmeq->cq_lock, flags);
+
+			if (start != end)
+				nvme_complete_cqes(nvmeq, start, end);
+		}
+	}
+}
+
 /*
  * Poll for completions any queue, including those not dedicated to polling.
  * Can be called from any context.
@@ -1500,12 +1555,14 @@ static int queue_request_irq(struct nvme_queue *nvmeq)
 {
 	struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
 	int nr = nvmeq->dev->ctrl.instance;
+	irq_handler_t handler = test_bit(NVMEQ_CHECK_CQ, &nvmeq->flags) ?
+		nvme_irq_for_check_cq : nvme_irq;
 
 	if (use_threaded_interrupts) {
 		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
-				nvme_irq, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
+				handler, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
 	} else {
-		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq,
+		return pci_request_irq(pdev, nvmeq->cq_vector, handler,
 				NULL, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
 	}
 }
@@ -1515,7 +1572,13 @@ static void nvme_init_queue(struct nvme_queue *nvmeq, u16 qid)
 	struct nvme_dev *dev = nvmeq->dev;
 
 	spin_lock_init(&nvmeq->sq_lock);
-	spin_lock_init(&nvmeq->cq_poll_lock);
+
+	if (test_bit(NVMEQ_CHECK_CQ, &nvmeq->flags)) {
+		WARN_ON_ONCE(test_bit(NVMEQ_POLLED, &nvmeq->flags));
+		spin_lock_init(&nvmeq->cq_lock);
+	} else {
+		spin_lock_init(&nvmeq->cq_poll_lock);
+	}
 
 	nvmeq->sq_tail = 0;
 	nvmeq->last_sq_tail = 0;
@@ -1528,22 +1591,27 @@ static void nvme_init_queue(struct nvme_queue *nvmeq, u16 qid)
 	wmb(); /* ensure the first interrupt sees the initialization */
 }
 
-static int nvme_create_queue(struct nvme_queue *nvmeq, int qid, bool polled)
+static int nvme_create_queue(struct nvme_queue *nvmeq, int qid, bool polled,
+		bool check_cq)
 {
 	struct nvme_dev *dev = nvmeq->dev;
 	int result;
 	u16 vector = 0;
 
 	clear_bit(NVMEQ_DELETE_ERROR, &nvmeq->flags);
+	clear_bit(NVMEQ_CHECK_CQ, &nvmeq->flags);
 
 	/*
 	 * A queue's vector matches the queue identifier unless the controller
 	 * has only one vector available.
 	 */
-	if (!polled)
+	if (!polled) {
 		vector = dev->num_vecs == 1 ? 0 : qid;
-	else
+		if (vector && check_cq)
+			set_bit(NVMEQ_CHECK_CQ, &nvmeq->flags);
+	} else {
 		set_bit(NVMEQ_POLLED, &nvmeq->flags);
+	}
 
 	result = adapter_alloc_cq(dev, qid, nvmeq, vector);
 	if (result)
@@ -1740,7 +1808,8 @@ static int nvme_create_io_queues(struct nvme_dev *dev)
 	for (i = dev->online_queues; i <= max; i++) {
 		bool polled = i > rw_queues;
 
-		ret = nvme_create_queue(&dev->queues[i], i, polled);
+		ret = nvme_create_queue(&dev->queues[i], i, polled,
+				dev->ctrl.quirks & NVME_QUIRK_CHECK_CQ);
 		if (ret)
 			break;
 	}
@@ -3112,6 +3181,8 @@ static const struct pci_device_id nvme_id_table[] = {
 	{ PCI_DEVICE(0x1cc1, 0x8201),   /* ADATA SX8200PNP 512GB */
 		.driver_data = NVME_QUIRK_NO_DEEPEST_PS |
 				NVME_QUIRK_IGNORE_DEV_SUBNQN, },
+	{ PCI_DEVICE(0x1414, 0xb111),   /* Microsoft Corporation device */
+		.driver_data = NVME_QUIRK_CHECK_CQ, },
 	{ PCI_DEVICE_CLASS(PCI_CLASS_STORAGE_EXPRESS, 0xffffff) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2001) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
