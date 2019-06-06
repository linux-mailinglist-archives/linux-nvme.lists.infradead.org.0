Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DD5E37D85
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 21:46:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mdDbrIV2d7aAXI6V3Zgmf2mKyhLLt/Y6E4dYYSUzJEE=; b=ozVRi2YVak6VOe
	JQyD3VVNLc2Yfrj3q7VL3vA1GtK0i0YGj4QPwxNg+vGmq3qvgpNZyy9VyUIVsy18fFLb6mMoHtwA3
	hNsmI2GlLUvmVZmGVuibZnERrz3Ppww9/c+cc3YpvV4UokRqByavk9W/UPKy3sz4Fqosh98l631bQ
	pGwG4eeeRjCJryv8RPYqhobuPvNcK63HOji4A1Mo6uPKZ7WCLmu0xC9PfQIm0K5ygoXqTTUi/rT1G
	gNZBJxYArWnWTI1+Wvv/h4WOmjW79H2+1dfEWEaPwMWbWr8EEaaud6pcRMml1YLSVscz7qBwDS0AZ
	42OH5ZDhyjKGg/ZM4Jxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyLF-0003jJ-Oy; Thu, 06 Jun 2019 19:46:29 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyKV-0002my-Ad
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 19:45:52 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so1936321pgl.2
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 12:45:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=yU+2DsWMX4mUvU/nFnKZXAKrFl9OfXq8ulfeUcJvwy8=;
 b=rpiyoB3DMGP8+jWp0sfR0FpBBj2PoHsqP3O4bZb7RTSAFia3eNgEIsz2fNwvq3poDL
 G8G6aueTzU4O/TP1aYx+9k9NhHrqpU6+yQ0xitFGMD1aTvuDn45bL4pUAAe/7TjC5E94
 4rE7d93wRUlkGrsaViAtbl3MG4nVafhtw1GOa8RKtkc1JXRMam/d9H5dLCOtIICn170C
 7e4ofDzHR8QvVDb26s2Op8D7dR9aNa71bHSOGqZqmvazj8imqN2519Aajy5JCSaXc6hd
 U3KYg2ZJ86iB9KiYu3x+dlW70EvvVUZ0qBG1jtGMgdKsUkexXCHHueh0Qj4F5CepZGps
 gYgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=yU+2DsWMX4mUvU/nFnKZXAKrFl9OfXq8ulfeUcJvwy8=;
 b=kXyvV7kFZZcwsK0puXmNlcS5wvX46tYC7zCoKW0TCK0wKtURxt+WH4nKWgS7RIKtbE
 bZMlvZHAugM7xeLQp2Xw6JsrPtRQf6z5DFARlPwUps9S/Gs68RvilTLHqguRcGpRDmQO
 MadqI1mTKf2/2d5uqRwj+TZDTQHpsUJM5h6RhQ3uTTfHmQdmGbK20f3zMCSwe1bILItR
 Ay/1vAYPCWEsYSXiI4oyRt6qPHdzsew8YuLlUXuRX9K9Dhr3G0UgYyfOLJPCo1aLruiv
 B5mKQFVvwKspana9G1h+MVHHI16wACyCWgCArPwyAC8iTFo1dwYYi/4trWrf/fSJ9Bq7
 R1fA==
X-Gm-Message-State: APjAAAUUbyJJ7JT9q+OlpTr3Khcf95NaacndcrwmyuKejV26kxK2wbOr
 3VeZUSErxpXbLQQgof+iKoGHaj+OT/c=
X-Google-Smtp-Source: APXvYqxAH65+T5IYkonMJ0NqgBSu2LAFhN4I3yaMt1crcxVSR9XKgiYlG2/MN3P1GlzOMjiuOpJ0IQ==
X-Received: by 2002:a17:90a:2562:: with SMTP id
 j89mr1488827pje.123.1559850341964; 
 Thu, 06 Jun 2019 12:45:41 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x7sm2769983pfa.125.2019.06.06.12.45.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 12:45:41 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V7 5/7] nvme: trace: filter out unnecessary fields for
 fabrics
Date: Fri,  7 Jun 2019 04:45:10 +0900
Message-Id: <20190606194512.11020-6-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_124543_997839_1582135B 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If the given command is for fabrics command, then it should not print
out the following fields which are for the !fabrics commands:
  1) "flags" (FUSE, PSDT).
  2) "nsid" which is reserved in fabrics command.
  3) "metadata" which is also reserved in fabrics.

