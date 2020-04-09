Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD3C1A37D3
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Apr 2020 18:11:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sam+yQwb8qMJM/cPQM34s3id97bo7WALOtTuJc71nY=; b=BramyU0k1SW7mn
	day6Hjl+phii15TAjrfSRCI9ZMimboSYY42jn7OWBHzaqIA/Mz9c/D7JoWMdj0kiGbcehbGwXWm/d
	OdfR1s7EakiVpd1IDcGYXTxYSD6PRpIp4jI5aNCnste1h5FAZRLNhM7pkI+dB1lfpc1lBImcA0Xq4
	QA9nTpCTz8kG6NvO9vNkbS8nLMJCQTFiolSm8cEcb0QxP/CfiNvHqDWrIHoiGumc+W9AeTKWmBQ0x
	QCoGGW8fWHnb72W3z0Oh7Q27gN4ZdtW4UIbMei9m0z1wAxok71GVIMoV9w+eIwxXdMdNI81xc1dhP
	WmqbnY97KkCsXRZik5ew==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZlj-0005Pf-0B; Thu, 09 Apr 2020 16:11:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZju-0001TJ-W7
 for linux-nvme@lists.infradead.org; Thu, 09 Apr 2020 16:09:17 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5BE8420CC7;
 Thu,  9 Apr 2020 16:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586448554;
 bh=7wZDV1Fda3nvYv290wSdkhttxpQXJEfpVVBJYIff/v8=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ml7KgmNUub+plOhGvHVfiYwj8fkgiQqbd0ZVQnbR7aBg/dsUTA/DahpDLXgbpYAD3
 DvCcTNaesJ92BiJjD4QhnqzJcO0EofRQd2u82IrN59r9Tu4mOjop0JPD5DF0cPRjOt
 Kez7nbbIfQjahkqPl9GOyHw5RT4aOwHGBDvUyDT8=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 09/10] nvme: revalidate namespace stream parameters
Date: Thu,  9 Apr 2020 09:09:07 -0700
Message-Id: <20200409160908.1889471-10-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409160908.1889471-1-kbusch@kernel.org>
References: <20200409160908.1889471-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_090915_063145_0294CFFA 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The stream parameters are based on the currently formatted logical block
size. Recheck these parameters on namespace revalidation so the
registered constraints will be accurate.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 54 ++++++++++++++++++++--------------------
 1 file changed, 27 insertions(+), 27 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index f80d65bb4308..e9f71a4c6b89 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1810,6 +1810,32 @@ static bool nvme_ns_ids_equal(struct nvme_ns_ids *a, struct nvme_ns_ids *b)
 		memcmp(&a->eui64, &b->eui64, sizeof(a->eui64)) == 0;
 }
 
+static int nvme_setup_streams_ns(struct nvme_ctrl *ctrl, struct nvme_ns *ns)
+{
+	struct streams_directive_params s;
+	int ret;
+
+	if (!ctrl->nr_streams)
+		return 0;
+
+	ret = nvme_get_stream_params(ctrl, &s, ns->head->ns_id);
+	if (ret)
+		return ret;
+
+	ns->sws = le32_to_cpu(s.sws);
+	ns->sgs = le16_to_cpu(s.sgs);
+
+	if (ns->sws) {
+		unsigned int bs = 1 << ns->lba_shift;
+
+		blk_queue_io_min(ns->queue, bs * ns->sws);
+		if (ns->sgs)
+			blk_queue_io_opt(ns->queue, bs * ns->sws * ns->sgs);
+	}
+
+	return 0;
+}
+
 static void nvme_update_disk_info(struct gendisk *disk,
 		struct nvme_ns *ns, struct nvme_id_ns *id)
 {
@@ -1824,6 +1850,7 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_mq_freeze_queue(disk->queue);
 	blk_integrity_unregister(disk);
 
+	nvme_setup_streams_ns(ns->ctrl, ns);
 	if (id->nabo == 0) {
 		/*
 		 * Bit 1 indicates whether NAWUPF is defined for this namespace
@@ -3545,32 +3572,6 @@ static struct nvme_ns *nvme_find_get_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	return ret;
 }
 
-static int nvme_setup_streams_ns(struct nvme_ctrl *ctrl, struct nvme_ns *ns)
-{
-	struct streams_directive_params s;
-	int ret;
-
-	if (!ctrl->nr_streams)
-		return 0;
-
-	ret = nvme_get_stream_params(ctrl, &s, ns->head->ns_id);
-	if (ret)
-		return ret;
-
-	ns->sws = le32_to_cpu(s.sws);
-	ns->sgs = le16_to_cpu(s.sgs);
-
-	if (ns->sws) {
-		unsigned int bs = 1 << ns->lba_shift;
-
-		blk_queue_io_min(ns->queue, bs * ns->sws);
-		if (ns->sgs)
-			blk_queue_io_opt(ns->queue, bs * ns->sws * ns->sgs);
-	}
-
-	return 0;
-}
-
 static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 {
 	struct nvme_ns *ns;
@@ -3614,7 +3615,6 @@ static void nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 	ret = nvme_init_ns_head(ns, nsid, id);
 	if (ret)
 		goto out_free_id;
-	nvme_setup_streams_ns(ctrl, ns);
 	nvme_set_disk_name(disk_name, ns, ctrl, &flags);
 
 	disk = alloc_disk_node(0, node);
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
