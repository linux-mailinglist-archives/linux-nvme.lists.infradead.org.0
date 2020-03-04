Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D96ED1797A6
	for <lists+linux-nvme@lfdr.de>; Wed,  4 Mar 2020 19:13:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wc7CeCBkrf2dVSiYR4iUqUY6TkGA9GrJT0UJzjsLf08=; b=kbhKZe4Xhv4oma
	LmQFMQQvlCqOgsJ3+LQQqjtwFi1AZV1DhUmVrTUddyfyZkN+1iE3Ukdio9yKDkW/pT10hwgXaGuPu
	c6fwFYz5lKihmItpz/aobDu5xUSFYN2vjN7FMRxflFJLFl6GfWG1B2IQLwt+i3qbhlHS9G+OjicyH
	ylVoBy9+veAH6X5DN/HVKan7WvZUqZN8s46sXpbW6txcQkIZcvyF5W9Bq3i9wnVbSrPxAlnHxYub+
	p+wB9qWU1zkgmicMmjqKfuz1nKZLPX0S9KTElH5dGK/HKOdPaDvEb+91pqPrzlJH42pC0ue7fBEEh
	r1KFdWaXgRfoCHTOTw0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9YWc-0000hx-PG; Wed, 04 Mar 2020 18:13:42 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9YVr-0000G8-J0
 for linux-nvme@lists.infradead.org; Wed, 04 Mar 2020 18:12:56 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E518724677;
 Wed,  4 Mar 2020 18:12:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583345575;
 bh=rwNb+qFjwk2xUGsQ4AbUo5xSpY2I5SqPObhs/nLM/PQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Su0SW9xzcF5xPaKuP5Tu+ot6c0OMxUOucG1/EctkXgg6Y0ghrDTzkiPaK0u4TRYk0
 V7ICntGNVL2lSzYV87UbOmv11nxwEaSA0+qLjY5PokWlcUjHmUf5xc/hXZo4pg4Cpb
 3/jKgmbPz49EE3r92z+DYmTy1R6Tzt6WDr6hyq64=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCHv2 3/3] nvme-pci: Simplify nvme_poll_irqdisable
Date: Wed,  4 Mar 2020 10:12:46 -0800
Message-Id: <20200304181246.481835-4-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200304181246.481835-1-kbusch@kernel.org>
References: <20200304181246.481835-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200304_101255_643697_D2ADCF42 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, bijan.mottahedeh@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The timeout handler can use the existing nvme_poll() if it needs to
check a polled queue, allowing nvme_poll_irqdisable() to handle only
irq driven queues for the remaining callers.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 38 ++++++++++++++++----------------------
 1 file changed, 16 insertions(+), 22 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 02f22c63adcf..227e2aed7e08 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1020,35 +1020,20 @@ static irqreturn_t nvme_irq_check(int irq, void *data)
 }
 
 /*
- * Poll for completions any queue, including those not dedicated to polling.
+ * Poll for completions for any interrupt driven queue
  * Can be called from any context.
  */
-static int nvme_poll_irqdisable(struct nvme_queue *nvmeq)
+static void nvme_poll_irqdisable(struct nvme_queue *nvmeq)
 {
 	struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
-	int found;
 
-	/*
-	 * For a poll queue we need to protect against the polling thread
-	 * using the CQ lock.  For normal interrupt driven threads we have
-	 * to disable the interrupt to avoid racing with it.
-	 */
-	if (test_bit(NVMEQ_POLLED, &nvmeq->flags)) {
-		spin_lock(&nvmeq->cq_poll_lock);
-		found = nvme_process_cq(nvmeq);
-		spin_unlock(&nvmeq->cq_poll_lock);
-	} else {
-		disable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
-		found = nvme_process_cq(nvmeq);
-		enable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
-	}
-
-	return found;
+	disable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
+	nvme_process_cq(nvmeq);
+	enable_irq(pci_irq_vector(pdev, nvmeq->cq_vector));
 }
 
-static int nvme_poll(struct blk_mq_hw_ctx *hctx)
+static int __nvme_poll(struct nvme_queue *nvmeq)
 {
-	struct nvme_queue *nvmeq = hctx->driver_data;
 	bool found;
 
 	if (!nvme_cqe_pending(nvmeq))
@@ -1061,6 +1046,11 @@ static int nvme_poll(struct blk_mq_hw_ctx *hctx)
 	return found;
 }
 
+static int nvme_poll(struct blk_mq_hw_ctx *hctx)
+{
+	return __nvme_poll(hctx->driver_data);
+}
+
 static void nvme_pci_submit_async_event(struct nvme_ctrl *ctrl)
 {
 	struct nvme_dev *dev = to_nvme_dev(ctrl);
@@ -1232,7 +1222,11 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 	/*
 	 * Did we miss an interrupt?
 	 */
-	nvme_poll_irqdisable(nvmeq);
+	if (!test_bit(NVMEQ_POLLED, &nvmeq->flags))
+		nvme_poll_irqdisable(nvmeq);
+	else
+		__nvme_poll(nvmeq);
+
 	if (blk_mq_request_completed(req)) {
 		dev_warn(dev->ctrl.device,
 			 "I/O %d QID %d timeout, completion polled\n",
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
