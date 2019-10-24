Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61681E38EF
	for <lists+linux-nvme@lfdr.de>; Thu, 24 Oct 2019 18:56:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wvyOKblrJ35As/5TjV06PantIcGjs2vNbj+jyv96eBI=; b=b88BYm/sVm7jJs
	kx7S/b7/XcPQLhSzP0jabaupDyLzD6OUebZfsg1320ymoxVwmaJmoyK5epWzUSEzHhmZkiPYXxpcO
	ZdTYF52W9rtJIYMYnp9UyX61UJFmLUfowLAVMa6yd0oD6VE9CHt3Gz4ihhBRey1DwOg9YuWyYR15i
	zOL88OAD3WhmJQnjyt+Cx8crhC92ZaGABfjsSWZS69nusUD27ibwWof878/lKAMzUJ2d7qISTlHbh
	zhMupUD2YFLWC17q264GG7ibCECF59faZ5DmJevQAegSNeOI4TCjnP5t1pNyi74yybeYrNH96ifkq
	a9mphpp6wnAtCdTnspzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgP8-0008Tf-Km; Thu, 24 Oct 2019 16:56:06 +0000
Received: from [2600:1700:65a0:78e0:7405:a22f:16c2:b29]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNgP4-0008TW-PQ; Thu, 24 Oct 2019 16:56:02 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: fill discovery controller sn, fr and mn correctly
Date: Thu, 24 Oct 2019 09:55:58 -0700
Message-Id: <20191024165558.28056-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Discovery controllers need this information as well.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/discovery.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
index 3764a8900850..63994787e2ca 100644
--- a/drivers/nvme/target/discovery.c
+++ b/drivers/nvme/target/discovery.c
@@ -231,6 +231,7 @@ static void nvmet_execute_identify_disc_ctrl(struct nvmet_req *req)
 {
 	struct nvmet_ctrl *ctrl = req->sq->ctrl;
 	struct nvme_id_ctrl *id;
+	const char model[] = "Linux";
 	u16 status = 0;
 
 	id = kzalloc(sizeof(*id), GFP_KERNEL);
@@ -239,8 +240,13 @@ static void nvmet_execute_identify_disc_ctrl(struct nvmet_req *req)
 		goto out;
 	}
 
+	memset(id->sn, ' ', sizeof(id->sn));
+	bin2hex(id->sn, &ctrl->subsys->serial,
+		min(sizeof(ctrl->subsys->serial), sizeof(id->sn) / 2));
 	memset(id->fr, ' ', sizeof(id->fr));
-	strncpy((char *)id->fr, UTS_RELEASE, sizeof(id->fr));
+	memcpy_and_pad(id->mn, sizeof(id->mn), model, sizeof(model) - 1, ' ');
+	memcpy_and_pad(id->fr, sizeof(id->fr),
+		       UTS_RELEASE, strlen(UTS_RELEASE), ' ');
 
 	/* no limit on data transfer sizes for now */
 	id->mdts = 0;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
