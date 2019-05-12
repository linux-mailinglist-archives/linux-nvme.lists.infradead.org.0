Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E2C21AB11
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 09:35:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=IrPAj6vHJIHOli4fqGU6hbi9hga9ZtgDi9tmqX8J0a8=; b=BkPJ6bdYZAb4zgHXoyGbGvDJmw
	el/5AWa+qeT86p/8qpBjPe+eTO4HB79bXmPrwnSLza2EPloH+qYQHUQcRF3r+4jKDB5Ri5hZYk1Eu
	tFFUgHH1eO3bg6ghc+21e8c96oS5IYxMvmyYH3ygZJBn4lLaCwBo4d1JLv01/oYFFTUn7A0KbKC6z
	rnORwny02ml/0hB8oPXc5Oy9j1d8kzaHZi4gpwC2CAxqJHVxIEuYkjKuVkHcWHckXR4CNV6D/u8bl
	jbdaABLfT6LlnOimpdxFghxKw4uaVgNOHcrwXcVka/1ClXGBg9HLYcCBU27lZNxZQgM3xNGbONtDx
	UUkHsoKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPj0i-0001eI-LH; Sun, 12 May 2019 07:35:04 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPj0Q-0001QL-ME
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 07:34:48 +0000
Received: by mail-pf1-x441.google.com with SMTP id l132so5466123pfc.8
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 00:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H0+LmogM3GLKaJMU3MRnaarXZWsUodWXuFPSXeKH1WE=;
 b=IjyQkj7xl3GgiPaImDhIyLTEs8iaUpxq/vNMReK1tQpiRGmxbSY8M/8qw0mKutbReA
 j0zUOZ/Y02Zbh7x2VY1JUpt2YAs6Y5qD10oSVpyvC95Zw+I3H0CIE78qnGmXwiH77Jmm
 I29rw4KRLh8k+CNnKP4dP/O1QfW5S4yX8Z5BvMD76uIWM2wYXw/Sq7D6y6LU69R3qkWr
 GHzd5ljrukSOp0igTKdlb0g+CknUwwmnYeff2CCIZpOLEyViQIqTkvOBguz3eV3IlRoG
 kp6AXfarvZsHNqO1rRTaxt5P3mQs0Qp6/CZ7NYGRZe4fVdX+tLASevSx0KM9oYGjr+eA
 iibw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H0+LmogM3GLKaJMU3MRnaarXZWsUodWXuFPSXeKH1WE=;
 b=YZ2ylT7K3DtUYSg2F3Qi4gNqSR7ThYqbx7OwJUWZtJ2r3KTy9KLMmb+9P3R5SBIioe
 nbajAcra8A55OuMhny5tWVECX2M4JNN2exLiyZLXZan/JXIHnsYZzNmgRIbCmxLNZxuY
 jti0A2wWFiAifMkabwk6LXilK4HTDIPmyW+9pYQf8LAhIQa13Sye8IwQYLaYiJh75T3T
 Q9ksxS5sif1cu6GaZiiIVak+0yAun/W1tmIQxeibs1RGG2XPKonJmPo4ThGSXakOGQWh
 DychmMTgiR+6Z7nTYL6HLql8T0l4yZKWCnW2dv+JUwtTd8UnYBPdiow7Z7pkXTIs6/Yp
 Z1XA==
X-Gm-Message-State: APjAAAXTxZFLpTJlY7FMuA5AC0NZfNM7UeoXzXz852gBOQnKO8QtfdUM
 Hc29LmqvWxFGGyX+6JSPRIkyuZSVUzc=
X-Google-Smtp-Source: APXvYqyJPec7nL8A/5g53aYdyvonT/ofsOe9co6ivSncXmsdKS3UBIgAMXcYyNCFwmG/Ji6js3O4gQ==
X-Received: by 2002:a63:7c55:: with SMTP id l21mr466671pgn.121.1557646485754; 
 Sun, 12 May 2019 00:34:45 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e123sm5492242pgc.29.2019.05.12.00.34.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 00:34:44 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Subject: [PATCH V3 2/5] nvme-trace: Support tracing fabrics commands from
 host-side
Date: Sun, 12 May 2019 16:34:10 +0900
Message-Id: <20190512073413.32050-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512073413.32050-1-minwoo.im.dev@gmail.com>
References: <20190512073413.32050-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_003446_980193_D85C8985 
X-CRM114-Status: GOOD (  15.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index acf10c7a5bef..7fbfd6cb815c 100644
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
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
