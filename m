Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CE1942641
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Jun 2019 14:47:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HuEWiNOXW9dC9YhS+YK29KT/WtSOyOHYbynIk4P/8/0=; b=MSKDZKQZdlKKB0
	xcFB8+LdBo1NjS9Z+P5x0OxwYmz+7px50q2zatierR3IvD/VegYYDX4l8uJqmD4MuJLMm3e0Amsdg
	LFwj6g74+Bg4REWF7UNbXZFxBDjDqhwjoV9gRXt4sEauvl6MV3zW1zboWy8/ktoHFA3bMrl+yFUIn
	Gsk7M6WEmZ+rHw5bavhW9txPEcmJNpT5QpARQ053hEN3tBqnCF6Hdaegi46HLNWigZ9r2WMnV9a0h
	UAooO31UWraA4R2KrMJ6N6KlIHyUzLMWFwtKPcaAxSr2WUMOY9iajkFOENWDem3FSjG+nm3beghWj
	QWwuarWX6prRxFFvOCuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2eS-0002CU-4Y; Wed, 12 Jun 2019 12:46:52 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2dd-0001fY-6M
 for linux-nvme@lists.infradead.org; Wed, 12 Jun 2019 12:46:03 +0000
Received: by mail-pl1-x644.google.com with SMTP id go2so6584769plb.9
 for <linux-nvme@lists.infradead.org>; Wed, 12 Jun 2019 05:46:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x6dHjdvAhqhvzYMxqO8wqqRmTp/edpNxbElkvYfdsSQ=;
 b=kENjKNook0xkQkjlnzOWYnByXH3iC/2lY07z8eMITj+cCaxzDLHU3cAGNMVuKsPoCN
 T+4oBKmyUm9ivGYQ6kT+ziEu48dskw31aK2wJqoUcBysPLsubIz3FFE2X1Mp+WwEvdyr
 40lmvtLZ+xRRaWi8bh++K0sA4TO/G9ZdA0zFv+5sD0MT886vQn2gIg608pSbDK1Aa1lk
 mUIV7WRSQOnGnz7MR5gs1pppVQbhtN2kjV17O1vfM+az9gdPT+oQsGRaA3vZbdz6McXD
 Ayai4FvJgnHRtoIFhq2Hx7UodEV6jtcAfR/n5bmaVK8z0IT0aIzqCtGTuEJd8GjkgnE/
 ezNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x6dHjdvAhqhvzYMxqO8wqqRmTp/edpNxbElkvYfdsSQ=;
 b=q8CEu4XMOO3FlIrlkyh5fb5hoqRBe7gsm1pIylEtvNduW5ePPV8ZqOMs6fJnWImApO
 Aitg0hSi0qEJBavbxjkVnutJzIgaB6dMf3tuCpNn0/2s2aFyXHLc25GJ+DUzmTBU1iln
 Ng3pntbaffTYcxVqhccOYhOaiWO+GIo6xq6fu4IXo782buP8hQWlak9dHQFlQlYJVE7B
 rmWQvYvuIPTdX/dWY1b0KnKK9YsktBviL9Nursk7PrTbDVLBva+zfDU6N0F21JJSO97I
 ZKyKZfjGB50C8W1vhccenhOsswjrcx9IH2VuojuGc7/+oHI5H5SjUZtRShYB/8TFHBWY
 zfYA==
X-Gm-Message-State: APjAAAUO/sZ6WhhxdQrJLtdQO6gKZVn2ZNeoRhhfu0q9A2ZmlGk6O1VT
 lPqG5L3AM9Z4ydK7D1XyuB4EqvFHXZQ=
X-Google-Smtp-Source: APXvYqzzKwX2o+Ux3oVHyPm/MIxaqhTuL6U78Bl9yqEVO5w9fFui93yaQJ0oKcDnrdh03zbvYuswlQ==
X-Received: by 2002:a17:902:8489:: with SMTP id
 c9mr1217708plo.327.1560343558895; 
 Wed, 12 Jun 2019 05:45:58 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 144sm26795479pfy.54.2019.06.12.05.45.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 05:45:58 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V8 3/5] nvme: trace: support for fabrics commands in host-side
Date: Wed, 12 Jun 2019 21:45:31 +0900
Message-Id: <20190612124533.10299-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
References: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054601_238654_20FF40B7 
X-CRM114-Status: GOOD (  13.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

This patch introduces fabrics commands tracing feature from host-side.
This patch does not include any changes for the previous host-side
tracing, but just add fabrics commands parsing in cmd=() format.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/trace.c | 67 +++++++++++++++++++++++++++++++++++++++
 drivers/nvme/host/trace.h | 20 ++++++++----
 include/linux/nvme.h      | 20 ++++++++++--
 3 files changed, 98 insertions(+), 9 deletions(-)

diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/host/trace.c
index 14b0d2993cbe..02c09774ad91 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/host/trace.c
@@ -135,6 +135,73 @@ const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p,
 	}
 }
 
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
 const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
 {
 	const char *ret = trace_seq_buffer_ptr(p);
diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index 62ee29107c32..19a18c87fb7b 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -20,11 +20,15 @@ const char *nvme_trace_parse_admin_cmd(struct trace_seq *p, u8 opcode,
 		u8 *cdw10);
 const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p, u8 opcode,
 		u8 *cdw10);
