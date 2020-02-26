Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF92116F408
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Feb 2020 01:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=KXLORk6/jK2HdJMIlAA9Gg++8trMVbRlQDAycY70cTI=; b=NxI
	ajnCljkAtXNZ/KBFr7FyhYZPiyGaCJEMA0ZIM5C1eG1urWaoYH3xp2NPwXSsAkQKWINMZfoyDcAhK
	CvHtKS5Q0Svc4/mR6i0XVEpB1Y1LvDHnNuoDcT4eEdiChWyPbxtRXHKU39YgdE5oDIP+AZR4HrL5x
	fZsrb3BPKIpDCIZSgpGGnWy6DDQpdl4Qhu76By4MxBUtn6ndXQ/YFQCM1VWtW5DRBuC+sE8MmzbUO
	v0wm+hFHP0kV1iYvQL1+iUcUxcqcQAkbIObtLE/7VdDXmJEZSJSCUnCg4zTH5+CeWo+0Ww7bRmjGv
	34T/VGl5Ldbki4D6HNizWLCi1OddrHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6k7b-0000ZX-Vl; Wed, 26 Feb 2020 00:00:16 +0000
Received: from mx2.suse.de ([195.135.220.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6k7X-00080K-H2
 for linux-nvme@lists.infradead.org; Wed, 26 Feb 2020 00:00:13 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx2.suse.de (Postfix) with ESMTP id D36ABB1F7;
 Wed, 26 Feb 2020 00:00:01 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Keith Busch <keith.busch@wdc.com>
Subject: [PATCH RFC] nvme/fc: sq flow control
Date: Wed, 26 Feb 2020 00:59:56 +0100
Message-Id: <20200225235956.28475-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_160011_716760_12CB3BFD 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [195.135.220.15 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Hannes Reinecke <hare@suse.de>, John Meneghini <john.meneghini@netapp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

As per NVMe-oF spec sq flow control is actually mandatory, and we should
be implementing it to avoid the controller to return a fatal status
error, and try to play nicely with controllers using sq flow control
to implement QoS.

Signed-off-by: Hannes Reinecke <hare@suse.de>
---
 drivers/nvme/host/fc.c | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/fc.c b/drivers/nvme/host/fc.c
index a19ddb61039d..628397bd5065 100644
--- a/drivers/nvme/host/fc.c
+++ b/drivers/nvme/host/fc.c
@@ -12,6 +12,7 @@
 
 #include "nvme.h"
 #include "fabrics.h"
+#include "trace.h"
 #include <linux/nvme-fc-driver.h>
 #include <linux/nvme-fc.h>
 #include <scsi/scsi_transport_fc.h>
@@ -34,7 +35,8 @@ struct nvme_fc_queue {
 	size_t			cmnd_capsule_len;
 	u32			qnum;
 	u32			seqno;
-
+	int			sq_head;
+	int			sq_tail;
 	u64			connection_id;
 	atomic_t		csn;
 
@@ -1671,6 +1673,8 @@ nvme_fc_fcpio_done(struct nvmefc_fcp_req *req)
 				cqe->command_id);
 			goto done;
 		}
+		WRITE_ONCE(queue->sq_head, cpu_to_le16(cqe->sq_head));
+		trace_nvme_sq(rq, cqe->sq_head, queue->sq_tail);
 		result = cqe->result;
 		status = cqe->status;
 		break;
@@ -2177,6 +2181,18 @@ nvme_fc_unmap_data(struct nvme_fc_ctrl *ctrl, struct request *rq,
 	freq->sg_cnt = 0;
 }
 
+static int nvme_fc_update_sq_tail(struct nvme_fc_queue *queue, int incr)
+{
+	int old_sqtl, new_sqtl;
+
+	do {
+		old_sqtl = queue->sq_tail;
+		new_sqtl = (old_sqtl + incr) % queue->ctrl->ctrl.sqsize;
+	} while (cmpxchg(&queue->sq_tail, old_sqtl, new_sqtl) !=
+		 old_sqtl);
+	return new_sqtl;
+}
+
 /*
  * In FC, the queue is a logical thing. At transport connect, the target
  * creates its "queue" and returns a handle that is to be given to the
@@ -2219,6 +2235,14 @@ nvme_fc_start_fcp_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 	if (!nvme_fc_ctrl_get(ctrl))
 		return BLK_STS_IOERR;
 
+	if (!ctrl->ctrl.opts->disable_sqflow) {
+		if (nvme_fc_update_sq_tail(queue, 1) ==
+		    READ_ONCE(queue->sq_head)) {
+			nvme_fc_update_sq_tail(queue, -1);
+			return BLK_STS_RESOURCE;
+		}
+	}
+
 	/* format the FC-NVME CMD IU and fcp_req */
 	cmdiu->connection_id = cpu_to_be64(queue->connection_id);
 	cmdiu->data_len = cpu_to_be32(data_len);
@@ -2284,6 +2308,9 @@ nvme_fc_start_fcp_op(struct nvme_fc_ctrl *ctrl, struct nvme_fc_queue *queue,
 					queue->lldd_handle, &op->fcp_req);
 
 	if (ret) {
+		if (ctrl->ctrl.opts->disable_sqflow)
+			nvme_fc_update_sq_tail(queue, -1);
+
 		/*
 		 * If the lld fails to send the command is there an issue with
 		 * the csn value?  If the command that fails is the Connect,
-- 
2.16.4


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
