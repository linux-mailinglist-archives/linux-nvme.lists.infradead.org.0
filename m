Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0510F029A
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 17:24:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=G+OaZD9v4L3oxCqMneIbhHetGfdZjJ6C2P6Swy6/rXw=; b=X9OdGFqyLdfKr9
	tNAXg95HR+W0Fm+FqNBWDfZZEhlV/yv3GA1G5Phl0k2am55rfl1jN+Wq4w+/NEE8wQA+8O1ct4nM8
	G6Xm6fMMM78520MfpHi2K7t50Bnhf2z/pccCjI5oVYeeWQMrAjeOY9duwLQ7298Aqe2xFr4el5S2c
	zHXfc/UXrAHViRDSXGXcxdfqJHO15z93p8WeVVBc2a2k45+EXorzyNzGeipdOzaKoPt1589ktrdwT
	rn5OlDQTcpBdsZeHgOIymihZvvLJKnap+68M68A+o6Fouy4G60h3/mrWdnQRdSJfuNPwh2bSGrbam
	0y11N/hysuiI2gSxL4cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1cj-0006Ey-2u; Tue, 05 Nov 2019 16:24:05 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1ZR-0003S9-NJ
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 16:20:50 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 5 Nov 2019 18:20:28 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xA5GKQm7013132;
 Tue, 5 Nov 2019 18:20:28 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH 10/15] nvmet: Rename nvmet_check_data_len to
 nvmet_check_transfer_len
