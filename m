Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62B5319BB68
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Apr 2020 07:44:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rZegXSkehij4uV8UydIwRq5XDlH/VghoNAUnSROXKnI=; b=nPs5gk4jOYVi4d
	xG78NuhyDBgAN1M468xO5jh+NITVLa6UDEOaNXIHypgb53dqSq3QvUZ4Vkoq7fbgLr8OxHE78cWky
	tDAn/mH5NwjPr2AyK4vRNvJ3Xs1CecMT7o84KPB4DabqorsqVklUn1WAkR20/pvqK/V7uMJf/GS7t
	ano6dvj79qlfGTcO8WyAIBFiBkmDTdPmuCq61++WPP9tulC6e732a66OBNx1WFwZhsHaPwmxpZ6ey
	hTxYenBRG9yWyrXTKikUVBrQDNye7+TH5JgCnQTxCmhhK0nPn2TDTMPf61xteCXMYMjrX6Kryoigo
	KYNWXjUrIcQntG7FKJOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJsep-0006HZ-Cm; Thu, 02 Apr 2020 05:44:51 +0000
Received: from [2601:647:4802:9070:a836:db4c:a7ac:3d7c]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJsel-0006HI-N0; Thu, 02 Apr 2020 05:44:47 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH v2] nvme: inherit stable pages constraint in the mpath stack
 device
Date: Wed,  1 Apr 2020 22:44:43 -0700
Message-Id: <20200402054443.14950-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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

If the backing device require stable pages, we need to set it on the
stack mpath device as well. This applies to rdma/fc transports when
doing data integrity and tcp transport calculating digests.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
Changes from v1:
- fixed change log description

 drivers/nvme/host/core.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 222925dfe364..8b3827370874 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1907,6 +1907,13 @@ static void __nvme_revalidate_disk(struct gendisk *disk, struct nvme_id_ns *id)
 	if (ns->head->disk) {
 		nvme_update_disk_info(ns->head->disk, ns, id);
 		blk_queue_stack_limits(ns->head->disk->queue, ns->queue);
+		if (bdi_cap_stable_pages_required(ns->queue->backing_dev_info)) {
+			struct backing_dev_info *info =
+				ns->head->disk->queue->backing_dev_info;
+
+                        info->capabilities |= BDI_CAP_STABLE_WRITES;
+		}
+
 		revalidate_disk(ns->head->disk);
 	}
 #endif
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
