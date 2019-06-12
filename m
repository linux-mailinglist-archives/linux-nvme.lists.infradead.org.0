Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A23C42639
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Jun 2019 14:46:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hf0sq3umq7GLRx9McVUr1gQSaoV/BJnn4FqS1EoUyc=; b=OvNkPOK2A1tVoW
	zITwLQkfq6sMULZY6HVFx3jB1rwAP6QRDq1ySVdJfRaW+v6ATEGfH9ktYv4XxMKYSTWnPn8d8TY72
	FnvfMXgeHsWrezbYvIznZORqUahKF8SFf+f/liHxUQ5TEaWMTO82DrLNlkKkP3dnrnd1f603j2Y+P
	8nRokXqjZDMqdomuRVFYY9DS/Ry4uNTohPYASWWT9aJQvUOBMTi9cnPncjCcUs2GEvF3pRlYSRosa
	FZ2PwjIpocg6Gc/ObDG2JN7wfNBrbvH1WrPZfUNtFezfQ3TZ6Rmy1AMWM9XiRtfrP5ZSZJoRxQ/eo
	SkDMPmGoQqxObYLnAgsg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb2eH-0001zv-CO; Wed, 12 Jun 2019 12:46:41 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb2dZ-0001cE-3j
 for linux-nvme@lists.infradead.org; Wed, 12 Jun 2019 12:45:59 +0000
Received: by mail-pl1-x642.google.com with SMTP id s24so6588624plr.8
 for <linux-nvme@lists.infradead.org>; Wed, 12 Jun 2019 05:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=jzT8yV3OPwI7CWKPkPGVig68hHtfYS58IBP3rxbZvnM=;
 b=hDmWBXLq8GlhbfQmNQhBn93Egm6/HBwDptjO6riu1arLw6/4XndE2fPwDhcdBGFW1k
 kcZlRV4EnsLYssKrHpItYy8pvMUK/NbpDYzGmNh7DVxLJ0z+JhQCDKsQUa0jDGj91L63
 f39ewXipgMZlcxHLpLjSNKLe6mhQiotmSADARXYM4pWNDtKHZexdoTXZzg+SN9pcxP17
 78Ed3oZTvGinK6AJETvhK1u4G4yfWXaS/oTQEVyy8ZSycCGuGjKlqrMpTHkJm0AkYprg
 OxAUxuTqZyAcQ7qAN2c9W0Ti4Bvp118YHP3HuwhV5s0tX+g4mbCNe5+vLZLUnoZWkS42
 o+4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=jzT8yV3OPwI7CWKPkPGVig68hHtfYS58IBP3rxbZvnM=;
 b=Eto8EsQaKAy2Fiynqcp+Qu+Pr8UFO/EhS+Hm05Oj4I59l+zR94lnty/sKPpbMzs28C
 rLcAnehaH9X84t9PQtjDm0gbAQ3/b5vSdZKWp4TWycfJRET1agQnUtWhcjcPEruxGaW+
 opLwOIYKhF2I6Mwf8YuJWdj5PdSsz2ju7hP7eHsyNkkNjlDKKzrRN+dHB9L+H4VWWCKa
 K8Yb81FMmcOct4+R03GuV0xvwG8x+7ITRrslh5rsKZO7+zkFXmoH2Eo2mG7aVaFlbRii
 6T6Fn0cjV0vZotgsjilvHhPaiDpqV3QERNOcU1bJcNwnRrcM7+q6kBVKwkStL3ukMy76
 +61A==
X-Gm-Message-State: APjAAAUdHwMuDp1iE/Y1V+AY++4L1q33mhiPQNXxSEujFhiCftYHI+zP
 ixgV+/4eCPMNTy+vTCNj8lPMr9MrKYM=
