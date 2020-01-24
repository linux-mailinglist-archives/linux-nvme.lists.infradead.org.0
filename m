Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 421CB148D17
	for <lists+linux-nvme@lfdr.de>; Fri, 24 Jan 2020 18:39:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ak70QQlw0KfaGVD9F2PyXou3nmCmWflh5UOiRBhMth0=; b=RyP6FnhLwvW/ml
	r8HzposBnfQ+x8fNHLY801+X8fR/U21H8ppQjbKyZzmriWALIPYER+cSSJMNG5S5OuGdIRBN6gSwj
	3G+hDgMgKl0zScEEwxGYk1L4ypoyGeKEhCoIOqsMc+5mxoGClLgjeVRLj1OUe9qXv7A5J45EzCgqq
	YxDGpDWNnznYxkjycNsLk1Xpsf3SjOQuyk4iGLcPDJnukmMLunlhxTCxkJnlTO5hNmzbqA/yhEBEk
	90yWEDI+PegHJtBidtNOgWWqQCZ5xmZXJj0AMO8GUBYOEdchGSkXyeNJbfrIF7qHRSL+bKTvxFXgm
	bWs13H7Rbk5jtQZmrpNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv2vx-0004VY-PX; Fri, 24 Jan 2020 17:39:53 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv2vu-0004VM-D2; Fri, 24 Jan 2020 17:39:50 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvmet: fix dsm failure when payload does not match sgl
 descriptor
Date: Fri, 24 Jan 2020 09:39:42 -0800
Message-Id: <20200124173942.2744-1-sagi@grimberg.me>
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
Cc: Dakshaja Uppalapati <dakshaja@chelsio.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The host is allowed to pass the controller an sgl describing a buffer
that is larger than the dsm payload itself, allow it when executing
dsm.

Reported-by: Dakshaja Uppalapati <dakshaja@chelsio.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/target/core.c        | 12 ++++++++++++
 drivers/nvme/target/io-cmd-bdev.c |  2 +-
 drivers/nvme/target/io-cmd-file.c |  2 +-
 drivers/nvme/target/nvmet.h       |  1 +
 4 files changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 28438b833c1b..9217c824620f 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -938,6 +938,18 @@ bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len)
 }
 EXPORT_SYMBOL_GPL(nvmet_check_data_len);
 
+bool nvmet_check_data_len_lte(struct nvmet_req *req, size_t data_len)
+{
+	if (unlikely(data_len > req->transfer_len)) {
+		req->error_loc = offsetof(struct nvme_common_command, dptr);
+		nvmet_req_complete(req, NVME_SC_SGL_INVALID_DATA | NVME_SC_DNR);
+		return false;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(nvmet_check_data_len_lte);
+
 int nvmet_req_alloc_sgl(struct nvmet_req *req)
 {
 	struct pci_dev *p2p_dev = NULL;
diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index b6fca0e421ef..ea0e596be15d 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -280,7 +280,7 @@ static void nvmet_bdev_execute_discard(struct nvmet_req *req)
 
 static void nvmet_bdev_execute_dsm(struct nvmet_req *req)
 {
-	if (!nvmet_check_data_len(req, nvmet_dsm_len(req)))
+	if (!nvmet_check_data_len_lte(req, nvmet_dsm_len(req)))
 		return;
 
 	switch (le32_to_cpu(req->cmd->dsm.attributes)) {
diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
index caebfce06605..cd5670b83118 100644
--- a/drivers/nvme/target/io-cmd-file.c
+++ b/drivers/nvme/target/io-cmd-file.c
@@ -336,7 +336,7 @@ static void nvmet_file_dsm_work(struct work_struct *w)
 
 static void nvmet_file_execute_dsm(struct nvmet_req *req)
 {
-	if (!nvmet_check_data_len(req, nvmet_dsm_len(req)))
+	if (!nvmet_check_data_len_lte(req, nvmet_dsm_len(req)))
 		return;
 	INIT_WORK(&req->f.work, nvmet_file_dsm_work);
 	schedule_work(&req->f.work);
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 46df45e837c9..eda28b22a2c8 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -374,6 +374,7 @@ bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
 		struct nvmet_sq *sq, const struct nvmet_fabrics_ops *ops);
 void nvmet_req_uninit(struct nvmet_req *req);
 bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len);
+bool nvmet_check_data_len_lte(struct nvmet_req *req, size_t data_len);
 void nvmet_req_complete(struct nvmet_req *req, u16 status);
 int nvmet_req_alloc_sgl(struct nvmet_req *req);
 void nvmet_req_free_sgl(struct nvmet_req *req);
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
