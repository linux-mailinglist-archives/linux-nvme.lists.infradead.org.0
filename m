Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE62773030
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 15:48:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=tAiZPYMCkYv/m6cIsF2wCkQ8oFcC1G04EcySqEbhicQ=; b=UEG
	iIRTuUpY4rLjU0X1n8DisqWgbkZ2e5Ubtd8LB485yzgSb7vEh9a6ho2+pksI72ECzS1WV8k95iB9M
	zbXxxDo6jzPw7AVZ6gs19dnJcZPKtlnw9E7HxW+ZUa28FSKqVWMdYfFikycHneHIBy+3l2hBjNnm9
	MOMKof8QFkZmvSIUfrZuIZvPcwF+v2CGxmmf2qm2apDAOjp+qfuJpiXtd6VPB2+zecmhWURDES76W
	GvYzyr3V7IveX6zW+Vdhs6uYwzZwNzPynjyUjxfdaiLk5ONpDwQZJ3EClv7iFNmo/3L3rZiXuOK3m
	eTCqhz/UYhmr495X8zD8WZ273vI9XLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqHck-00077c-P5; Wed, 24 Jul 2019 13:48:06 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqHcd-000769-VY
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 13:48:03 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id B65B2AFCD;
 Wed, 24 Jul 2019 13:47:56 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvme: trace bio completion
Date: Wed, 24 Jul 2019 15:47:55 +0200
Message-Id: <20190724134755.96315-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190724_064800_160441_C2F2AEC8 
X-CRM114-Status: UNSURE (   8.69  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
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
Cc: Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When native multipathing is enabled we cannot enable blktrace for
the underlying paths, so any completion is never traced.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 8f3fbe5ca937..ba5a23475314 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -22,6 +22,8 @@
 #include <linux/pm_qos.h>
 #include <asm/unaligned.h>
 
+#include <trace/events/block.h>
+
 #define CREATE_TRACE_POINTS
 #include "trace.h"
 
@@ -261,6 +263,7 @@ static void nvme_retry_req(struct request *req)
 void nvme_complete_rq(struct request *req)
 {
 	blk_status_t status = nvme_error_status(req);
+	struct nvme_ns *ns = req->q->queuedata;
 
 	trace_nvme_complete_rq(req);
 
@@ -279,6 +282,9 @@ void nvme_complete_rq(struct request *req)
 			return;
 		}
 	}
+	if (req->bio && ns && ns->head->disk)
+		trace_block_bio_complete(ns->head->disk->queue,
+					 req->bio, status);
 	blk_mq_end_request(req, status);
 }
 EXPORT_SYMBOL_GPL(nvme_complete_rq);
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
