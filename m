Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF9672B99E
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 19:54:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xzZSKK1YpfGkYbU9f9qWXoWYsTlrbUgXO09F5aR1DOg=; b=CkKbKWzAkrV4nr
	DDLyRgpuTGcN1VOdOa1vtRpaEscCiZmUB6jnTv800cVJX0EryfNygrK/MUOeFNGUA+rJ3TBRxJd61
	p85+HoalHkSVq3Dq/7sx9u2eJJPAhDIvzt+udSwLlDwBfRSOjEAEJzF+Q1V/Rp8qFq3SkV8d1PTWE
	P3HqByGkfxPpYYZB+kn04YVASornUyiu8+n7PYNSGXZt+JQhMPByzklctXQWv1N961bD8175XKO2X
	BAdipCBI4v48xpL2i3tKO3+7BpGFdDINPYI6J/mJhivUQm8yURGw0m4WVMPbwHlruN3lFOcC0w18m
	G0CBNPaVisy9G56BIVtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJpi-0004Ki-Au; Mon, 27 May 2019 17:54:50 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJpD-0003ml-FL
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 17:54:35 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so5083947pfq.8
 for <linux-nvme@lists.infradead.org>; Mon, 27 May 2019 10:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=M/hp4kfODaBSxnEnUcfRMtlQyf/NubF7q6o4vtsn4Sc=;
 b=qnPatFkvutBVitK/plSHyr4os3uN3M0gXRnvcfF54ShPShrAWjGzV0U2R1u9rwdswd
 VCFZEtOhQf8pgbdFrwyxV/tb6IJyl0SHI8SjZMu40eSQILqGlRwGC46JucP5SutWpMTD
 TrOmw62sUEphl/K9VRWOH8TXIsogPoj/abDiqDAmdnt0kxJRyCegAEJ8Mp+FSmXW8+y0
 FouUFCzbVDqb2A/u0jyp5CCVfO6li876umnDUDM/jBXvTmme3uAMnHSGTZRBZom2d6Kq
 VqsNseLEHqlhq+bsC9axxZQugQ0T4c4jxDkv7tZh/T4clpT91VfBJAYnd2vOQYT2hRR/
 aFfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=M/hp4kfODaBSxnEnUcfRMtlQyf/NubF7q6o4vtsn4Sc=;
 b=c/8vJiSl+IuDMKoCQR8l0N92VqlWNTtcVuFZLru//AOWDGiZ0DOBtOXWComfqvPp++
 yFhmKCP/ZMETn1fO//05xYuTC6Zvmmn0z0TnpbE+cNmE1suCZTXbwdJjSY7us1wRIyEz
 h0vRTrUVL6xGlm6f4JlN8JnE02r4LAGHMJUK4DUT17KJpahIhpPorgcSrIr125AaVmDp
 tBaL1Szmr5O6zxwN9QVKNyxYd4gjDFF/5fmEcR8doyLvmvFUbBkEkq+koiWzRAGhHKVA
 HYjFwxz3Kyc7f5sBxezdmDK09K7mOLr+2BsuQcEsRdkKO/6GaMECvSAU9q/ja7xCq8Br
 aTKQ==
X-Gm-Message-State: APjAAAUEqmnCphXi17b1gUpB81VJeGdPi6kqP19vunf+BuZ4RuS5vjqD
 w9R/9Ww/vtj6TQYtMeQJuJA8jLdD3KY=
X-Google-Smtp-Source: APXvYqwgGAka1vuNeqkg+v7xhT8Z/SaPaeSz0Ioofa44tVporw8y9KKbRwtWjlnRq2AdKo7P6ag+eg==
X-Received: by 2002:aa7:90ca:: with SMTP id k10mr137592345pfk.20.1558979658475; 
 Mon, 27 May 2019 10:54:18 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z4sm12608936pfa.142.2019.05.27.10.54.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 10:54:17 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 4/5] nvme-trace: Add tracing for req_init in target
