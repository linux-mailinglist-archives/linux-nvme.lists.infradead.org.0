Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 216DC86BF6
	for <lists+linux-nvme@lfdr.de>; Thu,  8 Aug 2019 22:54:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1XCMvVCUgcGA9/49TLjFXjULZ42x85PYxiFwJvsh8PU=; b=YfO/FSStvrWecTGIa2McX28gkj
	BPrIedODTICLihSHhpN65jS5vxhH2HzNCpye1MYFPOu6UBByKa7xfgkEC5IURpjrJklnL4aLut8ea
	XvZDkH6D0jAvLJxA1u7UNsCanTFjeNwC9ijNWgNBTc15PJUwO3yHxhwqU4TiWQAs2mWicmavT20vk
	Sy9HA2bL4JihtTExcZ83EfiuKM2jNDoBR7iXLWX5wF7AtxnjZLel28BKx6OEd7HBy2SCr1e1td9IK
	kHCDho/XsfOaoWRvqmHfgUJt6VbSw/EVrz932yIm9RBKBWb5opBCdKVI7CAMOtjKfETa9vgudR6JX
	xsuhdI6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvpQj-00029B-Gw; Thu, 08 Aug 2019 20:54:37 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hvpPg-00013b-Qn; Thu, 08 Aug 2019 20:53:32 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 6/7] nvme-fc: Fail transport errors with NVME_SC_HOST_PATH
Date: Thu,  8 Aug 2019 13:53:24 -0700
Message-Id: <20190808205325.24036-7-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190808205325.24036-1-sagi@grimberg.me>
References: <20190808205325.24036-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
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

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/fc.c | 37 ++++++++++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 3f3725d1eca1..c289f46f6d13 100644
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