+const char *nvme_trace_parse_fabrics_cmd(struct trace_seq *p, u8 fctype,
+		u8 *spc);
 
-#define parse_nvme_cmd(qid, opcode, cdw10) 			\
-	(qid ?							\
-	 nvme_trace_parse_nvm_cmd(p, opcode, cdw10) : 		\
-	 nvme_trace_parse_admin_cmd(p, opcode, cdw10))
+#define parse_nvme_cmd(qid, opcode, fctype, cdw10)			\
+	((opcode) == nvme_fabrics_command ?				\
+	 nvme_trace_parse_fabrics_cmd(p, fctype, cdw10) :		\
+	((qid) ?							\
+	 nvme_trace_parse_nvm_cmd(p, opcode, cdw10) :			\
+	 nvme_trace_parse_admin_cmd(p, opcode, cdw10)))
 
 const char *nvme_trace_disk_name(struct trace_seq *p, char *name);
 #define __print_disk_name(name)				\
@@ -49,6 +53,7 @@ TRACE_EVENT(nvme_setup_cmd,
 		__field(int, qid)
 		__field(u8, opcode)
 		__field(u8, flags)
+		__field(u8, fctype)
 		__field(u16, cid)
 		__field(u32, nsid)
 		__field(u64, metadata)
@@ -62,6 +67,7 @@ TRACE_EVENT(nvme_setup_cmd,
 		__entry->cid = cmd->common.command_id;
 		__entry->nsid = le32_to_cpu(cmd->common.nsid);
 		__entry->metadata = le64_to_cpu(cmd->common.metadata);
+		__entry->fctype = cmd->fabrics.fctype;
 		__assign_disk_name(__entry->disk, req->rq_disk);
 		memcpy(__entry->cdw10, &cmd->common.cdw10,
 			sizeof(__entry->cdw10));
@@ -70,8 +76,10 @@ TRACE_EVENT(nvme_setup_cmd,
 		      __entry->ctrl_id, __print_disk_name(__entry->disk),
 		      __entry->qid, __entry->cid, __entry->nsid,
 		      __entry->flags, __entry->metadata,
-		      show_opcode_name(__entry->qid, __entry->opcode),
-		      parse_nvme_cmd(__entry->qid, __entry->opcode, __entry->cdw10))
+		      show_opcode_name(__entry->qid, __entry->opcode,
+				__entry->fctype),
+		      parse_nvme_cmd(__entry->qid, __entry->opcode,
+				__entry->fctype, __entry->cdw10))
 );
 
 TRACE_EVENT(nvme_complete_rq,
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 86b3d04baf20..da5f696aec00 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -836,9 +836,6 @@ enum nvme_admin_opcode {
 		nvme_admin_opcode_name(nvme_admin_security_recv),	\
 		nvme_admin_opcode_name(nvme_admin_sanitize_nvm))
 
-#define show_opcode_name(qid, opcode)					\
-	(qid ? show_nvm_opcode_name(opcode) : show_admin_opcode_name(opcode))
-
 enum {
 	NVME_QUEUE_PHYS_CONTIG	= (1 << 0),
 	NVME_CQ_IRQ_ENABLED	= (1 << 1),
@@ -1053,6 +1050,23 @@ enum nvmf_capsule_command {
 	nvme_fabrics_type_property_get	= 0x04,
 };
 
+#define nvme_fabrics_type_name(type)   { type, #type }
+#define show_fabrics_type_name(type)                                   \
+       __print_symbolic(type,                                          \
+               nvme_fabrics_type_name(nvme_fabrics_type_property_set), \
+               nvme_fabrics_type_name(nvme_fabrics_type_connect),      \
+               nvme_fabrics_type_name(nvme_fabrics_type_property_get))
+
+/*
+ * If not fabrics command, fctype will be ignored.
+ */
+#define show_opcode_name(qid, opcode, fctype)			\
+	((opcode) == nvme_fabrics_command ?			\
+	 show_fabrics_type_name(fctype) :			\
+	((qid) ?						\
+	 show_nvm_opcode_name(opcode) :				\
+	 show_admin_opcode_name(opcode)))
+
 struct nvmf_common_command {
 	__u8	opcode;
 	__u8	resv1;
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
