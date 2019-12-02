Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF10410F2CC
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 23:22:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bnLvxy2pMayzMlQRuuri+7WsFIYkEfEFG5s7wa9DAcc=; b=Y/C/KrTummPRBj
	PXFkOdURDqtBngbMioEBBhjD1H9GQuLqb5AI+FKE6PT4tcViwgf68/SJjyq6vyEY86QzJM6wDAXGQ
	kSXBojohQnMyjCqygrlk5K7u+aRBDHrw/8Gu8Z6HvHAooMC4/Iuymrc/8y1vt3vnDZz/Ed8VMI1W9
	K3Z6jAtNV30GZVikLnGe1DnM/UrCrDDwk+gsWveVpkJpJ9SB/y1S+aPcwaPVwaAxrV908EmC74XRp
	x3Wc8SRUGjZHWpovZ59hGCmrJV5lxX6cYTv83HU1ykP8mWBpzswV0NHQSsjYtinimWZ14pcmir3xr
	9/9cZK4DWStctfdJIekw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibu5R-00075p-7A; Mon, 02 Dec 2019 22:22:33 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibu54-0006zg-5f
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 22:22:14 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 249EF20848;
 Mon,  2 Dec 2019 22:22:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575325329;
 bh=gARiSK1SvEF5YFEymkce9IhftRA2UBiMMSz1KE3T1ZQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=yGTQVhAtu1TT5yW0Skz5RwC/sCXJ3ECqnDaxQQDL2oUpW2m1QIXX1AZu9vAzW77Xe
 HmJIXHowWTCQMA/oihkL8Hi30lnMxh/LDlF3i+j8xrNDY8jPf4uy/9Jlihor+mTa8W
 RV9UvTWFNXQjCgsQ7oFQJeDVpTCx7kqHIUpugrUE=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 1/3] nvme/pci: Poll the cq in the primary irq handler
Date: Tue,  3 Dec 2019 07:22:04 +0900
Message-Id: <20191202222206.2225-2-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191202222206.2225-1-kbusch@kernel.org>
References: <20191202222206.2225-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_142210_234404_0389A4AC 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, bigeasy@linutronix.de, ming.lei@redhat.com,
 hch@lst.de, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The nvme threaded interrupt handler reduces CPU time spent in hard irq
context, but waking it increases latency for low queue depth workloads.

Poll the completion queue once from the primary handler and wake the
thread only if more completions remain after. Since there is a window
of time where the threaded and primary handlers may run simultaneously,
add a new nvmeq flag so that the two can synchronize which owns processing
the queue.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 4022a872d29c..c811c0984fe0 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -186,6 +186,7 @@ struct nvme_queue {
 #define NVMEQ_SQ_CMB		1
 #define NVMEQ_DELETE_ERROR	2
 #define NVMEQ_POLLED		3
+#define NVMEQ_THREAD		4
 	u32 *dbbuf_sq_db;
 	u32 *dbbuf_cq_db;
 	u32 *dbbuf_sq_ei;
@@ -1047,15 +1048,27 @@ static irqreturn_t nvme_irq_thread(int irq, void *data)
 		__pci_msix_desc_mask_irq(irq_get_msi_desc(irq), 0);
 	else
 		writel(1 << nvmeq->cq_vector, nvmeq->dev->bar + NVME_REG_INTMC);
+	clear_bit(NVMEQ_THREAD, &nvmeq->flags);
 	return IRQ_HANDLED;
 }
 
 static irqreturn_t nvme_irq_check(int irq, void *data)
 {
 	struct nvme_queue *nvmeq = data;
+	irqreturn_t ret;
 
 	if (!nvme_cqe_pending(nvmeq))
 		return IRQ_NONE;
+
+	if (test_and_set_bit(NVMEQ_THREAD, &nvmeq->flags))
+		return IRQ_NONE;
+
+	ret = nvme_irq(irq, data);
+	if (!nvme_cqe_pending(nvmeq)) {
+		clear_bit(NVMEQ_THREAD, &nvmeq->flags);
+		return ret;
+	}
+
 	if (to_pci_dev(nvmeq->dev->dev)->msix_enabled)
 		__pci_msix_desc_mask_irq(irq_get_msi_desc(irq), 1);
 	else
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
