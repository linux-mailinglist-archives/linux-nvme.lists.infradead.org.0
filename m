Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46A246DF94
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 06:36:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HGYHqZl8HDfAmRl3SWhLnnQuDFAzGyNVeSvil++XL8g=; b=LPgxsb19qXiC8T
	L4eNOReORubx+3U3SuM+6kA9V3m2gChGJ9l9hkobHnQYSH665HESILeCrrIR600SGWyO+D3UH4gVP
	Jh1/RJqIOZ7YA58naECxxyuf6Tzf10R0hrVSfDe1e6KHzlbChW3KibWm1+oYYOE23mX2MSDRdovnS
	6KWgdvM9uIVU0gysHbrhDZZSfQwhnLo4kqHZLSEO3MhlYUf26n9NM0s/byTD2Zm26EW5mgnAnmleF
	OK7OlPgUuNzDAo7xL8SYgxpAh1ZqEWY07ItInw1ztNvpqEq4gUvRI5oT6LFishY1yELxNkyEQn1tG
	CDH2IsVQhvvgyhY3h/Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoKdK-0006fS-2t; Fri, 19 Jul 2019 04:36:38 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoKd9-0006d1-LK
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 04:36:30 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6J4aDNX030520;
 Thu, 18 Jul 2019 23:36:14 -0500
Message-ID: <f19ac710b4dc28fb3b59ef11bd06d341bc939f3d.camel@kernel.crashing.org>
Subject: [PATCH v2] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Date: Fri, 19 Jul 2019 14:36:13 +1000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_213628_428742_9B19D647 
X-CRM114-Status: GOOD (  21.46  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: linux-kernel@vger.kernel.org, Paul Pawlowski <paul@mrarm.io>,
 Jens Axboe <axboe@fb.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Another issue with the Apple T2 based 2018 controllers seem to be
that they blow up (and shut the machine down) if there's a tag
collision between the IO queue and the Admin queue.

My suspicion is that they use our tags for their internal tracking
and don't mix them with the queue id. They also seem to not like
when tags go beyond the IO queue depth, ie 128 tags.

This adds a quirk that offsets all the tags in the IO queue by 32
to avoid those collisions. It also limits the number of IO queues
to 1 since the code wouldn't otherwise make sense (the device
supports only one queue anyway but better safe than sorry) and
reduces the size of the IO queue

Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---

Note: One thing I noticed is how we have nvme_completion as volatile.

I don't think we really need that, it's forcing the compiler to constantly
reload things which makes no sense once we have established that an
entry is valid.

And since we have a data & control dependency from nvme_cqe_pending(),
we know that reading the CQE is going to depend on it being valid. I
don't really see what volatile is buying us here other than cargo culting.

Cheers,
Ben.

 drivers/nvme/host/nvme.h |  5 ++++
 drivers/nvme/host/pci.c  | 52 +++++++++++++++++++++++++++++++++-------
 2 files changed, 49 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index ced0e0a7e039..7c6de398de7d 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -102,6 +102,11 @@ enum nvme_quirks {
 	 * Use non-standard 128 bytes SQEs.
 	 */
 	NVME_QUIRK_128_BYTES_SQES		= (1 << 11),
+
+	/*
+	 * Prevent tag overlap between queues
+	 */
+	NVME_QUIRK_SHARED_TAGS			= (1 << 12),
 };
 
 /*
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 7088971d4c42..c38e946ad8ca 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -178,6 +178,7 @@ struct nvme_queue {
 	u16 cq_head;
 	u16 last_cq_head;
 	u16 qid;
+	u16 tag_offset;
 	u8 cq_phase;
 	u8 sqes;
 	unsigned long flags;
@@ -490,6 +491,7 @@ static void nvme_submit_cmd(struct nvme_queue *nvmeq, struct nvme_command *cmd,
 			    bool write_sq)
 {
 	spin_lock(&nvmeq->sq_lock);
+	cmd->common.command_id += nvmeq->tag_offset;
 	memcpy(nvmeq->sq_cmds + (nvmeq->sq_tail << nvmeq->sqes),
 	       cmd, sizeof(*cmd));
 	if (++nvmeq->sq_tail == nvmeq->q_depth)
@@ -951,9 +953,10 @@ static inline void nvme_ring_cq_doorbell(struct nvme_queue *nvmeq)
 static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
 {
 	volatile struct nvme_completion *cqe = &nvmeq->cqes[idx];
+	u16 ctag = cqe->command_id - nvmeq->tag_offset;
 	struct request *req;
 
-	if (unlikely(cqe->command_id >= nvmeq->q_depth)) {
+	if (unlikely(ctag >= nvmeq->q_depth)) {
 		dev_warn(nvmeq->dev->ctrl.device,
 			"invalid id %d completed on queue %d\n",
 			cqe->command_id, le16_to_cpu(cqe->sq_id));
@@ -966,14 +969,13 @@ static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
 	 * aborts.  We don't even bother to allocate a struct request
 	 * for them but rather special case them here.
 	 */
