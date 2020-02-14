Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F2C1D15E0E0
	for <lists+linux-nvme@lfdr.de>; Fri, 14 Feb 2020 17:16:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mi1vGER+xV4BQWxU4jGDk838T361wimWrZnqZZNaMwo=; b=Wh/Ds4cF/5Uihn
	AIdoA9XFx2krwSAt6bhb+gTIMVvnpuZLNnjVmen8bOUdlve/RPIYdozuLervNleBoJqCrnvp3X8Az
	uEFSfArwuxiz9aRR3Q/S39X/7eS1xCRQeWW5Kvo+ALF7DqIuRtS8nyTFWxe+mnAf2PMQqzW9VpAfN
	kW26HsX5TbL1BXwI3/xGuNZuvdly0lP8ZNN9PPEi9nbW/fbisczE1R5QpRAhMuBmfSq4xk3RPlkTv
	LyC5RZbfDksWMF5AJQSbst0A6XPhwYQQBPtYEBDISfv5ia3WHKMuFns9iC0lBxeVZdf3gFcMz3tmk
	ZY7UVu0trUvmoJRXGlgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2ddL-00088N-5G; Fri, 14 Feb 2020 16:16:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2dNi-000541-S9
 for linux-nvme@lists.infradead.org; Fri, 14 Feb 2020 15:59:57 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3D81D206D7;
 Fri, 14 Feb 2020 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581695994;
 bh=AQyN84R5YGMyWpb9NCPcHNHXXRYjZNMbDO4ty2yJ4Is=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1myXzaQCBquvr4kSfPOZIT8AXZop47nK/smy0zbm9Lw6xEL3tg0sToZmMmqto3rxF
 4zgL9xsTA4ehPAIzRpoYB5GGg61hQhpiyRwwLgXWeSCB6vIS++7OdlSQ5Adf/H/xr/
 FCbXitb73nr9LBv8YH1FkZdwNJsUjujYvajPWJh0=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.5 514/542] nvmet: fix dsm failure when payload does
 not match sgl descriptor
Date: Fri, 14 Feb 2020 10:48:26 -0500
Message-Id: <20200214154854.6746-514-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200214154854.6746-1-sashal@kernel.org>
References: <20200214154854.6746-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200214_075954_963392_3DFD4857 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Dakshaja Uppalapati <dakshaja@chelsio.com>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit b716e6889c95f64ba32af492461f6cc9341f3f05 ]

The host is allowed to pass the controller an sgl describing a buffer
that is larger than the dsm payload itself, allow it when executing
dsm.

Reported-by: Dakshaja Uppalapati <dakshaja@chelsio.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>,
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/target/core.c        | 11 +++++++++++
 drivers/nvme/target/io-cmd-bdev.c |  2 +-
 drivers/nvme/target/io-cmd-file.c |  2 +-
 drivers/nvme/target/nvmet.h       |  1 +
 4 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 35810a0a8d212..461987f669c50 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -939,6 +939,17 @@ bool nvmet_check_data_len(struct nvmet_req *req, size_t data_len)
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
+
 int nvmet_req_alloc_sgl(struct nvmet_req *req)
 {
 	struct pci_dev *p2p_dev = NULL;
diff --git a/drivers/nvme/target/io-cmd-bdev.c b/drivers/nvme/target/io-cmd-bdev.c
index b6fca0e421ef1..ea0e596be15dc 100644
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
index caebfce066056..cd5670b83118f 100644
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
index 46df45e837c95..eda28b22a2c87 100644
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
