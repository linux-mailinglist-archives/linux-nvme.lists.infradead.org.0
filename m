Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C999B837D
	for <lists+linux-nvme@lfdr.de>; Thu, 19 Sep 2019 23:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UW2/0467V6FJ9++Tuy944C77cO/+hMeHQw3jVC6HTBs=; b=AIcHrWJW3e6/YL
	vbqhx412FA3eE4bynob7gYlfYO1P8G6tjXxJ3+XhNkR+03xLiqF4QxBYTNvwY5pFOisZ0bV1OZDHf
	AHAt2x+Dqx9NmYBUOW1EeX6hLXArEbIbcyolazPGDMtx6Ri6+5HUqnu+z/RxH2E5kE9SZL0sEvnPt
	ki3Y735uUFpUpnLcwTjk+oa+vdzutp5YoXBRLIgQy4Vm0d1RKcSSj2ntz/6yQjYjTIBHYQPLwJ2ny
	Ph7M9Eremi7E1xta3MWlYw+PzFqORj7osiRhCfRVmfro9RWNXanDe65gKFQ7J+rq9GO29zSSP68Xd
	UnU+KyqHhY7ivZDNAZfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iB45R-0003yE-Sj; Thu, 19 Sep 2019 21:35:38 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iB44X-0002Du-ML
 for linux-nvme@lists.infradead.org; Thu, 19 Sep 2019 21:34:42 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9ED7021928;
 Thu, 19 Sep 2019 21:34:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568928881;
 bh=pvgcdsmA7N3XYYkS6dVd/Tf2GOfLDkMrLaf8CPW0C+Q=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=rvb8s7i6zPv+HVfIs/m1pvdTVzLZxUV89aqr1a1q/ekn4FF4IoFoU99pux9U7gnxL
 2Y1/HQ0BJi2QlXc1YxbH/+PcDq7b8JZi67fkRa6jQ865gvJBFa4IQYU7mKjXMePhPJ
 j2eikWYh0lv8QFuqm5EHfwAyHkTTjf2MecTyf30c=
From: kbusch@kernel.org
To: linux-nvme@lists.infradead.org, Sagi Grimberg <sagi@grimberg.me>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCHv2 3/6] nvme: Restart request timers in resetting state
Date: Fri, 20 Sep 2019 06:34:28 +0900
Message-Id: <20190919213431.7864-4-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190919213431.7864-1-kbusch@kernel.org>
References: <20190919213431.7864-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_143441_746067_6FA68562 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>,
 Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <kbusch@kernel.org>

A controller in the resetting state has not yet completed its recovery
actions. The pci and fc transports were already doing this, so update
the remaining transports to not attempt additional recovery in this
state. Instead, just restart the request timer.

Reviewed-by: James Smart <james.smart@broadcom.com>
Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/rdma.c | 8 ++++++++
 drivers/nvme/host/tcp.c  | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index dfa07bb9dfeb..c753f2cdfeb5 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1694,6 +1694,14 @@ nvme_rdma_timeout(struct request *rq, bool reserved)
 	dev_warn(ctrl->ctrl.device, "I/O %d QID %d timeout\n",
 		 rq->tag, nvme_rdma_queue_idx(queue));
 
+	/*
+	 * Restart the timer if a controller reset is already scheduled. Any
+	 * timed out commands would be handled before entering the connecting
+	 * state.
+	 */
+	if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
+		return BLK_EH_RESET_TIMER;
+
 	if (ctrl->ctrl.state != NVME_CTRL_LIVE) {
 		/*
 		 * Teardown immediately if controller times out while starting
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 4ffd5957637a..e6729cc7656c 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -2044,6 +2044,14 @@ nvme_tcp_timeout(struct request *rq, bool reserved)
 	struct nvme_tcp_ctrl *ctrl = req->queue->ctrl;
 	struct nvme_tcp_cmd_pdu *pdu = req->pdu;
 
+	/*
+	 * Restart the timer if a controller reset is already scheduled. Any
+	 * timed out commands would be handled before entering the connecting
+	 * state.
+	 */
+	if (ctrl->ctrl.state == NVME_CTRL_RESETTING)
+		return BLK_EH_RESET_TIMER;
+
 	dev_warn(ctrl->ctrl.device,
 		"queue %d: timeout request %#x type %d\n",
 		nvme_tcp_queue_id(req->queue), rq->tag, pdu->hdr.type);
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
