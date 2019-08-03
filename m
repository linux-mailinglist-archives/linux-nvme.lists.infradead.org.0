Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C3FA8040D
	for <lists+linux-nvme@lfdr.de>; Sat,  3 Aug 2019 04:50:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zBsTwlozuhx5xmv4wB9mzfc5gzZzxQ4zYU6XgwIds4s=; b=h/B5WRXaSu6hf/y34n6t2acoG2
	7D39aa1AxHNntIwwqUW7fPgn0wuZF8Ha8rtMqBQDcjn3wdshnjzUYVbXNULP8LJgxFXya50xmYaKi
	zTmVdtQ1mkdIs18D1CplvTXniG/XbZxMqF20lOhkxpn8+hEXtrcnQqnud2XD3uOCJHaLO4T6Oc1rr
	StT1H3cokuIKXGv+7+T77+D1E9PdqSSyCA0BPJybKir4n05mpe22IpAw44nRltZAamLzz14iF1DSy
	lbwrtkoA0PgDTwa04K2fMzTAyq7r4+N+tkzL03bMo8J+v+a3MWwLZ0FG5pFufuAakqZuj+Dsz7IIu
	fxeZc6Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htk80-0007fY-3Y; Sat, 03 Aug 2019 02:50:40 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1htk7N-00060U-9E; Sat, 03 Aug 2019 02:50:01 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Hannes Reinecke <hare@suse.de>
Subject: [PATCH rfc v2 3/6] nvme: make nvme_identify_ns propagate errors back
Date: Fri,  2 Aug 2019 19:49:52 -0700
Message-Id: <20190803024955.29508-4-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190803024955.29508-1-sagi@grimberg.me>
References: <20190803024955.29508-1-sagi@grimberg.me>
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
Cc: Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

right now callers of nvme_identify_ns only know that
it failed, but don't know why. Make nvme_identify_ns propagate
the error back (like nvme_identify_ctrl).

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 30 +++++++++++++-----------------
 1 file changed, 13 insertions(+), 17 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f435c85c4062..802d1b49ecff 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1094,10 +1094,9 @@ static int nvme_identify_ns_list(struct nvme_ctrl *dev, unsigned nsid, __le32 *n
 				    NVME_IDENTIFY_DATA_SIZE);
 }
 
-static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
-		unsigned nsid)
+static int nvme_identify_ns(struct nvme_ctrl *ctrl,
+		unsigned nsid, struct nvme_id_ns **id)
 {
-	struct nvme_id_ns *id;
 	struct nvme_command c = { };
 	int error;
 
@@ -1106,18 +1105,17 @@ static struct nvme_id_ns *nvme_identify_ns(struct nvme_ctrl *ctrl,
 	c.identify.nsid = cpu_to_le32(nsid);
 	c.identify.cns = NVME_ID_CNS_NS;
 
-	id = kmalloc(sizeof(*id), GFP_KERNEL);
-	if (!id)
-		return NULL;
+	*id = kmalloc(sizeof(**id), GFP_KERNEL);
+	if (!*id)
+		return -ENOMEM;
 
-	error = nvme_submit_sync_cmd(ctrl->admin_q, &c, id, sizeof(*id));
+	error = nvme_submit_sync_cmd(ctrl->admin_q, &c, *id, sizeof(**id));
 	if (error) {
 		dev_warn(ctrl->device, "Identify namespace failed (%d)\n", error);
-		kfree(id);
-		return NULL;
+		kfree(*id);
 	}
 
-	return id;
+	return error;
 }
 
 static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned int fid,
@@ -1747,9 +1745,9 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 		return -ENODEV;
 	}
 
-	id = nvme_identify_ns(ctrl, ns->head->ns_id);
-	if (!id)
-		return -ENODEV;
+	ret = nvme_identify_ns(ctrl, ns->head->ns_id, &id);
+	if (ret)
+		return ret;
 
 	if (id->ncap == 0) {
 		ret = -ENODEV;
@@ -3336,11 +3334,9 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	blk_queue_logical_block_size(ns->queue, 1 << ns->lba_shift);
 	nvme_set_queue_limits(ctrl, ns->queue);
 
-	id = nvme_identify_ns(ctrl, nsid);
-	if (!id) {
-		ret = -EIO;
+	ret = nvme_identify_ns(ctrl, nsid, &id);
+	if (ret)
 		goto out_free_queue;
-	}
 
 	if (id->ncap == 0) {
 		ret = -EINVAL;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
