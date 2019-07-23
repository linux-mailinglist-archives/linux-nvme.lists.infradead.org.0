Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B42B970DE2
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 02:07:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ABnuYSF/xDINxSo0sHEfaFGTpYRh9xbsOEhXsktNcpI=; b=oRwoYL0JvGmDmBeyrt/vYzQKZN
	s10RjX3fcBgkn7yIla3dOGh8lpAIc0elGTv2RvUWXgFSPW9R1k+sNFcxcoYLDRESYjFVsUuW0iLfN
	cqsi0MvsF+nJ++vw3hSFZ2LXyA/peQIOOM0z+yrDtpmEjz1Cp7+fCOLblgvRPPGoSvYq52n0TKzDv
	CiAaqj36Wd5pBPdjjWD/NLhGIiUGJcfsi6oij9pcB3dkdr1w3fbddGL2tT51RfSO8hDm9Ln20XfV1
	iVpNoZWPSKrvc4PkJ/y26AuGyAcm2gEcoyCGILDQiWvy7Fz0GZtFddQNkXspWFpjpQa/LpbWzcYDX
	9sztDyhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiKm-0003z8-KB; Tue, 23 Jul 2019 00:07:12 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hpiKW-0003yb-E0; Tue, 23 Jul 2019 00:06:56 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 1/3] nvme: have nvme_init_identify set ctrl->cap
Date: Mon, 22 Jul 2019 17:06:52 -0700
Message-Id: <20190723000654.6448-2-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723000654.6448-1-sagi@grimberg.me>
References: <20190723000654.6448-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
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
