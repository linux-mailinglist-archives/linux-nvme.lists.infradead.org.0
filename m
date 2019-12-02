Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DBA4F10F2C0
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 23:18:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3Q9xC1Wi6LMuOH7ywfF9xwq/ZH+8jK8rwsINL5jedkk=; b=NFPSZlDSnjLWX5
	T+x4v7iDeNg3m3PYy4gNEJEXBKuzOIgX4Ro+ibeSezqg+5SLPlhCJc3MnaatmeSDTC0zIPHtc/ovI
	V8UQui0w/LadN1uFpOBSL2YFA8Ss7eY1LkeRhbQXhsE+EpaaNjyi6Qw9F21oLJc39XMxd23dM/hKr
	WW/CEvaf/otG9QDp0U2o7NP9n/sHBd3uGf0CnLZ72NsX+g7uNHcyd8WGr48IheUryHtrf+XQAlblH
	ofR05a0aX3LQPkCxzXbVGNSdBj1/chVs6AN+0WoRLU246QZQpGBc9WQp4zkShIzV+BbusWzYzxFv9
	BwD/sLd010xycyt6uGtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibu1l-0004fm-QK; Mon, 02 Dec 2019 22:18:45 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibu1h-0004fO-8j
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 22:18:42 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4AB9220718;
 Mon,  2 Dec 2019 22:18:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575325120;
 bh=g1CmRXueHMSPzV/HQtbNAB3vAS7HtqTluTpqs1GXD3Y=;
 h=From:To:Cc:Subject:Date:From;
 b=qbacTdyZPkX1m0A1sdIVBfLJQa5iyD7V+5Hcn3jcyFz7bHlAANGzWf0dxdoz7RWu/
 xVNaMBrKfmxZT9RaLv2CUJEp+jOxtmjYJc0wb07N+0aQ8hEgthGVqlecBB76rzNKqV
 36LZ1pOviF3LdXZbpRka1l6vSxDWOIwK1Vfr9kpU=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme/pci: Remove last_cq_head
Date: Tue,  3 Dec 2019 07:18:29 +0900
Message-Id: <20191202221829.1940-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_141841_327498_ED80C4BD 
X-CRM114-Status: UNSURE (   8.54  )
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
Cc: Keith Busch <kbusch@kernel.org>, hch@lst.de, sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We had been saving the last_cq_head seen from an interrupt so that a
polled queue wouldn't mistakenly trigger spruious interrupt detection. We
don't poll interrupt driven queues any more, so saving this value is
pointless.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 9d307593b94f..0590640ba62c 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -176,7 +176,6 @@ struct nvme_queue {
 	u16 sq_tail;
 	u16 last_sq_tail;
 	u16 cq_head;
-	u16 last_cq_head;
 	u16 qid;
 	u8 cq_phase;
 	u8 sqes;
@@ -1026,10 +1025,7 @@ static irqreturn_t nvme_irq(int irq, void *data)
 	 * the irq handler, even if that was on another CPU.
 	 */
 	rmb();
-	if (nvmeq->cq_head != nvmeq->last_cq_head)
-		ret = IRQ_HANDLED;
 	nvme_process_cq(nvmeq, &start, &end, -1);
-	nvmeq->last_cq_head = nvmeq->cq_head;
 	wmb();
 
 	if (start != end) {
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
