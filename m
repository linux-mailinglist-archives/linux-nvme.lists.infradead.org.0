Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FB818B010
	for <lists+linux-nvme@lfdr.de>; Tue, 13 Aug 2019 08:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PjRitoLcBxCE4mwDEfGgO7wO4sTY/5XM0juObgaDY6k=; b=e7S1EOE9ODFikVYD2txt1IQMXL
	Db3OvZoeocNIqo6/DGj1lgC4Qw0+w47SvL5ljP+tiJzb/3dezgGbejhcv1qyQGGmlKGi1OTZB4BDk
	c6YvkLkpfjNLE82faaCIEFM1sRrg+1oNUPJlD2Lpdjxk6atARG6S3xTZsbcvRCrOHZ/LOvtON1B57
	fjLYCWgqhAJrpEVULnav4XYN2eYHrOcyre1jrJ1BSZPMk/QnYUUQeVbkuEzK+TCsPBYNauEtL9xsC
	3R/POte/t48h6CDsBpEqKjTNNhhCIhqdXQ3nte7kemT/UNQG9L+J0o9sJQWQ5CJQ4Vd3VbgK9ygOy
	NOJKuRMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxQXX-0008GY-9c; Tue, 13 Aug 2019 06:44:15 +0000
Received: from [2601:647:4800:973f:a183:2905:6842:b7c]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxQWP-0007Z2-V9; Tue, 13 Aug 2019 06:43:06 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v6 4/7] nvme: make nvme_report_ns_ids propagate error back
Date: Mon, 12 Aug 2019 23:43:01 -0700
Message-Id: <20190813064304.7344-5-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190813064304.7344-1-sagi@grimberg.me>
References: <20190813064304.7344-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, James Smart <james.smart@broadcom.com>,
 Christoph Hellwig <hch@lst.de>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

And make the callers check the return status and propagate
back accordingly. Also print the return status.

Reviewed-by: Hannes Reinecke <hare@suse.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 4cc21567c43f..10e237f80800 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1608,9 +1608,11 @@ static void nvme_config_write_zeroes(struct gendisk *disk, struct nvme_ns *ns)
 	blk_queue_max_write_zeroes_sectors(disk->queue, max_sectors);
 }
 
-static void nvme_report_ns_ids(struct nvme_ctrl *ctrl, unsigned int nsid,
+static int nvme_report_ns_ids(struct nvme_ctrl *ctrl, unsigned int nsid,
 		struct nvme_id_ns *id, struct nvme_ns_ids *ids)
 {
+	int ret = 0;
+
 	memset(ids, 0, sizeof(*ids));
 
 	if (ctrl->vs >= NVME_VS(1, 1, 0))
@@ -1621,10 +1623,12 @@ static void nvme_report_ns_ids(struct nvme_ctrl *ctrl, unsigned int nsid,
 		 /* Don't treat error as fatal we potentially
 		  * already have a NGUID or EUI-64
 		  */
-		if (nvme_identify_ns_descs(ctrl, nsid, ids))
+		ret = nvme_identify_ns_descs(ctrl, nsid, ids);
+		if (ret)
 			dev_warn(ctrl->device,
-				 "%s: Identify Descriptors failed\n", __func__);
+				 "Identify Descriptors failed (%d)\n", ret);
 	}
+	return ret;
 }
 
 static bool nvme_ns_ids_valid(struct nvme_ns_ids *ids)
@@ -1762,7 +1766,10 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 	}
 
 	__nvme_revalidate_disk(disk, id);
-	nvme_report_ns_ids(ctrl, ns->head->ns_id, id, &ids);
+	ret = nvme_report_ns_ids(ctrl, ns->head->ns_id, id, &ids);
+	if (ret)
+		goto out;
+
 	if (!nvme_ns_ids_equal(&ns->head->ids, &ids)) {
 		dev_err(ctrl->device,
 			"identifiers changed for nsid %d\n", ns->head->ns_id);
@@ -3187,7 +3194,9 @@ static struct nvme_ns_head *nvme_alloc_ns_head(struct nvme_ctrl *ctrl,
 	head->ns_id = nsid;
 	kref_init(&head->ref);
 
-	nvme_report_ns_ids(ctrl, nsid, id, &head->ids);
+	ret = nvme_report_ns_ids(ctrl, nsid, id, &head->ids);
+	if (ret)
+		goto out_cleanup_srcu;
 
 	ret = __nvme_check_ids(ctrl->subsys, head);
 	if (ret) {
@@ -3235,7 +3244,10 @@ static int nvme_init_ns_head(struct nvme_ns *ns, unsigned nsid,
 	} else {
 		struct nvme_ns_ids ids;
 
-		nvme_report_ns_ids(ctrl, nsid, id, &ids);
+		ret = nvme_report_ns_ids(ctrl, nsid, id, &ids);
+		if (ret)
+			goto out_unlock;
+
 		if (!nvme_ns_ids_equal(&head->ids, &ids)) {
 			dev_err(ctrl->device,
 				"IDs don't match for shared namespace %d\n",
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
