Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2172B99A
	for <lists+linux-nvme@lfdr.de>; Mon, 27 May 2019 19:54:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VUvH+ttI3r3jMXTPCccSeDx752kbPUThyu46VQI1wQ0=; b=Apu3tvHAFLCqxK
	0Z9eKG9U3IFJX9/EMbbjpfUFvDyMK6v+NMXERIc4dZRjeehAh6FfdKNwv9KLv54kU7g7O4xfFdGEE
	WpaD0ncnt9NXs+r3vBF25tOA9F9crdFe5EhA4/VMJ7vf6pW6JizEzwoMubwuET6umNRLb5uPqYSll
	zDpLU9dE23QdmgbU+29cImp2N8cNFRkV4ds9WDDuoM6vLHkq44rYWZclAxZrYRNOjNvys0/MHOI6C
	jdnyJ/jXsc3BzGDG+Jirr9Su3vSltypBltLtd+DAISHefs4dKomW2ZrWy5io7iopuiy+IcCm+J1fl
	B0Ie/QdhrQXh4jeUONIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVJpB-0003dC-RO; Mon, 27 May 2019 17:54:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVJp3-0003YY-3x
 for linux-nvme@lists.infradead.org; Mon, 27 May 2019 17:54:11 +0000
Received: by mail-pl1-x644.google.com with SMTP id a5so7276469pls.12
 for <linux-nvme@lists.infradead.org>; Mon, 27 May 2019 10:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Yq1pl+5XjfftAwzsJl5+jIdVMWJQxlVCIhVsYR3yNBs=;
 b=spHlhJKGkbNI5VOEAaSfyaJnzvE2JYHQE0Nuse5mRH6nzbDnZ5xxA/9v2/yyg4BdtQ
 UQEXJjWB6cDSjWK8WAtWIOhmlBfH0V0kcQJ7Zyi+r01WwlFq2Oz+f1WlSmdwrfR8kJu/
 al/bUb5ykMAA6teVwJS+CiN0JDnV1cCMqnVTqtlnZo7uEbcnyV+t7hfINNrHyFD6HLJ4
 3TNrLTkK7P81fPhXfN5kTT8DmlLiP6wzbd4+l7wFdbKT3YPiYyNyqDoEUzqEjecgUejG
 tqV9upoovtWmqHsxUYMadZxfvbmYkbxZlz1+SkQWScide6up3i0En9aIkAkCp8x/+Kjm
 ZCVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Yq1pl+5XjfftAwzsJl5+jIdVMWJQxlVCIhVsYR3yNBs=;
 b=CqBEd9hVlFXP9OXIHGjBdHqgIUgUocUxizjHKdhlm36l+WKozUGrcoIgwM/1QCBaCq
 GL8fif3RxfEjV8z9dPfnjcsFekD4eUzTp2fC50RQW25WPN+E7C9BHiW95YstuKbj1UlW
 13Pr4Vx12VuvGUC4EOUYNKY5M8i67g2vESCsQ9InG/L/tq5bWl4VhlwF6LthA5vn7vLe
 TnQBp72RkD2ammDNt9Jjgz0NSWgBWIqj6NllGpukfSRUkcVmGArzOftEuV4O34+/ek3d
 Uq3zifkAiYh3Apapz7MrdeNCXqD+9cVI73RHnhvMShlQGdnp1B5t0Ga+mAOFoWO1Pc68
 IKig==
X-Gm-Message-State: APjAAAVIpKa1SvmFIaKDiLoCvqDtm66Xe+4OFf4HydKVr4S2XaCKU1bC
 IQmratcctKs/Anunbos51M9oo94IjCI=
X-Google-Smtp-Source: APXvYqwL1ltbsiCe1h3z3j5IqMOazVQalBnjprt7ykAnc3q9mKqIE8qEfhNvsaqXitUu+nVBFBqGfQ==
X-Received: by 2002:a17:902:42e2:: with SMTP id
 h89mr33902697pld.271.1558979647842; 
 Mon, 27 May 2019 10:54:07 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id z4sm12608936pfa.142.2019.05.27.10.54.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 27 May 2019 10:54:07 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [RFC PATCH 1/5] nvme: Make trace common for host and target both
Date: Tue, 28 May 2019 02:53:42 +0900
Message-Id: <20190527175346.29972-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
References: <20190527175346.29972-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190527_105409_410430_09715650 
X-CRM114-Status: GOOD (  15.49  )
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

To support target-side trace, nvme-trace should be commonized for host
and target both.  Of course, not every single tracepoints are necessary
by both of them, but we don't need to have more than one trace module
for host and target.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: James Smart <james.smart@broadcom.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 MAINTAINERS                     | 2 ++
 drivers/nvme/Makefile           | 3 +++
 drivers/nvme/host/Makefile      | 1 -
 drivers/nvme/host/core.c        | 3 +--
 drivers/nvme/host/pci.c         | 2 +-
 drivers/nvme/{host => }/trace.c | 5 +++++
 drivers/nvme/{host => }/trace.h | 2 +-
 7 files changed, 13 insertions(+), 5 deletions(-)
 rename drivers/nvme/{host => }/trace.c (95%)
 rename drivers/nvme/{host => }/trace.h (99%)