Date: Tue, 28 May 2019 02:53:45 +0900
Message-Id: <20190527175346.29972-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
References: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_105419_933863_85B69113 
X-CRM114-Status: GOOD (  20.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 James Smart <james.smart@broadcom.com>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

We can have the common tracing code with different event entries.
  - nvme_setup_cmd
  - nvmet_req_init

This patch updates existing TRACE_EVENT to a template to provide a
common tracing interface.  More than that, nvme_setup_cmd entry point
has been defined as an event referring template made.

It also introduces tracing at the point of request creation for the
target system.  This might be useful to figure out what kind of
request has been received in the target.

Here's the example of target tracing introduced with RDMA:
kworker/0:1H-1043  [000] ....   276.785946: nvmet_req_init: nvme0: qid=0, cmdid=0, nsid=1, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_connect recfmt=0, qid=0, sqsize=31, cattr=0, kato=0)
kworker/0:1H-1043  [000] ....   276.789893: nvmet_req_init: nvme1: qid=0, cmdid=10, nsid=4, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_get attrib=1, ofst=0x0)
kworker/0:1H-1043  [000] ....   276.791781: nvmet_req_init: nvme1: qid=0, cmdid=11, nsid=0, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_set attrib=0, ofst=0x14, value=0x460001)
kworker/0:1H-1043  [000] ....   276.794799: nvmet_req_init: nvme1: qid=0, cmdid=12, nsid=4, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_get attrib=0, ofst=0x1c)
kworker/0:1H-1043  [000] ....   276.796804: nvmet_req_init: nvme1: qid=0, cmdid=13, nsid=4, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_get attrib=0, ofst=0x8)
kworker/0:1H-1043  [000] ....   276.799163: nvmet_req_init: nvme1: qid=0, cmdid=10, nsid=4, flags=0x40, meta=0x0, cmd=(nvme_fabrics_type_property_get attrib=1, ofst=0x0)
kworker/0:1H-1043  [000] ....   276.801070: nvmet_req_init: nvme1: qid=0, cmdid=11, nsid=0, flags=0x40, meta=0x0, cmd=(nvme_admin_identify cns=1, ctrlid=0)
kworker/0:1H-1043  [000] ....   276.817592: nvmet_req_init: nvme1: qid=0, cmdid=12, nsid=0, flags=0x40, meta=0x0, cmd=(nvme_admin_get_log_page cdw10=70 00 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00)
kworker/0:1H-1043  [000] ....   276.822963: nvmet_req_init: nvme1: qid=0, cmdid=13, nsid=0, flags=0x40, meta=0x0, cmd=(nvme_admin_get_log_page cdw10=70 00 ff 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00)
kworker/0:1H-1043  [000] ....   276.831908: nvmet_req_init: nvme1: qid=0, cmdid=10, nsid=0, flags=0x40, meta=0x0, cmd=(nvme_admin_get_log_page cdw10=70 00 03 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00)

Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: James Smart <james.smart@broadcom.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/target/core.c  |  3 ++
 drivers/nvme/target/nvmet.h |  9 ++++++
 drivers/nvme/trace.c        |  2 ++
 drivers/nvme/trace.h        | 60 +++++++++++++++++++++++++++++++++----
 4 files changed, 69 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index da2ea97042af..a94c7f9b02ae 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -10,6 +10,7 @@
 #include <linux/pci-p2pdma.h>
 #include <linux/scatterlist.h>
 
+#include "../trace.h"
 #include "nvmet.h"
 
 struct workqueue_struct *buffered_io_wq;
@@ -848,6 +849,8 @@ bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
 	req->error_loc = NVMET_NO_ERROR_LOC;
 	req->error_slba = 0;
 
+	trace_nvmet_req_init(req, req->cmd);
+
 	/* no support for fused commands yet */
 	if (unlikely(flags & (NVME_CMD_FUSE_FIRST | NVME_CMD_FUSE_SECOND))) {
 		req->error_loc = offsetof(struct nvme_common_command, flags);
diff --git a/drivers/nvme/target/nvmet.h b/drivers/nvme/target/nvmet.h
index c25d88fc9dec..2d569a1dc3f4 100644
--- a/drivers/nvme/target/nvmet.h
+++ b/drivers/nvme/target/nvmet.h
@@ -318,6 +318,15 @@ struct nvmet_req {
 	u64			error_slba;
 };
 
+static inline struct nvmet_ctrl *nvmet_req_to_ctrl(struct nvmet_req *req)
+{
+	struct nvmet_sq *sq = req->sq;
+
+	if (sq)
+		return sq->ctrl;
+	return NULL;
+}
+
 extern struct workqueue_struct *buffered_io_wq;
 
 static inline void nvmet_set_result(struct nvmet_req *req, u32 result)
diff --git a/drivers/nvme/trace.c b/drivers/nvme/trace.c
index 88dfadb68b92..8fe2dcee6a42 100644
--- a/drivers/nvme/trace.c
+++ b/drivers/nvme/trace.c
@@ -220,3 +220,5 @@ EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_setup_cmd);
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_complete_rq);
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_async_event);
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_sq);
+
+EXPORT_TRACEPOINT_SYMBOL_GPL(nvmet_req_init);
diff --git a/drivers/nvme/trace.h b/drivers/nvme/trace.h
index 783bc704514f..9af674ee0c3a 100644
--- a/drivers/nvme/trace.h
+++ b/drivers/nvme/trace.h
@@ -15,6 +15,7 @@
 #include <linux/trace_seq.h>
 
 #include "host/nvme.h"
