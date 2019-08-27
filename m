Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C94709E353
	for <lists+linux-nvme@lfdr.de>; Tue, 27 Aug 2019 10:55:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PVh7Paos6bzR3JXx/8ULnJFhDg95S2tHlzOXGP3/QRM=; b=Qs62bpadO3UAnp
	2utKi+8Mym8EiXx+PQ8SWKYmDTqXA4Rwb14qehyomo8fOTr1m8FRBaUIL3fN0fyGshOOZUxlj1t/+
	du4XDfmVGGfAnz7aYSdSrVNr8gM0KECZgwercZIR9OzNS+wBzSPhHmWvrCIar4TNIR/TkWm25Shvh
	c2oou3bECjrwHuTAY/OmZP9eXRVjjwnsdaAxDmTzRbEQVt4iY4pmdDmeqe75pC0yAyWqgD4i8pTx3
	nOvEdQsRr0ByWH0tRPAupfKk/cKCnDSr5byg/6o536KC1+WKaPQrTzQ35Mntv46ikogKt+q7Gtg2N
	eOL4yQZLkcZIqd2Le7yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2XFk-0004Zc-4U; Tue, 27 Aug 2019 08:55:00 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2XF5-00048P-KN
 for linux-nvme@lists.infradead.org; Tue, 27 Aug 2019 08:54:22 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4495D8BA2DA;
 Tue, 27 Aug 2019 08:54:19 +0000 (UTC)
Received: from localhost (ovpn-8-27.pek2.redhat.com [10.72.8.27])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 6D0CF5DA8B;
 Tue, 27 Aug 2019 08:54:18 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 3/4] nvme: pci: pass IRQF_RESCURE_THREAD to
 request_threaded_irq
Date: Tue, 27 Aug 2019 16:53:43 +0800
Message-Id: <20190827085344.30799-4-ming.lei@redhat.com>
In-Reply-To: <20190827085344.30799-1-ming.lei@redhat.com>
References: <20190827085344.30799-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.6.2
 (mx1.redhat.com [10.5.110.68]); Tue, 27 Aug 2019 08:54:19 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_015419_787426_A51B8E4B 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Jens Axboe <axboe@fb.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-scsi@vger.kernel.org,
 Peter Zijlstra <peterz@infradead.org>, Long Li <longli@microsoft.com>,
 John Garry <john.garry@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Ingo Molnar <mingo@redhat.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If one vector is spread on several CPUs, usually the interrupt is only
handled on one of these CPUs. Meantime, IO can be issued to the single
hw queue from different CPUs concurrently, this way is easy to cause
IRQ flood and CPU lockup.

Pass IRQF_RESCURE_THREAD in above case for asking genirq to handle
interrupt in the rescurd thread when irq flood is detected.

Cc: Long Li <longli@microsoft.com>
Cc: Ingo Molnar <mingo@redhat.com>,
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: John Garry <john.garry@huawei.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Hannes Reinecke <hare@suse.com>
Cc: linux-nvme@lists.infradead.org
Cc: linux-scsi@vger.kernel.org
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/nvme/host/pci.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 45a80b708ef4..0b8d49470230 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1501,8 +1501,21 @@ static int queue_request_irq(struct nvme_queue *nvmeq)
 		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq_check,
 				nvme_irq, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
 	} else {
-		return pci_request_irq(pdev, nvmeq->cq_vector, nvme_irq,
-				NULL, nvmeq, "nvme%dq%d", nr, nvmeq->qid);
+		char *devname;
+		const struct cpumask *mask;
+		unsigned long irqflags = IRQF_SHARED;
+		int vector = pci_irq_vector(pdev, nvmeq->cq_vector);
+
+		devname = kasprintf(GFP_KERNEL, "nvme%dq%d", nr, nvmeq->qid);
+		if (!devname)
+			return -ENOMEM;
+
+		mask = pci_irq_get_affinity(pdev, nvmeq->cq_vector);
+		if (mask && cpumask_weight(mask) > 1)
+			irqflags |= IRQF_RESCUE_THREAD;
+
+		return request_threaded_irq(vector, nvme_irq, NULL, irqflags,
+				devname, nvmeq);
 	}
 }
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
