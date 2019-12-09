Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46367117346
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Dec 2019 18:57:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W9ZS/tnzTD8EDzZQUdRn+lqxQH5/1mqo5ZEEk18dOiQ=; b=knQCXP6O8assdP
	zQ2YQykQyr+X0j/b+gOfkSCip2VGjJl4Rmp5QmWnRxPXCGIJNXnb7dI31hej0bZxoq8CGR/ciS39m
	X4PZn2K+m88Bg747ZK5lUw5xIhk8stOdrfeMJJXs0q5GuUIROY0+ZXu9c5gAFJg0vna9+ITSdKDWi
	SwxIGiZ/6zRO5TP9oPqNnb6sLC7I1KPTlXTpL3P95QAb/1AqrxKWF1TB1gLvV0bABEBCqfPjlWv6u
	QyQ/Drxcu5Ifui3ulfmXq+u2YjTNwYVkU5bPznzcNyjnFMD07LSSjfbdwRZZJc5GOraLpK8DkVdyg
	3QfEQ5Z7AWJq6G4vdAQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNI7-0006TN-A8; Mon, 09 Dec 2019 17:57:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNH1-0005lZ-1m
 for linux-nvme@lists.infradead.org; Mon, 09 Dec 2019 17:56:44 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D567A21556;
 Mon,  9 Dec 2019 17:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575914202;
 bh=rIcU2VgBvnj9KxnSJCGZQORrcdcTvs3PIJDntvpEHME=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=XgK2Omc5bhewO0UmuRA9Vwr/x6sa5SnsXlCsjjRDZy4GAvJU+g6bLPw8hINP31gyl
 scvh2CtNA9lNQwzHmhq0gVyVqXmrdH23Vfwt48RUS6CwswYpRVZ+CY+JVmbhIti1+V
 9a6C/9de0Gbi6kqECXSgTM7x9Bc0VGeEV0X4NHfc=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCHv3 4/4] nvme/pci: Poll threaded completions
Date: Tue, 10 Dec 2019 02:56:22 +0900
Message-Id: <20191209175622.1964-5-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191209175622.1964-1-kbusch@kernel.org>
References: <20191209175622.1964-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_095643_109572_82277DD3 
X-CRM114-Status: GOOD (  12.13  )
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

Poll for new completions in the nvme irq thread as long as it continues
to observe new ones are available.

We need to ensure other irq threads affinitized to the same CPU will
get a chance to run, so exit polling if we wrap the completion queue.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 22 ++++++++++++----------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 28e08c5ab412..487c6b3858fe 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1011,38 +1011,40 @@ static inline int nvme_process_cq(struct nvme_queue *nvmeq, u16 *start,
 	return found;
 }
 
-static irqreturn_t nvme_irq(int irq, void *data)
+static int nvme_irq(int irq, void *data)
 {
 	struct nvme_queue *nvmeq = data;
-	irqreturn_t ret = IRQ_NONE;
 	u16 start, end;
+	int found;
 
 	/*
 	 * The rmb/wmb pair ensures we see all updates from a previous run of
 	 * the irq handler, even if that was on another CPU.
 	 */
 	rmb();
-	nvme_process_cq(nvmeq, &start, &end, -1);
+	found = nvme_process_cq(nvmeq, &start, &end, -1);
 	wmb();
 
-	if (start != end) {
+	if (start != end)
 		nvme_complete_cqes(nvmeq, start, end);
-		return IRQ_HANDLED;
-	}
 
-	return ret;
+	return found;
 }
 
 static irqreturn_t nvme_irq_thread(int irq, void *data)
 {
 	struct nvme_queue *nvmeq = data;
-	irqreturn_t ret = nvme_irq(irq, data);
+	int found, total = 0;
+
+	do {
+		found = nvme_irq(irq, data);
+		total += found;
+	} while (found && total < nvmeq->q_depth * 2);
 
 	if (!to_pci_dev(nvmeq->dev->dev)->msix_enabled)
 		writel(1 << nvmeq->cq_vector, nvmeq->dev->bar + NVME_REG_INTMC);
-
 	enable_irq(irq);
-	return ret;
+	return IRQ_HANDLED;
 }
 
 static irqreturn_t nvme_irq_check(int irq, void *data)
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