+#include "target/nvmet.h"
 
 #define nvme_admin_opcode_name(opcode)	{ opcode, #opcode }
 #define show_admin_opcode_name(val)					\
@@ -103,12 +104,31 @@ static inline void __assign_disk_name(char *name, struct gendisk *disk)
 	else
 		memset(name, 0, DISK_NAME_LEN);
 }
+
+enum nvme_trace_type {
+	NVME_TRACE_HOST,
+	NVME_TRACE_TARGET,
+};
 #endif
 
-TRACE_EVENT(nvme_setup_cmd,
-	    TP_PROTO(struct request *req, struct nvme_command *cmd),
+/*
+ * XXX: If we can reuse nvme__cmd_[begin|end] event class without changing
+ *	caller sides not by variable agrument list here, we can update it
+ */
+#define set_trace_type(type, last)			\
+{							\
+	va_list ap;					\
+							\
+	va_start(ap, last);				\
+	type = va_arg(ap, enum nvme_trace_type);	\
+	va_end(ap);					\
+}
+
+DECLARE_EVENT_CLASS(nvme__cmd_begin,
+	    TP_PROTO(void *req, struct nvme_command *cmd, ...),
 	    TP_ARGS(req, cmd),
 	    TP_STRUCT__entry(
+		__field(enum nvme_trace_type, type)
 		__array(char, disk, DISK_NAME_LEN)
 		__field(int, ctrl_id)
 		__field(int, qid)
@@ -121,15 +141,29 @@ TRACE_EVENT(nvme_setup_cmd,
 		__array(u8, cdw10, 24)
 	    ),
 	    TP_fast_assign(
-		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
-		__entry->qid = nvme_req_qid(req);
+		set_trace_type(__entry->type, cmd);
+		if (__entry->type != NVME_TRACE_TARGET) {
+			__entry->ctrl_id = nvme_req(req)->ctrl->instance;
+			__entry->qid = nvme_req_qid(req);
+			__assign_disk_name(__entry->disk,
+					((struct request *) req)->rq_disk);
+		} else {
+			struct nvmet_ctrl *ctrl = nvmet_req_to_ctrl(req);
+			struct nvmet_sq *sq = ((struct nvmet_req *) req)->sq;
+			struct nvmet_ns *ns = ((struct nvmet_req *) req)->ns;
+
+			__entry->ctrl_id = ctrl ? ctrl->cntlid : 0;
+			__entry->qid = sq ? sq->qid : 0;
+			__assign_disk_name(__entry->disk, ns ?
+						ns->bdev->bd_disk : NULL);
+		}
+
 		__entry->opcode = cmd->common.opcode;
 		__entry->flags = cmd->common.flags;
 		__entry->cid = cmd->common.command_id;
 		__entry->nsid = le32_to_cpu(cmd->common.nsid);
 		__entry->fctype = __entry->nsid & 0xff;
 		__entry->metadata = le64_to_cpu(cmd->common.metadata);
-		__assign_disk_name(__entry->disk, req->rq_disk);
 		memcpy(__entry->cdw10, &cmd->common.cdw10,
 			sizeof(__entry->cdw10));
 	    ),
@@ -143,6 +177,22 @@ TRACE_EVENT(nvme_setup_cmd,
 					__entry->fctype, __entry->cdw10))
 );
 
+/*
+ * @req: (struct request *) req needs to be here for nvme common commands
+ */
+DEFINE_EVENT(nvme__cmd_begin, nvme_setup_cmd,
+	TP_PROTO(void *req, struct nvme_command *cmd, ...),
+	TP_ARGS(req, cmd, NVME_TRACE_HOST)
+);
+
+/*
+ * @req: (struct nvmet_req *) req needs to be here for nvme fabrics commands
+ */
+DEFINE_EVENT(nvme__cmd_begin, nvmet_req_init,
+	TP_PROTO(void *req, struct nvme_command *cmd, ...),
+	TP_ARGS(req, cmd, NVME_TRACE_TARGET)
+);
+
 TRACE_EVENT(nvme_complete_rq,
 	    TP_PROTO(struct request *req),
 	    TP_ARGS(req),
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
