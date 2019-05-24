Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E8A28FDA
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 06:10:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Pcqh4J7ZGQ8OfATK6u7bNOh8QlWkp8wBcnjM6xZ2Ed8=; b=by3zayDFuP6YG5n2tGfszCjdNb
	3uJmfzuM6NPOCgAG5VCy8c6zq7VAytSueD0gNvBDC2mBi7MTpSwYxGAV+DoPBAa+isIIJKvelVzig
	XMlDwu+Nsy8xrY2Sh/Yhv4rLa3BhE66R6tob+ncSIvORIaQAlSzpMN2kM85il0yRa71VuBjCK+1Pr
	9r5QGLcl6Er10/otblIru7r4kE7ulZepI8boEXyVmX18CISYTiCYyrxwcLVC0LA7Rg8qaq4h2XrFt
	OC9WQ2eFm9GNf7f4WFqHY/yFAbF5X1SrE3bFj+sCMALAGlKJBDbsTq9I+mbC3r6Sg5MzjS3qf+p7N
	QaIZvXQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU1X6-0002o4-DL; Fri, 24 May 2019 04:10:16 +0000
Received: from [2601:647:4800:973f:c906:f7f5:4d80:8bc5]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU1Wu-00024m-Jl; Fri, 24 May 2019 04:10:04 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/2] nvme-tcp: fix queue mapping when queue count is limited
Date: Thu, 23 May 2019 21:10:04 -0700
Message-Id: <20190524041004.23200-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524041004.23200-1-sagi@grimberg.me>
References: <20190524041004.23200-1-sagi@grimberg.me>
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
1. if no write queues are requested, we assign the available queues
   to the default queue map. The default and read queue maps share the
   existing queues.
2. if write queues are requested:
  - first make sure that read queue map gets the requested
    nr_io_queues count
  - then grant the default queue map the minimum between the requested
    nr_write_queues and the remaining queues. If there are no available
    queues to dedicate to the default queue map, fallback to (1) and
    share all the queues in the existing queue map.

Also, provide a log indication on how we constructed the different
queue maps.

Reported-by: Harris, James R <james.r.harris@intel.com>
Cc: <stable@vger.kernel.org> # v5.0+
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 57 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 50 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 2b107a1d152b..08a2501b9357 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -111,6 +111,7 @@ struct nvme_tcp_ctrl {
 	struct work_struct	err_work;
 	struct delayed_work	connect_work;
 	struct nvme_tcp_request async_req;
+	u32			io_queues[HCTX_MAX_TYPES];
 };
 
 static LIST_HEAD(nvme_tcp_ctrl_list);
@@ -1564,6 +1565,35 @@ static unsigned int nvme_tcp_nr_io_queues(struct nvme_ctrl *ctrl)
 	return nr_io_queues;
 }
 
+static void nvme_tcp_set_io_queues(struct nvme_ctrl *nctrl,
+		unsigned int nr_io_queues)
+{
+	struct nvme_tcp_ctrl *ctrl = to_tcp_ctrl(nctrl);
+	struct nvmf_ctrl_options *opts = nctrl->opts;
+
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
+}
+
 static int nvme_tcp_alloc_io_queues(struct nvme_ctrl *ctrl)
 {
 	unsigned int nr_io_queues;
@@ -1581,6 +1611,8 @@ static int nvme_tcp_alloc_io_queues(struct nvme_ctrl *ctrl)
 	dev_info(ctrl->device,
 		"creating %d I/O queues.\n", nr_io_queues);
 
+	nvme_tcp_set_io_queues(ctrl, nr_io_queues);
+
 	return __nvme_tcp_alloc_io_queues(ctrl);
 }
 
@@ -2089,23 +2121,34 @@ static blk_status_t nvme_tcp_queue_rq(struct blk_mq_hw_ctx *hctx,
 static int nvme_tcp_map_queues(struct blk_mq_tag_set *set)
 {
 	struct nvme_tcp_ctrl *ctrl = set->driver_data;
+	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
 
-	set->map[HCTX_TYPE_DEFAULT].queue_offset = 0;
-	set->map[HCTX_TYPE_READ].nr_queues = ctrl->ctrl.opts->nr_io_queues;
-	if (ctrl->ctrl.opts->nr_write_queues) {
+	if (opts->nr_write_queues && ctrl->io_queues[HCTX_TYPE_READ]) {
 		/* separate read/write queues */
 		set->map[HCTX_TYPE_DEFAULT].nr_queues =
-				ctrl->ctrl.opts->nr_write_queues;
+			ctrl->io_queues[HCTX_TYPE_DEFAULT];
+		set->map[HCTX_TYPE_DEFAULT].queue_offset = 0;
+		set->map[HCTX_TYPE_READ].nr_queues =
+			ctrl->io_queues[HCTX_TYPE_READ];
 		set->map[HCTX_TYPE_READ].queue_offset =
-				ctrl->ctrl.opts->nr_write_queues;
+			ctrl->io_queues[HCTX_TYPE_DEFAULT];
 	} else {
-		/* mixed read/write queues */
+		/* shared read/write queues */
 		set->map[HCTX_TYPE_DEFAULT].nr_queues =
-				ctrl->ctrl.opts->nr_io_queues;
+			ctrl->io_queues[HCTX_TYPE_DEFAULT];
+		set->map[HCTX_TYPE_DEFAULT].queue_offset = 0;
+		set->map[HCTX_TYPE_READ].nr_queues =
+			ctrl->io_queues[HCTX_TYPE_DEFAULT];
 		set->map[HCTX_TYPE_READ].queue_offset = 0;
 	}
 	blk_mq_map_queues(&set->map[HCTX_TYPE_DEFAULT]);
 	blk_mq_map_queues(&set->map[HCTX_TYPE_READ]);
+
+	dev_info(ctrl->ctrl.device,
+		"mapped %d/%d default/read queues.\n",
+		ctrl->io_queues[HCTX_TYPE_DEFAULT],
+		ctrl->io_queues[HCTX_TYPE_READ]);
+
 	return 0;
 }
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
