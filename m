Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63F731B1240
	for <lists+linux-nvme@lfdr.de>; Mon, 20 Apr 2020 18:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yKesWRV5iTgQIhCkOnO+5J08iyWrqcMZQGJeFd8h69A=; b=i4iP4WB9xlJZ1o
	U9Gsy7Hld0B66j1Tl0qFj8V09c6Z35OxL1suAYi59BZsNqhFd9YWHRgQM7/OtHgU/eZz+kE9WyaVO
	zrG48GnuFcHJu1U1BvQCpUIJcfGz7gFFrNugGWD0MP++JHkwx90OLecjz5VuaYBCzBV6PUdYDYK+r
	dJmC0yl+xdicXAYWYrYljHAHUC6IB0R7g7hirtdVYanVmcc+byYqSy7d8lI47ZjSIrJ/wWFssjzwC
	+Txxi85d5NrsuBEwu9CuCpPGOEH0WavzHm+gU1P+K9k7YKsSsHCbEj23WWSLEpzTQaElw6OijM0e6
	Or+uMDOyMy7rNl5jwS4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZba-0002us-8G; Mon, 20 Apr 2020 16:49:10 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZZl-0000RC-Kz
 for linux-nvme@lists.infradead.org; Mon, 20 Apr 2020 16:47:21 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <gunthorp@deltatee.com>)
 id 1jQZZb-0008F2-BJ; Mon, 20 Apr 2020 10:47:08 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1jQZZZ-0005df-VF; Mon, 20 Apr 2020 10:47:06 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Mon, 20 Apr 2020 10:46:53 -0600
Message-Id: <20200420164700.21620-3-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200420164700.21620-1-logang@deltatee.com>
References: <20200420164700.21620-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com,
 Chaitanya.Kulkarni@wdc.com, maxg@mellanox.com, sbates@raithlin.com,
 logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-6.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 MYRULES_NO_TEXT autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH v12 2/9] nvme: Create helper function to obtain command effects
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_094717_681173_D011CF14 
X-CRM114-Status: GOOD (  11.04  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Separate the code to obtain command effects from the code
to start a passthru request and open code nvme_known_admin_effects()
in the new helper.

The new helper function will be necessary for nvmet passthru
code to determine if we need to change out of interrupt context
to handle the effects.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 39 ++++++++++++++++++++++-----------------
 1 file changed, 22 insertions(+), 17 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f5283b300e87..fedcc5f18e03 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1317,22 +1317,8 @@ static int nvme_submit_io(struct nvme_ns *ns, struct nvme_user_io __user *uio)
 			metadata, meta_len, lower_32_bits(io.slba), NULL, 0);
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
-								u8 opcode)
+static u32 nvme_command_effects(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
+				u8 opcode)
 {
 	u32 effects = 0;
 
@@ -1348,7 +1334,26 @@ static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
 
 	if (ctrl->effects)
 		effects = le32_to_cpu(ctrl->effects->acs[opcode]);
-	effects |= nvme_known_admin_effects(opcode);
+
+	switch (opcode) {
+	case nvme_admin_format_nvm:
+		effects |= NVME_CMD_EFFECTS_CSUPP | NVME_CMD_EFFECTS_LBCC |
+			NVME_CMD_EFFECTS_CSE_MASK;
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
+static u32 nvme_passthru_start(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
+			       u8 opcode)
+{
+	u32 effects = nvme_command_effects(ctrl, ns, opcode);
 
 	/*
 	 * For simplicity, IO to all namespaces is quiesced even if the command
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
