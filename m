Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E81A15493
	for <lists+linux-nvme@lfdr.de>; Mon,  6 May 2019 21:47:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DfRuHTqYUZlY2glptq2/h/9lT5nFp6zHE8Sz/Dbv4v8=; b=jv7ksnArRGxmU1UvxWdTZP5wS6
	VYVzSb6VE4QQwym31FQsERKityct6+WinDHjo9MGWPWv1QiBfRlIptvVuIj1TSgD1B5rALQH4yWS8
	utsngpVW06kWYGrvuIyAFWeR33N6Pz6kmV8sNfNY672CNsqtwN6whkh9N61ZDxmGMJS8v1txCfAA8
	ZLPJLjfBysbKZ7LDF9neBFP8pxxDy5svl9BZ8k9g2ueqnSroMXwCIC0MvQQjsdsZyoS97P5hW3L6M
	iUp4//ERoxhJ7GqRZa5RNu+IsiCrvo7w5J9ppvZ4iScALiqvdb4Plx2JOQK3bsfOz3+Woj+uQc+GD
	tsUwBu9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNja6-0006RA-70; Mon, 06 May 2019 19:47:22 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNjZv-0006JD-7F
 for linux-nvme@lists.infradead.org; Mon, 06 May 2019 19:47:16 +0000
Received: by mail-pg1-x541.google.com with SMTP id i21so6964153pgi.12
 for <linux-nvme@lists.infradead.org>; Mon, 06 May 2019 12:47:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=qz/lwHzM3vI6i135CS0cfyiTRLR0qQskMcT6jYxW1aw=;
 b=Rga/Mg23WuhjUu+mLs4TyxlJ+/0k0DoJF93AR8bAjD3Jnt2uUDR1Dl+jjhTiwhTaWs
 IW+PrVFmNuFnn9VHilZNoFf5ro3QPDLKql4croZcbjv90Y9klQHuJYofsEYA+nHgLJYS
 EWkU0PewLZtjnwiVklengvR9UuV6aXB97C3+uF9l5PYEd4t5D1t/EhBOUTRFIbyDNd81
 GEMxdgf8smeLQvcyGaHdYp5cD17z/y34j4xiyrctj9vMWfzGfnU4tGOu2/acLzMOJkO2
 QsorPCFoh3qS/0tBcZmQSMc38eE4M76Xw2qWdcAs9bkZILZdCKTyPW0FKb06H0qJVBUm
 wf6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=qz/lwHzM3vI6i135CS0cfyiTRLR0qQskMcT6jYxW1aw=;
 b=O9hWfiQYoH+ulkwgG787GznrBfp456M65V6yu6N6FbmkstXMXycBs4YatguJEcXXtW
 TS4zniINzkrjZUsfudzNYZCSdC7Aw8BSFA8pRCmHg4nwE8+DMwK3Dp9SjmnD0pn2np3u
 b5OT3hRBWTY9AMahXlq8lDEqofViCYhocFEnMf//y8RdBaYdha1naK8uD/nuwLnDIGM5
 wHKPZFBvuc27nVo1x8U1XbCtv1tgFVIpAZVJuTYZ7eg5tnwvJtsbhTf6cS+dulYvrIhD
 2kJ9D51qW/BKtI5Gal4mcW80oGYUC+tKTkE+oE3orjxsVhLhg6lB9ohm7314kNYe+OaU
 tiGw==
X-Gm-Message-State: APjAAAXJIAjSTwG0YepQ2h3na+n2iZjucuu1dvPsw12YEBAKlDIXL+34
 3ILHVnL939+o+gAzVoPNv+hu0HWOPXU=
X-Google-Smtp-Source: APXvYqzPcksmr4mCH1DbFnrDXzhQ0YarsVfuWOF1znbgItPwCBCdldfT4yd5leTwcglWdhccUHj87A==
X-Received: by 2002:a65:500d:: with SMTP id f13mr35786050pgo.250.1557172030269; 
 Mon, 06 May 2019 12:47:10 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id b18sm7140073pfp.32.2019.05.06.12.47.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 12:47:09 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 2/2] nvme-trace: Add support to trace fabrics command
