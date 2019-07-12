Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9310E674E6
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 20:02:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U1j4SbtfIVJ2UtNnmF4pzJliyYt7Jbx+f4cZ25a0QAg=; b=Ene0AjPOSe9NyLOdm7WvrrxTfz
	unBlXVPMlgeShR/4qoGFX9jvwe3oUJUVzJRFpyJh2hjqXHZBgLXLo1MKh0hiuVxyda2Bqoh7oQICm
	7xfdZ/LimZq+LzKEaqChDZCx4dJ9OcriL1a1vomYuALeBeN4aDBkP8Xy6YOvwJuTU8gkbMHCf/DVO
	/vepDNdKnmxX4XUA6EyQw2fWpyDR4DEBtxTvMnzW1zW3qiq97/54+JutXCz222A45iX6DfbtO1MBk
	ox//RTHD1rzhPrAWZ6HHIO8Ndmmu5uweGrK4lXfkuKc2pfVZ5BmQqIVSAAF3jnok6FrOwKzXDwtE5
	lSkrd4WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlzsE-0003Dy-2H; Fri, 12 Jul 2019 18:02:22 +0000
Received: from [2601:647:4800:973f:10a0:43d6:25f7:7bc3]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hlzs6-0003D0-6S; Fri, 12 Jul 2019 18:02:14 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 2/3] nvme: enable aen also for discovery controllers
Date: Fri, 12 Jul 2019 11:02:10 -0700
Message-Id: <20190712180211.26333-3-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190712180211.26333-1-sagi@grimberg.me>
References: <20190712180211.26333-1-sagi@grimberg.me>
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
 James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If the controller supports discovery log page change events,
we want to enable it on the host side as well.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 3077cd4d75bf..116c210826c2 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1190,6 +1190,8 @@ static void nvme_enable_aen(struct nvme_ctrl *ctrl)
 	if (!supported_aens)
 		return;
 
+	queue_work(nvme_wq, &ctrl->async_event_work);
+
 	status = nvme_set_features(ctrl, NVME_FEAT_ASYNC_EVENT, supported_aens,
 			NULL, 0, &result);
 	if (status)
@@ -3746,10 +3748,13 @@ void nvme_start_ctrl(struct nvme_ctrl *ctrl)
 	if (ctrl->kato)
 		nvme_start_keep_alive(ctrl);
 
+	if (ctrl->queue_count > 1 ||
+	    (ctrl->ops->flags & NVME_F_FABRICS &&
+	     ctrl->opts->discovery_nqn))
+		nvme_enable_aen(ctrl);
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