To make !fabrics commands clear, don't print them out in case of fabrics
commands.

Examples:
  1) !fabrics commands (e.g. read):
    nvme_setup_cmd: nvme1: disk=nvme1c1n1, qid=5, cmdid=65, nsid=0x1, flags=0x40, meta=0x0 cmd=(nvme_cmd_read slba=0, len=7, ctrl=0x0, dsmgmt=0, reftag=0)
  2) fabrics commands (e.g. connect):
    nvme_setup_cmd: nvme1: qid=0, cmdid=0 cmd=(nvme_fabrics_type_connect recfmt=0, qid=0, sqsize=31, cattr=0, kato=15000)

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 drivers/nvme/host/trace.c | 20 ++++++++++++++++++++
 drivers/nvme/host/trace.h | 20 +++++++++++---------
 2 files changed, 31 insertions(+), 9 deletions(-)

diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index 02c09774ad91..e5e695b0db80 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -213,4 +213,24 @@ const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
 	return ret;
 }
 
+const char *nvme_trace_parse_common(struct trace_seq *p,
+				    struct nvme_command *cmd)
+{
+	const char *ret = trace_seq_buffer_ptr(p);
+
+	/*
+	 * Fabrics command capsule does not have the following fields which
+	 * is for !fabrics commands.
+	 */
+	if (!nvme_is_fabrics(cmd)) {
+		trace_seq_printf(p, ", nsid=%#x, flags=%#x, meta=%#llx",
+				le32_to_cpu(cmd->common.nsid),
+				cmd->common.flags,
+				le64_to_cpu(cmd->common.metadata));
+	}
+	trace_seq_putc(p, 0);
+
+	return ret;
+}
+
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_sq);
diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index da45cef2c31c..fd90fc8fd3f7 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -16,6 +16,12 @@
 
 #include "nvme.h"
 
+const char *nvme_trace_parse_common(struct trace_seq *p,
+		struct nvme_command *cmd);
+
+#define parse_nvme_common(cmd)					\
+	nvme_trace_parse_common(p, cmd)
+
 const char *nvme_trace_parse_admin_cmd(struct trace_seq *p, u8 opcode,
 		u8 *cdw10);
 const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p, u8 opcode,
@@ -48,34 +54,30 @@ TRACE_EVENT(nvme_setup_cmd,
 	    TP_PROTO(struct request *req, struct nvme_command *cmd),
 	    TP_ARGS(req, cmd),
 	    TP_STRUCT__entry(
+		__field(struct nvme_command *, cmd)
 		__array(char, disk, DISK_NAME_LEN)
 		__field(int, ctrl_id)
 		__field(int, qid)
 		__field(u8, opcode)
-		__field(u8, flags)
 		__field(u8, fctype)
 		__field(u16, cid)
-		__field(u32, nsid)
-		__field(u64, metadata)
 		__array(u8, cdw10, 24)
 	    ),
 	    TP_fast_assign(
+		__entry->cmd = cmd;
 		__entry->ctrl_id = nvme_req(req)->ctrl->instance;
 		__entry->qid = nvme_req_qid(req);
 		__entry->opcode = cmd->common.opcode;
-		__entry->flags = cmd->common.flags;
 		__entry->cid = le16_to_cpu(cmd->common.command_id);
-		__entry->nsid = le32_to_cpu(cmd->common.nsid);
-		__entry->metadata = le64_to_cpu(cmd->common.metadata);
 		__entry->fctype = cmd->fabrics.fctype;
 		__assign_disk_name(__entry->disk, req->rq_disk);
 		memcpy(__entry->cdw10, &cmd->common.cdw10,
 			sizeof(__entry->cdw10));
 	    ),
-	    TP_printk("nvme%d: %sqid=%d, cmdid=%u, nsid=%u, flags=0x%x, meta=0x%llx, cmd=(%s %s)",
+	    TP_printk("nvme%d: %sqid=%d, cmdid=%u%s cmd=(%s %s)",
 		      __entry->ctrl_id, __print_disk_name(__entry->disk),
-		      __entry->qid, __entry->cid, __entry->nsid,
-		      __entry->flags, __entry->metadata,
+		      __entry->qid, __entry->cid,
+		      parse_nvme_common(__entry->cmd),
 		      show_opcode_name(__entry->qid, __entry->opcode,
 				__entry->fctype),
 		      parse_nvme_cmd(__entry->qid, __entry->opcode,
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