diff --git a/MAINTAINERS b/MAINTAINERS
index 005902ea1450..9dff173b2e6f 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11235,6 +11235,7 @@ L:	linux-nvme@lists.infradead.org
 T:	git://git.infradead.org/nvme.git
 W:	http://git.infradead.org/nvme.git
 S:	Supported
+F:	drivers/nvme/
 F:	drivers/nvme/host/
 F:	include/linux/nvme.h
 F:	include/uapi/linux/nvme_ioctl.h
@@ -11256,6 +11257,7 @@ L:	linux-nvme@lists.infradead.org
 T:	git://git.infradead.org/nvme.git
 W:	http://git.infradead.org/nvme.git
 S:	Supported
+F:	drivers/nvme/
 F:	drivers/nvme/target/
 
 NVMEM FRAMEWORK
diff --git a/drivers/nvme/Makefile b/drivers/nvme/Makefile
index 0096a7fd1431..12f193502d46 100644
--- a/drivers/nvme/Makefile
+++ b/drivers/nvme/Makefile
@@ -1,3 +1,6 @@
 
+ccflags-y		+= -I$(src)
+obj-$(CONFIG_TRACING)	+= trace.o
+
 obj-y		+= host/
 obj-y		+= target/
diff --git a/drivers/nvme/host/Makefile b/drivers/nvme/host/Makefile
index 8a4b671c5f0c..46453352bfa0 100644
--- a/drivers/nvme/host/Makefile
+++ b/drivers/nvme/host/Makefile
@@ -10,7 +10,6 @@ obj-$(CONFIG_NVME_FC)			+= nvme-fc.o
 obj-$(CONFIG_NVME_TCP)			+= nvme-tcp.o
 
 nvme-core-y				:= core.o
-nvme-core-$(CONFIG_TRACING)		+= trace.o
 nvme-core-$(CONFIG_NVME_MULTIPATH)	+= multipath.o
 nvme-core-$(CONFIG_NVM)			+= lightnvm.o
 nvme-core-$(CONFIG_FAULT_INJECTION_DEBUG_FS)	+= fault_inject.o
diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index e1449c196f20..2af670f98e9d 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -21,8 +21,7 @@
 #include <linux/pm_qos.h>
 #include <asm/unaligned.h>
 
-#define CREATE_TRACE_POINTS
-#include "trace.h"
+#include "../trace.h"
 
 #include "nvme.h"
 #include "fabrics.h"
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 599065ed6a32..5edd3cda577a 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -24,7 +24,7 @@
 #include <linux/sed-opal.h>
 #include <linux/pci-p2pdma.h>
 
-#include "trace.h"
+#include "../trace.h"
 #include "nvme.h"
 
 #define SQ_SIZE(depth)		(depth * sizeof(struct nvme_command))
diff --git a/drivers/nvme/host/trace.c b/drivers/nvme/trace.c
similarity index 95%
rename from drivers/nvme/host/trace.c
rename to drivers/nvme/trace.c
index 5f24ea7a28eb..a2c8186d122d 100644
--- a/drivers/nvme/host/trace.c
+++ b/drivers/nvme/trace.c
@@ -5,6 +5,8 @@
  */
 
 #include <asm/unaligned.h>
+
+#define CREATE_TRACE_POINTS
 #include "trace.h"
 
 static const char *nvme_trace_create_sq(struct trace_seq *p, u8 *cdw10)
@@ -147,4 +149,7 @@ const char *nvme_trace_disk_name(struct trace_seq *p, char *name)
 }
 EXPORT_SYMBOL_GPL(nvme_trace_disk_name);
 
+EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_setup_cmd);
+EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_complete_rq);
+EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_async_event);
 EXPORT_TRACEPOINT_SYMBOL_GPL(nvme_sq);
diff --git a/drivers/nvme/host/trace.h b/drivers/nvme/trace.h
similarity index 99%
rename from drivers/nvme/host/trace.h
rename to drivers/nvme/trace.h
index e71502d141ed..2ecd4ff18e99 100644
--- a/drivers/nvme/host/trace.h
+++ b/drivers/nvme/trace.h
@@ -14,7 +14,7 @@
 #include <linux/tracepoint.h>
 #include <linux/trace_seq.h>
 
-#include "nvme.h"
+#include "host/nvme.h"
 
 #define nvme_admin_opcode_name(opcode)	{ opcode, #opcode }
 #define show_admin_opcode_name(val)					\
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
