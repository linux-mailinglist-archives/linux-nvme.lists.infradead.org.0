Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F206910F2CD
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Dec 2019 23:22:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NekvGMa4mB4jNMGyfjBU8uZwvfYaw6cD/3H7T+NStjc=; b=j7ttWnE0+WtHLV
	Pyh+sWph5vL1HkHBbopGN/l7sP/ocDnL3J1rNblFqpAMj1choOKBaFF/l1lEfcg+Ger8KDZcYDmRR
	hZ0gdNdT+PZadNZtBPNa+TlDza9UeqwZAYU3tpIRQ0VPqcbo0qItv5DQPo71giD3OQISplGRQLQ+x
	t+e7v3vEN1pNTdlq66zw1IDodH+8fmeGeWqTO2ToKRQp/SZ8HEwjR+XufPpWkB2EQ6T3PtSuHseJm
	Iy+K1R0PQIP/KMP82+pVxV5qzyYm9OGkKe0tNKQX4gaL4Yvuz1QvtyWj1Am6pjWdWQDOW8OEWZ4v9
	Ome8J7vDZQhKTzjC8ovQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibu5g-0007JF-Ee; Mon, 02 Dec 2019 22:22:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibu55-0006zy-6q
 for linux-nvme@lists.infradead.org; Mon, 02 Dec 2019 22:22:14 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2CDF92084B;
 Mon,  2 Dec 2019 22:22:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575325330;
 bh=CzNRtaiOi7BWcDYM66uX3CjvuxiHXNXv++Puruukb5w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=H7u1D5q38xyalOV4O+yhbr0Kyt+Mr0yWE1rbR0LD8ZLLLvMRoUbqZvBCat3fSxGSe
 LJP838TiGi2HkNUpy513Q0XFClFTKCm1v9PQxZUKA+xLengYp0hprtigp3Fb//8D1w
 rhE3J5UOKctLfCdeFHX8dnlUykz1OYYNMt8SmRXw=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 2/3] nvme/pci: Remove use_threaded_interrupts parameter
Date: Tue,  3 Dec 2019 07:22:05 +0900
Message-Id: <20191202222206.2225-3-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191202222206.2225-1-kbusch@kernel.org>
References: <20191202222206.2225-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191202_142211_368642_AAFD7468 
X-CRM114-Status: GOOD (  10.01  )
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

The non-threaded nvme completion handler provides no additional benefit
over the threaded one. Remove the option.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index c811c0984fe0..634c96bafb70 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -42,9 +42,6 @@
 #define NVME_MAX_KB_SZ	4096
 #define NVME_MAX_SEGS	127
 
-static int use_threaded_interrupts;
-module_param(use_threaded_interrupts, int, 0);
-
 static bool use_cmb_sqes = true;
 module_param(use_cmb_sqes, bool, 0444);
 MODULE_PARM_DESC(use_cmb_sqes, "use controller's memory buffer for I/O SQes");
@@ -1529,14 +1526,8 @@ static int queue_request_irq(struct nvme_queue *nvmeq)
 	struct pci_dev *pdev = to_pci_dev(nvmeq->dev->dev);
 	int nr = nvmeq->dev->ctrl.instance;
 
-	if (use_threaded_interrupts) {
-		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
-				nvme_irq_thread, nvmeq, "nvme%dq%d", nr,
-				nvmeq->qid);
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
