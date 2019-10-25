Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 748E0E4C6F
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 15:39:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SfTnxRscLHqVPJSzCyin9mSWuhyJcIGetmkIIBopcVA=; b=GSKQ6KWgqq/aHQ
	BZgXG9W0RC3qI463gbvT5oUO+y1oDvFrnrICouNJsLqVI9dUkohpju+Hdg215R8w0Z90VWjSZc5QQ
	moDbiG040oy9poDSqHjgmLMlvJkxlVNwTBxgZKoEEexKF73zwxDVKyfomvGY0HKaRl5PZlBSDHd9M
	prvOuJM3f91ZLOouVQ7QoBm7aPnw72wDCbEsA6itQG9hjg8rUNIRUq2HjbrqDPfFJFPQZwrr0grN4
	AfXwfFRESEsGGxoiJ0F++UunpuEZszyj4wjV2bZc1nS3bN/HCadOEQOIN8o+AqmU4OgjLu924KVaJ
	cTqlusO+FCRK6Q5u16jA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNzoB-000339-6x; Fri, 25 Oct 2019 13:39:15 +0000
Received: from [46.189.28.128] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNzo6-00032G-Ix
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 13:39:12 +0000
From: Christoph Hellwig <hch@lst.de>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvmet: clean up command parsing a bit
Date: Fri, 25 Oct 2019 15:38:58 +0200
Message-Id: <20191025133858.21505-1-hch@lst.de>
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Move the special cases for fabrics commands and the discovery controller
to nvmet_parse_admin_cmd in preparation for adding passthrough support.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/target/admin-cmd.c | 5 +++++
 drivers/nvme/target/core.c      | 6 +-----
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index cd2c3a79f3b5..56c21b501185 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -879,6 +879,11 @@ u16 nvmet_parse_admin_cmd(struct nvmet_req *req)
 	struct nvme_command *cmd = req->cmd;
 	u16 ret;
 
+	if (nvme_is_fabrics(cmd))
+		return nvmet_parse_fabrics_cmd(req);
+	if (req->sq->ctrl->subsys->type == NVME_NQN_DISC)
+		return nvmet_parse_discovery_cmd(req);
+
 	ret = nvmet_check_ctrl_status(req, cmd);
 	if (unlikely(ret))
 		return ret;
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index cde58c001b23..28438b833c1b 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -892,14 +892,10 @@ bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
 	}
 
 	if (unlikely(!req->sq->ctrl))
-		/* will return an error for any Non-connect command: */
+		/* will return an error for any non-connect command: */
 		status = nvmet_parse_connect_cmd(req);
 	else if (likely(req->sq->qid != 0))
 		status = nvmet_parse_io_cmd(req);
-	else if (nvme_is_fabrics(req->cmd))
-		status = nvmet_parse_fabrics_cmd(req);
-	else if (req->sq->ctrl->subsys->type == NVME_NQN_DISC)
-		status = nvmet_parse_discovery_cmd(req);
 	else
 		status = nvmet_parse_admin_cmd(req);
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
