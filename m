Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB781AB1E
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 09:50:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U5EP2+iZXAiMKlE1GQVcgWWjGQznQZ+1UINpx+QMRDo=; b=t0lN2ERe1MNYLF1Z9AJ6AL2shH
	MZI4tfrXTn8a6VTTobpwCBaQDat0B67tSGEzfQYS9FRgoF9ZqKBay9EYezblLCqRxchD78ql8PcH3
	CgZleoLebRv4aWT8Ol6a6ZuvVpHa7ABeapbPi0Evu9tHma/FipGXMGuaWfAgb6Gam8FT3FBI+WZGt
	lUGFWQaMFOBEut64+p1rR44ZZUxzPQM5UI+qM82FMmyFFoPXcqFNI2fWmNKNp3iKslJGvqvjsWub/
	DbjGiAobNl8+3iqI5yUWYbJiy429sVcSXt/q+Uw9+xHU1iM/LEiZE+rg9bzdDvSKdAeToCz22XJRn
	JE7Wm1Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPjFz-0007wf-MZ; Sun, 12 May 2019 07:50:51 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPjFv-0007tw-U6
 for linux-nvme@bombadil.infradead.org; Sun, 12 May 2019 07:50:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=References:In-Reply-To:Message-Id:Date:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tJij42jMZNA/RCdgMXUgkIF3wZNG+3vGAUeH3k8Od1M=; b=oz8lVNrPef3ptEIz2VZlEw+Pk
 L8Cgzqymh9/H4jbWLtq3L4LVlBAVpwOPtWyGU2xCc2S/uHH6iXg1UJe7q5wxqQ8LXNgrSuT8tSZi3
 dczvQ8ER+ZPV3j8ZdWs0c11GuOZiI8WDeKQ0toVuZUYPb/v9YSIB4PnGsu/qfuwdbG989rj+DS4k/
 +BHmGJ4ckZBSnVkOlOlMOqO2qICF+12oGUvS/ZMt0rmEb3vEXQIcUvBirvFaOU9Rfw3KgGNpk8tlr
 pmj7vmWdVxRBZLcslMWaR/wYRWkMUJnrmwOLck/0Ji5w6CKb7lVwdkiyT/1k3g1odVIUyo2utoGCf
 c4jB/OpMA==;
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPj0e-0001Vz-09
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 07:35:02 +0000
Received: by mail-pf1-x442.google.com with SMTP id s11so5454867pfm.12
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 00:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tJij42jMZNA/RCdgMXUgkIF3wZNG+3vGAUeH3k8Od1M=;
 b=jluMCum4vO8FQf/7J8/CkknphoGKgcgI4VBYWDQsVhDgqpV+Too559TBFyjD7zgKfu
 D/dlYX3Vnf5VANGEd5jbgwkCC5rZFEmiw6PFiOz0THlFzn+xs3oItl5V19YTeUM5gZVN
 nt5Q0U3YiA3vbcQQB78/r/4/p3OOzUgQoB69iY8+Emg9soNLx4cTawwvY+x+nniwQnLO
 ZOzUOBM0I4GprAO0P4XrZK6FBNcaW+/7nGE6v3DglLYvgJzYaRweXOW/fdcHg9SkEt8m
 vjistPIYyz4TNNfTSfGr11muGKmZOTN58F9eic++xC9dbbSOQLhPMzX0JMuVa37TyzrA
 43lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tJij42jMZNA/RCdgMXUgkIF3wZNG+3vGAUeH3k8Od1M=;
 b=Gp2TdzFD2o6axJGwhYA/TxL/0YgZRXutYGk33Iw19d4NZQV6rbcsRNlKwL8ldjdlNT
 ZJKJzs6s/D6SITxwM5iUXQa/b4vDNJ+azvZZ6X5tjN7KBWkhUAMN6ilcg6vS4lSXWC0M
 QTU9z++sN++BXpTXZY6zt5FWDkeqC+MgEn+QkY8u0BLFsc6mKirMGibaHASQZ7o/tPKt
 5tdS7THzwuTAz7uj0PPWtJTvOh1pRzEVbaI1XUJFMXw/jtvRs1GQ36Bz6uA5QNCrOa69
 hSO6NKjpefhQNdP4p+4uWWqqPs05yGJ13S8xuIK/HMNQE5+cjds1ubs0iQs/JMTeXk4G
 prug==
X-Gm-Message-State: APjAAAVzlVOyPfc8L4RU9vMDs6a7gL+ELT8uYkE/e2TGfujr6eyO+S6D
 j+aBg42pY5buXYYY6yX7PEg=
X-Google-Smtp-Source: APXvYqyXFF+l9d400wplio9bVT1xUhp00uJ5v9kGooX1hdRRHjXQl6akdG0V24q0/XfqeJ0du2xMHw==
X-Received: by 2002:a65:42c3:: with SMTP id l3mr466019pgp.372.1557646496098;
 Sun, 12 May 2019 00:34:56 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e123sm5492242pgc.29.2019.05.12.00.34.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 00:34:55 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Subject: [PATCH V3 5/5] nvme-trace: Add tracing for req_comp in target
