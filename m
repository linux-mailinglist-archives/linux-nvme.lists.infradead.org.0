Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20492E551D
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 22:26:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DXTLgSXYrEQd1yc+mwkrqztxF6BpgLle4sJLLv48QQw=; b=H4UrNTrVp9KqCk
	WfapsOxW+lB94z79SETkx/TVtU2usbsng7gjD7dzoKRxC6Mo4sAo7cmrZZHyyEcLHqCOOY4tVv0KM
	/R9LMLI9wQ2Pnk/ybvYvj9lR2+E599DLE/z8gMvQ4/Zt+P+5u73Lda8DJlfI8IOUW2nKMhwakRx4f
	4bWjA5Xx2vKZDH2psuEsbcHpQMELUoaYdOIfviQP8kQHbvAEwDTf0meEPqxNk3mQuOruN1adSpHxC
	OX3imY/LZFDM0tygWfIw0N2r1P3QLkTtbfKzJneZvsq2+lCTvWnH9MUP7kVCTSjRMJD3YqqKOd5zh
	SfiidbjJ84vGhy8C5ItA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO6A0-0007qZ-Rq; Fri, 25 Oct 2019 20:26:12 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO69T-0007Xh-Jc
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 20:25:41 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1iO69R-00078d-Ir; Fri, 25 Oct 2019 14:25:39 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1iO69Q-00038z-Ok; Fri, 25 Oct 2019 14:25:36 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Fri, 25 Oct 2019 14:25:34 -0600
Message-Id: <20191025202535.12036-3-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025202535.12036-1-logang@deltatee.com>
References: <20191025202535.12036-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, kbusch@kernel.org, Chaitanya.Kulkarni@wdc.com,
 maxg@mellanox.com, sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [RFC PATCH 2/3] nvme: Create helper function to obtain command effects
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_132539_974183_5C1BBE92 
X-CRM114-Status: GOOD (  12.25  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Keith Busch <kbusch@kernel.org>,
 Max Gurtovoy <maxg@mellanox.com>, Logan Gunthorpe <logang@deltatee.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Separate the code to obtain command effects from the code
to start a passthru request and open code nvme_known_admin_effects()
in the new helper.

The new helper function will be necessary for nvmet passthru
code to determine if we need to change out of interrupt context
to handle the effects.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/host/core.c | 41 +++++++++++++++++++++-------------------
 1 file changed, 22 insertions(+), 19 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index c2bde988d1aa..2b4f0ea55f8d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -886,22 +886,8 @@ static void *nvme_add_user_metadata(struct bio *bio, void __user *ubuf,
 	return ERR_PTR(ret);
 }
 
-static u32 nvme_known_admin_effects(u8 opcode)
-{
-	switch (opcode) {
-	case nvme_admin_format_nvm:
-		return NVME_CMD_EFFECTS_CSUPP | NVME_CMD_EFFECTS_LBCC |
-					NVME_CMD_EFFECTS_CSE_MASK;
-	case nvme_admin_sanitize_nvm:
-		return NVME_CMD_EFFECTS_CSE_MASK;
-	default:
-		break;
-	}
-	return 0;
-}
-
-static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
-			       u8 opcode)
+static u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
+				u8 opcode)
 {
 	u32 effects = 0;
 
@@ -917,7 +903,24 @@ static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 
 	if (ctrl->effects)
 		effects = le32_to_cpu(ctrl->effects->acs[opcode]);
-	effects |= nvme_known_admin_effects(opcode);
+
+	switch (opcode) {
+	case nvme_admin_format_nvm:
+		effects |= NVME_CMD_EFFECTS_CSUPP | NVME_CMD_EFFECTS_LBCC |
+					NVME_CMD_EFFECTS_CSE_MASK;
+		break;
+	case nvme_admin_sanitize_nvm:
+		effects |= NVME_CMD_EFFECTS_CSE_MASK;
+		break;
+	default:
+		break;
+	}
+
+	return effects;
+}
+
+static void nvme_passthru_start(struct nvme_ctrl *ctrl, u32 effects)
+{
 
 	/*
 	 * For simplicity, IO to all namespaces is quiesced even if the command
@@ -931,7 +934,6 @@ static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 		nvme_start_freeze(ctrl);
 		nvme_wait_freeze(ctrl);
 	}
-	return effects;
 }
 
 static void nvme_update_formats(struct nvme_ctrl *ctrl)
@@ -975,7 +977,8 @@ static void nvme_execute_passthru_rq(struct request *rq)
 	struct gendisk *disk = ns ? ns->disk : NULL;
 	u32 effects;
 
-	effects = nvme_passthru_start(ctrl, ns, cmd->common.opcode);
+	effects = nvme_command_effects(ctrl, ns, cmd->common.opcode);
+	nvme_passthru_start(ctrl, effects);
 	blk_execute_rq(rq->q, disk, rq, 0);
 	nvme_passthru_end(ctrl, effects);
 }
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