Date: Tue,  5 Nov 2019 18:20:21 +0200
Message-Id: <20191105162026.183901-12-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191105162026.183901-1-maxg@mellanox.com>
References: <20191105162026.183901-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_082042_278033_37C75A6F 
X-CRM114-Status: UNSURE (   9.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Israel Rukshin <israelr@mellanox.com>

The function doesn't checks only the data length, because the transfer
length includes also the metadata length in some cases. This is
preparation for adding metadata (T10-PI) support.

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/admin-cmd.c   | 14 +++++++-------
 drivers/nvme/target/core.c        |  6 +++---
 drivers/nvme/target/discovery.c   |  8 ++++----
 drivers/nvme/target/fabrics-cmd.c |  8 ++++----
 drivers/nvme/target/io-cmd-bdev.c |  8 ++++----
 drivers/nvme/target/io-cmd-file.c |  8 ++++----
 drivers/nvme/target/nvmet.h       |  2 +-
 7 files changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 56c21b50..19ae155 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -284,7 +284,7 @@ static void nvmet_execute_get_log_page_ana(struct nvmet_req *req)
 
 static void nvmet_execute_get_log_page(struct nvmet_req *req)
 {
-	if (!nvmet_check_data_len(req, nvmet_get_log_page_len(req->cmd)))
+	if (!nvmet_check_transfer_len(req, nvmet_get_log_page_len(req->cmd)))
 		return;
 
 	switch (req->cmd->get_log_page.lid) {
@@ -597,7 +597,7 @@ static void nvmet_execute_identify_desclist(struct nvmet_req *req)
 
 static void nvmet_execute_identify(struct nvmet_req *req)
 {
-	if (!nvmet_check_data_len(req, NVME_IDENTIFY_DATA_SIZE))
+	if (!nvmet_check_transfer_len(req, NVME_IDENTIFY_DATA_SIZE))
 		return;
 
 	switch (req->cmd->identify.cns) {
@@ -626,7 +626,7 @@ static void nvmet_execute_identify(struct nvmet_req *req)
  */
 static void nvmet_execute_abort(struct nvmet_req *req)
 {
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 	nvmet_set_result(req, 1);
 	nvmet_req_complete(req, 0);
@@ -712,7 +712,7 @@ static void nvmet_execute_set_features(struct nvmet_req *req)
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
 	u16 status = 0;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	switch (cdw10 & 0xff) {
@@ -778,7 +778,7 @@ static void nvmet_execute_get_features(struct nvmet_req *req)
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
 	u16 status = 0;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	switch (cdw10 & 0xff) {
@@ -845,7 +845,7 @@ void nvmet_execute_async_event(struct nvmet_req *req)
 {
 	struct nvmet_ctrl *ctrl = req->sq->ctrl;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	mutex_lock(&ctrl->lock);
@@ -864,7 +864,7 @@ void nvmet_execute_keep_alive(struct nvmet_req *req)
 {
 	struct nvmet_ctrl *ctrl = req->sq->ctrl;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	pr_debug("ctrl %d update keep-alive timer for %d secs\n",
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index d545ff5..6125116 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -930,9 +930,9 @@ void nvmet_req_uninit(struct nvmet_req *req)
 }
 EXPORT_SYMBOL_GPL(nvmet_req_uninit);
 
-bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len)
+bool nvmet_check_transfer_len(struct nvmet_req *req, size_t len)
 {
-	if (unlikely(data_len != req->transfer_len)) {
+	if (unlikely(len != req->transfer_len)) {
 		req->error_loc = offsetof(struct nvme_common_command, dptr);
 		nvmet_req_complete(req, NVME_SC_SGL_INVALID_DATA | NVME_SC_DNR);
 		return false;
@@ -940,7 +940,7 @@ bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len)
 
 	return true;
 }
-EXPORT_SYMBOL_GPL(nvmet_check_data_len);
+EXPORT_SYMBOL_GPL(nvmet_check_transfer_len);
 
 int nvmet_req_alloc_sgl(struct nvmet_req *req)
 {
diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
index 0c2274b..40cf0b6 100644
--- a/drivers/nvme/target/discovery.c
+++ b/drivers/nvme/target/discovery.c
@@ -171,7 +171,7 @@ static void nvmet_execute_disc_get_log_page(struct nvmet_req *req)
 	u16 status = 0;
 	void *buffer;
 
-	if (!nvmet_check_data_len(req, data_len))
+	if (!nvmet_check_transfer_len(req, data_len))
 		return;
 
 	if (req->cmd->get_log_page.lid != NVME_LOG_DISC) {
@@ -244,7 +244,7 @@ static void nvmet_execute_disc_identify(struct nvmet_req *req)
 	const char model[] = "Linux";
 	u16 status = 0;
 
-	if (!nvmet_check_data_len(req, NVME_IDENTIFY_DATA_SIZE))
+	if (!nvmet_check_transfer_len(req, NVME_IDENTIFY_DATA_SIZE))
 		return;
 
 	if (req->cmd->identify.cns != NVME_ID_CNS_CTRL) {
@@ -298,7 +298,7 @@ static void nvmet_execute_disc_set_features(struct nvmet_req *req)
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
 	u16 stat;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	switch (cdw10 & 0xff) {
@@ -324,7 +324,7 @@ static void nvmet_execute_disc_get_features(struct nvmet_req *req)
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
 	u16 stat = 0;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	switch (cdw10 & 0xff) {
diff --git a/drivers/nvme/target/fabrics-cmd.c b/drivers/nvme/target/fabrics-cmd.c
index f729747..ee41b2b 100644
--- a/drivers/nvme/target/fabrics-cmd.c
+++ b/drivers/nvme/target/fabrics-cmd.c
@@ -12,7 +12,7 @@ static void nvmet_execute_prop_set(struct nvmet_req *req)
 	u64 val = le64_to_cpu(req->cmd->prop_set.value);
 	u16 status = 0;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	if (req->cmd->prop_set.attrib & 1) {
@@ -41,7 +41,7 @@ static void nvmet_execute_prop_get(struct nvmet_req *req)
 	u16 status = 0;
 	u64 val = 0;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	if (req->cmd->prop_get.attrib & 1) {
@@ -151,7 +151,7 @@ static void nvmet_execute_admin_connect(struct nvmet_req *req)
 	struct nvmet_ctrl *ctrl = NULL;
 	u16 status = 0;
 
-	if (!nvmet_check_data_len(req, sizeof(struct nvmf_connect_data)))
+	if (!nvmet_check_transfer_len(req, sizeof(struct nvmf_connect_data)))
 		return;
 
 	d = kmalloc(sizeof(*d), GFP_KERNEL);
@@ -218,7 +218,7 @@ static void nvmet_execute_io_connect(struct nvmet_req *req)
 	u16 qid = le16_to_cpu(c->qid);
 	u16 status = 0;
 
-	if (!nvmet_check_data_len(req, sizeof(struct nvmf_connect_data)))
+	if (!nvmet_check_transfer_len(req, sizeof(struct nvmf_connect_data)))
 		return;
 
 	d = kmalloc(sizeof(*d), GFP_KERNEL);
diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index dbada1f..2099c82 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -172,7 +172,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	sector_t sector;
 	int op, i;
 
-	if (!nvmet_check_data_len(req, nvmet_rw_data_len(req)))
+	if (!nvmet_check_transfer_len(req, nvmet_rw_data_len(req)))
 		return;
 
 	if (!req->sg_cnt) {
@@ -233,7 +233,7 @@ static void nvmet_bdev_execute_flush(struct nvmet_req *req)
 {
 	struct bio *bio = &req->b.inline_bio;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	bio_init(bio, req->inline_bvec, ARRAY_SIZE(req->inline_bvec));
@@ -301,7 +301,7 @@ static void nvmet_bdev_execute_discard(struct nvmet_req *req)
 
 static void nvmet_bdev_execute_dsm(struct nvmet_req *req)
 {
-	if (!nvmet_check_data_len(req, nvmet_dsm_len(req)))
+	if (!nvmet_check_transfer_len(req, nvmet_dsm_len(req)))
 		return;
 
 	switch (le32_to_cpu(req->cmd->dsm.attributes)) {
@@ -325,7 +325,7 @@ static void nvmet_bdev_execute_write_zeroes(struct nvmet_req *req)
 	sector_t nr_sector;
 	int ret;
 
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 
 	sector = le64_to_cpu(write_zeroes->slba) <<
diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
index e0a4859..1492f55 100644
--- a/drivers/nvme/target/io-cmd-file.c
+++ b/drivers/nvme/target/io-cmd-file.c
@@ -232,7 +232,7 @@ static void nvmet_file_execute_rw(struct nvmet_req *req)
 {
 	ssize_t nr_bvec = req->sg_cnt;
 
-	if (!nvmet_check_data_len(req, nvmet_rw_data_len(req)))
+	if (!nvmet_check_transfer_len(req, nvmet_rw_data_len(req)))
 		return;
 
 	if (!req->sg_cnt || !nr_bvec) {
@@ -276,7 +276,7 @@ static void nvmet_file_flush_work(struct work_struct *w)
 
 static void nvmet_file_execute_flush(struct nvmet_req *req)
 {
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 	INIT_WORK(&req->f.work, nvmet_file_flush_work);
 	schedule_work(&req->f.work);
@@ -336,7 +336,7 @@ static void nvmet_file_dsm_work(struct work_struct *w)
 
 static void nvmet_file_execute_dsm(struct nvmet_req *req)
 {
-	if (!nvmet_check_data_len(req, nvmet_dsm_len(req)))
+	if (!nvmet_check_transfer_len(req, nvmet_dsm_len(req)))
 		return;
 	INIT_WORK(&req->f.work, nvmet_file_dsm_work);
 	schedule_work(&req->f.work);
@@ -366,7 +366,7 @@ static void nvmet_file_write_zeroes_work(struct work_struct *w)
 
 static void nvmet_file_execute_write_zeroes(struct nvmet_req *req)
 {
-	if (!nvmet_check_data_len(req, 0))
+	if (!nvmet_check_transfer_len(req, 0))
 		return;
 	INIT_WORK(&req->f.work, nvmet_file_write_zeroes_work);
 	schedule_work(&req->f.work);
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 50bc21b..39d5300 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -381,7 +381,7 @@ static inline bool nvmet_aen_bit_disabled(struct nvmet_ctrl *ctrl, u32 bn)
 bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
 		struct nvmet_sq *sq, const struct nvmet_fabrics_ops *ops);
 void nvmet_req_uninit(struct nvmet_req *req);
-bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len);
+bool nvmet_check_transfer_len(struct nvmet_req *req, size_t len);
 void nvmet_req_complete(struct nvmet_req *req, u16 status);
 int nvmet_req_alloc_sgl(struct nvmet_req *req);
 void nvmet_req_free_sgl(struct nvmet_req *req);
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
