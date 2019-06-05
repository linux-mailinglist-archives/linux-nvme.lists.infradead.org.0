Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED8C9363EB
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:09:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=i0lz2xwIQ+IhgHiOAKqQAhP/fWB/W2MXjh1NJKQXuGk=; b=Ec8wtA4GUuKvDL
	wV5ceM9kfdiY4gBrMT9L+ebqKF7SPwS7lyOkiZtpToHJegF5EHMhStesBPtV1XnzoqKB3773pkxRT
	zqmVzLeowLTI4QdZEaLdaWAgV99JWny7krXHkw+69hQUfUaGsrO7l7mWdR/XfkdUhN/11a1oAZi4d
	AbxKPYIQed7XShUes5ze05RhkfwYZrqF1U3YNGPnsgeKFTgNSuuoTOEV4mSWBTYTt3HHw+YD4dsz2
	gNuNW55kkl/D7hMK+gevHvxnl7A1TVeRNrhi+dwoDeXaq8G8ltkN6hQFs5wnBqym3/tDuRyKPP+e9
	wlRAhRicQL1uHz+ywujQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbHl-0005yo-Qe; Wed, 05 Jun 2019 19:09:21 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbHO-0005XN-7d; Wed, 05 Jun 2019 19:08:59 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH 05/13] scsi: add a host / host template field for the virt
 boundary
Date: Wed,  5 Jun 2019 21:08:28 +0200
Message-Id: <20190605190836.32354-6-hch@lst.de>
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

This allows drivers setting it up easily instead of branching out to
block layer calls in slave_alloc, and ensures the upgraded
max_segment_size setting gets picked up by the DMA layer.

Signed-off-by: Christoph Hellwig <hch@lst.de>
---
 drivers/scsi/hosts.c     | 3 +++
 drivers/scsi/scsi_lib.c  | 3 ++-
 include/scsi/scsi_host.h | 3 +++
 3 files changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/scsi/hosts.c b/drivers/scsi/hosts.c
index ff0d8c6a8d0c..55522b7162d3 100644
--- a/drivers/scsi/hosts.c
+++ b/drivers/scsi/hosts.c
@@ -462,6 +462,9 @@ struct Scsi_Host *scsi_host_alloc(struct scsi_host_template *sht, int privsize)
 	else
 		shost->dma_boundary = 0xffffffff;
 
+	if (sht->virt_boundary_mask)
+		shost->virt_boundary_mask = sht->virt_boundary_mask;
+
 	device_initialize(&shost->shost_gendev);
 	dev_set_name(&shost->shost_gendev, "host%d", shost->host_no);
 	shost->shost_gendev.bus = &scsi_bus_type;
diff --git a/drivers/scsi/scsi_lib.c b/drivers/scsi/scsi_lib.c
index 65d0a10c76ad..d333bb6b1c59 100644
--- a/drivers/scsi/scsi_lib.c
+++ b/drivers/scsi/scsi_lib.c
@@ -1775,7 +1775,8 @@ void __scsi_init_queue(struct Scsi_Host *shost, struct request_queue *q)
 	dma_set_seg_boundary(dev, shost->dma_boundary);
 
 	blk_queue_max_segment_size(q, shost->max_segment_size);
-	dma_set_max_seg_size(dev, shost->max_segment_size);
+	blk_queue_virt_boundary(q, shost->virt_boundary_mask);
+	dma_set_max_seg_size(dev, queue_max_segment_size(q));
 
 	/*
 	 * Set a reasonable default alignment:  The larger of 32-byte (dword),
diff --git a/include/scsi/scsi_host.h b/include/scsi/scsi_host.h
index a5fcdad4a03e..cc139dbd71e5 100644
--- a/include/scsi/scsi_host.h
+++ b/include/scsi/scsi_host.h
@@ -369,6 +369,8 @@ struct scsi_host_template {
 	 */
 	unsigned long dma_boundary;
 
+	unsigned long virt_boundary_mask;
+
 	/*
 	 * This specifies "machine infinity" for host templates which don't
 	 * limit the transfer size.  Note this limit represents an absolute
@@ -587,6 +589,7 @@ struct Scsi_Host {
 	unsigned int max_sectors;
 	unsigned int max_segment_size;
 	unsigned long dma_boundary;
+	unsigned long virt_boundary_mask;
 	/*
 	 * In scsi-mq mode, the number of hardware queues supported by the LLD.
 	 *
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
