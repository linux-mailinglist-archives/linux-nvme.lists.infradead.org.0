Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B2B1A95B5
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 00:00:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=LWZPpJ4u6vT7pJNtmUHMHxmNAGUPqhw7nitG8s3qYJM=; b=KQbyAiZvKcOJA4hlFopUJ6Q48H
	fmSu7BQHIA+MkMP5fKfM21lrRRY5tPsxOzFGHBuwRpOleBQnFyIP4zv9qeIeK8muCUUAHXlgbuc04
	ACjct/HFRTvzj3UnTRHK9don2aRTGlEx+gjz6gvOyBak1UIXK3aiydx43RzFprjyqGo3rMVDHmhsl
	cUx07zRK964Dde5ByjfG6PiBV7POlaV3LwMCVLzO6dQ0u529rRKv8AyXuTzpDay5dH4BlV5RZNi8w
	CCb/xcmejI/f75pqoTwaLWV9qvBjq1zRZRiU9YZe467AmpudIlZrvRqvoaNYVnyXs/N8QKLT6hAp3
	YTmiI3Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5dKN-0007Tq-NK; Wed, 04 Sep 2019 22:00:35 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i5dJm-0005pf-W0; Wed, 04 Sep 2019 21:59:59 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v4 2/4] nvme: enable aen regardless of the presence of I/O
 queues
Date: Wed,  4 Sep 2019 14:59:51 -0700
Message-Id: <20190904215954.15423-3-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190904215954.15423-1-sagi@grimberg.me>
References: <20190904215954.15423-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

AENs in general are not related to the presence of I/O queues,
so enable them regardless. Note that the only exception is that
discovery controller will not support any of the requested AENs
and nvme_enable_aen will respect that and return, so it is still
safe to enable regardless.

Note it is safe to enable AENs even before the initial namespace
scanning as we have the scan operation in a workqueue context.

Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 14c0bfb55615..fccf28d77c03 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1201,6 +1201,8 @@ static void nvme_enable_aen(struct nvme_ctrl *ctrl)
 	if (status)
 		dev_warn(ctrl->device, "Failed to configure AEN (cfg %x)\n",
 			 supported_aens);
+
+	queue_work(nvme_wq, &ctrl->async_event_work);
 }
 
 static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio)
@@ -3780,10 +3782,10 @@ void nvme_start_ctrl(struct nvme_ctrl *ctrl)
 	if (ctrl->kato)
 		nvme_start_keep_alive(ctrl);
 
+	nvme_enable_aen(ctrl);
+
 	if (ctrl->queue_count > 1) {
 		nvme_queue_scan(ctrl);
-		nvme_enable_aen(ctrl);
-		queue_work(nvme_wq, &ctrl->async_event_work);
 		nvme_start_queues(ctrl);
 	}
 }
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
