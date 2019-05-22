Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16B126B8E
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 21:28:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OXqZvGTl4vo38Jusr9Q/VYQpRW8kxIRDRrowjYPopzI=; b=JLlxpgU1bpCq4k
	ZgijBMqwdU+frthDKhxQSy7ulKiK4V8HrwlBPvs6bDeLEvsTamDL3rH/arNq2uMoj2sH3KZ33bJdD
	RTh36mFVaBahrNmqGwaQ3zq82NIZIaP75Wyx2tlXF0R9AOPruVlpXxz5CGhABCVRGa51U9JNhHUid
	sjaGCnZ7gPngiJ3HKr7YSbyA4bFexO7lb9fQgW35/xqcU02+MBFqs64HRcZj90wlBxPs52WMdZ2vY
	g7HQb14AUPfJcvT9V/cpaA4wSVeoS04gNA/QTLzuEpFF9eK2yb1nONV/6rdUE3M4UQUOb2ZDU7q6P
	0XuhEZ0Hs0E9Fq7Gy/zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTWuN-0004Oq-In; Wed, 22 May 2019 19:28:15 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTWuI-0004Nw-IQ
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 19:28:11 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 8F76F20675;
 Wed, 22 May 2019 19:28:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558553290;
 bh=vFVJuNYDSYKtnIIMZt+kTwaWA2+cmXyBrNjfobrAZeE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=fiTKZluYZgFhUkKSdwCi4jj7r7G1fJhOHkuvCOqrJC03RYNFAP/NwlEVUIDkFLFTF
 Jz17dOWG76gkAfrwTGkK7kAHJRjg2FjLRsD7Tnbx91ksqT73nAU/4IFAJtobgnksQO
 UO7r4tBKFSfBzUWVvhNhGLdVaBrQzUo26RGjeAk8=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 062/244] nvme: set 0 capacity if namespace block
 size exceeds PAGE_SIZE
Date: Wed, 22 May 2019 15:23:28 -0400
Message-Id: <20190522192630.24917-62-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190522192630.24917-1-sashal@kernel.org>
References: <20190522192630.24917-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_122810_619988_DC14F623 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: Keith Busch <keith.busch@intel.com>, Sasha Levin <sashal@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

[ Upstream commit 01fa017484ad98fccdeaab32db0077c574b6bd6f ]

If our target exposed a namespace with a block size that is greater
than PAGE_SIZE, set 0 capacity on the namespace as we do not support it.

This issue encountered when the nvmet namespace was backed by a tempfile.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Keith Busch <keith.busch@intel.com>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 2cdb3032ca0fc..abfb46378cc13 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1480,6 +1480,10 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	sector_t capacity = le64_to_cpup(&id->nsze) << (ns->lba_shift - 9);
 	unsigned short bs = 1 << ns->lba_shift;
 
+	if (ns->lba_shift > PAGE_SHIFT) {
+		/* unsupported block size, set capacity to 0 later */
+		bs = (1 << 9);
+	}
 	blk_mq_freeze_queue(disk->queue);
 	blk_integrity_unregister(disk);
 
@@ -1490,7 +1494,8 @@ static void nvme_update_disk_info(struct gendisk *disk,
 	if (ns->ms && !ns->ext &&
 	    (ns->ctrl->ops->flags & NVME_F_METADATA_SUPPORTED))
 		nvme_init_integrity(disk, ns->ms, ns->pi_type);
-	if (ns->ms && !nvme_ns_has_pi(ns) && !blk_get_integrity(disk))
+	if ((ns->ms && !nvme_ns_has_pi(ns) && !blk_get_integrity(disk)) ||
+	    ns->lba_shift > PAGE_SHIFT)
 		capacity = 0;
 
 	set_capacity(disk, capacity);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
