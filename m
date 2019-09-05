Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCE47AA5D9
	for <lists+linux-nvme@lfdr.de>; Thu,  5 Sep 2019 16:28:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=n7jhRLwP+84uQgD/MXuS6imm3wFPwN3uzaf9f2rxwSo=; b=G0q
	cR7H+jOXwMF+MtCMRx/HL2exMkyCOVtKTe2s5HLFQjekP0sGh/CpxYSBkntnq8Lmlj8g6CiMBIkmx
	6RT1Uqnk2NLiM7OvROMapzozkvuL2cesj0a86ltRsRY6hocikkWKuRvAshvI5Usl2+BCmiO+Tc0Dr
	uSFUfl8fOx3hZHqE5KP0ZbvhbanhDyVpDmWS7ChFOVoPfWEAqhiKcQ+t+CPrrynfpO8RGg0yKn/t/
	eyDSe1P+sqza/n8wzQAf1lCD97jUEYnvEO2+9QQk8WB6JjRf1jKVv3pKv7AZI58Cj7oRowNtzeQis
	XuSnaLFZu7Qwfgdx4FCa09oe8umvxZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5sk6-0007EJ-CD; Thu, 05 Sep 2019 14:28:10 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5sjs-0007Cr-8f
 for linux-nvme@lists.infradead.org; Thu, 05 Sep 2019 14:27:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 05 Sep 2019 07:27:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,470,1559545200"; d="scan'208";a="187991049"
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga006.jf.intel.com with ESMTP; 05 Sep 2019 07:27:54 -0700
From: Keith Busch <kbusch@kernel.org>
To: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH 1/5] nvme: Restart request timers in resetting state
Date: Thu,  5 Sep 2019 08:26:03 -0600
Message-Id: <20190905142607.24897-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_072756_318189_91B95412 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -4.0 (----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-4.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Edmund Nadolski <edmund.nadolski@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A controller in the resetting state has not yet completed its recovery
actions. Don't attempt additional recovery in this state and just restart
the timer instead.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/rdma.c | 8 ++++++++
 drivers/nvme/host/tcp.c  | 8 ++++++++
 2 files changed, 16 insertions(+)

diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index 5e30bcf3fe37..0ac4460a3de3 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1688,6 +1688,14 @@ nvme_rdma_timeout(struct request *rq, bool reserved)
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
index 0a0263a364f2..994a2c3caaca 100644
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
2.14.5


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