Date: Tue,  7 May 2019 04:46:44 +0900
Message-Id: <20190506194644.11109-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506194644.11109-1-minwoo.im.dev@gmail.com>
References: <20190506194644.11109-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_124711_867644_1271F917 
X-CRM114-Status: GOOD (  16.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Minwoo Im <minwoo.im@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch supports fabrics command decoded in trace.  Fabrics commands
are to be decoded with (opcode, fctype) pair.

Now the core driver traces command in a single place of a single place
nvme_setup_cmd() so that it might be easier if we checks whether the
given command is for fabrics or not in that place.

NVMe-oF spec 1.0a contains authentication-related commands also, but now
we don't have any implementation for them so that we can just skip them
in this patch.

Changes to V1:
  - fabrics commands should also be decoded, not just showing that it's
    a fabrics command. (Christoph)
  - do not make it within nvme admin commands (Chaitanya)

Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/core.c  |  7 +++-
 drivers/nvme/host/trace.c | 67 +++++++++++++++++++++++++++++++++++++++
 drivers/nvme/host/trace.h | 37 +++++++++++++++++++++
 3 files changed, 110 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index cd16d98d1f1a..eeda3ce9afaa 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -733,7 +733,12 @@ blk_status_t nvme_setup_cmd(struct nvme_ns *ns, struct request *req,
 	}
 
 	cmd->common.command_id = req->tag;
-	trace_nvme_setup_cmd(req, cmd);
+
+	if (likely(!nvme_is_fabrics(cmd)))
+		trace_nvme_setup_cmd(req, cmd);
+	else
+		trace_nvme_setup_fabrics_cmd(req, cmd);
+
 	return ret;
 }
 EXPORT_SYMBOL_GPL(nvme_setup_cmd);
diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index 5f24ea7a28eb..0e027a49e3a1 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -135,6 +135,73 @@ const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p,
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
diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index 97d3c77365b8..fa3a20007b56 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -57,8 +57,17 @@
 		nvme_opcode_name(nvme_cmd_resv_acquire),	\
 		nvme_opcode_name(nvme_cmd_resv_release))
 
+#define nvme_fabrics_type_name(type)	{ type, #type }
+#define show_nvm_fabrics_type_name(val)					\
+	__print_symbolic(val,						\
+		nvme_fabrics_type_name(nvme_fabrics_type_property_set),	\
+		nvme_fabrics_type_name(nvme_fabrics_type_connect),	\
+		nvme_fabrics_type_name(nvme_fabrics_type_property_get))
+
 #define show_opcode_name(qid, opcode)					\
 	(qid ? show_nvm_opcode_name(opcode) : show_admin_opcode_name(opcode))
+#define show_fabric_type_name(type)					\
+	show_nvm_fabrics_type_name(type)
 
 const char *nvme_trace_parse_admin_cmd(struct trace_seq *p, u8 opcode,
 		u8 *cdw10);
@@ -70,6 +79,12 @@ const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p, u8 opcode,
 	 nvme_trace_parse_nvm_cmd(p, opcode, cdw10) : 		\
 	 nvme_trace_parse_admin_cmd(p, opcode, cdw10))
 
+const char *nvme_trace_parse_fabrics_cmd(struct trace_seq *p,
+		u8 fctype, u8 *spc);
+
+#define parse_nvmf_cmd(fctype, spc)				\
+	nvme_trace_parse_fabrics_cmd(p, fctype, spc)
+
 const char *nvme_trace_disk_name(struct trace_seq *p, char *name);
 #define __print_disk_name(name)				\
 	nvme_trace_disk_name(p, name)
@@ -118,6 +133,28 @@ TRACE_EVENT(nvme_setup_cmd,
 		      parse_nvme_cmd(__entry->qid, __entry->opcode, __entry->cdw10))
 );
 
+TRACE_EVENT(nvme_setup_fabrics_cmd,
+	    TP_PROTO(struct request *req, struct nvme_command *cmd),
+	    TP_ARGS(req, cmd),
+	    TP_STRUCT__entry(
+		__field(int, ctrl_id)
+		__field(u16, cid)
+		__field(u8, fctype)
+		__array(u8, spc, 24)
+	    ),
+	    TP_fast_assign(
+		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
+		__entry->cid = cmd->fabrics.command_id;
+		__entry->fctype = cmd->fabrics.fctype;
+		memcpy(__entry->spc, &cmd->fabrics.ts,
+			sizeof(__entry->spc));
+	    ),
+	    TP_printk("nvme%d: cmdid=%u, cmd=(%s %s)",
+		      __entry->ctrl_id, __entry->cid,
+		      show_fabric_type_name(__entry->fctype),
+		      parse_nvmf_cmd(__entry->fctype, __entry->spc))
+);
+
 TRACE_EVENT(nvme_complete_rq,
 	    TP_PROTO(struct request *req),
 	    TP_ARGS(req),
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
