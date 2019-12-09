Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D5D7F117344
	for <lists+linux-nvme@lfdr.de>; Mon,  9 Dec 2019 18:57:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGeP0Hr3b6LufH3OJR4HEpaXsXkqjvuQz6dliwt9Zgc=; b=g5cZg8hvLlFOJe
	lznnag8CCE3vTi4NAt9vQebVDCd9pb73/nw97EpRTIryYwJGnZi63O63Xc2kKOUcq+lZSqvlYWZ0O
	26uHK6VgjhRse7zeCAGJUMUpQ/4BonH4KWAANdeOdBAU3t8TirjUWxzOxpC6zSV4hj8y74Y0UWubv
	5BMlac9XusYn2SZRbqzqUge6L2SoHHSvtfdKqlL3/GgC1hZi0MW5Z/1aEedNOLkT4FoVjaVdpaRvL
	BG4aAGcJyUWaiqHKtpjR1qlCXCHvkOBA63JXv4UeUOaXPBiGJXIDSPl+3IUWJTBGWDngIGePGrtvz
	aLMkao5SOc9TuYPWVWOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNHr-0006JJ-M6; Mon, 09 Dec 2019 17:57:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNGz-0005kx-Rp
 for linux-nvme@lists.infradead.org; Mon, 09 Dec 2019 17:56:43 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6D63222C4;
 Mon,  9 Dec 2019 17:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575914201;
 bh=4wjaVh7RvcKVNpspy14FSuhHIl0r3Pnybdm0v/Gg5IY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SFoZcOzLGYzaE6HlXLZEy1Gf7oaojJaQ+kRBm8GR1X+U2QrqHPcsIADtcJm/8pQQe
 YVVIRHjhQZsHwu9I5OZ2tM0eKvrU66/qP0ltCooYY+U27p8rAtDoyYvSmNjbmqX1EU
 oNIeD8JzR0IpDkXLfwfnOqR01XKQj+TsZgdv69gQ=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [PATCHv3 3/4] nvme/pci: Remove use_threaded_interrupts
Date: Tue, 10 Dec 2019 02:56:21 +0900
Message-Id: <20191209175622.1964-4-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191209175622.1964-1-kbusch@kernel.org>
References: <20191209175622.1964-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_095641_915306_535A33D8 
X-CRM114-Status: UNSURE (   9.89  )
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

The nvme threaded interrupt handling provides quick completions for
latency sensitive workloads, and threaded handlers for more IOPS intensive
ones. Remove the use_threaded_interrupts nvme module parameter since
leaving it disabled should not be providing a benefit.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 12 ++----------
 1 file changed, 2 insertions(+), 10 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index e415fadf7331..28e08c5ab412 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -40,9 +40,6 @@
 #define NVME_MAX_KB_SZ	4096
 #define NVME_MAX_SEGS	127
 
-static int use_threaded_interrupts;
-module_param(use_threaded_interrupts, int, 0);
-
 static bool use_cmb_sqes = true;
 module_param(use_cmb_sqes, bool, 0444);
 MODULE_PARM_DESC(use_cmb_sqes, "use controller's memory buffer for I/O SQes");
@@ -1519,13 +1516,8 @@ static int queue_request_irq(struct nvme_queue *nvmeq)
 	struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
 	int nr = nvmeq->dev->ctrl.instance;
 
-	if (use_threaded_interrupts) {
-		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
-			nvme_irq_thread, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
-	} else {
-		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq,
-				NULL, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
-	}
+	return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
+		nvme_irq_thread, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
 }
 
 static void nvme_init_queue(struct nvme_queue *nvmeq, u16 qid)
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
