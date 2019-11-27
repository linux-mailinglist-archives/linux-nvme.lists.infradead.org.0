Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46DE510B4EF
	for <lists+linux-nvme@lfdr.de>; Wed, 27 Nov 2019 18:59:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PPXl/+v60mGaBpXC0knXQnI/a+MuE0EnaRBtXJEzTMM=; b=KAxrpOmeSmmgVN
	jt3cz4SGui3/ZZVeNV1BuI2Hb6tqv2Si7sMsOvyx/gjH6YWl/3e913Xi6wTiOlhnsPh4BPsXqswta
	0nSiVkgrZdpEsdRX295qDzGfrAxTRRI+3MvvEwUgQWZwq2Wtbz2eIx9O3Yv9kRAt5E/hgvJng7BwQ
	kWY9FwhVfUL6YGeMv3uu4P9o+FeTersr+h1ifQuVbscBFAUy9GGYWPHjWSv6v02j/VsKytpl7BjqT
	Lv3o9sIU52xtp8Ywo7urvnjwgO7bmNnmULqYozxoXp0RVSY5IoxEUVlohr3E42vgcHiVB9MMyzoJW
	ElGu5GK++PnMmBQCe88Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia1b1-000783-TX; Wed, 27 Nov 2019 17:59:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia1aT-0006os-7u
 for linux-nvme@lists.infradead.org; Wed, 27 Nov 2019 17:58:51 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E3D2120866;
 Wed, 27 Nov 2019 17:58:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1574877529;
 bh=8KlTY+tdPeHRajIwps6mM2n79d4HKLNAYBf0jdm5+0s=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pCmQmBouWGdGquYi8oyfwbvzYyUYgRYxiaUoNyOyLqew7+VPbtm/f4kTFdDSj6X9J
 C4M89yQPw1dteMeDgK9LphAIlZRdmfGRXoCQuQnjiysot2exv5ejSmaKFNjBAljxsU
 Z/e2ZRyeGma1oJB3dGFkKyMaQndsVGwwiE0k/H00=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 2/4] nvme/pci: Mask legacy and MSI in threaded handler
Date: Thu, 28 Nov 2019 02:58:22 +0900
Message-Id: <20191127175824.1929-3-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191127175824.1929-1-kbusch@kernel.org>
References: <20191127175824.1929-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_095849_298649_C4825FBA 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, bigeasy@linutronix.de, helgaas@kernel.org,
 ming.lei@redhat.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Local interrupts are re-enabled when the nvme irq thread is
woken. Subsequent MSI or a level triggered legacy interrupts may restart
the nvme irq check while the thread handler is running. This unnecessarily
spends CPU cycles and potentially triggers spurious interrupt detection,
disabling our NVMe irq.

Use the NVMe interrupt mask/clear registers to disable controller
interrupts while the nvme bottom half processes completions.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 27 +++++++++++++++++++++++++++
 1 file changed, 27 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 9d307593b94f..c5b837cba730 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1048,6 +1048,28 @@ static irqreturn_t nvme_irq_check(int irq, void *data)
 	return IRQ_NONE;
 }
 
+static irqreturn_t nvme_irq_thread_msi(int irq, void *data)
+{
+	struct nvme_queue *nvmeq = data;
+	struct nvme_dev *dev = nvmeq->dev;
+
+	nvme_irq(irq, data);
+	writel(1 << nvmeq->cq_vector, dev->bar + NVME_REG_INTMC);
+	return IRQ_HANDLED;
+}
+
+static irqreturn_t nvme_irq_check_msi(int irq, void *data)
+{
+	struct nvme_queue *nvmeq = data;
+	struct nvme_dev *dev = nvmeq->dev;
+
+	if (nvme_cqe_pending(nvmeq)) {
+		writel(1 << nvmeq->cq_vector, dev->bar + NVME_REG_INTMS);
+		return IRQ_WAKE_THREAD;
+	}
+	return IRQ_NONE;
+}
+
 /*
  * Poll for completions any queue, including those not dedicated to polling.
  * Can be called from any context.
@@ -1502,6 +1524,11 @@ static int queue_request_irq(struct nvme_queue *nvmeq)
 	int nr = nvmeq->dev->ctrl.instance;
 
 	if (use_threaded_interrupts) {
+		/* MSI and Legacy use the same NVMe IRQ masking */
+		if (!pdev->msix_enabled)
+			return pci_request_irq(pdev, nvmeq->cq_vector,
+				nvme_irq_check_msi, nvme_irq_thread_msi,
+				nvmeq, "nvme%dq%d", nr, nvmeq->qid);
 		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
 				nvme_irq, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
 	} else {
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
