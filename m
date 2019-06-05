Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF96363FC
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 21:09:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GraxoGEQt+OnApqw2dCyewbgKuCc7d8/YBnflzgGtqs=; b=BGRG+74Zw9GORM
	gj73sBN83g1CiSw9FFHXIYYK2vP+XwturvyI/Bbx8z90z/WzxFwz7Cd4K2qvWK7SEFhZp9ExWEAaw
	hEX2HGtM2ClYckb+SpWojHTsJ0/clJGQpYvELY0rZU/7V4Ivndg0LUk5Prj7mHASEA7w8j/ZXqOaZ
	sWX7UpDepV6nnQqX0Pa90OoCOimO2uMwIIg5la7E0+CU9yrNT9pVOuXMvCsPl9bh+8wbU95e7EexC
	TWr/+cosqhaIh6abv500smrMS4glCtwKABw96LZj6GTrJJukIPzF4KxrROQqKCuLy1PJO2iVeX4gz
	5O110ONjj+zNbrWgefNQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYbIB-0006Wl-5R; Wed, 05 Jun 2019 19:09:47 +0000
Received: from 089144193064.atnat0002.highway.a1.net ([89.144.193.64]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYbHa-0005od-3i; Wed, 05 Jun 2019 19:09:10 +0000
From: Christoph Hellwig <hch@lst.de>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH 08/13] IB/iser: set virt_boundary_mask in the scsi host
Date: Wed,  5 Jun 2019 21:08:31 +0200
Message-Id: <20190605190836.32354-9-hch@lst.de>
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
 drivers/infiniband/ulp/iser/iscsi_iser.c | 35 +++++-------------------
 1 file changed, 7 insertions(+), 28 deletions(-)

diff --git a/drivers/infiniband/ulp/iser/iscsi_iser.c b/drivers/infiniband/ulp/iser/iscsi_iser.c
index 9c185a8dabd3..841b66397a57 100644
--- a/drivers/infiniband/ulp/iser/iscsi_iser.c
+++ b/drivers/infiniband/ulp/iser/iscsi_iser.c
@@ -613,6 +613,7 @@ iscsi_iser_session_create(struct iscsi_endpoint *ep,
 	struct Scsi_Host *shost;
 	struct iser_conn *iser_conn = NULL;
 	struct ib_conn *ib_conn;
+	struct ib_device *ib_dev;
 	u32 max_fr_sectors;
 
 	shost = iscsi_host_alloc(&iscsi_iser_sht, 0, 0);
@@ -643,16 +644,19 @@ iscsi_iser_session_create(struct iscsi_endpoint *ep,
 		}
 
 		ib_conn = &iser_conn->ib_conn;
+		ib_dev = ib_conn->device->ib_device;
 		if (ib_conn->pi_support) {
-			u32 sig_caps = ib_conn->device->ib_device->attrs.sig_prot_cap;
+			u32 sig_caps = ib_dev->attrs.sig_prot_cap;
 
 			scsi_host_set_prot(shost, iser_dif_prot_caps(sig_caps));
 			scsi_host_set_guard(shost, SHOST_DIX_GUARD_IP |
 						   SHOST_DIX_GUARD_CRC);
 		}
 
-		if (iscsi_host_add(shost,
-				   ib_conn->device->ib_device->dev.parent)) {
+		if (!(ib_dev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG))
+			shost->virt_boundary_mask = ~MASK_4K;
+
+		if (iscsi_host_add(shost, ib_dev->dev.parent)) {
 			mutex_unlock(&iser_conn->state_mutex);
 			goto free_host;
 		}
@@ -958,30 +962,6 @@ static umode_t iser_attr_is_visible(int param_type, int param)
 	return 0;
 }
 
-static int iscsi_iser_slave_alloc(struct scsi_device *sdev)
-{
-	struct iscsi_session *session;
-	struct iser_conn *iser_conn;
-	struct ib_device *ib_dev;
-
-	mutex_lock(&unbind_iser_conn_mutex);
-
-	session = starget_to_session(scsi_target(sdev))->dd_data;
-	iser_conn = session->leadconn->dd_data;
-	if (!iser_conn) {
-		mutex_unlock(&unbind_iser_conn_mutex);
-		return -ENOTCONN;
-	}
-	ib_dev = iser_conn->ib_conn.device->ib_device;
-
-	if (!(ib_dev->attrs.device_cap_flags & IB_DEVICE_SG_GAPS_REG))
-		blk_queue_virt_boundary(sdev->request_queue, ~MASK_4K);
-
-	mutex_unlock(&unbind_iser_conn_mutex);
-
-	return 0;
-}
-
 static struct scsi_host_template iscsi_iser_sht = {
 	.module                 = THIS_MODULE,
 	.name                   = "iSCSI Initiator over iSER",
@@ -994,7 +974,6 @@ static struct scsi_host_template iscsi_iser_sht = {
 	.eh_device_reset_handler= iscsi_eh_device_reset,
 	.eh_target_reset_handler = iscsi_eh_recover_target,
 	.target_alloc		= iscsi_target_alloc,
-	.slave_alloc            = iscsi_iser_slave_alloc,
 	.proc_name              = "iscsi_iser",
 	.this_id                = -1,
 	.track_queue_depth	= 1,
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
