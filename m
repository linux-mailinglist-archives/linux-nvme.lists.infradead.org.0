Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C21A7A2967
	for <lists+linux-nvme@lfdr.de>; Fri, 30 Aug 2019 00:07:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C5R3PlOVAeXIQ4a9u/jvIyDDnTtqf9Kqei6OMkcpkOA=; b=kOwSGkSShf4OYC5k7ohiJ3OtiA
	qZ4B5yktfwX7nNGvtrjdWU4gV/lxU9e052MgYjRO0ptY9NsrvLREchySYGGSxiQMIYmkpRNktU/dA
	+zJpOiWDDz8nPRBDjGuCG/Bn2yzkvcscrL8MWRiH5rsK4TNMwQBr2uA25S32ONRDWIi4WpA9Sdj/6
	Kcaqc0R2PwlM3OXDGTjWNJMz/pyz9Ncy786Pi/EE7NchHwOOP+aTPnq7azUtEQzJ+IQVjxUBaPq12
	HC93PVjti5h9ewG9rLb09Wk3sZM2PfS4JLirzHPR37b+e3jy3mCjE9GS+44LkP6+PJatJug300JGN
	QAyy90VA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Sa1-0008V6-Sm; Thu, 29 Aug 2019 22:07:45 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1i3SZ6-0007dt-W0; Thu, 29 Aug 2019 22:06:49 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v9 5/9] nvme-fc: Fail transport errors with NVME_SC_HOST_PATH
Date: Thu, 29 Aug 2019 15:06:41 -0700
Message-Id: <20190829220645.5480-6-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190829220645.5480-1-sagi@grimberg.me>
References: <20190829220645.5480-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: James Smart <james.smart@broadcom.com>

NVME_SC_INTERNAL should indicate an internal controller errors
and not host transport errors. These errors will propagate to
upper layers (essentially nvme core) and be interpereted as
transport errors which should not be taken into account for
namespace state or condition.

Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: James Smart <james.smart@broadcom.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/fc.c | 37 ++++++++++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index bafe35bdffac..265f89e11d8b 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -1608,9 +1608,13 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req *req)
 				sizeof(op->rsp_iu), DMA_FROM_DEVICE);
 
 	if (opstate == FCPOP_STATE_ABORTED)
-		status = cpu_to_le16(NVME_SC_ABORT_REQ << 1);
-	else if (freq->status)
-		status = cpu_to_le16(NVME_SC_INTERNAL << 1);
+		status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+	else if (freq->status) {
+		status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+		dev_info(ctrl->ctrl.device,
+			"NVME-FC{%d}: io failed due to lldd error %d\n",
+			ctrl->cnum, freq->status);
+	}
 
 	/*
 	 * For the linux implementation, if we have an unsuccesful
@@ -1637,8 +1641,13 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req *req)
 		 * no payload in the CQE by the transport.
 		 */
 		if (freq->transferred_length !=
-			be32_to_cpu(op->cmd_iu.data_len)) {
-			status = cpu_to_le16(NVME_SC_INTERNAL << 1);
+		    be32_to_cpu(op->cmd_iu.data_len)) {
+			status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+			dev_info(ctrl->ctrl.device,
+				"NVME-FC{%d}: io failed due to bad transfer "
+				"length: %d vs expected %d\n",
+				ctrl->cnum, freq->transferred_length,
+				be32_to_cpu(op->cmd_iu.data_len));
 			goto done;
 		}
 		result.u64 = 0;
@@ -1655,7 +1664,17 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req *req)
 					freq->transferred_length ||
 			     op->rsp_iu.status_code ||
 			     sqe->common.command_id != cqe->command_id)) {
-			status = cpu_to_le16(NVME_SC_INTERNAL << 1);
+			status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+			dev_info(ctrl->ctrl.device,
+				"NVME-FC{%d}: io failed due to bad NVMe_ERSP: "
+				"iu len %d, xfr len %d vs %d, status code "
+				"%d, cmdid %d vs %d\n",
+				ctrl->cnum, be16_to_cpu(op->rsp_iu.iu_len),
+				be32_to_cpu(op->rsp_iu.xfrd_len),
+				freq->transferred_length,
+				op->rsp_iu.status_code,
+				sqe->common.command_id,
+				cqe->command_id);
 			goto done;
 		}
 		result = cqe->result;
@@ -1663,7 +1682,11 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req *req)
 		break;
 
 	default:
-		status = cpu_to_le16(NVME_SC_INTERNAL << 1);
+		status = cpu_to_le16(NVME_SC_HOST_PATH_ERROR << 1);
+		dev_info(ctrl->ctrl.device,
+			"NVME-FC{%d}: io failed due to odd NVMe_xRSP iu "
+			"len %d\n",
+			ctrl->cnum, freq->rcv_rsplen);
 		goto done;
 	}
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
