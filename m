Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6190A6DAD6
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 06:05:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=N1jiDEntmzOP6JEvfH81eWiMKjAmVY9k1JPvHk7CZ70=; b=n1Tvu5jd2jYLQx
	CaM6ns83TkGyLxEftYjMwMF4rf1yWes9ySQzV6bnD+ihu7lXIFA7FPG/Kksg/Mv9Q86jwU9Qq/4ko
	kBB+K3xEFlYj2cYIqmRtdZDH2R1gGYvW8M9XKA1YvlkNQC8/hJYHzMpYZLZQzLuDVfpnCJLjzG/PE
	ZagMmJ/SHcxZJRLlDMkyPtVSJZ9zzZg6s3axb5cywI+HoxhkC5FYEDswiRAQ50dIguDsF5fdfb1cj
	7kj8XqRuDYNfmxgzeAD/X8ALQsxz8tzjeTvJGHKehAEeTa2qgdolDOz7tO/FYchxsFug6nAgn+lV8
	2l3X4CvU6OiyfW9t6G9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoK8l-0000sK-DU; Fri, 19 Jul 2019 04:05:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoK5J-0006jS-56
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 04:01:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E88E92189F;
 Fri, 19 Jul 2019 04:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563508888;
 bh=WnRs12+q0ocPyqCZ7djJyleRZcDXafyOhPyDCWFslTo=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=WJpuQHAJQPkPG5e4+hOGDIDvhYht1re4p1nSNn/alAGC3+PuB0X2lvxhTJzagqYJA
 WfpIkrVWnqYay1/ovHSS1vKmOhO6rv7o43fTeDylJx63YqCihlsvH1H7rlQj9wwoVd
 zZHH2tJ9PJmjnbre7bGm9Du2Y9XDzHGxOAoCMr+o=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.2 139/171] nvme-tcp: set the STABLE_WRITES flag when
 data digests are enabled
Date: Thu, 18 Jul 2019 23:56:10 -0400
Message-Id: <20190719035643.14300-139-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719035643.14300-1-sashal@kernel.org>
References: <20190719035643.14300-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210129_609775_B891B40C 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Sagi Grimberg <sagi@grimberg.me>,
 Mike Playle <mplayle@solarflare.com>, linux-nvme@lists.infradead.org,
 Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>

[ Upstream commit 958f2a0f8121ae36a5cbff383ab94fadf1fba5eb ]

There was a few false alarms sighted on target side about wrong data
digest while performing high throughput load to XFS filesystem shared
through NVMoF TCP.

This flag tells the rest of the kernel to ensure that the data buffer
does not change while the write is in flight.  It incurs a performance
penalty, so only enable it when it is actually needed, i.e. when we are
calculating data digests.

Although even with this change in place, ext2 users can steel experience
false positives, as ext2 is not respecting this flag. This may be apply
to vfat as well.

Signed-off-by: Mikhail Skorzhinskii <mskorzhinskiy@solarflare.com>
Signed-off-by: Mike Playle <mplayle@solarflare.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 120fb593d1da..b4048748551e 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -11,6 +11,7 @@
 #include <linux/hdreg.h>
 #include <linux/kernel.h>
 #include <linux/module.h>
+#include <linux/backing-dev.h>
 #include <linux/list_sort.h>
 #include <linux/slab.h>
 #include <linux/types.h>
@@ -3256,6 +3257,10 @@ static int nvme_alloc_ns(struct nvme_ctrl *ctrl, unsigned nsid)
 		goto out_free_ns;
 	}
 
+	if (ctrl->opts->data_digest)
+		ns->queue->backing_dev_info->capabilities
+			|= BDI_CAP_STABLE_WRITES;
+
 	blk_queue_flag_set(QUEUE_FLAG_NONROT, ns->queue);
 	if (ctrl->ops->flags & NVME_F_PCI_P2PDMA)
 		blk_queue_flag_set(QUEUE_FLAG_PCI_P2PDMA, ns->queue);
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
