Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 167F637D7F
	for <lists+linux-nvme@lfdr.de>; Thu,  6 Jun 2019 21:46:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s4TEA/He66zavCTbRj9oamDi5O/ZnyyclyCNQI91ebE=; b=ErR6vrbBbH42DT
	0Vcuom6drwGrDyYTiS7iSVYrlrpE/yVYEWH3zJq/FMuCRvrzocTVX40eyNmGn/+ZnhNagCf4USKAx
	CTAje56VN+h7ncYYKeFxRyEXtcjAESDpogwNaKENACwaHPOzvwJwziBe3PnI7kdGJp0ldZUUPxsah
	FTNXWCOQCR22tWfk8WXMDDpTSe9lQ/KaLUmX1cR/1xFc0fwzsPlvOORTFAFWlMcnhJ6hnSPQyD0bh
	yeuDLAjb4z5HXYiP5Q9TpeGFFVM8TJ3SlCNNOTR9uuxNxiTfxjGUBb1WTqrKoXiLrXgT0tZCt2px/
	yaINpPYR3dNyt2suvBGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYyKg-0002v6-Vn; Thu, 06 Jun 2019 19:45:54 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYyKM-0002aa-II
 for linux-nvme@lists.infradead.org; Thu, 06 Jun 2019 19:45:36 +0000
Received: by mail-pl1-x642.google.com with SMTP id x7so1313851plr.12
 for <linux-nvme@lists.infradead.org>; Thu, 06 Jun 2019 12:45:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BOwvlVwk0d946ruxZ3cYVEZMYP5ZR8It0G6iHYoPF2I=;
 b=NG+1nxgp25IYgSGqhfpz9v2tnrnvKQPSX7l3KXo1ER4nXAum6oLZDX/01eMiuF4Xo9
 00TXdPDa9knQ2c0cG0SLZGSNTJ4Cd2VTlIMenYl/dnl7MqBYYPeTgifKGgcIcOxb5iT9
 Z8yUq07Hjl4xuG2/G2kPWxpX4azdP8R0w3qGdVwrQ7Q8Km2V6RntTJqe2BD8r792vLgg
 /JsObKgfV3+h6XboGNa3L73imTwpYKvQr1OQr+wVmwAaDEnSVPUPTVzE/7PpihKqt+Ga
 C/9JScW3siAt85Kt8W8b1DymtIB40w6X92hayfMoG8BmMV5kxsuoIIUZbFoh/TeUz/I/
 DoIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BOwvlVwk0d946ruxZ3cYVEZMYP5ZR8It0G6iHYoPF2I=;
 b=ZHybKpAu5dHpbaCPXAOR/Q1hDrfseTkZmeJbGYp/9CwDQjOCRow2o329umDrOtN+z9
 JoTYad5xuMiTErCkYopwugS48jovWRwLgfYA65hJPJm2ILP7bS2fQZGx6gcrwGrL4RsV
 wiVocravvOQ9y6RxEJ6/1kYPwjZL6EtTlmYUwNQf5gjDarE8TxT1Un05CfbQPFUIOyAj
 //wGfX/CREqJO0g1tA+uS9XFqcEB1VOYe3MCMVrnCJfrHNw6VcUX+qctgWE1oWXDpkuh
 1eBYybzE0yF19h0KgnxiFKUqGHTdCti4FwynwReEnUDRwWfOkaNJJT6GypSyvfNvWyBe
 qjWg==
X-Gm-Message-State: APjAAAVPyJ2iWxXhocR4ihWjra7d/AK/CihsMS33bgtmYiGAGSjEadec
 5mm3V+nhdzrmeg3sDj8tXN0ub85tPoc=
X-Google-Smtp-Source: APXvYqx2rTvGNYBUowDr+InKKn0rSbqOaRnc3f3PBob3lFctHG26cdwZH4F+pM3pzXSr1+wL0CISHw==
X-Received: by 2002:a17:902:7e0f:: with SMTP id
 b15mr43716423plm.237.1559850333392; 
 Thu, 06 Jun 2019 12:45:33 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id x7sm2769983pfa.125.2019.06.06.12.45.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 06 Jun 2019 12:45:32 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH V7 2/7] nvme: trace: move opcode symbol print to nvme.h
Date: Fri,  7 Jun 2019 04:45:07 +0900
Message-Id: <20190606194512.11020-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
References: <20190606194512.11020-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_124534_601331_C38A3BF1 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

The following patches are going to provide the target-side trace which
might need these kind of macros.  It would be great if it can be shared
between host and target side both.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
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
