Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B0231A0B
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 09:22:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nylYPSZS+KvEy289BYsWI5yYCymybRjY0PWAyDi0QyY=; b=RYWtzaXs0iP33s
	P8LkhMo9VUiXlAnmAxrsyjPPRHSW0hfIohqXqiJ+Lmsihg+7yZecmCpGNox8usTGIYo0NBJ8Z/7i8
	+O6Yfb+szubCI3U9tYOBAeO2EYjuPrYKrPzXfNjuosWeZffEP8fXH6lWI+IRJAR2rhMhmCXEjRylH
	20x1VN9fPHsanX1d427ewY29kXZ4Rjvuc9xYQYII4D2lUgo1QPk2Q3JQMWNCO+e5Q8htn+nmRfNSp
	aOwyam/ZcwbMumk8hsT15Z7tYq0gUzTx+bTWv1f8gU5OvHf41G4gEF0dS2yEuhDj8LvhcZx3zRgJ2
	OM85CI+Fv7vlGGCXStpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWyLF-00071k-44; Sat, 01 Jun 2019 07:22:13 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWyL5-0006tw-A6
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 07:22:06 +0000
Received: by mail-pf1-x441.google.com with SMTP id a23so7567944pff.4
 for <linux-nvme@lists.infradead.org>; Sat, 01 Jun 2019 00:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i5flDW4WML0UvDTbJ2NQN3syHH2C7yeVY5PDOsA40hg=;
 b=XmSQ2m1C+C+TXkjGQ9R1np7iEl4W/9JGsc70xZqyumUx9AEt0XX7ifzqaHgLR6EWK+
 s4qZCH1P5PgDHsH0u40OEs6W7GiB0t/SNJ3ncXjsuAuF4pCKqvwJ+IJK5gLC7rPtOeMD
 R0V31R3USeYTCwvfmvcldgslJu55bCBhVaVdjxKlJ43Yqd7ZSyMBNVgDxqRggIggi01W
 z2FpLZKiNU7xj5dhbzNmZA2EeVJfOV2pPOJOhZGeCBYpJ+E471IOWXnxh00tZnM7Nnlj
 +7tGXYEUX2A4DGs4GwaTOOK9Usgk0aB7T+HU1zZRCZMVA0LG4Xn0PE7J2Glo5/U6Y3kl
 8/xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i5flDW4WML0UvDTbJ2NQN3syHH2C7yeVY5PDOsA40hg=;
 b=UZILC7OKLHc7vmXfTBTSwlgyp07UdbJmf+VJT8TYBleodz5Yv102pCoQi5IKX8XQfB
 mO1FqLOx4nBnHC536robeTXaAn7CJed4wjNgDj3tQP1KQdB7poQltDq2hNZoM/8QcFaZ
 KlStUvOVORn6/gJrGrxVLlFEkIbKJoBdEYENVdk8HxGJiqgoTJmn2wAMWJa+uvIjBWRP
 NpXpMdgWaoJS+4eudSodtDKVR+g0MeOvIBPDGlIi516s/OSj8RkpDkHQ5zfzxO1W5lDo
 LgN0uH761vmwEiG85roa0t05UDHGcT0siByaEYUFzhyb9aT5/0/5mDYzI9zJGbkX+Fdt
 l/Xg==
X-Gm-Message-State: APjAAAVmF96zss0XtKOO5+K4dxjnLUF/7uCiSkv/OilkpgvdCsk3vgt3
 xxKULBGKtfJfWx0wTng0g2X7X03XaNw=
X-Google-Smtp-Source: APXvYqxtE5zJAPHOlYaoUazRo/Zq9cIeMO5NcoCPOyw80zY93yjQDDja2S5Ydl10PZ2Ls1AMjJbqNg==
X-Received: by 2002:a62:f247:: with SMTP id y7mr14792382pfl.18.1559373722098; 
 Sat, 01 Jun 2019 00:22:02 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id t33sm7881200pjb.1.2019.06.01.00.21.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 01 Jun 2019 00:22:01 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 1/5] nvme: Make trace common for host and target both
Date: Sat,  1 Jun 2019 16:21:39 +0900
Message-Id: <20190601072143.21233-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
References: <20190601072143.21233-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_002203_541523_C0729571 
X-CRM114-Status: GOOD (  14.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
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
index 032a6aa728be..d03b986d14a2 100644
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
index 1b7c2afd84cb..d93bdd4d8b83 100644
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
index f562154551ce..181615069cf6 100644
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
