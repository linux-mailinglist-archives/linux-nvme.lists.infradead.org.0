Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 79EACD159B
	for <lists+linux-nvme@lfdr.de>; Wed,  9 Oct 2019 19:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z5lA6ISQH0W41jRF1jQHZQwEbTESqEuqIv0aD9FNHVA=; b=hQ+ThZcmgGemah
	1koZWbA5AM87QJxrAMm+kZQp67sqGos2H//TYZV97K1NXrSZQfzqBTSbaWOJXh46kwEtMEVxwlPsH
	mKh2IxflgN6BKxM50xVd5tGjMzq3EABhWJlJwpEo0ncy6F/Rlg1oY93K7g27xC2jATt1Ymc0nGI49
	TJ87iTUsRI3GpwvSeXZ+WzDyMbaHEp0hopeGHVgtBaSo62pbZdtKwJMXW2xQ/ueTQLVS2Y0VOYEA9
	uWRlg+zYsUPDnY/AJCwbD4ux9Au0yI8P2Y4uuUFlToV2SFBN1qsua+L14+ff/tWtH2mi7XN+VpoEH
	DCI3SHqtW8S/M9uan2ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFho-0004i8-DR; Wed, 09 Oct 2019 17:24:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFgt-0003y8-E2
 for linux-nvme@lists.infradead.org; Wed, 09 Oct 2019 17:24:02 +0000
Received: from sasha-vm.mshome.net (unknown [167.220.2.234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 19C8D2196E;
 Wed,  9 Oct 2019 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570641839;
 bh=RbW/Ro+spT/qRFap2ebndlzW46XRVhfTR2zROlgJvMk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cHx6dJXcJnUUsqfca649/TIeMri90G8CJvBxXZgjqYi9PAi/10mzYYn3jio9Qs3f5
 XBcvsAlbLRD/XCCl6sadMqZUJef2j8h9IQXKiiICGC1Etcc2LVl5/a7qZj+iSN+nK1
 vctu9gfoWK6+Xz8Me1iKp4lr0qpxD7gmtHUG7xB4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 21/68] nvme-rdma: Fix max_hw_sectors calculation
Date: Wed,  9 Oct 2019 13:05:00 -0400
Message-Id: <20191009170547.32204-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009170547.32204-1-sashal@kernel.org>
References: <20191009170547.32204-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_102359_509233_B62DF29B 
X-CRM114-Status: GOOD (  13.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Max Gurtovoy <maxg@mellanox.com>

[ Upstream commit ff13c1b87c97275b82b2af99044b4abf6861b28f ]

By default, the NVMe/RDMA driver should support max io_size of 1MiB (or
upto the maximum supported size by the HCA). Currently, one will see that
/sys/class/block/<bdev>/queue/max_hw_sectors_kb is 1020 instead of 1024.

A non power of 2 value can cause performance degradation due to
unnecessary splitting of IO requests and unoptimized allocation units.

The number of pages per MR has been fixed here, so there is no longer any
need to reduce max_sectors by 1.

Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/rdma.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 1a6449bc547b9..cc1956349a2af 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -427,7 +427,7 @@ static void nvme_rdma_destroy_queue_ib(struct nvme_rdma_queue *queue)
 static int nvme_rdma_get_max_fr_pages(struct ib_device *ibdev)
 {
 	return min_t(u32, NVME_RDMA_MAX_SEGMENTS,
-		     ibdev->attrs.max_fast_reg_page_list_len);
+		     ibdev->attrs.max_fast_reg_page_list_len - 1);
 }
 
 static int nvme_rdma_create_queue_ib(struct nvme_rdma_queue *queue)
@@ -437,7 +437,7 @@ static int nvme_rdma_create_queue_ib(struct nvme_rdma_queue *queue)
 	const int cq_factor = send_wr_factor + 1;	/* + RECV */
 	int comp_vector, idx = nvme_rdma_queue_idx(queue);
 	enum ib_poll_context poll_ctx;
-	int ret;
+	int ret, pages_per_mr;
 
 	queue->device = nvme_rdma_find_get_device(queue->cm_id);
 	if (!queue->device) {
@@ -479,10 +479,16 @@ static int nvme_rdma_create_queue_ib(struct nvme_rdma_queue *queue)
 		goto out_destroy_qp;
 	}
 
+	/*
+	 * Currently we don't use SG_GAPS MR's so if the first entry is
+	 * misaligned we'll end up using two entries for a single data page,
+	 * so one additional entry is required.
+	 */
+	pages_per_mr = nvme_rdma_get_max_fr_pages(ibdev) + 1;
 	ret = ib_mr_pool_init(queue->qp, &queue->qp->rdma_mrs,
 			      queue->queue_size,
 			      IB_MR_TYPE_MEM_REG,
-			      nvme_rdma_get_max_fr_pages(ibdev), 0);
+			      pages_per_mr, 0);
 	if (ret) {
 		dev_err(queue->ctrl->ctrl.device,
 			"failed to initialize MR pool sized %d for QID %d\n",
@@ -824,8 +830,8 @@ static int nvme_rdma_configure_admin_queue(struct nvme_rdma_ctrl *ctrl,
 	if (error)
 		goto out_stop_queue;
 
-	ctrl->ctrl.max_hw_sectors =
-		(ctrl->max_fr_pages - 1) << (ilog2(SZ_4K) - 9);
+	ctrl->ctrl.max_segments = ctrl->max_fr_pages;
+	ctrl->ctrl.max_hw_sectors = ctrl->max_fr_pages << (ilog2(SZ_4K) - 9);
 
 	error = nvme_init_identify(&ctrl->ctrl);
 	if (error)
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
