Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFD1E20C5
	for <lists+linux-nvme@lfdr.de>; Wed, 23 Oct 2019 18:37:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C+JSYHHtWYBuKx7vI+cxfeENQL1rGFWeJ3zVuCjfZ7w=; b=BtrzTeWAPhJWo6
	a2wTQ9w/dvLzCyHUYL8iOvR4U9DQNJr3xveaPwUll42S9j0foHnyrwtdy09SfHBrza+O5CLFp/Hth
	a9YC9D4KUUbRZu3ufevZZs+wavHLAXyQi4kYG5RTYbsm3cclyfuSHTh9nv5BJSotIluRb+B2puFXl
	Qa4yVzcB9JQI5JbegH7B7y+KZdsS7TqK1ypdoo8wkYnax2GXh0fsvsUKLX8gWEdyPzmXCBY0vhlFu
	TF9pPdffL1nMm6V7lR4L9c5qcypxCPHG/PMCDCGexAQfpqLWumWTKEpuiW8jUDiUu0KApLL8C4gWu
	406bVN9v+lnKnQzB81Cw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNJdt-0000dL-QX; Wed, 23 Oct 2019 16:37:49 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNJcC-0007gi-R3
 for linux-nvme@lists.infradead.org; Wed, 23 Oct 2019 16:36:08 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1iNJc4-0006Vx-8I; Wed, 23 Oct 2019 10:36:03 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1iNJc3-00016k-0z; Wed, 23 Oct 2019 10:35:55 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Date: Wed, 23 Oct 2019 10:35:44 -0600
Message-Id: <20191023163545.4193-7-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191023163545.4193-1-logang@deltatee.com>
References: <20191023163545.4193-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 hch@lst.de, sagi@grimberg.me, Chaitanya.Kulkarni@wdc.com, maxg@mellanox.com,
 sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.5 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_FREE,MYRULES_NO_TEXT autolearn=ham
 autolearn_force=no version=3.4.2
Subject: [PATCH 6/7] nvmet: Remove the data_len field from the nvmet_req struct
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_093605_055539_718C2E1F 
X-CRM114-Status: GOOD (  15.55  )
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
 Stephen Bates <sbates@raithlin.com>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Instead of storing the expected length and checking it when it's
executed, just check the length inside the command themselves.

A new helper, nvmet_check_data_len() is created to help with this
check.

Signed-off-by: Christoph Hellwig <hch@lst.de>
[logang@deltatee.com: separated out of a larger draft patch from hch]
Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/admin-cmd.c   | 35 +++++++++++++++++++++----------
 drivers/nvme/target/core.c        | 16 ++++++++++----
 drivers/nvme/target/discovery.c   | 18 ++++++++++------
 drivers/nvme/target/fabrics-cmd.c | 15 ++++++++++---
 drivers/nvme/target/io-cmd-bdev.c | 19 +++++++++++------
 drivers/nvme/target/io-cmd-file.c | 19 ++++++++++-------
 drivers/nvme/target/nvmet.h       |  3 +--
 7 files changed, 86 insertions(+), 39 deletions(-)

diff --git a/drivers/nvme/target/admin-cmd.c b/drivers/nvme/target/admin-cmd.c
index 3665b45d6515..cd2c3a79f3b5 100644
--- a/drivers/nvme/target/admin-cmd.c
+++ b/drivers/nvme/target/admin-cmd.c
@@ -31,7 +31,7 @@ u64 nvmet_get_log_page_offset(struct nvme_command *cmd)
 
 static void nvmet_execute_get_log_page_noop(struct nvmet_req *req)
 {
-	nvmet_req_complete(req, nvmet_zero_sgl(req, 0, req->data_len));
+	nvmet_req_complete(req, nvmet_zero_sgl(req, 0, req->transfer_len));
 }
 
 static void nvmet_execute_get_log_page_error(struct nvmet_req *req)
@@ -134,7 +134,7 @@ static void nvmet_execute_get_log_page_smart(struct nvmet_req *req)
 	u16 status = NVME_SC_INTERNAL;
 	unsigned long flags;
 