-	if (unlikely(nvmeq->qid == 0 &&
-			cqe->command_id >= NVME_AQ_BLK_MQ_DEPTH)) {
+	if (unlikely(nvmeq->qid == 0 && ctag >= NVME_AQ_BLK_MQ_DEPTH)) {
 		nvme_complete_async_event(&nvmeq->dev->ctrl,
 				cqe->status, &cqe->result);
 		return;
 	}
 
-	req = blk_mq_tag_to_rq(*nvmeq->tags, cqe->command_id);
+	req = blk_mq_tag_to_rq(*nvmeq->tags, ctag);
 	trace_nvme_sq(req, cqe->sq_head, nvmeq->sq_tail);
 	nvme_end_request(req, cqe->status, cqe->result);
 }
@@ -1004,7 +1006,10 @@ static inline int nvme_process_cq(struct nvme_queue *nvmeq, u16 *start,
 
 	*start = nvmeq->cq_head;
 	while (nvme_cqe_pending(nvmeq)) {
-		if (tag == -1U || nvmeq->cqes[nvmeq->cq_head].command_id == tag)
+		u16 ctag = nvmeq->cqes[nvmeq->cq_head].command_id;
+
+		ctag -= nvmeq->tag_offset;
+		if (tag == -1U || ctag == tag)
 			found++;
 		nvme_update_cq_head(nvmeq);
 	}
@@ -1487,6 +1492,10 @@ static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
 	nvmeq->qid = qid;
 	dev->ctrl.queue_count++;
 
+	if (qid && (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS))
+		nvmeq->tag_offset = NVME_AQ_DEPTH;
+	else
+		nvmeq->tag_offset = 0;
 	return 0;
 
  free_cqdma:
@@ -2106,6 +2115,14 @@ static int nvme_setup_io_queues(struct nvme_dev *dev)
 	unsigned long size;
 
 	nr_io_queues = max_io_queues();
+
+	/*
+	 * If tags are shared with admin queue (Apple bug), then
+	 * make sure we only use one queue.
+	 */
+	if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS)
+		nr_io_queues = 1;
+
 	result = nvme_set_queue_count(&dev->ctrl, &nr_io_queues);
 	if (result < 0)
 		return result;
@@ -2300,6 +2317,7 @@ static int nvme_pci_enable(struct nvme_dev *dev)
 {
 	int result = -ENOMEM;
 	struct pci_dev *pdev = to_pci_dev(dev->dev);
+	unsigned int mqes;
 
 	if (pci_enable_device_mem(pdev))
 		return result;
@@ -2325,8 +2343,8 @@ static int nvme_pci_enable(struct nvme_dev *dev)
 
 	dev->ctrl.cap = lo_hi_readq(dev->bar + NVME_REG_CAP);
 
-	dev->q_depth = min_t(int, NVME_CAP_MQES(dev->ctrl.cap) + 1,
-				io_queue_depth);
+	mqes = NVME_CAP_MQES(dev->ctrl.cap);
+	dev->q_depth = min_t(int, mqes + 1, io_queue_depth);
 	dev->db_stride = 1 << NVME_CAP_STRIDE(dev->ctrl.cap);
 	dev->dbs = dev->bar + 4096;
 
@@ -2340,6 +2358,23 @@ static int nvme_pci_enable(struct nvme_dev *dev)
 	else
 		dev->io_sqes = NVME_NVM_IOSQES;
 
+	/*
+	 * Another Apple one: If we're going to offset the IO queue tags,
+	 * we still want to make sure they are no bigger than MQES,
+	 * it *looks* like otherwise, bad things happen (I suspect some
+	 * of the tag tracking in that device is limited).
+	 */
+	if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS) {
+		if (mqes <= NVME_AQ_DEPTH) {
+			dev_err(dev->ctrl.device, "Apple shared tags quirk"
+				" not compatible with device mqes %d\n", mqes);
+			result = -ENODEV;
+			goto disable;
+		}
+		dev->q_depth = min_t(int, dev->q_depth,
+				     mqes - NVME_AQ_DEPTH + 1);
+	}
+
 	/*
 	 * Temporary fix for the Apple controller found in the MacBook8,1 and
 	 * some MacBook7,1 to avoid controller resets and data loss.
@@ -3057,7 +3092,8 @@ static const struct pci_device_id nvme_id_table[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2005),
 		.driver_data = NVME_QUIRK_SINGLE_VECTOR |
-				NVME_QUIRK_128_BYTES_SQES },
+				NVME_QUIRK_128_BYTES_SQES |
+				NVME_QUIRK_SHARED_TAGS },
 	{ 0, }
 };
 MODULE_DEVICE_TABLE(pci, nvme_id_table);



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
