Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6111BC10D
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 16:22:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9bkbtS6rLIvMNLZpXvUvsnpWvtUR5fY68PHpfsxQNJg=; b=LQIrdY8gPWX1wb
	zEia5eh4Oo/0iU5ETafhmHmpvqAwTV7RoxK6Kfz3lte3IgRRNW1oYPvOcGrOIa8cW4JCRTKKwqCIG
	sYSw8QatlFOV2NrfTi+2nHk0lqGA6nSIOSsFOG4Z1jBpyloTajU04Mbc6rLNU2Om+RRSHYIck8Jxt
	qoS1M6OGI7Sa4/dag2uMsXvpJ8e4DXffH46ahMrPpdHtZ9G+YJQOumUZb9ThQT4y/EyKwhi3lXnAY
	Qyg//PSpdr+IwQh9YwAUmkbyuHrLOD7bpbhktkMdgRa2gVwnKCLGl0OF+rMZ9jCiM7QbtpEFk1HpN
	1S9EwGUaeDz4FdJqMVBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTR7e-00056Q-9W; Tue, 28 Apr 2020 14:22:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTR7a-00055Q-31
 for linux-nvme@lists.infradead.org; Tue, 28 Apr 2020 14:22:03 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2C899206D7;
 Tue, 28 Apr 2020 14:22:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588083721;
 bh=FAH9CFfX1nwE2EiYYo02OGTkBldwFLaHs0XG4pvV9CE=;
 h=From:To:Cc:Subject:Date:From;
 b=tBZ4BBtsfs+P9yGojvcqHsQCMq9de8OC0dB0p8e1mF7ZJCcwKxzOqJiF4nQIZH+XW
 PyQAClLj4VCPsWmp6c88IHeKveE9vs7pgoZ/vX2iIx0xyvHJj85jl+qOwwkA2efXv6
 4ufA9bCxLPERF/F9TJnPHA0tazmrzCMsP3qYt64E=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCHv2] nvme-pci: remove volatile cqes
Date: Tue, 28 Apr 2020 07:21:56 -0700
Message-Id: <20200428142156.2269926-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_072202_148389_8169B3E3 
X-CRM114-Status: GOOD (  10.31  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The completion queue entry is not volatile once the phase is confirmed.
Remove the volatile keywords and check the phase using the appropriate
READ_ONCE() accessor, allowing the compiler to optimize the remaining
completion path.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
v1->v2: Split long line into a more readable format (Christoph)

 drivers/nvme/host/pci.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 8ebcf40f04fe..eef5d6ab7565 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -166,7 +166,7 @@ struct nvme_queue {
 	void *sq_cmds;
 	 /* only used for poll queues: */
 	spinlock_t cq_poll_lock ____cacheline_aligned_in_smp;
-	volatile struct nvme_completion *cqes;
+	struct nvme_completion *cqes;
 	dma_addr_t sq_dma_addr;
 	dma_addr_t cq_dma_addr;
 	u32 __iomem *q_db;
@@ -908,8 +908,9 @@ static void nvme_pci_complete_rq(struct request *req)
 /* We read the CQE phase first to check if the rest of the entry is valid */
 static inline bool nvme_cqe_pending(struct nvme_queue *nvmeq)
 {
-	return (le16_to_cpu(nvmeq->cqes[nvmeq->cq_head].status) & 1) ==
-			nvmeq->cq_phase;
+	struct nvme_completion *hcqe = &nvmeq->cqes[nvmeq->cq_head];
+
+	return (le16_to_cpu(READ_ONCE(hcqe->status)) & 1) == nvmeq->cq_phase;
 }
 
 static inline void nvme_ring_cq_doorbell(struct nvme_queue *nvmeq)
@@ -930,7 +931,7 @@ static inline struct blk_mq_tags *nvme_queue_tagset(struct nvme_queue *nvmeq)
 
 static inline void nvme_handle_cqe(struct nvme_queue *nvmeq, u16 idx)
 {
-	volatile struct nvme_completion *cqe = &nvmeq->cqes[idx];
+	struct nvme_completion *cqe = &nvmeq->cqes[idx];
 	struct request *req;
 
 	if (unlikely(cqe->command_id >= nvmeq->q_depth)) {
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
