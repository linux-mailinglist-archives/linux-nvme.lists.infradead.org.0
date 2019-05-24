Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0CD628FD9
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 06:10:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JW/g4w77aMwvPTY5IwLtHheOpOwC0NbDtTeoSVPdkm0=; b=Tq/
	xWcXk1fH6mZ+m9up1G5/ei2S1y0cZIXNsQ6U98FAiEoznDFs2nhDNzihYDptHvz1JfNQ5FXGgN1t6
	EsGd1lM8gZgWhpiFWWK50KfX6T0m20mMCLIczVXFPG3uWPsaRcN1f7m01DWQAbqPGqC1Spi29xwck
	6ezyucvoyXbqhSNqETESNnuR+tS4wCeHC0fijqcGH6DjVtZJ6yIMPRw4sWz+d6EGRatkmQH52F9+k
	XQS4Fa/9nUf0mTQXAogENPeM/q/nYbsRnCcYQ0GawnrMk1Cd0oL6+soY2YT0fZRorIrXf1p1GU/fG
	BH/XhnRFd3jURceCEP9GG4GxfpGcH3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1Wz-0002Hu-Ts; Fri, 24 May 2019 04:10:09 +0000
Received: from [2601:647:4800:973f:c906:f7f5:4d80:8bc5]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1Wu-00024m-ER; Fri, 24 May 2019 04:10:04 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvme-rdma: fix queue mapping when queue count is limited
Date: Thu, 23 May 2019 21:10:03 -0700
Message-Id: <20190524041004.23200-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 james.r.harris@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When the controller supports less queues than requested, we
should make sure that queue mapping does the right thing and
not assume that all queues are available. This fixes a crash
when the controller supports less queues than requested.

The rules are:
1. if no write/poll queues are requested, we assign the available queues
   to the default queue map. The default and read queue maps share the
   existing queues.
2. if write queues are requested:
  - first make sure that read queue map gets the requested
    nr_io_queues count
  - then grant the default queue map the minimum between the requested
    nr_write_queues and the remaining queues. If there are no available
    queues to dedicate to the default queue map, fallback to (1) and
    share all the queues in the existing queue map.
3. if poll queues are requested:
  - map the remaining queues to the poll queue map.

Also, provide a log indication on how we constructed the different
queue maps.

One side-affect change is that we remove the rdma device number of
completion vectors device limitation when setting the queue count.
No rdma device uses managed affinity so there is no real reason as
we cannot guarantee any vector based queue mapping. This change is
squashed here because this patch needs to go to stable kernel and
its simpler having it here than having it live on its own without
a clear indication why it ended up in stable kenrels.

