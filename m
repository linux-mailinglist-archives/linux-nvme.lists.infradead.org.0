Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8961D109197
	for <lists+linux-nvme@lfdr.de>; Mon, 25 Nov 2019 17:07:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uBlxMN6icRaKUDFnxEx6e1aw6ebSfqVU+Kj0KNdXglc=; b=J0xnYFGg2VxHq9
	7V1M33DwU/KSSo9PXDZWXJ9aguSdbIpycbC8jouei2Pn5wZxATHojWZEcSa5pnh/0nRj1AU03FuSa
	H0QmUVfIyJBnSfi1NBQoHaYIqyzwZhO1Iv1s66svr9j0iODuHSxB9LdWhqKLzDKRhSNvApVSmOs2U
	7H9akgURCbgmVIrHiI5wIULLKVnG0DZEunDoT5lDhcbTfVS2J8NPvjLlhM59N2k1/VbjVk4ztc2cu
	SCEgJn1yoX6DT6mg6mmY4eOn2yG45AY50PXB0qaJRqPWhpsA0eJbBFdE90EKH3+CjtsL5+ib4zwQN
	SNHQGsnKNSGNcbaaz9WQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZGtM-0003vS-1O; Mon, 25 Nov 2019 16:07:12 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZGt6-0003r8-8r
 for linux-nvme@lists.infradead.org; Mon, 25 Nov 2019 16:06:57 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 08:06:54 -0800
X-IronPort-AV: E=Sophos;i="5.69,242,1571727600"; d="scan'208";a="202404090"
Received: from unknown (HELO caliente.lm.intel.com) ([10.232.116.67])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Nov 2019 08:06:53 -0800
From: Edmund Nadolski <edmund.nadolski@intel.com>
To: edmund.nadolski@intel.com, linux-nvme@lists.infradead.org,
 kbusch@kernel.org
Subject: [PATCH 1/2] nvme: remove unused return code from nvme_alloc_ns
Date: Mon, 25 Nov 2019 09:06:11 -0700
Message-Id: <20191125160612.3542-2-edmund.nadolski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191125160612.3542-1-edmund.nadolski@intel.com>
References: <20191125160612.3542-1-edmund.nadolski@intel.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191125_080656_330337_14D86A32 
X-CRM114-Status: GOOD (  10.34  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The return code of nvme_alloc_ns is never used, so change it
to void.

Signed-off-by: Edmund Nadolski <edmund.nadolski@intel.com>
---
 drivers/nvme/host/core.c | 21 ++++++---------------
 1 file changed, 6 insertions(+), 15 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 9696404a6182..c22d986d053a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3446,7 +3446,7 @@ static int nvme_setup_streams_ns(struct nvme_ctrl *ctrl, struct nvme_ns *ns)
 	return 0;
 }
 
-static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
+static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 {
 	struct nvme_ns *ns;
 	struct gendisk *disk;
@@ -3456,13 +3456,11 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 
 	ns = kzalloc_node(sizeof(*ns), GFP_KERNEL, node);
 	if (!ns)
-		return -ENOMEM;
+		return;
 
 	ns->queue = blk_mq_init_queue(ctrl->tagset);
-	if (IS_ERR(ns->queue)) {
-		ret = PTR_ERR(ns->queue);
+	if (IS_ERR(ns->queue))
 		goto out_free_ns;
-	}
 
 	if (ctrl->opts && ctrl->opts->data_digest)
 		ns->queue->backing_dev_info->capabilities
@@ -3485,10 +3483,8 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	if (ret)
 		goto out_free_queue;
 
-	if (id->ncap == 0) {
-		ret = -EINVAL;
+	if (id->ncap == 0)
 		goto out_free_id;
-	}
 
 	ret = nvme_init_ns_head(ns, nsid, id);
 	if (ret)
@@ -3497,10 +3493,8 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	nvme_set_disk_name(disk_name, ns, ctrl, &flags);
 
 	disk = alloc_disk_node(0, node);
-	if (!disk) {
-		ret = -ENOMEM;
+	if (!disk)
 		goto out_unlink_ns;
-	}
 
 	disk->fops = &nvme_fops;
 	disk->private_data = ns;
@@ -3531,7 +3525,7 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	nvme_fault_inject_init(&ns->fault_inject, ns->disk->disk_name);
 	kfree(id);
 
-	return 0;
+	return;
  out_put_disk:
 	put_disk(ns->disk);
  out_unlink_ns:
@@ -3545,9 +3539,6 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	blk_cleanup_queue(ns->queue);
  out_free_ns:
 	kfree(ns);
-	if (ret > 0)
-		ret = blk_status_to_errno(nvme_error_status(ret));
-	return ret;
 }
 
 static void nvme_ns_remove(struct nvme_ns *ns)
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
