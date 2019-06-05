Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F3744363E9
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:09:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bzV9KiQCs3oH9Jak9o3gbIESgMApVKi4Xu/QM9mabW8=; b=FNzS/RbiKfLmyY
	wB6CK5L8avaLK67MHVYXna0mRLVCYXRs3JSvmeAXDq74hi5MWzgL2xQq6BOcicOGVUDfHHgYSHtIZ
	HamiM9MXxMXw5fJicHiBQz/T/k/Ads7KEHpyP3TBHiZa7MdP8mTvvSqaefsu5bAVPrYtY1Svea07Y
	riBlOhEsHAek91oWEL/hM8cL81aGMiwmb9kFmYEgboh6pUHVD4XsxaCQ193kI/95oSFjy3OChUqwh
	TsgNbnsXBH77qpfIioH4TjS3mf6DYG2gut4ri7pszamxkfu/FSEHjYtfCJE8NFwWsznyXdp/s7KGk
	y4MeGbQYb4q7g2eWtfyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHe-0005q2-Cw; Wed, 05 Jun 2019 19:09:14 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbHK-0005QW-0o; Wed, 05 Jun 2019 19:08:55 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH 04/13] mmc: also set max_segment_size in the device
Date: Wed,  5 Jun 2019 21:08:27 +0200
Message-Id: <20190605190836.32354-5-hch@lst.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190605190836.32354-1-hch@lst.de>
References: <20190605190836.32354-1-hch@lst.de>
MIME-Version: 1.0
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Ulf Hansson <ulf.hansson@linaro.org>, linux-usb@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, Sebastian Ott <sebott@linux.ibm.com>,
 linux-rdma@vger.kernel.org, Oliver Neukum <oneukum@suse.com>,
 linux-mmc@vger.kernel.org, linux-hyperv@vger.kernel.org,
 linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, usb-storage@lists.one-eyed-alien.net,
 Alan Stern <stern@rowland.harvard.edu>, linux-scsi@vger.kernel.org,
 Max Gurtovoy <maxg@mellanox.com>, MPT-FusionLinux.pdl@broadcom.com,
 megaraidlinux.pdl@broadcom.com, Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If we only set the max_segment_size on the queue an IOMMU merge might
create bigger segments again, so limit the IOMMU merges as well.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/mmc/core/queue.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/mmc/core/queue.c b/drivers/mmc/core/queue.c
index b5b9c6142f08..92900a095796 100644
--- a/drivers/mmc/core/queue.c
+++ b/drivers/mmc/core/queue.c
@@ -377,6 +377,8 @@ static void mmc_setup_queue(struct mmc_queue *mq, struct mmc_card *card)
 	blk_queue_max_segment_size(mq->queue,
 			round_down(host->max_seg_size, block_size));
 
+	dma_set_max_seg_size(mmc_dev(host), queue_max_segment_size(mq->queue));
+
 	INIT_WORK(&mq->recovery_work, mmc_mq_recovery_handler);
 	INIT_WORK(&mq->complete_work, mmc_blk_mq_complete_work);
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
