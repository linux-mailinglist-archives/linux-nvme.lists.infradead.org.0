Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC452FD0E
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 17:39:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/v8Yxd9prEymzCeTTEaMh8HhmaNWEi5JyesPIANBiAE=; b=Wpq
	QV6iJ/6ylE08XXFAzMf2MidHJTXDWfnNon551Hik4wkclvhIHKP5kXyvDQ9PGyyYKdbOIaMhozgX8
	9wuYEVhBzksYP/YkwOEIrRI5RI+WxWRxRJoFSLkcSsogtuBDvIGeb9EcwPmojvAsn2EO0HWZBQ0DQ
	vfpQpRINcmYhdcQnjIasMq3TsK2Xs7FNpDqmGslTkbgXyQqQjqqKr/7AlQCf+B+eI3XcE6ay2Fz/0
	klGLzgO72qNR3dRQTolBDyoPAosYYjGO/tcHZ0GwUyVeUStz4Euy2HPIbU3SJs5HITrwU5Y/knn4b
	KbCbiSr4V+4gOFTz0TidZyEqY7BZuXg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLUrB-0001rq-4Y; Tue, 30 Apr 2019 15:39:45 +0000
Received: from mga03.intel.com ([134.134.136.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLUqy-0001jl-I5
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 15:39:33 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 30 Apr 2019 08:39:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.60,414,1549958400"; d="scan'208";a="147127654"
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by fmsmga007.fm.intel.com with ESMTP; 30 Apr 2019 08:39:30 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvme/pci: Shutdown on timeout during deletion
Date: Tue, 30 Apr 2019 09:33:40 -0600
Message-Id: <20190430153341.25433-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_083932_658528_6DEA30B1 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [134.134.136.65 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Yufen Yu <yuyufen@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We do not restart a controller in a deleting state for timeout errors.
When in this state, unblock potential request dispatchers with failed
completions by shutting down the controller on timeout detection.

Reported-by: Yufen Yu <yuyufen@huawei.com>
Signed-off-by: Keith Busch <keith.busch@intel.com>
---
 drivers/nvme/host/pci.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index c1eecde6b853..c5a997727c4f 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1276,6 +1276,7 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 	struct nvme_dev *dev = nvmeq->dev;
 	struct request *abort_req;
 	struct nvme_command cmd;
+	bool shutdown = false;
 	u32 csts = readl(dev->bar + NVME_REG_CSTS);
 
 	/* If PCI error recovery process is happening, we cannot reset or
@@ -1312,12 +1313,14 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 	 * shutdown, so we return BLK_EH_DONE.
 	 */
 	switch (dev->ctrl.state) {
+	case NVME_CTRL_DELETING:
+		shutdown = true;
 	case NVME_CTRL_CONNECTING:
 	case NVME_CTRL_RESETTING:
 		dev_warn_ratelimited(dev->ctrl.device,
 			 "I/O %d QID %d timeout, disable controller\n",
 			 req->tag, nvmeq->qid);
-		nvme_dev_disable(dev, false);
+		nvme_dev_disable(dev, shutdown);
 		nvme_req(req)->flags |= NVME_REQ_CANCELLED;
 		return BLK_EH_DONE;
 	default:
-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
