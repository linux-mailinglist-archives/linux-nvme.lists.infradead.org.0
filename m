Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 114EB363F0
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:09:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ugG0S60Kil0GgmM7RKYvrjQmHFIRSuovRzcaGuY8y+g=; b=g4kR/1tecZxz+e
	MoFO5bJx3YAvNOCV+ce6ccAOiJrhJfpHAaBhQvkU09SDgH4nAFTzngBQxHGrkCxtvNCewVtJyoqON
	kQYlHHwxwpbj3kmbz2i3NGFTHt5zCnBC2bZ8HjuafQmpV/V2xEzSeBZ7lt+U3kLah55C/7zfytYJa
	vhogQ6FYwsBs9OLgRf/YsoZnm8K23uR1j5955REB5bQjSa/I9h62h8aktzRIE9+Ul/cBrGOwzTFHb
	XtTlpbGcAUGCxJHkbneBuIpHFFJnnDDI7qfoFDV4NikccMjd1NbclmJ9+AjZVap3S6P/vi1/sxoSv
	h8QzVWkAvl6WlkWwJ2dA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbI1-0006IT-0C; Wed, 05 Jun 2019 19:09:37 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbHW-0005ir-71; Wed, 05 Jun 2019 19:09:07 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH 07/13] storvsc: set virt_boundary_mask in the scsi host
 template
Date: Wed,  5 Jun 2019 21:08:30 +0200
Message-Id: <20190605190836.32354-8-hch@lst.de>
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

This ensures all proper DMA layer handling is taken care of by the
SCSI midlayer.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/storvsc_drv.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/scsi/storvsc_drv.c b/drivers/scsi/storvsc_drv.c
index 8472de1007ff..e61051c026f6 100644
--- a/drivers/scsi/storvsc_drv.c
+++ b/drivers/scsi/storvsc_drv.c
@@ -1434,9 +1434,6 @@ static int storvsc_device_configure(struct scsi_device *sdevice)
 {
 	blk_queue_rq_timeout(sdevice->request_queue, (storvsc_timeout * HZ));
 
-	/* Ensure there are no gaps in presented sgls */
-	blk_queue_virt_boundary(sdevice->request_queue, PAGE_SIZE - 1);
-
 	sdevice->no_write_same = 1;
 
 	/*
@@ -1709,6 +1706,8 @@ static struct scsi_host_template scsi_driver = {
 	.this_id =		-1,
 	/* Make sure we dont get a sg segment crosses a page boundary */
 	.dma_boundary =		PAGE_SIZE-1,
+	/* Ensure there are no gaps in presented sgls */
+	.virt_boundary_mask =	PAGE_SIZE-1,
 	.no_write_same =	1,
 	.track_queue_depth =	1,
 };
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
