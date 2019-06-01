Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6229431A0C
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 09:22:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MKYbNjnS2TFSqwISLJxvoiHhxIxk+b2MPDGoUUdRdjk=; b=M5OPpCw0i4sdWh
	K2KEYXgciEGhiOtH6T4oXg2Nl++4xVvcDsIR1vvOv2f2PjdXNSCWG8eMYGLxZvjqp7ZUmetQC9s9C
	nsaj6iXBwCUQ/zuqdn5roGflNBoFRZwoavjGWclZ1QmDzvR+LD0rYOoYJ4dMs3pULgKIwNmyRFVaC
	ULKZ9tVbVwcxts1DoSrOvUbidihGRzr4nxIUpCcZFYwavQI6XGN9yjzOVPAiqcogErDdUOLTLhwHO
	PvvQ9jijSCPoLv+1zl7LeLzCamYtMLjh0+YwTAdn/xFHZ/Cex4cIfFSvEDfAnX7f1ywZ2sOfoghNs
	A9kMKikZwSoJDFtF3c3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWyLL-00079n-Cj; Sat, 01 Jun 2019 07:22:19 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWyL9-0006z0-2S
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 07:22:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id a186so6855599pfa.5
 for <linux-nvme@lists.infradead.org>; Sat, 01 Jun 2019 00:22:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=IwFtpEqcc+Ihc8ZeRE6nfuJX9xGEXRmFzh5RyHLtjsI=;
 b=jUTgM8hq0ITou8nlGlz3HxsI+jkr4dlgCqC956LfEt8uxi4qcVmdKqqh/Yd6N8IXyY
 is5hDL5P2WXLF31L/7DELw5EbKJk09AdML9R6BeKnjJephGS9zKpFX3PiykQ9H1eJeku
 Tk+IGW/ad4kJ2GEe7UtMnwvKtoG8qawvCNiBSSZ45y03fzwy6fILSqdpmTbWoeTC6oTZ
 itvf3HIuNmHGpDO04s0POQzEM/vBk8iqOWzGY/GyrvWDcx6+Ny+ZO1lBwNxJTOn9u11l
 YI/ZS7aZevawlcZDC/uABu7uk7cjJrtUHF9QZZ5IUHtRSfGzD0ptTiyUDyn1z3IQLiSc
 Y4gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=IwFtpEqcc+Ihc8ZeRE6nfuJX9xGEXRmFzh5RyHLtjsI=;
 b=HujE7oRTp4P2tRJyqutvnFBZQZf5NOFRpmFGBDbo7cmI6t5wrUf6Cg2FQJoIHJ5Nw6
 aStyYiiaMN77Db6Q+tP4I1eAntLk4NPHf2anp6ILoX7jhqq65sH3YA9qUFvJWFpmWPwF
 1wRqRbH+x5XNmQO+Rbivs4HoDvSeHr38UIf0MnRfONmFkcVstB36Qu3byVgj7N2EpRo2
 d9gx2CnJF86Klxjzz8bDc74jGorYjLNboQHuG4Xo57BFOfHaoVXvgVFYC0LfwMpeb5gY
 vKKkIzUQbETGhBlYcc+xMQ2x+3oPP4FbMvzhYIXFRoBxbD+9CrTDiXmSsKto0Z12Ey0+
 Mr8g==
X-Gm-Message-State: APjAAAW6dnIaP9gyob+CtGVtV/0yJvqm4Vz/KnmSFEXgfoO9lW0ivi8/
 CJvWR27k/gcA8H5Ic4wgaS8Z6viCtZY=
X-Google-Smtp-Source: APXvYqx3FRqads5tqD+NaPYzqd1gtlyjuVWW+laIiNBXWVR09nhWVWUaZbYV1eapr7+G0sM6GxKLWg==
X-Received: by 2002:a65:44cb:: with SMTP id g11mr13382689pgs.193.1559373725830; 
 Sat, 01 Jun 2019 00:22:05 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id t33sm7881200pjb.1.2019.06.01.00.22.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 Jun 2019 00:22:05 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 2/5] nvme-trace: Support tracing fabrics commands from
 host-side
Date: Sat,  1 Jun 2019 16:21:40 +0900
Message-Id: <20190601072143.21233-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
References: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_002207_280128_866EB8D6 
X-CRM114-Status: GOOD (  15.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Christoph Hellwig <hch@lst.de>, Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch adds support for tracing fabrics commands detected from
host-side.  We can have trace_nvme_setup_cmd for nvme and nvme fabrics
both even fabrics submission queue entry does not have valid fields in
where nvme's fields are valid.

This patch modifies existing parse_nvme_cmd to have fctype as an
argument to support fabrics command which will be ignored in case of
nvme common case.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: James Smart <james.smart@broadcom.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/trace.c | 67 ++++++++++++++++++++++++++++++++++++++++++++
 drivers/nvme/trace.h | 41 +++++++++++++++++++++------
 2 files changed, 100 insertions(+), 8 deletions(-)

diff --git a/drivers/nvme/trace.c b/drivers/nvme/trace.c
index a2c8186d122d..88dfadb68b92 100644
--- a/drivers/nvme/trace.c
+++ b/drivers/nvme/trace.c
@@ -137,6 +137,73 @@ const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p,
 	}
 }
 