-	if (req->data_len != sizeof(*log))
+	if (req->transfer_len != sizeof(*log))
 		goto out;
 
 	log = kzalloc(sizeof(*log), GFP_KERNEL);
@@ -196,7 +196,7 @@ static void nvmet_execute_get_log_changed_ns(struct nvmet_req *req)
 	u16 status = NVME_SC_INTERNAL;
 	size_t len;
 
-	if (req->data_len != NVME_MAX_CHANGED_NAMESPACES * sizeof(__le32))
+	if (req->transfer_len != NVME_MAX_CHANGED_NAMESPACES * sizeof(__le32))
 		goto out;
 
 	mutex_lock(&ctrl->lock);
@@ -206,7 +206,7 @@ static void nvmet_execute_get_log_changed_ns(struct nvmet_req *req)
 		len = ctrl->nr_changed_ns * sizeof(__le32);
 	status = nvmet_copy_to_sgl(req, 0, ctrl->changed_ns_list, len);
 	if (!status)
-		status = nvmet_zero_sgl(req, len, req->data_len - len);
+		status = nvmet_zero_sgl(req, len, req->transfer_len - len);
 	ctrl->nr_changed_ns = 0;
 	nvmet_clear_aen_bit(req, NVME_AEN_BIT_NS_ATTR);
 	mutex_unlock(&ctrl->lock);
