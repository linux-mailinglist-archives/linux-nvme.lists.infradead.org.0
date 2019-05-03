Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C900812FE5
	for <lists+linux-nvme@lfdr.de>; Fri,  3 May 2019 16:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IjPiyIfVihJlQRp/pGK7wChR+ImFqwT7S3gl/yen92U=; b=r0l
	ZhiPQ7WMgb75F0TsvwmfeXUMhZOtU33KFv5ufdzwvQTIO4Xu3BoOpfzVxc+kOEGb0HFi6eIagvfPo
	CWpNyVNjXA0YrXjwHCPnAlkqgBpGqf9bosjNPsaPCC/dR+vINmkbhSPieSkD9aktl8k1k2yon7Top
	N4v0NPWxpkRK3DExjxvKEjTnyHbScGk0DsCVCoV/fu0gCnvii8LKq2PmzFOZaFKc1nRE3oYV3eSXW
	zdeRtGrRvf63K2/V3rLqhIwgr1Vb5xZ4kN8+bRqVITCsFefZK/okofmmRSp0m4oGRpsNj6/szW2pn
	SGEY+h2csO57Io5yCafScdunUAS9KWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMYy5-0004YR-JO; Fri, 03 May 2019 14:15:17 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMYy1-0004Y3-66
 for linux-nvme@lists.infradead.org; Fri, 03 May 2019 14:15:14 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id 63591AEA0;
 Fri,  3 May 2019 14:15:11 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: James Smart <james.smart@broadcom.com>
Subject: [PATCH] nvme-fc: trace sq head updates
Date: Fri,  3 May 2019 16:14:59 +0200
Message-Id: <20190503141459.111641-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_071513_380158_C3D5F70B 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Keith Busch <keith.busch@intel.com>,
 Hannes Reinecke <hare@suse.de>, Christoph Hellwig <hch@lst.de>,
 John Meneghini <john.meneghini@netapp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

FC-NVMe has some detailed rules if and when SQ head pointer updates
should be send, but the spec is a tad unclear about the values.
So add tracing to the FC-NVMe driver to track this.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/fc.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index 6d8451356eac..755c93a0c664 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -12,6 +12,7 @@
 
 #include "nvme.h"
 #include "fabrics.h"
+#include "trace.h"
 #include <linux/nvme-fc-driver.h>
 #include <linux/nvme-fc.h>
 
@@ -35,7 +36,8 @@ struct nvme_fc_queue {
 	u32			qnum;
 	u32			rqcnt;
 	u32			seqno;
-
+	u16			sq_head;
+	u16			sq_tail;
 	u64			connection_id;
 	atomic_t		csn;
 
@@ -1653,6 +1655,7 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req *req)
 			status = cpu_to_le16(NVME_SC_INTERNAL << 1);
 			goto done;
 		}
+		queue->sq_head = cpu_to_le16(cqe->sq_head);
 		result = cqe->result;
 		status = cqe->status;
 		break;
@@ -1675,6 +1678,8 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req *req)
 	}
 
 	__nvme_fc_fcpop_chk_teardowns(ctrl, op, opstate);
+	trace_nvme_sq(rq, queue->sq_head,
+		      queue->sq_tail % ctrl->ctrl.sqsize);
 	nvme_end_request(rq, status, result);
 
 check_error:
@@ -2215,6 +2220,7 @@ nvme_fc_start_fcp_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 	op->fcp_req.rcv_rsplen = 0;
 	op->fcp_req.status = NVME_SC_SUCCESS;
 	op->fcp_req.sqid = cpu_to_le16(queue->qnum);
+	queue->sq_tail++;
 
 	/*
 	 * validate per fabric rules, set fields mandated by fabric spec
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
