Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ECCC3642D
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wof3TpdmsGwsJm3I75RKcs3mY1mDbTF3Zpiwo8XpJ44=; b=c6uRS6VenvKDqJ
	t+Aeg5S/xgswYf1LaIRf/cZ+nfDGsZ+q5X34TISPJlc2Xi6OTRDH7e/Oomo3R8KoUsq3hYHMTcpDq
	sG5VjQOgzTv2mtEP07cP2ktsZ6hchajuR2xYDt+UivntT0RQXlNRTFa7N7Iov/l/fU+wUX5GlsJM5
	MhpuAGp56WEm33MgAlz6ZDuEJahLkHk6G805d6yV7IsrjiPCytO4qDJ2EdKBLl5MikX3Zx0t0yHyA
	7NPLRK8uJgT+NB4j6Kdscwf0od5NW+0jXzoK+V8hL+7iRpsU/Z4DZXcU7NR5Bq0Pjs9uBDo4Uu1+R
	iSpqS71+b/B8qX7nFLNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbIq-0008TR-MM; Wed, 05 Jun 2019 19:10:28 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbHs-0006Cv-4J; Wed, 05 Jun 2019 19:09:28 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH 13/13] uas: set virt_boundary_mask in the scsi host
Date: Wed,  5 Jun 2019 21:08:36 +0200
Message-Id: <20190605190836.32354-14-hch@lst.de>
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
 drivers/usb/storage/uas.c | 36 ++++++++++++++++--------------------
 1 file changed, 16 insertions(+), 20 deletions(-)

diff --git a/drivers/usb/storage/uas.c b/drivers/usb/storage/uas.c
index 047c5922618f..d20919e7bbf4 100644
--- a/drivers/usb/storage/uas.c
+++ b/drivers/usb/storage/uas.c
@@ -789,29 +789,9 @@ static int uas_slave_alloc(struct scsi_device *sdev)
 {
 	struct uas_dev_info *devinfo =
 		(struct uas_dev_info *)sdev->host->hostdata;
-	int maxp;
 
 	sdev->hostdata = devinfo;
 
-	/*
-	 * We have two requirements here. We must satisfy the requirements
-	 * of the physical HC and the demands of the protocol, as we
-	 * definitely want no additional memory allocation in this path
-	 * ruling out using bounce buffers.
-	 *
-	 * For a transmission on USB to continue we must never send
-	 * a package that is smaller than maxpacket. Hence the length of each
-         * scatterlist element except the last must be divisible by the
-         * Bulk maxpacket value.
-	 * If the HC does not ensure that through SG,
-	 * the upper layer must do that. We must assume nothing
-	 * about the capabilities off the HC, so we use the most
-	 * pessimistic requirement.
-	 */
-
-	maxp = usb_maxpacket(devinfo->udev, devinfo->data_in_pipe, 0);
-	blk_queue_virt_boundary(sdev->request_queue, maxp - 1);
-
 	/*
 	 * The protocol has no requirements on alignment in the strict sense.
 	 * Controllers may or may not have alignment restrictions.
@@ -1004,6 +984,22 @@ static int uas_probe(struct usb_interface *intf, const struct usb_device_id *id)
 	 */
 	shost->can_queue = devinfo->qdepth - 2;
 
+	/*
+	 * We have two requirements here. We must satisfy the requirements of
+	 * the physical HC and the demands of the protocol, as we definitely
+	 * want no additional memory allocation in this path ruling out using
+	 * bounce buffers.
+	 *
+	 * For a transmission on USB to continue we must never send a package
+	 * that is smaller than maxpacket.  Hence the length of each scatterlist
+	 * element except the last must be divisible by the Bulk maxpacket
+	 * value.  If the HC does not ensure that through SG, the upper layer
+	 * must do that.  We must assume nothing about the capabilities off the
+	 * HC, so we use the most pessimistic requirement.
+	 */
+	shost->virt_boundary_mask =
+		usb_maxpacket(udev, devinfo->data_in_pipe, 0) - 1;
+
 	usb_set_intfdata(intf, shost);
 	result = scsi_add_host(shost, &intf->dev);
 	if (result)
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