Date: Sun, 12 May 2019 16:34:13 +0900
Message-Id: <20190512073413.32050-6-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512073413.32050-1-minwoo.im.dev@gmail.com>
References: <20190512073413.32050-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_083500_172165_2F93D275 
X-CRM114-Status: GOOD (  19.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@fb.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, Keith Busch <keith.busch@intel.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We can have the common tracing code with different event entries.
  - nvme_complete_rq
  - nvmet_req_complete

This patch updates existing TRACE_EVENT to a template to provide a
common tracing interface.

We can have it as a common code because most of the fields need to be
printed out for both host and target system.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: James Smart <james.smart@broadcom.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/core.c   |  2 +-
 drivers/nvme/target/core.c |  3 +++
 drivers/nvme/trace.c       |  1 +
 drivers/nvme/trace.h       | 51 ++++++++++++++++++++++++++++++--------
 4 files changed, 45 insertions(+), 12 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 39e49e9948c3..f377ed039a83 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -260,7 +260,7 @@ void nvme_complete_rq(struct request *req)
 {
 	blk_status_t status = nvme_error_status(req);
 
-	trace_nvme_complete_rq(req);
+	trace_nvme_complete_rq(NVME_TRACE_HOST, req);
 
 	if (nvme_req(req)->ctrl->kas)
 		nvme_req(req)->ctrl->comp_seen = true;
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 10b3b3767f91..0f184abe432f 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -690,6 +690,9 @@ static void __nvmet_req_complete(struct nvmet_req *req, u16 status)
 
 	if (unlikely(status))
 		nvmet_set_error(req, status);
+
+	trace_nvmet_req_complete(NVME_TRACE_TARGET, req);
+
 	if (req->ns)
 		nvmet_put_namespace(req->ns);
 	req->ops->queue_response(req);
diff --git a/drivers/nvme/trace.c b/drivers/nvme/trace.c
index 8fe2dcee6a42..8071b60ec71d 100644
--- a/drivers/nvme/trace.c
+++ b/drivers/nvme/trace.c
@@ -222,3 +222,4 @@ EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_async_event);
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_sq);
 
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvmet_req_init);
+EXPORT_TRACEPOINT_SYMBOL_GPL(nvmet_req_complete);
diff --git a/drivers/nvme/trace.h b/drivers/nvme/trace.h
index afda9c2ab4a1..0674bb85ac66 100644
--- a/drivers/nvme/trace.h
+++ b/drivers/nvme/trace.h
@@ -181,9 +181,9 @@ DEFINE_EVENT(nvme__cmd_begin, nvmet_req_init,
 	TP_ARGS(type, req, cmd)
 );
 
-TRACE_EVENT(nvme_complete_rq,
-	    TP_PROTO(struct request *req),
-	    TP_ARGS(req),
+DECLARE_EVENT_CLASS(nvme__cmd_end,
+	    TP_PROTO(enum nvme_trace_type type, void *req),
+	    TP_ARGS(type, req),
 	    TP_STRUCT__entry(
 		__array(char, disk, DISK_NAME_LEN)
 		__field(int, ctrl_id)
@@ -195,20 +195,49 @@ TRACE_EVENT(nvme_complete_rq,
 		__field(u16, status)
 	    ),
 	    TP_fast_assign(
-		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
-		__entry->qid = nvme_req_qid(req);
-		__entry->cid = req->tag;
-		__entry->result = le64_to_cpu(nvme_req(req)->result.u64);
-		__entry->retries = nvme_req(req)->retries;
-		__entry->flags = nvme_req(req)->flags;
-		__entry->status = nvme_req(req)->status;
-		__assign_disk_name(__entry->disk, req->rq_disk);
+		if (type != NVME_TRACE_TARGET) {
+			struct request *req = (struct request *) req;
+
+			__entry->ctrl_id = nvme_req(req)->ctrl->instance;
+			__entry->qid = nvme_req_qid(req);
+			__entry->cid = req->tag;
+			__entry->result =
+					le64_to_cpu(nvme_req(req)->result.u64);
+			__entry->retries = nvme_req(req)->retries;
+			__entry->flags = nvme_req(req)->flags;
+			__entry->status = nvme_req(req)->status;
+			__assign_disk_name(__entry->disk, req->rq_disk);
+		} else {
+			struct nvmet_ctrl *ctrl = nvmet_req_to_ctrl(req);
+			struct nvmet_cq *cq = ((struct nvmet_req *) req)->cq;
+			struct nvme_completion *cqe =
+					((struct nvmet_req *) req)->cqe;
+			struct nvmet_ns *ns = ((struct nvmet_req *) req)->ns;
+
+			__entry->ctrl_id = ctrl ? ctrl->cntlid : 0;
+			__entry->qid = cq->qid;
+			__entry->cid = cqe->command_id;
+			__entry->result = cqe->result.u64;
+			__entry->flags = 0;
+			__entry->status = cqe->status >> 1;
+			__assign_disk_name(__entry->disk, ns ?
+						ns->bdev->bd_disk : NULL);
+		}
 	    ),
 	    TP_printk("nvme%d: %sqid=%d, cmdid=%u, res=%llu, retries=%u, flags=0x%x, status=%u",
 		      __entry->ctrl_id, __print_disk_name(__entry->disk),
 		      __entry->qid, __entry->cid, __entry->result,
 		      __entry->retries, __entry->flags, __entry->status)
+);
+
+DEFINE_EVENT(nvme__cmd_end, nvme_complete_rq,
+	TP_PROTO(enum nvme_trace_type type, void *req),
+	TP_ARGS(type, req)
+);
 
+DEFINE_EVENT(nvme__cmd_end, nvmet_req_complete,
+	TP_PROTO(enum nvme_trace_type type, void *req),
+	TP_ARGS(type, req)
 );
 
 #define aer_name(aer) { aer, #aer }
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
