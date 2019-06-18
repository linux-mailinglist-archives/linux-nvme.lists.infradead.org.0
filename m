Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF56349E15
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 12:11:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=jK7MI06pYImZsgRMjLjUE/EVkqmz2Mqp8UKOelxxhU8=; b=Uem9/63p0Q/R/YdwmHpsGbM6o+
	3RPN+tUMMUmCKc04+NBgzPbjNKg+Nnsyj3j9duR4xc9ycemKAlZb9q/j0coqDjqzrdkv1FCTlRD/x
	Yj7r+anVrXOwjuvg36lQkWsbhA4sYoDgsht+mL7rosNKqql4fEX5UJFPOLVFqAvJBpfkN5I0sIf97
	busfarsX+9raubkHQPpPKUffpFWosDJuGSZ936cMG4mAYhkBcqmsHPqkse5u2hgzRkPMdmU9Dd67w
	kDbZc8yzcfv0OSK/cSlXyyt72PDNI2m3vwUYQA5yIrvC+J8DfOfdJWInqMed6qzxtWPvf1QieBvkK
	7jg7DPNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdB55-0002Y7-LQ; Tue, 18 Jun 2019 10:11:11 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdB4O-0002AA-IU
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 10:10:32 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 2D899ADAB;
 Tue, 18 Jun 2019 10:10:27 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH 2/2] nvme: flush scan_work when resetting controller
Date: Tue, 18 Jun 2019 12:10:25 +0200
Message-Id: <20190618101025.78840-3-hare@suse.de>
X-Mailer: git-send-email 2.16.4
In-Reply-To: <20190618101025.78840-1-hare@suse.de>
References: <20190618101025.78840-1-hare@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_031029_736769_AF81583D 
X-CRM114-Status: GOOD (  12.35  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When resetting the controller there is no point whatsoever to
have a scan run in parallel; we cannot access the controller and
we cannot tell which devices are present and which not.
Additionally we'll run a scan after reset anyway.
So flush existing scans before reconnecting, ensuring to
short-circuit the scan workqueue function if the controller state
isn't live to avoid lockups.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/core.c | 10 ++++++++++
 drivers/nvme/host/fc.c   |  1 +
 drivers/nvme/host/rdma.c |  1 +
 drivers/nvme/host/tcp.c  |  1 +
 4 files changed, 13 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e872591e5fe7..dc3f1ff12276 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1627,6 +1627,9 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	sector_t capacity = le64_to_cpu(id->nsze) << (ns->lba_shift - 9);
 	unsigned short bs = 1 << ns->lba_shift;
 
+	if (ns->ctrl->state != NVME_CTRL_LIVE)
+		return;
+
 	if (ns->lba_shift > PAGE_SHIFT) {
 		/* unsupported block size, set capacity to 0 later */
 		bs = (1 << 9);
@@ -1702,6 +1705,9 @@ static int nvme_revalidate_disk(struct gendisk *disk)
 		return -ENODEV;
 	}
 
+	if (ctrl->state != NVME_CTRL_LIVE)
+		return 0;
+
 	id = nvme_identify_ns(ctrl, ns->head->ns_id);
 	if (!id)
 		return -ENODEV;
@@ -3437,6 +3443,8 @@ static int nvme_scan_ns_list(struct nvme_ctrl *ctrl, unsigned nn)
 		return -ENOMEM;
 
 	for (i = 0; i < num_lists; i++) {
+		if (ctrl->state != NVME_CTRL_LIVE)
+			goto free;
 		ret = nvme_identify_ns_list(ctrl, prev, ns_list);
 		if (ret)
 			goto free;
@@ -3515,6 +3523,8 @@ static void nvme_scan_work(struct work_struct *work)
 	if (test_and_clear_bit(NVME_AER_NOTICE_NS_CHANGED, &ctrl->events)) {
 		dev_info(ctrl->device, "rescanning namespaces.\n");
 		nvme_clear_changed_ns_log(ctrl);
+		if (ctrl->state != NVME_CTRL_LIVE)
+			return;
 	}
 
 	if (nvme_identify_ctrl(ctrl, &id))
diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 9b497d785ed7..1c6aa21858b2 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -2909,6 +2909,7 @@ nvme_fc_reset_ctrl_work(struct work_struct *work)
 
 	__nvme_fc_terminate_io(ctrl);
 
+	flush_work(&ctrl->ctrl.scan_work);
 	nvme_stop_ctrl(&ctrl->ctrl);
 
 	if (ctrl->rport->remoteport.port_state == FC_OBJSTATE_ONLINE)
diff --git a/drivers/nvme/host/rdma.c b/drivers/nvme/host/rdma.c
index f383146e7d0f..c00d59a14a2b 100644
--- a/drivers/nvme/host/rdma.c
+++ b/drivers/nvme/host/rdma.c
@@ -1839,6 +1839,7 @@ static void nvme_rdma_reset_ctrl_work(struct work_struct *work)
 
 	nvme_stop_ctrl(&ctrl->ctrl);
 	nvme_rdma_shutdown_ctrl(ctrl, false);
+	flush_work(&ctrl->ctrl.scan_work);
 
 	if (!nvme_change_ctrl_state(&ctrl->ctrl, NVME_CTRL_CONNECTING)) {
 		/* state change failure should never happen */
diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 2b107a1d152b..ee32d9355959 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1872,6 +1872,7 @@ static void nvme_reset_ctrl_work(struct work_struct *work)
 
 	nvme_stop_ctrl(ctrl);
 	nvme_tcp_teardown_ctrl(ctrl, false);
+	flush_work(&ctrl->scan_work);
 
 	if (!nvme_change_ctrl_state(ctrl, NVME_CTRL_CONNECTING)) {
 		/* state change failure is ok if we're in DELETING state */
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