+static const char *nvme_trace_fabrics_property_set(struct trace_seq *p, u8 *spc)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+	u8 attrib = spc[0];
+	u32 ofst = get_unaligned_le32(spc + 4);
+	u64 value = get_unaligned_le64(spc + 8);
+
+	trace_seq_printf(p, "attrib=%u, ofst=0x%x, value=0x%llx",
+				attrib, ofst, value);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+static const char *nvme_trace_fabrics_connect(struct trace_seq *p, u8 *spc)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+	u16 recfmt = get_unaligned_le16(spc);
+	u16 qid = get_unaligned_le16(spc + 2);
+	u16 sqsize = get_unaligned_le16(spc + 4);
+	u8 cattr = spc[6];
+	u32 kato = get_unaligned_le32(spc + 8);
+
+	trace_seq_printf(p, "recfmt=%u, qid=%u, sqsize=%u, cattr=%u, kato=%u",
+				recfmt, qid, sqsize, cattr, kato);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+static const char *nvme_trace_fabrics_property_get(struct trace_seq *p, u8 *spc)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+	u8 attrib = spc[0];
+	u32 ofst = get_unaligned_le32(spc + 4);
+
+	trace_seq_printf(p, "attrib=%u, ofst=0x%x", attrib, ofst);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+static const char *nvme_trace_fabrics_common(struct trace_seq *p, u8 *spc)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+
+	trace_seq_printf(p, "spcecific=%*ph", 24, spc);
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
+const char *nvme_trace_parse_fabrics_cmd(struct trace_seq *p,
+					 u8 fctype, u8 *spc)
+{
+	switch (fctype) {
+	case nvme_fabrics_type_property_set:
+		return nvme_trace_fabrics_property_set(p, spc);
+	case nvme_fabrics_type_connect:
+		return nvme_trace_fabrics_connect(p, spc);
+	case nvme_fabrics_type_property_get:
+		return nvme_trace_fabrics_property_get(p, spc);
+	default:
+		return nvme_trace_fabrics_common(p, spc);
+	}
+}
+
 const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
 {
 	const char *ret = trace_seq_buffer_ptr(p);
diff --git a/drivers/nvme/trace.h b/drivers/nvme/trace.h
index 2ecd4ff18e99..783bc704514f 100644
--- a/drivers/nvme/trace.h
+++ b/drivers/nvme/trace.h
@@ -57,18 +57,39 @@
 		nvme_opcode_name(nvme_cmd_resv_acquire),	\
 		nvme_opcode_name(nvme_cmd_resv_release))
 
-#define show_opcode_name(qid, opcode)					\
-	(qid ? show_nvm_opcode_name(opcode) : show_admin_opcode_name(opcode))
+#define nvme_fabrics_type_name(type)	{ type, #type }
+#define show_fabrics_type_name(type)					\
+	__print_symbolic(type,						\
+		nvme_fabrics_type_name(nvme_fabrics_type_property_set),	\
+		nvme_fabrics_type_name(nvme_fabrics_type_connect),	\
+		nvme_fabrics_type_name(nvme_fabrics_type_property_get))
+
+/*
+ * If not fabrics, fctype will be ignored.
+ */
+#define show_opcode_name(qid, opcode, fctype)				\
+	((opcode != nvme_fabrics_command) ?				\
+		(qid ?							\
+			show_nvm_opcode_name(opcode) :			\
+			show_admin_opcode_name(opcode)) :		\
+		show_fabrics_type_name(fctype))
 
 const char *nvme_trace_parse_admin_cmd(struct trace_seq *p, u8 opcode,
 		u8 *cdw10);
 const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p, u8 opcode,
 		u8 *cdw10);
+const char *nvme_trace_parse_fabrics_cmd(struct trace_seq *p,
+		u8 fctype, u8 *spc);
 
-#define parse_nvme_cmd(qid, opcode, cdw10) 			\
-	(qid ?							\
-	 nvme_trace_parse_nvm_cmd(p, opcode, cdw10) : 		\
-	 nvme_trace_parse_admin_cmd(p, opcode, cdw10))
+/*
+ * If not fabrics, fctype will be ignored.
+ */
+#define parse_nvme_cmd(qid, opcode, fctype, cdw10)			\
+	((opcode != nvme_fabrics_command) ?				\
+		(qid ?							\
+			nvme_trace_parse_nvm_cmd(p, opcode, cdw10) : 	\
+			nvme_trace_parse_admin_cmd(p, opcode, cdw10)) :	\
+		nvme_trace_parse_fabrics_cmd(p, fctype, cdw10))
 
 const char *nvme_trace_disk_name(struct trace_seq *p, char *name);
 #define __print_disk_name(name)				\
@@ -95,6 +116,7 @@ TRACE_EVENT(nvme_setup_cmd,
 		__field(u8, flags)
 		__field(u16, cid)
 		__field(u32, nsid)
+		__field(u8, fctype)
 		__field(u64, metadata)
 		__array(u8, cdw10, 24)
 	    ),
@@ -105,6 +127,7 @@ TRACE_EVENT(nvme_setup_cmd,
 		__entry->flags = cmd->common.flags;
 		__entry->cid = cmd->common.command_id;
 		__entry->nsid = le32_to_cpu(cmd->common.nsid);
+		__entry->fctype = __entry->nsid & 0xff;
 		__entry->metadata = le64_to_cpu(cmd->common.metadata);
 		__assign_disk_name(__entry->disk, req->rq_disk);
 		memcpy(__entry->cdw10, &cmd->common.cdw10,
@@ -114,8 +137,10 @@ TRACE_EVENT(nvme_setup_cmd,
 		      __entry->ctrl_id, __print_disk_name(__entry->disk),
 		      __entry->qid, __entry->cid, __entry->nsid,
 		      __entry->flags, __entry->metadata,
-		      show_opcode_name(__entry->qid, __entry->opcode),
-		      parse_nvme_cmd(__entry->qid, __entry->opcode, __entry->cdw10))
+		      show_opcode_name(__entry->qid, __entry->opcode,
+					__entry->fctype),
+		      parse_nvme_cmd(__entry->qid, __entry->opcode,
+					__entry->fctype, __entry->cdw10))
 );
 
 TRACE_EVENT(nvme_complete_rq,
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
