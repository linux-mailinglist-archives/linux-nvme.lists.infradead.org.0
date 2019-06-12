Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CCD42649
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Jun 2019 14:47:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zmmURNfjjGet3xDyaTfy73i/3rYcksMNYAkv7KSN58Q=; b=tPTYtY4VMxE1iQ
	X67Q5xhwzQrUtV1IOaLHWakGmePwGkva0lnEVfg48ql0ymwjbk/F63ifUnt1Q+UqiCdzPsMMmQHTk
	bcdx5zQpx8jlaVAD9FPRnF835NSWikW0bbPDlus1ccnwcb36kQGrDWJPlDVgzMFAEiACsK0XRHnUq
	oDuJDTP5FpJKJY1oiuN9Ezu/L7cSzuRlhJHkmeU5wyofIhBgSvDGC5Uk00ssP9Yf3bMmjnpWGZgJR
	Ui0/1QalD0KGRHlYlWe4tAba1SZGpOZGQzjGFc9CcfT16+Plb4P8o5TUpZe2fAIjPptDyKnpP2c0w
	3ciPPR1q4sLRLl4Oj72g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2f8-0002cy-FV; Wed, 12 Jun 2019 12:47:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2di-0001kk-M7
 for linux-nvme@lists.infradead.org; Wed, 12 Jun 2019 12:46:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id x15so9640216pfq.0
 for <linux-nvme@lists.infradead.org>; Wed, 12 Jun 2019 05:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Jx/jDNnvl1I9vU561Bqw87jJa8oAFMuHRH44FkKrMBk=;
 b=YEHWZr0mfzrCaruKACq6Y4x4yvK60iwISMqtzBppvil01x9xr0MiNFpfRu0ZnLqBm9
 UuW75/ZjtQqFFoAB1nmAEhvyDCVmbFAnXuqiQbj6xy7dOesFzGVCA01Slm1TrJV+qNiC
 eztwN2v+XHBgx6D/nvU/9MtI9mWWzo36ROAcdpDUzAjpskE4EvtxuluGCWNQPTiedZZ/
 rAjt5Znt2pcK/WjAoySctJmJgTGYK692sHD21PI89qrcmWY8Rqhj7ICaV7HzNOj9C+CJ
 jXfTXJ10TRVqjLxfjqdP7ar3fRUmS+BaV6fb4ua0/MNqvjAJe5BeId9L6GyCtGQ0dq9A
 9m6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Jx/jDNnvl1I9vU561Bqw87jJa8oAFMuHRH44FkKrMBk=;
 b=V+Zlinz1F1BF6YdWCrnQ9h10YnvME37OOmsqzF1zNjvb01wGKXoIoD0ip2tw2KOGvC
 3oYjTpO390aixwQqtjGmZ3YzUZdECszUXx+3U5zE5SiWBfAj+ILkm3J4MvpJ1YC+4/I0
 ab0BaCZacEhJHYFsUKNXOfQjL3Rz1snX1jXVpSOWMMnVtl/TfgD2YIdzMX7+g6/FfLe+
 YBHZ81424uCot4MGHfciVwZJnTw1VGF9kLMbZqS8H9uXr98ECXGxAG6747d7mfgtf2Ot
 NjzwV4ETxMXpJBrkfH78Mn/7HxJAT9LjZbh4/ToxPdQ1NYGNNZwaJvf5yy1bFPD40gjn
 4sIA==
X-Gm-Message-State: APjAAAX8jU28U/ahKaxakJbliXuJrkaMKiaXqU8AI+8aVbz3GQg3rMGy
 Y7FILdcrot770F7IqGhhIULlEYntxSo=
X-Google-Smtp-Source: APXvYqyBZSF0lxp2k+2N2fw3ypQVpPur+Pu3zkHbRdWsIbq2XEah9giHpJbJ1pAzPGC2A6ELNtqnxw==
X-Received: by 2002:a17:90a:a09:: with SMTP id
 o9mr20963587pjo.95.1560343565163; 
 Wed, 12 Jun 2019 05:46:05 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 144sm26795479pfy.54.2019.06.12.05.46.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 05:46:04 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V8 5/5] nvmet: introduce target-side trace
