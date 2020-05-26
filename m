Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFAA219A4FD
	for <lists+linux-nvme@lfdr.de>; Wed,  1 Apr 2020 07:54:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KmAGBq87PSwmQf+uPSb6QrmbQzExhGu5ceSSJFTqMx0=; b=GApX1HCgdW6rlA
	y8Jy4l5k6pz++EGdPp4N8gBPmgCYk0HBWkNpr0/xsUnJ1SkffDZAPPff8yZqdmUhuuiVD1FlxIVpf
	/MrINDbEFU6LnqrY8IqHmkeBX3V0wZ4Z5BKSrnxVHm02yhHvIjamLdkhfFMb/3G3dTzzdWeDTeRa0
	D9m+aRQFSup7lqpLsHlNYLf6SDKviOl6RcK8FkR7TIfR3OkDz00+pLC88X0FVoUD9fohqsyq6vPrs
	ZZuukl4063zMGHJCCvgyxkgKDOZZFgIuTgYF389RyOHPj+YXiVRBOfFIh/KQIrG/1yplWnvAJ/xx4
	XmfBroIC2wUdqZnpQ78A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJWK9-0000wy-S9; Wed, 01 Apr 2020 05:54:01 +0000
Received: from [2601:647:4802:9070:cca1:4ce7:5ea6:1461]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJWK7-0000wY-3H; Wed, 01 Apr 2020 05:53:59 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvme: inherit stable pages constraint in the mpath stack
 device
Date: Tue, 31 Mar 2020 22:53:58 -0700
Message-Id: <20200401055358.6458-1-sagi@grimberg.me>
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

If the backing device require stable pages, we need to set it
on the target as well. This applies to rdma/fc transports when
doing data integrity and tcp transport calculating digests.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 222925dfe364..fc76616e173a 100644
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
+                        info->capabilites |= BDI_CAP_STABLE_WRITES;
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