Reported-by: Harris, James R <james.r.harris@intel.com>
Cc: <stable@vger.kernel.org> # v5.0+
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/rdma.c | 94 ++++++++++++++++++++++++----------------
 1 file changed, 56 insertions(+), 38 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index f383146e7d0f..cd7d93727b30 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -640,35 +640,12 @@ static int nvme_rdma_start_io_queues(struct nvme_rdma_ctrl *ctrl)
 static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
 {
 	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
-	struct ib_device *ibdev = ctrl->device->dev;
 	unsigned int nr_io_queues;
 	int i, ret;
 
-	nr_io_queues = min(opts->nr_io_queues, num_online_cpus());
-
-	/*
-	 * we map queues according to the device irq vectors for
-	 * optimal locality so we don't need more queues than
-	 * completion vectors.
-	 */
-	nr_io_queues = min_t(unsigned int, nr_io_queues,
-				ibdev->num_comp_vectors);
-
-	if (opts->nr_write_queues) {
-		ctrl->io_queues[HCTX_TYPE_DEFAULT] =
-				min(opts->nr_write_queues, nr_io_queues);
-		nr_io_queues += ctrl->io_queues[HCTX_TYPE_DEFAULT];
-	} else {
-		ctrl->io_queues[HCTX_TYPE_DEFAULT] = nr_io_queues;
-	}
-
-	ctrl->io_queues[HCTX_TYPE_READ] = nr_io_queues;
-
-	if (opts->nr_poll_queues) {
-		ctrl->io_queues[HCTX_TYPE_POLL] =
-			min(opts->nr_poll_queues, num_online_cpus());
-		nr_io_queues += ctrl->io_queues[HCTX_TYPE_POLL];
-	}
+	nr_io_queues = min(opts->nr_io_queues, num_online_cpus()) +
+		min(opts->nr_write_queues, num_online_cpus()) +
+		min(opts->nr_poll_queues, num_online_cpus());
 
 	ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
 	if (ret)
@@ -681,6 +658,34 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
 	dev_info(ctrl->ctrl.device,
 		"creating %d I/O queues.\n", nr_io_queues);
 
+	if (opts->nr_write_queues && opts->nr_io_queues < nr_io_queues) {
+		/*
+		 * separate read/write queues
+		 * hand out dedicated default queues only after we have
+		 * sufficient read queues.
+		 */
+		ctrl->io_queues[HCTX_TYPE_READ] = opts->nr_io_queues;
+		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_READ];
+		ctrl->io_queues[HCTX_TYPE_DEFAULT] =
+			min(opts->nr_write_queues, nr_io_queues);
+		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_DEFAULT];
+	} else {
+		/*
+		 * shared read/write queues
+		 * either no write queues were requested, or we don't have
+		 * sufficient queue count to have dedicated default queues.
+		 */
+		ctrl->io_queues[HCTX_TYPE_DEFAULT] =
+			min(opts->nr_io_queues, nr_io_queues);
+		nr_io_queues -= ctrl->io_queues[HCTX_TYPE_DEFAULT];
+	}
+
+	if (opts->nr_poll_queues && nr_io_queues) {
+		/* map dedicated poll queues only if we have queues left */
+		ctrl->io_queues[HCTX_TYPE_POLL] =
+			min(opts->nr_poll_queues, nr_io_queues);
+	}
+
 	for (i = 1; i < ctrl->ctrl.queue_count; i++) {
 		ret = nvme_rdma_alloc_queue(ctrl, i,
 				ctrl->ctrl.sqsize + 1);
@@ -1763,17 +1768,24 @@ static void nvme_rdma_complete_rq(struct request *rq)
 static int nvme_rdma_map_queues(struct blk_mq_tag_set *set)
 {
 	struct nvme_rdma_ctrl *ctrl = set->driver_data;
+	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
 
-	set->map[HCTX_TYPE_DEFAULT].queue_offset = 0;
-	set->map[HCTX_TYPE_DEFAULT].nr_queues =
-			ctrl->io_queues[HCTX_TYPE_DEFAULT];
-	set->map[HCTX_TYPE_READ].nr_queues = ctrl->io_queues[HCTX_TYPE_READ];
-	if (ctrl->ctrl.opts->nr_write_queues) {
+	if (opts->nr_write_queues && ctrl->io_queues[HCTX_TYPE_READ]) {
 		/* separate read/write queues */
+		set->map[HCTX_TYPE_DEFAULT].nr_queues =
+			ctrl->io_queues[HCTX_TYPE_DEFAULT];
+		set->map[HCTX_TYPE_DEFAULT].queue_offset = 0;
+		set->map[HCTX_TYPE_READ].nr_queues =
+			ctrl->io_queues[HCTX_TYPE_READ];
 		set->map[HCTX_TYPE_READ].queue_offset =
-				ctrl->io_queues[HCTX_TYPE_DEFAULT];
+			ctrl->io_queues[HCTX_TYPE_DEFAULT];
 	} else {
-		/* mixed read/write queues */
+		/* shared read/write queues */
+		set->map[HCTX_TYPE_DEFAULT].nr_queues =
+			ctrl->io_queues[HCTX_TYPE_DEFAULT];
+		set->map[HCTX_TYPE_DEFAULT].queue_offset = 0;
+		set->map[HCTX_TYPE_READ].nr_queues =
+			ctrl->io_queues[HCTX_TYPE_DEFAULT];
 		set->map[HCTX_TYPE_READ].queue_offset = 0;
 	}
 	blk_mq_rdma_map_queues(&set->map[HCTX_TYPE_DEFAULT],
@@ -1781,16 +1793,22 @@ static int nvme_rdma_map_queues(struct blk_mq_tag_set *set)
 	blk_mq_rdma_map_queues(&set->map[HCTX_TYPE_READ],
 			ctrl->device->dev, 0);
 
-	if (ctrl->ctrl.opts->nr_poll_queues) {
+	if (opts->nr_poll_queues && ctrl->io_queues[HCTX_TYPE_POLL]) {
+		/* map dedicated poll queues only if we have queues left */
 		set->map[HCTX_TYPE_POLL].nr_queues =
 				ctrl->io_queues[HCTX_TYPE_POLL];
 		set->map[HCTX_TYPE_POLL].queue_offset =
-				ctrl->io_queues[HCTX_TYPE_DEFAULT];
-		if (ctrl->ctrl.opts->nr_write_queues)
-			set->map[HCTX_TYPE_POLL].queue_offset +=
-				ctrl->io_queues[HCTX_TYPE_READ];
+			ctrl->io_queues[HCTX_TYPE_DEFAULT] +
+			ctrl->io_queues[HCTX_TYPE_READ];
 		blk_mq_map_queues(&set->map[HCTX_TYPE_POLL]);
 	}
+
+	dev_info(ctrl->ctrl.device,
+		"mapped %d/%d/%d default/read/poll queues.\n",
+		ctrl->io_queues[HCTX_TYPE_DEFAULT],
+		ctrl->io_queues[HCTX_TYPE_READ],
+		ctrl->io_queues[HCTX_TYPE_POLL]);
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
