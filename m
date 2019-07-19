Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B3736EB50
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 21:46:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ABnuYSF/xDINxSo0sHEfaFGTpYRh9xbsOEhXsktNcpI=; b=MUJwJTWv7BEtn9u66sLVf+KOZT
	T+sIOcPrBxuY3T/62gQRmwoaS77wIDF1IvqjymwxdkqG/DxagMjunml2TkEnPqWKjr5rndhkb7+uI
	Mcxfx77wJgnhCFcs/KDcfyyyDrUgOnp0Xd1ivF7zecMsT1y9oju58jXBPS/QZI7tZRwQNIQSC9kRd
	MzI+lKtUCivFZcFQXBv1yEJzTgZFN//nGRR1GVnMPObI1wPNBgSyrHGeYv2ueDXqouEFvGQar5gYN
	C9J355GaP7vfB3zBroHdGsa1UlqaC54/oO3Ad836iaulRT4lG3UVc6GUDmw9FY1iEtVszhzS/zO+o
	QsQZ+/OA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYpa-0000kt-Hv; Fri, 19 Jul 2019 19:46:14 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYp9-0000XJ-Ck; Fri, 19 Jul 2019 19:45:47 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/4] nvme: have nvme_init_identify set ctrl->cap
Date: Fri, 19 Jul 2019 12:45:43 -0700
Message-Id: <20190719194546.24229-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190719194546.24229-1-sagi@grimberg.me>
References: <20190719194546.24229-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

No need to use a stack cap variable.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 76cd3dd8736a..058e06e40df8 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2563,7 +2563,6 @@ static int nvme_get_effects_log(struct nvme_ctrl *ctrl)
 int nvme_init_identify(struct nvme_ctrl *ctrl)
 {
 	struct nvme_id_ctrl *id;
-	u64 cap;
 	int ret, page_shift;
 	u32 max_hw_sectors;
 	bool prev_apst_enabled;
@@ -2574,15 +2573,15 @@ int nvme_init_identify(struct nvme_ctrl *ctrl)
 		return ret;
 	}
 
-	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &cap);
+	ret = ctrl->ops->reg_read64(ctrl, NVME_REG_CAP, &ctrl->cap);
 	if (ret) {
 		dev_err(ctrl->device, "Reading CAP failed (%d)\n", ret);
 		return ret;
 	}
-	page_shift = NVME_CAP_MPSMIN(cap) + 12;
+	page_shift = NVME_CAP_MPSMIN(ctrl->cap) + 12;
 
 	if (ctrl->vs >= NVME_VS(1, 1, 0))
-		ctrl->subsystem = NVME_CAP_NSSRC(cap);
+		ctrl->subsystem = NVME_CAP_NSSRC(ctrl->cap);
 
 	ret = nvme_identify_ctrl(ctrl, &id);
 	if (ret) {
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