@@ -284,6 +284,9 @@ static void nvmet_execute_get_log_page_ana(struct nvmet_req *req)
 
 static void nvmet_execute_get_log_page(struct nvmet_req *req)
 {
+	if (!nvmet_check_data_len(req, nvmet_get_log_page_len(req->cmd)))
+		return;
+
 	switch (req->cmd->get_log_page.lid) {
 	case NVME_LOG_ERROR:
 		return nvmet_execute_get_log_page_error(req);
@@ -594,6 +597,9 @@ static void nvmet_execute_identify_desclist(struct nvmet_req *req)
 
 static void nvmet_execute_identify(struct nvmet_req *req)
 {
+	if (!nvmet_check_data_len(req, NVME_IDENTIFY_DATA_SIZE))
+		return;
+
 	switch (req->cmd->identify.cns) {
 	case NVME_ID_CNS_NS:
 		return nvmet_execute_identify_ns(req);
@@ -620,6 +626,8 @@ static void nvmet_execute_identify(struct nvmet_req *req)
  */
 static void nvmet_execute_abort(struct nvmet_req *req)
 {
+	if (!nvmet_check_data_len(req, 0))
+		return;
 	nvmet_set_result(req, 1);
 	nvmet_req_complete(req, 0);
 }
@@ -704,6 +712,9 @@ static void nvmet_execute_set_features(struct nvmet_req *req)
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
 	u16 status = 0;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	switch (cdw10 & 0xff) {
 	case NVME_FEAT_NUM_QUEUES:
 		nvmet_set_result(req,
@@ -767,6 +778,9 @@ static void nvmet_execute_get_features(struct nvmet_req *req)
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
 	u16 status = 0;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	switch (cdw10 & 0xff) {
 	/*
 	 * These features are mandatory in the spec, but we don't
@@ -831,6 +845,9 @@ void nvmet_execute_async_event(struct nvmet_req *req)
 {
 	struct nvmet_ctrl *ctrl = req->sq->ctrl;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	mutex_lock(&ctrl->lock);
 	if (ctrl->nr_async_event_cmds >= NVMET_ASYNC_EVENTS) {
 		mutex_unlock(&ctrl->lock);
@@ -847,6 +864,9 @@ void nvmet_execute_keep_alive(struct nvmet_req *req)
 {
 	struct nvmet_ctrl *ctrl = req->sq->ctrl;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	pr_debug("ctrl %d update keep-alive timer for %d secs\n",
 		ctrl->cntlid, ctrl->kato);
 
@@ -866,31 +886,24 @@ u16 nvmet_parse_admin_cmd(struct nvmet_req *req)
 	switch (cmd->common.opcode) {
 	case nvme_admin_get_log_page:
 		req->execute = nvmet_execute_get_log_page;
-		req->data_len = nvmet_get_log_page_len(cmd);
 		return 0;
 	case nvme_admin_identify:
 		req->execute = nvmet_execute_identify;
-		req->data_len = NVME_IDENTIFY_DATA_SIZE;
 		return 0;
 	case nvme_admin_abort_cmd:
 		req->execute = nvmet_execute_abort;
-		req->data_len = 0;
 		return 0;
 	case nvme_admin_set_features:
 		req->execute = nvmet_execute_set_features;
-		req->data_len = 0;
 		return 0;
 	case nvme_admin_get_features:
 		req->execute = nvmet_execute_get_features;
-		req->data_len = 0;
 		return 0;
 	case nvme_admin_async_event:
 		req->execute = nvmet_execute_async_event;
-		req->data_len = 0;
 		return 0;
 	case nvme_admin_keep_alive:
 		req->execute = nvmet_execute_keep_alive;
-		req->data_len = 0;
 		return 0;
 	}
 
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 3a67e244e568..87fe82ccfa89 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -930,13 +930,21 @@ void nvmet_req_uninit(struct nvmet_req *req)
 }
 EXPORT_SYMBOL_GPL(nvmet_req_uninit);
 
-void nvmet_req_execute(struct nvmet_req *req)
+bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len)
 {
-	if (unlikely(req->data_len != req->transfer_len)) {
+	if (unlikely(data_len != req->transfer_len)) {
 		req->error_loc = offsetof(struct nvme_common_command, dptr);
 		nvmet_req_complete(req, NVME_SC_SGL_INVALID_DATA | NVME_SC_DNR);
-	} else
-		req->execute(req);
+		return false;
+	}
+
+	return true;
+}
+EXPORT_SYMBOL_GPL(nvmet_check_data_len);
+
+void nvmet_req_execute(struct nvmet_req *req)
+{
+	req->execute(req);
 }
 EXPORT_SYMBOL_GPL(nvmet_req_execute);
 
diff --git a/drivers/nvme/target/discovery.c b/drivers/nvme/target/discovery.c
index 825e61e61b0c..7a868c3e8e95 100644
--- a/drivers/nvme/target/discovery.c
+++ b/drivers/nvme/target/discovery.c
@@ -171,6 +171,9 @@ static void nvmet_execute_disc_get_log_page(struct nvmet_req *req)
 	u16 status = 0;
 	void *buffer;
 
+	if (!nvmet_check_data_len(req, data_len))
+		return;
+
 	if (req->cmd->get_log_page.lid != NVME_LOG_DISC) {
 		req->error_loc =
 			offsetof(struct nvme_get_log_page_command, lid);
@@ -240,6 +243,9 @@ static void nvmet_execute_disc_identify(struct nvmet_req *req)
 	struct nvme_id_ctrl *id;
 	u16 status = 0;
 
+	if (!nvmet_check_data_len(req, NVME_IDENTIFY_DATA_SIZE))
+		return;
+
 	if (req->cmd->identify.cns != NVME_ID_CNS_CTRL) {
 		req->error_loc = offsetof(struct nvme_identify, cns);
 		status = NVME_SC_INVALID_OPCODE | NVME_SC_DNR;
@@ -286,6 +292,9 @@ static void nvmet_execute_disc_set_features(struct nvmet_req *req)
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
 	u16 stat;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	switch (cdw10 & 0xff) {
 	case NVME_FEAT_KATO:
 		stat = nvmet_set_feat_kato(req);
@@ -309,6 +318,9 @@ static void nvmet_execute_disc_get_features(struct nvmet_req *req)
 	u32 cdw10 = le32_to_cpu(req->cmd->common.cdw10);
 	u16 stat = 0;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	switch (cdw10 & 0xff) {
 	case NVME_FEAT_KATO:
 		nvmet_get_feat_kato(req);
@@ -341,26 +353,20 @@ u16 nvmet_parse_discovery_cmd(struct nvmet_req *req)
 	switch (cmd->common.opcode) {
 	case nvme_admin_set_features:
 		req->execute = nvmet_execute_disc_set_features;
-		req->data_len = 0;
 		return 0;
 	case nvme_admin_get_features:
 		req->execute = nvmet_execute_disc_get_features;
-		req->data_len = 0;
 		return 0;
 	case nvme_admin_async_event:
 		req->execute = nvmet_execute_async_event;
-		req->data_len = 0;
 		return 0;
 	case nvme_admin_keep_alive:
 		req->execute = nvmet_execute_keep_alive;
-		req->data_len = 0;
 		return 0;
 	case nvme_admin_get_log_page:
-		req->data_len = nvmet_get_log_page_len(cmd);
 		req->execute = nvmet_execute_disc_get_log_page;
 		return 0;
 	case nvme_admin_identify:
-		req->data_len = NVME_IDENTIFY_DATA_SIZE;
 		req->execute = nvmet_execute_disc_identify;
 		return 0;
 	default:
diff --git a/drivers/nvme/target/fabrics-cmd.c b/drivers/nvme/target/fabrics-cmd.c
index d16b55ffe79f..f7297473d9eb 100644
--- a/drivers/nvme/target/fabrics-cmd.c
+++ b/drivers/nvme/target/fabrics-cmd.c
@@ -12,6 +12,9 @@ static void nvmet_execute_prop_set(struct nvmet_req *req)
 	u64 val = le64_to_cpu(req->cmd->prop_set.value);
 	u16 status = 0;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	if (req->cmd->prop_set.attrib & 1) {
 		req->error_loc =
 			offsetof(struct nvmf_property_set_command, attrib);
@@ -38,6 +41,9 @@ static void nvmet_execute_prop_get(struct nvmet_req *req)
 	u16 status = 0;
 	u64 val = 0;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	if (req->cmd->prop_get.attrib & 1) {
 		switch (le32_to_cpu(req->cmd->prop_get.offset)) {
 		case NVME_REG_CAP:
@@ -82,11 +88,9 @@ u16 nvmet_parse_fabrics_cmd(struct nvmet_req *req)
 
 	switch (cmd->fabrics.fctype) {
 	case nvme_fabrics_type_property_set:
-		req->data_len = 0;
 		req->execute = nvmet_execute_prop_set;
 		break;
 	case nvme_fabrics_type_property_get:
-		req->data_len = 0;
 		req->execute = nvmet_execute_prop_get;
 		break;
 	default:
@@ -147,6 +151,9 @@ static void nvmet_execute_admin_connect(struct nvmet_req *req)
 	struct nvmet_ctrl *ctrl = NULL;
 	u16 status = 0;
 
+	if (!nvmet_check_data_len(req, sizeof(struct nvmf_connect_data)))
+		return;
+
 	d = kmalloc(sizeof(*d), GFP_KERNEL);
 	if (!d) {
 		status = NVME_SC_INTERNAL;
@@ -211,6 +218,9 @@ static void nvmet_execute_io_connect(struct nvmet_req *req)
 	u16 qid = le16_to_cpu(c->qid);
 	u16 status = 0;
 
+	if (!nvmet_check_data_len(req, sizeof(struct nvmf_connect_data)))
+		return;
+
 	d = kmalloc(sizeof(*d), GFP_KERNEL);
 	if (!d) {
 		status = NVME_SC_INTERNAL;
@@ -281,7 +291,6 @@ u16 nvmet_parse_connect_cmd(struct nvmet_req *req)
 		return NVME_SC_INVALID_OPCODE | NVME_SC_DNR;
 	}
 
-	req->data_len = sizeof(struct nvmf_connect_data);
 	if (cmd->connect.qid == 0)
 		req->execute = nvmet_execute_admin_connect;
 	else
diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index 32008d85172b..2d62347573fa 100644
--- a/drivers/nvme/target/io-cmd-bdev.c
+++ b/drivers/nvme/target/io-cmd-bdev.c
@@ -150,6 +150,9 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	sector_t sector;
 	int op, op_flags = 0, i;
 
+	if (!nvmet_check_data_len(req, nvmet_rw_len(req)))
+		return;
+
 	if (!req->sg_cnt) {
 		nvmet_req_complete(req, 0);
 		return;
@@ -170,7 +173,7 @@ static void nvmet_bdev_execute_rw(struct nvmet_req *req)
 	sector = le64_to_cpu(req->cmd->rw.slba);
 	sector <<= (req->ns->blksize_shift - 9);
 
-	if (req->data_len <= NVMET_MAX_INLINE_DATA_LEN) {
+	if (req->transfer_len <= NVMET_MAX_INLINE_DATA_LEN) {
 		bio = &req->b.inline_bio;
 		bio_init(bio, req->inline_bvec, ARRAY_SIZE(req->inline_bvec));
 	} else {
@@ -207,6 +210,9 @@ static void nvmet_bdev_execute_flush(struct nvmet_req *req)
 {
 	struct bio *bio = &req->b.inline_bio;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	bio_init(bio, req->inline_bvec, ARRAY_SIZE(req->inline_bvec));
 	bio_set_dev(bio, req->ns->bdev);
 	bio->bi_private = req;
@@ -274,6 +280,9 @@ static void nvmet_bdev_execute_discard(struct nvmet_req *req)
 
 static void nvmet_bdev_execute_dsm(struct nvmet_req *req)
 {
+	if (!nvmet_check_data_len(req, nvmet_dsm_len(req)))
+		return;
+
 	switch (le32_to_cpu(req->cmd->dsm.attributes)) {
 	case NVME_DSMGMT_AD:
 		nvmet_bdev_execute_discard(req);
@@ -295,6 +304,9 @@ static void nvmet_bdev_execute_write_zeroes(struct nvmet_req *req)
 	sector_t nr_sector;
 	int ret;
 
+	if (!nvmet_check_data_len(req, 0))
+		return;
+
 	sector = le64_to_cpu(write_zeroes->slba) <<
 		(req->ns->blksize_shift - 9);
 	nr_sector = (((sector_t)le16_to_cpu(write_zeroes->length) + 1) <<
@@ -319,20 +331,15 @@ u16 nvmet_bdev_parse_io_cmd(struct nvmet_req *req)
 	case nvme_cmd_read:
 	case nvme_cmd_write:
 		req->execute = nvmet_bdev_execute_rw;
-		req->data_len = nvmet_rw_len(req);
 		return 0;
 	case nvme_cmd_flush:
 		req->execute = nvmet_bdev_execute_flush;
-		req->data_len = 0;
 		return 0;
 	case nvme_cmd_dsm:
 		req->execute = nvmet_bdev_execute_dsm;
-		req->data_len = (le32_to_cpu(cmd->dsm.nr) + 1) *
-			sizeof(struct nvme_dsm_range);
 		return 0;
 	case nvme_cmd_write_zeroes:
 		req->execute = nvmet_bdev_execute_write_zeroes;
-		req->data_len = 0;
 		return 0;
 	default:
 		pr_err("unhandled cmd %d on qid %d\n", cmd->common.opcode,
diff --git a/drivers/nvme/target/io-cmd-file.c b/drivers/nvme/target/io-cmd-file.c
index 7481556da6e6..caebfce06605 100644
--- a/drivers/nvme/target/io-cmd-file.c
+++ b/drivers/nvme/target/io-cmd-file.c
@@ -126,7 +126,7 @@ static void nvmet_file_io_done(struct kiocb *iocb, long ret, long ret2)
 			mempool_free(req->f.bvec, req->ns->bvec_pool);
 	}
 
-	if (unlikely(ret != req->data_len))
+	if (unlikely(ret != req->transfer_len))
 		status = errno_to_nvme_status(req, ret);
 	nvmet_req_complete(req, status);
 }
@@ -146,7 +146,7 @@ static bool nvmet_file_execute_io(struct nvmet_req *req, int ki_flags)
 		is_sync = true;
 
 	pos = le64_to_cpu(req->cmd->rw.slba) << req->ns->blksize_shift;
-	if (unlikely(pos + req->data_len > req->ns->size)) {
+	if (unlikely(pos + req->transfer_len > req->ns->size)) {
 		nvmet_req_complete(req, errno_to_nvme_status(req, -ENOSPC));
 		return true;
 	}
@@ -173,7 +173,7 @@ static bool nvmet_file_execute_io(struct nvmet_req *req, int ki_flags)
 		nr_bvec--;
 	}
 
-	if (WARN_ON_ONCE(total_len != req->data_len)) {
+	if (WARN_ON_ONCE(total_len != req->transfer_len)) {
 		ret = -EIO;
 		goto complete;
 	}
@@ -232,6 +232,9 @@ static void nvmet_file_execute_rw(struct nvmet_req *req)
 {
 	ssize_t nr_bvec = req->sg_cnt;
 
+	if (!nvmet_check_data_len(req, nvmet_rw_len(req)))
+		return;
+
 	if (!req->sg_cnt || !nr_bvec) {
 		nvmet_req_complete(req, 0);
 		return;
@@ -273,6 +276,8 @@ static void nvmet_file_flush_work(struct work_struct *w)
 
 static void nvmet_file_execute_flush(struct nvmet_req *req)
 {
+	if (!nvmet_check_data_len(req, 0))
+		return;
 	INIT_WORK(&req->f.work, nvmet_file_flush_work);
 	schedule_work(&req->f.work);
 }
@@ -331,6 +336,8 @@ static void nvmet_file_dsm_work(struct work_struct *w)
 
 static void nvmet_file_execute_dsm(struct nvmet_req *req)
 {
+	if (!nvmet_check_data_len(req, nvmet_dsm_len(req)))
+		return;
 	INIT_WORK(&req->f.work, nvmet_file_dsm_work);
 	schedule_work(&req->f.work);
 }
@@ -359,6 +366,8 @@ static void nvmet_file_write_zeroes_work(struct work_struct *w)
 
 static void nvmet_file_execute_write_zeroes(struct nvmet_req *req)
 {
+	if (!nvmet_check_data_len(req, 0))
+		return;
 	INIT_WORK(&req->f.work, nvmet_file_write_zeroes_work);
 	schedule_work(&req->f.work);
 }
@@ -371,19 +380,15 @@ u16 nvmet_file_parse_io_cmd(struct nvmet_req *req)
 	case nvme_cmd_read:
 	case nvme_cmd_write:
 		req->execute = nvmet_file_execute_rw;
-		req->data_len = nvmet_rw_len(req);
 		return 0;
 	case nvme_cmd_flush:
 		req->execute = nvmet_file_execute_flush;
-		req->data_len = 0;
 		return 0;
 	case nvme_cmd_dsm:
 		req->execute = nvmet_file_execute_dsm;
-		req->data_len = nvmet_dsm_len(req);
 		return 0;
 	case nvme_cmd_write_zeroes:
 		req->execute = nvmet_file_execute_write_zeroes;
-		req->data_len = 0;
 		return 0;
 	default:
 		pr_err("unhandled cmd for file ns %d on qid %d\n",
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index 6ccf2d098d9f..ff55f1005b35 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -304,8 +304,6 @@ struct nvmet_req {
 		} f;
 	};
 	int			sg_cnt;
-	/* data length as parsed from the command: */
-	size_t			data_len;
 	/* data length as parsed from the SGL descriptor: */
 	size_t			transfer_len;
 
@@ -375,6 +373,7 @@ u16 nvmet_parse_fabrics_cmd(struct nvmet_req *req);
 bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
 		struct nvmet_sq *sq, const struct nvmet_fabrics_ops *ops);
 void nvmet_req_uninit(struct nvmet_req *req);
+bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len);
 void nvmet_req_execute(struct nvmet_req *req);
 void nvmet_req_complete(struct nvmet_req *req, u16 status);
 int nvmet_req_alloc_sgl(struct nvmet_req *req);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
