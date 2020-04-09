Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0516C1A37D5
	for <lists+linux-nvme@lfdr.de>; Thu,  9 Apr 2020 18:11:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZosXdN+JYlHLJnpXgWYLFmQUpm4JX3bVNWkgApkTRB4=; b=GqsrjQ/c0S4r2L
	dWHxMw9tjvWnoYkH2txWiG6iW0FhKA4SPFClNH/26AuonZ2GTQSDLknGBHk7OUkCPFaDDR1koTTBH
	bGTI4u+7F1iC77CEttDKLoJfI1zjuLf/8K7Bj7RUr7HVsJLO+8AgMfNPOSQMJxelDu4ards0wvuSL
	woqL/9qoHo7vqjsHN0vdxdW83YLJJtIc2SkWfw/fsSatktx5tcPgV7VZZ1HUM8Apb0K2BDwnZ3bgV
	PRt9jrq6jhsV2Mo1eafTd5/FjVa96MRNCjOFyDHYW2giaPFmGwxJJTSNhuig5iUh5lnmAgsKEXdmj
	E3eQMa2Ewikdc+psCw6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMZlt-0005bE-Tr; Thu, 09 Apr 2020 16:11:17 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMZjv-0001UM-Q8
 for linux-nvme@lists.infradead.org; Thu, 09 Apr 2020 16:09:17 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DD89221473;
 Thu,  9 Apr 2020 16:09:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586448555;
 bh=HCj2eIM9bg9muDmeWTdzXlZUR0nmPusTzVvxkfL0e0M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=1wwN3CC8kgLX/Um9Ei0K6LyAitr6Szqi6ip1TaFI490eNU8Q1Fz09nNCxavYveIR+
 ilEceMtjtMfrzuw/wuHw+GwksnwZRYtzOlHUBItr2uqkSHFTtbQgKhogUHWRa1f6jm
 4xVuGqOWI2BiipeNboTIY8AD+g1QO5mcEhQS9aiw=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 10/10] nvme: consolodate io settings
Date: Thu,  9 Apr 2020 09:09:08 -0700
Message-Id: <20200409160908.1889471-11-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200409160908.1889471-1-kbusch@kernel.org>
References: <20200409160908.1889471-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_090915_882066_F60900B8 
X-CRM114-Status: GOOD (  10.80  )
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

The stream parameters indicating optimal io settings were just getting
overwritten later. Rearrange the settings so the streams parameters can
be preserved if provided.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 21 +++++++++------------
 1 file changed, 9 insertions(+), 12 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e9f71a4c6b89..9d521f198ce7 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1810,7 +1810,8 @@ static bool nvme_ns_ids_equal(struct nvme_ns_ids *a, struct nvme_ns_ids *b)
 		memcmp(&a->eui64, &b->eui64, sizeof(a->eui64)) == 0;
 }
 
-static int nvme_setup_streams_ns(struct nvme_ctrl *ctrl, struct nvme_ns *ns)
+static int nvme_setup_streams_ns(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
+				 u32 *phys_bs, u32 *io_opt)
 {
 	struct streams_directive_params s;
 	int ret;
@@ -1826,11 +1827,9 @@ static int nvme_setup_streams_ns(struct nvme_ctrl *ctrl, struct nvme_ns *ns)
 	ns->sgs = le16_to_cpu(s.sgs);
 
 	if (ns->sws) {
-		unsigned int bs = 1 << ns->lba_shift;
-
-		blk_queue_io_min(ns->queue, bs * ns->sws);
+		*phys_bs = ns->sws * (1 << ns->lba_shift);
 		if (ns->sgs)
-			blk_queue_io_opt(ns->queue, bs * ns->sws * ns->sgs);
+			*io_opt = *phys_bs * ns->sgs;
 	}
 
 	return 0;
@@ -1850,7 +1849,8 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	blk_mq_freeze_queue(disk->queue);
 	blk_integrity_unregister(disk);
 
-	nvme_setup_streams_ns(ns->ctrl, ns);
+	atomic_bs = phys_bs = io_opt = bs;
+	nvme_setup_streams_ns(ns->ctrl, ns, &phys_bs, &io_opt);
 	if (id->nabo == 0) {
 		/*
 		 * Bit 1 indicates whether NAWUPF is defined for this namespace
@@ -1861,16 +1861,13 @@ static void nvme_update_disk_info(struct gendisk *disk,
 			atomic_bs = (1 + le16_to_cpu(id->nawupf)) * bs;
 		else
 			atomic_bs = (1 + ns->ctrl->subsys->awupf) * bs;
-	} else {
-		atomic_bs = bs;
 	}
-	phys_bs = bs;
-	io_opt = bs;
+
 	if (id->nsfeat & (1 << 4)) {
 		/* NPWG = Namespace Preferred Write Granularity */
-		phys_bs *= 1 + le16_to_cpu(id->npwg);
+		phys_bs = bs * (1 + le16_to_cpu(id->npwg));
 		/* NOWS = Namespace Optimal Write Size */
-		io_opt *= 1 + le16_to_cpu(id->nows);
+		io_opt = bs * (1 + le16_to_cpu(id->nows));
 	}
 
 	blk_queue_logical_block_size(disk->queue, bs);
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