Date: Wed, 12 Jun 2019 21:45:33 +0900
Message-Id: <20190612124533.10299-6-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
References: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054606_885543_4ADFF811 
X-CRM114-Status: GOOD (  21.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>,
 Sagi Grimberg <sagi@grimberg.me>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch introduces target-side request tracing.  As Christoph
suggested, the trace would not be in a core or module to avoid
disadvantages like cache miss:
  http://lists.infradead.org/pipermail/linux-nvme/2019-June/024721.html

The target-side trace code is entirely based on the Johannes's trace code
from the host side.  It has lots of codes duplicated, but it would be
better than having advantages mentioned above.

It also traces not only fabrics commands, but also nvme normal commands.
Once the codes to be shared gets bigger, then we can make it common as
suggsted.

This also removed the create_sq and create_cq trace parsing functions
because it will be done by the connect fabrics command.

Example:
  echo 1 > /sys/kernel/debug/tracing/event/nvmet/nvmet_req_init/enable
  echo 1 > /sys/kernel/debug/tracing/event/nvmet/nvmet_req_complete/enable
  cat /sys/kernel/debug/tracing/trace

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/target/Makefile |   3 +
 drivers/nvme/target/core.c   |   8 ++
 drivers/nvme/target/trace.c  | 202 +++++++++++++++++++++++++++++++++++
 drivers/nvme/target/trace.h  | 141 ++++++++++++++++++++++++
 4 files changed, 354 insertions(+)
 create mode 100644 drivers/nvme/target/trace.c
 create mode 100644 drivers/nvme/target/trace.h

diff --git a/drivers/nvme/target/Makefile b/drivers/nvme/target/Makefile
index 8c3ad0fb6860..2b33836f3d3e 100644
--- a/drivers/nvme/target/Makefile
+++ b/drivers/nvme/target/Makefile
@@ -1,5 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 
+ccflags-y				+= -I$(src)
+
 obj-$(CONFIG_NVME_TARGET)		+= nvmet.o
 obj-$(CONFIG_NVME_TARGET_LOOP)		+= nvme-loop.o
 obj-$(CONFIG_NVME_TARGET_RDMA)		+= nvmet-rdma.o
@@ -14,3 +16,4 @@ nvmet-rdma-y	+= rdma.o
 nvmet-fc-y	+= fc.o
 nvme-fcloop-y	+= fcloop.o
 nvmet-tcp-y	+= tcp.o
+nvmet-$(CONFIG_TRACING)	+= trace.o
diff --git a/drivers/nvme/target/core.c b/drivers/nvme/target/core.c
index 0587707b1a25..dad0243c7c96 100644
--- a/drivers/nvme/target/core.c
+++ b/drivers/nvme/target/core.c
@@ -10,6 +10,9 @@
 #include <linux/pci-p2pdma.h>
 #include <linux/scatterlist.h>
 
+#define CREATE_TRACE_POINTS
+#include "trace.h"
+
 #include "nvmet.h"
 
 struct workqueue_struct *buffered_io_wq;
@@ -691,6 +694,9 @@ static void __nvmet_req_complete(struct nvmet_req *req, u16 status)
 
 	if (unlikely(status))
 		nvmet_set_error(req, status);
+
+	trace_nvmet_req_complete(req);
+
 	if (req->ns)
 		nvmet_put_namespace(req->ns);
 	req->ops->queue_response(req);
@@ -850,6 +856,8 @@ bool nvmet_req_init(struct nvmet_req *req, struct nvmet_cq *cq,
 	req->error_loc = NVMET_NO_ERROR_LOC;
 	req->error_slba = 0;
 
+	trace_nvmet_req_init(req, req->cmd);
+
 	/* no support for fused commands yet */
 	if (unlikely(flags & (NVME_CMD_FUSE_FIRST | NVME_CMD_FUSE_SECOND))) {
 		req->error_loc = offsetof(struct nvme_common_command, flags);
diff --git a/drivers/nvme/target/trace.c b/drivers/nvme/target/trace.c
new file mode 100644
index 000000000000..ce6163ed4cab
--- /dev/null
+++ b/drivers/nvme/target/trace.c
@@ -0,0 +1,202 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * NVM Express target device driver tracepoints
+ * Copyright (c) 2018 Johannes Thumshirn, SUSE Linux GmbH
+ */
+
+#include <asm/unaligned.h>
+#include "trace.h"
+
+static const char *nvme_trace_admin_identify(struct trace_seq *p, u8 *cdw10)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+	u8 cns = cdw10[0];
+	u16 ctrlid = get_unaligned_le16(cdw10 + 2);
+
+	trace_seq_printf(p, "cns=%u, ctrlid=%u", cns, ctrlid);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+static const char *nvme_trace_admin_get_features(struct trace_seq *p,
+						 u8 *cdw10)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+	u8 fid = cdw10[0];
+	u8 sel = cdw10[1] & 0x7;
+	u32 cdw11 = get_unaligned_le32(cdw10 + 4);
+
+	trace_seq_printf(p, "fid=0x%x sel=0x%x cdw11=0x%x", fid, sel, cdw11);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+static const char *nvme_trace_read_write(struct trace_seq *p, u8 *cdw10)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+	u64 slba = get_unaligned_le64(cdw10);
+	u16 length = get_unaligned_le16(cdw10 + 8);
+	u16 control = get_unaligned_le16(cdw10 + 10);
+	u32 dsmgmt = get_unaligned_le32(cdw10 + 12);
+	u32 reftag = get_unaligned_le32(cdw10 +  16);
+
+	trace_seq_printf(p,
+			 "slba=%llu, len=%u, ctrl=0x%x, dsmgmt=%u, reftag=%u",
+			 slba, length, control, dsmgmt, reftag);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+static const char *nvme_trace_dsm(struct trace_seq *p, u8 *cdw10)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+
+	trace_seq_printf(p, "nr=%u, attributes=%u",
+			 get_unaligned_le32(cdw10),
+			 get_unaligned_le32(cdw10 + 4));
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+static const char *nvme_trace_common(struct trace_seq *p, u8 *cdw10)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+
+	trace_seq_printf(p, "cdw10=%*ph", 24, cdw10);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+const char *nvme_trace_parse_admin_cmd(struct trace_seq *p,
+				       u8 opcode, u8 *cdw10)
+{
+	switch (opcode) {
+	case nvme_admin_identify:
+		return nvme_trace_admin_identify(p, cdw10);
+	case nvme_admin_get_features:
+		return nvme_trace_admin_get_features(p, cdw10);
+	default:
+		return nvme_trace_common(p, cdw10);
+	}
+}
+
+const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p,
+				     u8 opcode, u8 *cdw10)
+{
+	switch (opcode) {
+	case nvme_cmd_read:
+	case nvme_cmd_write:
+	case nvme_cmd_write_zeroes:
+		return nvme_trace_read_write(p, cdw10);
+	case nvme_cmd_dsm:
+		return nvme_trace_dsm(p, cdw10);
+	default:
+		return nvme_trace_common(p, cdw10);
+	}
+}
+
+static const char *nvme_trace_fabrics_property_set(struct trace_seq *p, u8 *spc)
+{
+       const char *ret = trace_seq_buffer_ptr(p);
+       u8 attrib = spc[0];
+       u32 ofst = get_unaligned_le32(spc + 4);
+       u64 value = get_unaligned_le64(spc + 8);
+
+       trace_seq_printf(p, "attrib=%u, ofst=0x%x, value=0x%llx",
+                               attrib, ofst, value);
+       trace_seq_putc(p, 0);
+
+       return ret;
+}
+
+static const char *nvme_trace_fabrics_connect(struct trace_seq *p, u8 *spc)
+{
+       const char *ret = trace_seq_buffer_ptr(p);
+       u16 recfmt = get_unaligned_le16(spc);
+       u16 qid = get_unaligned_le16(spc + 2);
+       u16 sqsize = get_unaligned_le16(spc + 4);
+       u8 cattr = spc[6];
+       u32 kato = get_unaligned_le32(spc + 8);
+
+       trace_seq_printf(p, "recfmt=%u, qid=%u, sqsize=%u, cattr=%u, kato=%u",
+                               recfmt, qid, sqsize, cattr, kato);
+       trace_seq_putc(p, 0);
+
+       return ret;
+}
+
+static const char *nvme_trace_fabrics_property_get(struct trace_seq *p, u8 *spc)
+{
+       const char *ret = trace_seq_buffer_ptr(p);
+       u8 attrib = spc[0];
+       u32 ofst = get_unaligned_le32(spc + 4);
+
+       trace_seq_printf(p, "attrib=%u, ofst=0x%x", attrib, ofst);
+       trace_seq_putc(p, 0);
+
+       return ret;
+}
+
+static const char *nvme_trace_fabrics_common(struct trace_seq *p, u8 *spc)
+{
+       const char *ret = trace_seq_buffer_ptr(p);
+
+       trace_seq_printf(p, "spcecific=%*ph", 24, spc);
+       trace_seq_putc(p, 0);
+
+       return ret;
+}
+
+const char *nvme_trace_parse_fabrics_cmd(struct trace_seq *p,
+                                        u8 fctype, u8 *spc)
+{
+       switch (fctype) {
+       case nvme_fabrics_type_property_set:
+               return nvme_trace_fabrics_property_set(p, spc);
+       case nvme_fabrics_type_connect:
+               return nvme_trace_fabrics_connect(p, spc);
+       case nvme_fabrics_type_property_get:
+               return nvme_trace_fabrics_property_get(p, spc);
+       default:
+               return nvme_trace_fabrics_common(p, spc);
+       }
+}
+
+const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+
+	if (*name)
+		trace_seq_printf(p, "disk=%s, ", name);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+const char *nvmet_trace_ctrl_name(struct trace_seq *p, struct nvmet_ctrl *ctrl)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+
+	/*
+	 * XXX: We don't know the controller instance before executing the
+	 * connect command itself because the connect command for the admin
+	 * queue will not provide the cntlid which will be allocated in this
+	 * command.  In case of io queues, the controller instance will be
+	 * mapped by the extra data of the connect command.
+	 * If we can know the extra data of the connect command in this stage,
+	 * we can update this print statement later.
+	 */
+	if (ctrl)
+		trace_seq_printf(p, "%d", ctrl->cntlid);
+	else
+		trace_seq_printf(p, "_");
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
diff --git a/drivers/nvme/target/trace.h b/drivers/nvme/target/trace.h
new file mode 100644
index 000000000000..49e62dfa14de
--- /dev/null
+++ b/drivers/nvme/target/trace.h
@@ -0,0 +1,141 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * NVM Express target device driver tracepoints
+ * Copyright (c) 2018 Johannes Thumshirn, SUSE Linux GmbH
+ *
+ * This is entirely based on drivers/nvme/host/trace.h
+ */
+
+#undef TRACE_SYSTEM
+#define TRACE_SYSTEM nvmet
+
+#if !defined(_TRACE_NVMET_H) || defined(TRACE_HEADER_MULTI_READ)
+#define _TRACE_NVMET_H
+
+#include <linux/nvme.h>
+#include <linux/tracepoint.h>
+#include <linux/trace_seq.h>
+
+#include "nvmet.h"
+
+const char *nvme_trace_parse_admin_cmd(struct trace_seq *p, u8 opcode,
+		u8 *cdw10);
+const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p, u8 opcode,
+		u8 *cdw10);
+const char *nvme_trace_parse_fabrics_cmd(struct trace_seq *p, u8 fctype,
+		u8 *spc);
+
+#define parse_nvme_cmd(qid, opcode, fctype, cdw10)			\
+	((opcode) == nvme_fabrics_command ?				\
+	 nvme_trace_parse_fabrics_cmd(p, fctype, cdw10) :		\
+	(qid ?								\
+	 nvme_trace_parse_nvm_cmd(p, opcode, cdw10) :			\
+	 nvme_trace_parse_admin_cmd(p, opcode, cdw10)))
+
+const char *nvmet_trace_ctrl_name(struct trace_seq *p, struct nvmet_ctrl *ctrl);
+#define __print_ctrl_name(ctrl)				\
+	nvmet_trace_ctrl_name(p, ctrl)
+
+const char *nvme_trace_disk_name(struct trace_seq *p, char *name);
+#define __print_disk_name(name)				\
+	nvme_trace_disk_name(p, name)
+
+#ifndef TRACE_HEADER_MULTI_READ
+static inline struct nvmet_ctrl *nvmet_req_to_ctrl(struct nvmet_req *req)
+{
+	return req->sq->ctrl;
+}
+
+static inline void __assign_disk_name(char *name, struct nvmet_req *req,
+		bool init)
+{
+	struct nvmet_ctrl *ctrl = nvmet_req_to_ctrl(req);
+	struct nvmet_ns *ns;
+
+	if ((init && req->sq->qid) || (!init && req->cq->qid)) {
+		ns = nvmet_find_namespace(ctrl, req->cmd->rw.nsid);
+		strncpy(name, ns->device_path, DISK_NAME_LEN);
+		return;
+	}
+
+	memset(name, 0, DISK_NAME_LEN);
+}
+#endif
+
+TRACE_EVENT(nvmet_req_init,
+	TP_PROTO(struct nvmet_req *req, struct nvme_command *cmd),
+	TP_ARGS(req, cmd),
+	TP_STRUCT__entry(
+		__field(struct nvme_command *, cmd)
+		__field(struct nvmet_ctrl *, ctrl)
+		__array(char, disk, DISK_NAME_LEN)
+		__field(int, qid)
+		__field(u16, cid)
+		__field(u8, opcode)
+		__field(u8, fctype)
+		__field(u8, flags)
+		__field(u32, nsid)
+		__field(u64, metadata)
+		__array(u8, cdw10, 24)
+	),
+	TP_fast_assign(
+		__entry->cmd = cmd;
+		__entry->ctrl = nvmet_req_to_ctrl(req);
+		__assign_disk_name(__entry->disk, req, true);
+		__entry->qid = req->sq->qid;
+		__entry->cid = le16_to_cpu(cmd->common.command_id);
+		__entry->opcode = cmd->common.opcode;
+		__entry->fctype = cmd->fabrics.fctype;
+		__entry->flags = cmd->common.flags;
+		__entry->nsid = le32_to_cpu(cmd->common.nsid);
+		__entry->metadata = le64_to_cpu(cmd->common.metadata);
+		memcpy(__entry->cdw10, &cmd->common.cdw10,
+			sizeof(__entry->cdw10));
+	),
+	TP_printk("nvmet%s: %sqid=%d, cmdid=%u, nsid=%u, flags=%#x, "
+		  "meta=%#llx, cmd=(%s, %s)",
+		__print_ctrl_name(__entry->ctrl),
+		__print_disk_name(__entry->disk),
+		__entry->qid, __entry->cid, __entry->nsid,
+		__entry->flags, __entry->metadata,
+		show_opcode_name(__entry->qid, __entry->opcode,
+				__entry->fctype),
+		parse_nvme_cmd(__entry->qid, __entry->opcode,
+				__entry->fctype, __entry->cdw10))
+);
+
+TRACE_EVENT(nvmet_req_complete,
+	TP_PROTO(struct nvmet_req *req),
+	TP_ARGS(req),
+	TP_STRUCT__entry(
+		__field(struct nvmet_ctrl *, ctrl)
+		__array(char, disk, DISK_NAME_LEN)
+		__field(int, qid)
+		__field(int, cid)
+		__field(u64, result)
+		__field(u16, status)
+	),
+	TP_fast_assign(
+		__entry->ctrl = nvmet_req_to_ctrl(req);
+		__entry->qid = req->cq->qid;
+		__entry->cid = req->cqe->command_id;
+		__entry->result = le64_to_cpu(req->cqe->result.u64);
+		__entry->status = le16_to_cpu(req->cqe->status) >> 1;
+		__assign_disk_name(__entry->disk, req, false);
+	),
+	TP_printk("nvmet%s: %sqid=%d, cmdid=%u, res=%#llx, status=%#x",
+		__print_ctrl_name(__entry->ctrl),
+		__print_disk_name(__entry->disk),
+		__entry->qid, __entry->cid, __entry->result, __entry->status)
+
+);
+
+#endif /* _TRACE_NVMET_H */
+
+#undef TRACE_INCLUDE_PATH
+#define TRACE_INCLUDE_PATH .
+#undef TRACE_INCLUDE_FILE
+#define TRACE_INCLUDE_FILE trace
+
+/* This part must be outside protection */
+#include <trace/define_trace.h>
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