X-Google-Smtp-Source: APXvYqxedkYjKG0xTPqbiFAfvxYltjmQI7ON90pvlEYktXMpH+xh/sASZPnQkg38j+/kLHvjUBSpxA==
X-Received: by 2002:a17:902:934a:: with SMTP id
 g10mr71058650plp.18.1560343555747; 
 Wed, 12 Jun 2019 05:45:55 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 144sm26795479pfy.54.2019.06.12.05.45.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 12 Jun 2019 05:45:55 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V8 2/5] nvme: trace: move opcode symbol print to nvme.h
Date: Wed, 12 Jun 2019 21:45:30 +0900
Message-Id: <20190612124533.10299-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
References: <20190612124533.10299-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_054557_285548_69876F3A 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

The following patches are going to provide the target-side trace which
might need these kind of macros.  It would be great if it can be shared
between host and target side both.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
---
 drivers/nvme/host/trace.h | 44 --------------------------------------
 include/linux/nvme.h      | 45 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 45 insertions(+), 44 deletions(-)

diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/host/trace.h
index e71502d141ed..62ee29107c32 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/host/trace.h
@@ -16,50 +16,6 @@
 
 #include "nvme.h"
 
-#define nvme_admin_opcode_name(opcode)	{ opcode, #opcode }
-#define show_admin_opcode_name(val)					\
-	__print_symbolic(val,						\
-		nvme_admin_opcode_name(nvme_admin_delete_sq),		\
-		nvme_admin_opcode_name(nvme_admin_create_sq),		\
-		nvme_admin_opcode_name(nvme_admin_get_log_page),	\
-		nvme_admin_opcode_name(nvme_admin_delete_cq),		\
-		nvme_admin_opcode_name(nvme_admin_create_cq),		\
-		nvme_admin_opcode_name(nvme_admin_identify),		\
-		nvme_admin_opcode_name(nvme_admin_abort_cmd),		\
-		nvme_admin_opcode_name(nvme_admin_set_features),	\
-		nvme_admin_opcode_name(nvme_admin_get_features),	\
-		nvme_admin_opcode_name(nvme_admin_async_event),		\
-		nvme_admin_opcode_name(nvme_admin_ns_mgmt),		\
-		nvme_admin_opcode_name(nvme_admin_activate_fw),		\
-		nvme_admin_opcode_name(nvme_admin_download_fw),		\
-		nvme_admin_opcode_name(nvme_admin_ns_attach),		\
-		nvme_admin_opcode_name(nvme_admin_keep_alive),		\
-		nvme_admin_opcode_name(nvme_admin_directive_send),	\
-		nvme_admin_opcode_name(nvme_admin_directive_recv),	\
-		nvme_admin_opcode_name(nvme_admin_dbbuf),		\
-		nvme_admin_opcode_name(nvme_admin_format_nvm),		\
-		nvme_admin_opcode_name(nvme_admin_security_send),	\
-		nvme_admin_opcode_name(nvme_admin_security_recv),	\
-		nvme_admin_opcode_name(nvme_admin_sanitize_nvm))
-
-#define nvme_opcode_name(opcode)	{ opcode, #opcode }
-#define show_nvm_opcode_name(val)				\
-	__print_symbolic(val,					\
-		nvme_opcode_name(nvme_cmd_flush),		\
-		nvme_opcode_name(nvme_cmd_write),		\
-		nvme_opcode_name(nvme_cmd_read),		\
-		nvme_opcode_name(nvme_cmd_write_uncor),		\
-		nvme_opcode_name(nvme_cmd_compare),		\
-		nvme_opcode_name(nvme_cmd_write_zeroes),	\
-		nvme_opcode_name(nvme_cmd_dsm),			\
-		nvme_opcode_name(nvme_cmd_resv_register),	\
-		nvme_opcode_name(nvme_cmd_resv_report),		\
-		nvme_opcode_name(nvme_cmd_resv_acquire),	\
-		nvme_opcode_name(nvme_cmd_resv_release))
-
-#define show_opcode_name(qid, opcode)					\
-	(qid ? show_nvm_opcode_name(opcode) : show_admin_opcode_name(opcode))
-
 const char *nvme_trace_parse_admin_cmd(struct trace_seq *p, u8 opcode,
 		u8 *cdw10);
 const char *nvme_trace_parse_nvm_cmd(struct trace_seq *p, u8 opcode,
diff --git a/include/linux/nvme.h b/include/linux/nvme.h
index 7080923e78d1..86b3d04baf20 100644
--- a/include/linux/nvme.h
+++ b/include/linux/nvme.h
@@ -562,6 +562,22 @@ enum nvme_opcode {
 	nvme_cmd_resv_release	= 0x15,
 };
 
+#define nvme_opcode_name(opcode)	{ opcode, #opcode }
+#define show_nvm_opcode_name(val)				\
+	__print_symbolic(val,					\
+		nvme_opcode_name(nvme_cmd_flush),		\
+		nvme_opcode_name(nvme_cmd_write),		\
+		nvme_opcode_name(nvme_cmd_read),		\
+		nvme_opcode_name(nvme_cmd_write_uncor),		\
+		nvme_opcode_name(nvme_cmd_compare),		\
+		nvme_opcode_name(nvme_cmd_write_zeroes),	\
+		nvme_opcode_name(nvme_cmd_dsm),			\
+		nvme_opcode_name(nvme_cmd_resv_register),	\
+		nvme_opcode_name(nvme_cmd_resv_report),		\
+		nvme_opcode_name(nvme_cmd_resv_acquire),	\
+		nvme_opcode_name(nvme_cmd_resv_release))
+
+
 /*
  * Descriptor subtype - lower 4 bits of nvme_(keyed_)sgl_desc identifier
  *
@@ -794,6 +810,35 @@ enum nvme_admin_opcode {
 	nvme_admin_sanitize_nvm		= 0x84,
 };
 
+#define nvme_admin_opcode_name(opcode)	{ opcode, #opcode }
+#define show_admin_opcode_name(val)					\
+	__print_symbolic(val,						\
+		nvme_admin_opcode_name(nvme_admin_delete_sq),		\
+		nvme_admin_opcode_name(nvme_admin_create_sq),		\
+		nvme_admin_opcode_name(nvme_admin_get_log_page),	\
+		nvme_admin_opcode_name(nvme_admin_delete_cq),		\
+		nvme_admin_opcode_name(nvme_admin_create_cq),		\
+		nvme_admin_opcode_name(nvme_admin_identify),		\
+		nvme_admin_opcode_name(nvme_admin_abort_cmd),		\
+		nvme_admin_opcode_name(nvme_admin_set_features),	\
+		nvme_admin_opcode_name(nvme_admin_get_features),	\
+		nvme_admin_opcode_name(nvme_admin_async_event),		\
+		nvme_admin_opcode_name(nvme_admin_ns_mgmt),		\
+		nvme_admin_opcode_name(nvme_admin_activate_fw),		\
+		nvme_admin_opcode_name(nvme_admin_download_fw),		\
+		nvme_admin_opcode_name(nvme_admin_ns_attach),		\
+		nvme_admin_opcode_name(nvme_admin_keep_alive),		\
+		nvme_admin_opcode_name(nvme_admin_directive_send),	\
+		nvme_admin_opcode_name(nvme_admin_directive_recv),	\
+		nvme_admin_opcode_name(nvme_admin_dbbuf),		\
+		nvme_admin_opcode_name(nvme_admin_format_nvm),		\
+		nvme_admin_opcode_name(nvme_admin_security_send),	\
+		nvme_admin_opcode_name(nvme_admin_security_recv),	\
+		nvme_admin_opcode_name(nvme_admin_sanitize_nvm))
+
+#define show_opcode_name(qid, opcode)					\
+	(qid ? show_nvm_opcode_name(opcode) : show_admin_opcode_name(opcode))
+
 enum {
 	NVME_QUEUE_PHYS_CONTIG	= (1 << 0),
 	NVME_CQ_IRQ_ENABLED	= (1 << 1),
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
