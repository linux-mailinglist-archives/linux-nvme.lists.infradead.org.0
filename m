Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8E4D2F18
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 18:59:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kMxFHeOebSD7FomZsE6brSMNxmmji49A0aV9pQEL6io=; b=gYJTqlPIN0Z7mV
	Aytw2Rr8AdGo6/7lNppr2qg/ZRDitXpwuAl2EC66v7iYnmtJKyiJLDOXkp/eHOQNG+Cz0gQZ5aWxm
	DIsW7CoerVh2n4L3XVsM+iAvwvZVZKp+qJfPIySsDjS+Eipk8ehmoD4wRdkaZeFwswBJhqgAINeAG
	vR/6KpVjIFTIzcVeEZnyU8WpmL9HJxZoyEhj25LY2oA4rwLd9eUFC7dFc2//Kk706JyWz0vX7wA2B
	n2aEil+xmf9A1r8HmOjZ9vTMIXDTLi42jkdBljVMK4xZHSbNPVQip2eW4STRK+torUpkzrQ7QggkY
	11hA3o5N6fD2t4mJxGiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbmG-0000R1-EV; Thu, 10 Oct 2019 16:59:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbl5-0008Ci-BY
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 16:57:48 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C42EB21A4A;
 Thu, 10 Oct 2019 16:57:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570726666;
 bh=aHqTbVH97F7V/cWmxsAW1WxinkDKkTVeKd54+Y6tYyc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=00phtRVe2hXYYDG8CpXBsYVp8enXhYrxT2h/2S526x9EYTGct67Fqhl85Qy2O9HUH
 hfATD4MiaMOXBapMLqtqUoaFYtI3T5TpYYRLCiBMmchJwMjWCcEQxKQUS7iKdptP/i
 TRauUumJDNiaYJt8oSLPou3mEkRG7POu4IMUx74I=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCHv4 4/5] nvme: Prevent resets during paused controller state
Date: Fri, 11 Oct 2019 01:57:35 +0900
Message-Id: <20191010165736.12081-5-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191010165736.12081-1-kbusch@kernel.org>
References: <20191010165736.12081-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_095747_444907_B00A7574 
X-CRM114-Status: GOOD (  13.61  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Judy Brock <judy.brock@samsung.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A paused controller is doing critical internal activation work in the
background. Prevent subsequent controller resets from occurring during
this period by setting the controller state to RESETTING first. A helper
function, nvme_try_sched_reset_work(), is introduced for these paths so
they may continue with scheduling the reset_work after they've completed
their uninterruptible critical section.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 29 +++++++++++++++++++++++++----
 1 file changed, 25 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 7a164b708863..0f5a82b7d3a4 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -120,6 +120,21 @@ static void nvme_queue_scan(struct nvme_ctrl *ctrl)
 		queue_work(nvme_wq, &ctrl->scan_work);
 }
 
+/*
+ * Use this function to proceed with scheduling reset_work for a controller
+ * that had previously been set to the resetting state. This is intended for
+ * code paths that can't be interrupted by other reset attempts. A hot removal
+ * may prevent this from succeeding.
+ */
+static int nvme_try_sched_reset(struct nvme_ctrl *ctrl)
+{
+	if (ctrl->state != NVME_CTRL_RESETTING)
+		return -EBUSY;
+	if (!queue_work(nvme_reset_wq, &ctrl->reset_work))
+		return -EBUSY;
+	return 0;
+}
+
 int nvme_reset_ctrl(struct nvme_ctrl *ctrl)
 {
 	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
@@ -3829,13 +3844,13 @@ static void nvme_fw_act_work(struct work_struct *work)
 		if (time_after(jiffies, fw_act_timeout)) {
 			dev_warn(ctrl->device,
 				"Fw activation timeout, reset controller\n");
-			nvme_reset_ctrl(ctrl);
-			break;
+			nvme_try_sched_reset(ctrl);
+			return;
 		}
 		msleep(100);
 	}
 
-	if (ctrl->state != NVME_CTRL_LIVE)
+	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_LIVE))
 		return;
 
 	nvme_start_queues(ctrl);
@@ -3855,7 +3870,13 @@ static void nvme_handle_aen_notice(struct nvme_ctrl *ctrl, u32 result)
 		nvme_queue_scan(ctrl);
 		break;
 	case NVME_AER_NOTICE_FW_ACT_STARTING:
-		queue_work(nvme_wq, &ctrl->fw_act_work);
+		/*
+		 * We are (ab)using the RESETTING state to prevent subsequent
+		 * recovery actions from interfering with the controller's
+		 * firmware activation.
+		 */
+		if (nvme_change_ctrl_state(ctrl, NVME_CTRL_RESETTING))
+			queue_work(nvme_wq, &ctrl->fw_act_work);
 		break;
 #ifdef CONFIG_NVME_MULTIPATH
 	case NVME_AER_NOTICE_ANA:
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
