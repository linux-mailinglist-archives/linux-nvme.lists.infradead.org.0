Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A238022C2E
	for <lists+linux-nvme@lfdr.de>; Mon, 20 May 2019 08:37:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ujGNDRJQ1dc9zAUTaIKHzNPgT1kCHNbCMNw39PnoL1s=; b=tqy+TAgf3W2lV9clvSVVG5oBSt
	nONMVSTBIZ6EcImo39yqI4/YX0ZRhBYkY/JewAJ9EDDEBnBa2kNKvjPvjTFuNdnWL2pQ2mrWHoIDK
	PEeVO3HSjsB5mlsWXap60eIeYrSfrC17fVoIy3YAzNA3eKRoOQEo+TKbs9dEsSxleJJapCXBs9vkU
	zueTFBPhHMOSBhuCAuB7TFEAB0009IYLZCbMeodq3zAyKz1vpczXgxMD9ftCG0e82xGbEyepdqLie
	0LfE0uWBMDVxRpGfPEkpa9Kk0KJNdV4koQO/Y4NZoDf6yBvAeTv+yAV0GINuC5jKR2ZsKJZiDLMRK
	b5WNkucw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSbuv-00081P-JG; Mon, 20 May 2019 06:37:01 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSbuS-0007Yg-DN
 for linux-nvme@lists.infradead.org; Mon, 20 May 2019 06:36:34 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 92C8AACAA;
 Mon, 20 May 2019 06:36:26 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 4/4] nvme-fc: align nvme_fc_delete_association() with exit path
Date: Mon, 20 May 2019 08:36:24 +0200
Message-Id: <20190520063624.50338-5-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190520063624.50338-1-hare@suse.de>
References: <20190520063624.50338-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_233632_595155_99AD695E 
X-CRM114-Status: GOOD (  12.11  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

nvme_fc_delete_association() should align with the exit path in
nvme_fc_create_association() to ensure we are able to handle the
failure case properly.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/fc.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 71b22139e78b..ed9f4affbe10 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2836,6 +2836,11 @@ nvme_fc_delete_association(struct nvme_fc_ctrl *ctrl)
 	ctrl->flags &= ~FCCTRL_TERMIO;
 	spin_unlock_irq(&ctrl->lock);
 
+	if (ctrl->ctrl.tagset) {
+		nvme_fc_delete_hw_io_queues(ctrl);
+		nvme_fc_free_io_queues(ctrl);
+	}
+
 	nvme_fc_term_aen_ops(ctrl);
 
 	/*
@@ -2847,11 +2852,6 @@ nvme_fc_delete_association(struct nvme_fc_ctrl *ctrl)
 	if (ctrl->association_id)
 		nvme_fc_xmt_disconnect_assoc(ctrl);
 
-	if (ctrl->ctrl.tagset) {
-		nvme_fc_delete_hw_io_queues(ctrl);
-		nvme_fc_free_io_queues(ctrl);
-	}
-
 	__nvme_fc_delete_hw_queue(ctrl, &ctrl->queues[0], 0);
 	nvme_fc_free_queue(&ctrl->queues[0]);
 
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
