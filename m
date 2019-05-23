Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE1927545
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 06:52:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=igt9NJO1SxRAww8WOM1EvOfWkUafI8rdxvgLJKoSnJ0=; b=VoJ
	uEyrCA+GQHXLVT5q87dhiVsGKK4LJ37Bx3yVduA0h32McQsuq6UNv7q1gB9keiwoCZRHR924/QY60
	ZqIIpNqWA1ubznHTB3v+7d1i79lvSEeyWDNmY6SfQugiNYDgry/R/C9MhpD41UxNfI6YOWsqE2mMH
	VQfN5mOIv/Ug3zi/TixH8Yru7L8ZwvYla/YXIXxUqXoXa4R04HHHx4IW6+hgFjg5e2mQ63XgplBvn
	suRlRb8LbggGJmJRjx9wPUJTz31i5jfTvYYbHNofEpcQbNxkeZdTA37zzbQJjlXcuv5W15W2bhryN
	yN0lxfNlsaSdzHohxeVjf89Tk2ZBJIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTfiJ-0005wh-6D; Thu, 23 May 2019 04:52:23 +0000
Received: from stargate.chelsio.com ([12.32.117.8])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTfiD-0005wQ-6A
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 04:52:19 +0000
Received: from localhost (r10.asicdesigners.com [10.192.194.10])
 by stargate.chelsio.com (8.13.8/8.13.8) with ESMTP id x4N4psxd003189;
 Wed, 22 May 2019 21:51:54 -0700
From: Nirranjan Kirubaharan <nirranjan@chelsio.com>
To: nirranjan@chelsio.com, bharat@chelsio.com, sagi@grimberg.me, hch@lst.de
Subject: [PATCH] nvme-rdma: Fix a NULL deref when lesser io queues are
 allocated.
Date: Wed, 22 May 2019 21:51:47 -0700
Message-Id: <2936d0e0de627fce13f78fca2ef93960aab0d929.1558534119.git.nirranjan@chelsio.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_215217_240425_82C7F274 
X-CRM114-Status: UNSURE (   8.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Return error -ENOMEM when nvmf target allocates lesser
io queues than the number of io queues requested by nvmf
initiator.

Signed-off-by: Nirranjan Kirubaharan <nirranjan@chelsio.com>
Reviewed-by: Potnuri Bharat Teja <bharat@chelsio.com>
---
 drivers/nvme/host/rdma.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index f383146e7d0f..187007d136cc 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -641,7 +641,7 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
 {
 	struct nvmf_ctrl_options *opts = ctrl->ctrl.opts;
 	struct ib_device *ibdev = ctrl->device->dev;
-	unsigned int nr_io_queues;
+	unsigned int nr_io_queues, nr_req_queues;
 	int i, ret;
 
 	nr_io_queues = min(opts->nr_io_queues, num_online_cpus());
@@ -670,9 +670,16 @@ static int nvme_rdma_alloc_io_queues(struct nvme_rdma_ctrl *ctrl)
 		nr_io_queues += ctrl->io_queues[HCTX_TYPE_POLL];
 	}
 
+	nr_req_queues = nr_io_queues;
 	ret = nvme_set_queue_count(&ctrl->ctrl, &nr_io_queues);
 	if (ret)
 		return ret;
+	if (nr_io_queues < nr_req_queues) {
+		dev_err(ctrl->ctrl.device,
+			"alloc queues %u < req no of queues %u",
+			nr_io_queues, nr_req_queues);
+		return -ENOMEM;
+	}
 
 	ctrl->ctrl.queue_count = nr_io_queues + 1;
 	if (ctrl->ctrl.queue_count < 2)
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
