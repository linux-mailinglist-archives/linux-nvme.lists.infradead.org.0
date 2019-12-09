Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 86CCB11733E
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Dec 2019 18:57:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t2hz9qDk/4PW0uxfxi0eT/fObSkOFmsCLEGknP7AMi0=; b=E4BHyipoLI5/Wx
	xh5dCiY2KQ4Xa8q+qqj26/e23+2/1sPbaRJIbuLA3xrP+pOMnj3rnnE5/R4FXFZRhjlqcTf60FrSM
	vtyiptRPh4UV++o4a19rhVd4jYu974SyYZiFU4BaAl9IdJeX70qiB4QVzhyozSYKdpZRBHtcFKje5
	XPRVmW+U+VLZwQ5Dpln7p3TVqF2kwC+XMEEGlAnp7za9nSJ+zRF1ilCTWt9K485A0OXeGuvJ4rfwe
	hrPoFK9mj8Irqak3NKPH/NPNLgBKYWgVw1ZTpymDEM8AxpZiDaEKTBtb1H/ugfheEvZpxEEfEcGVB
	VW41dqwwMaQnsP4JRxfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNHZ-00062X-6k; Mon, 09 Dec 2019 17:57:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNGx-0005kE-F9
 for linux-nvme@lists.infradead.org; Mon, 09 Dec 2019 17:56:42 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 48F06214AF;
 Mon,  9 Dec 2019 17:56:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575914199;
 bh=mYFGImdO8UnGqTAmESkiigZpAgvVQnaSxtic7qPpBVw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=GUF3ZplvYBhrowaompJ8aPUfWiccLokUICYO3K7cE/ZQgildZo4vmoCXxtO1nrkv0
 dI8KgDsFjqyP0R83mLXuFBGG8ze/bj6qb9tV0/MW3vuoV4DT2qm+pNErQGYHQXfQ+M
 7L3jB62rbh29jFZ9pyWV4dMR+x9owWBKUUJ3rXBk=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCHv3 1/4] nvme/pci: Disable interrupts for threaded handler
Date: Tue, 10 Dec 2019 02:56:19 +0900
Message-Id: <20191209175622.1964-2-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191209175622.1964-1-kbusch@kernel.org>
References: <20191209175622.1964-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_095639_522047_E10E48E6 
X-CRM114-Status: GOOD (  11.26  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: sagi@grimberg.me, bigeasy@linutronix.de, ming.lei@redhat.com,
 Keith Busch <kbusch@kernel.org>, tglx@linutronix.de, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The nvme driver had always left the device in a state capable of sending
more interrupts while completions were being handled in the thread.
Re-entering the primary handler disrupts the threaded handler since
they run on the same CPU. The primary handler may also be detected as
spurious when it returns IRQ_WAKE_THREAD if the threaded handler does
not finish frequently enough due to completing many requests.

Disable the irq to ensure the primary handler will not be re-entered while
the threaded handler is running. Use the nvme specific interrupt mask
set/clear registers for MSI and legacy, and rely on the irq_flow_handler
to mask the interrupt for MSIx.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 26 ++++++++++++++++++++++----
 1 file changed, 22 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 365a2ddbeaa7..a0138e3ca0b9 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1036,12 +1036,30 @@ static irqreturn_t nvme_irq(int irq, void *data)
 	return ret;
 }
 
+static irqreturn_t nvme_irq_thread(int irq, void *data)
+{
+	struct nvme_queue *nvmeq = data;
+	irqreturn_t ret = nvme_irq(irq, data);
+
+	if (!to_pci_dev(nvmeq->dev->dev)->msix_enabled)
+		writel(1 << nvmeq->cq_vector, nvmeq->dev->bar + NVME_REG_INTMC);
+
+	enable_irq(irq);
+	return ret;
+}
+
 static irqreturn_t nvme_irq_check(int irq, void *data)
 {
 	struct nvme_queue *nvmeq = data;
-	if (nvme_cqe_pending(nvmeq))
-		return IRQ_WAKE_THREAD;
-	return IRQ_NONE;
+
+	if (!nvme_cqe_pending(nvmeq))
+		return IRQ_NONE;
+
+	if (!to_pci_dev(nvmeq->dev->dev)->msix_enabled)
+		writel(1 << nvmeq->cq_vector, nvmeq->dev->bar + NVME_REG_INTMS);
+
+	disable_irq_nosync(irq);
+	return IRQ_WAKE_THREAD;
 }
 
 /*
@@ -1499,7 +1517,7 @@ static int queue_request_irq(struct nvme_queue *nvmeq)
 
 	if (use_threaded_interrupts) {
 		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
-				nvme_irq, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
+			nvme_irq_thread, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
 	} else {
 		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq,
 				NULL, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
