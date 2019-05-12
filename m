Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A95221AB0E
	for <lists+linux-nvme@lfdr.de>; Sun, 12 May 2019 09:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=C5wAgA0Uz1/aOhK+6JDRneHwXdXtqaPsytaVaNYUSlQ=; b=FgrIjf3EWJXBJtqq9cl+rOa2ps
	sINl2J0lHE36sF4qje3AAuVtLMwQLIAGajBgP8WMhpS0/Um4be6IeF5YzD2PujaELVqYXNw00x38e
	cN9j2gE/b5YjITsL8WfFZuTHXJoCaZYC16EvBoLR+9mm/VAgunPqmd1u7j1nVD+ofLxdZWPRqE11B
	FJ8KwnUBc7FdDpTBPG+6aLwyaYuFzBCdOdU2j9NnNSBCPakvo0J467cNZEwHtjhbFfObI0HbeAEEQ
	HHmUx26LdMR23xPKqAuA/jPWx3tXHsA/WQr9shCrv0QjojuIxdARiY5dspw2JqoWvnCfDx4Me0ZX0
	adfqRUjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPj0Y-0001TS-Nj; Sun, 12 May 2019 07:34:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPj0N-0001KY-Dd
 for linux-nvme@lists.infradead.org; Sun, 12 May 2019 07:34:46 +0000
Received: by mail-pg1-x542.google.com with SMTP id d31so5117778pgl.7
 for <linux-nvme@lists.infradead.org>; Sun, 12 May 2019 00:34:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=USOysBqI3w7kudCtlGC42AJABhskc6i9dJ6S/ZjbPA4=;
 b=Ac0IRXE4pn8Mn9Cr3DcRk73L0HTIv9YbCcG3dsDAonQiqZpAOThIzWzMno9E6936c2
 KwIlS9kV7PFpLs01EtkRR4LEIczZFxMbu8QK0lvG6oUcPec6vIAZrmJcId+EDrpQuc5F
 UIElgzu/NIRbyQh4vf12IS/1BmNP/B7INjOM/pmNtLUscne7keiZWWzgI4jArNArfyZO
 uOmmdQPHyvkpis/PXIX4WWX32W+WVMSj0da5r0jcfVWhoLFUbFjkZWEKVNxOsm08OY7y
 8dwnJXHWwMknoD070M1rpLnT3oVNvzx7MlAb7x+/Fg9v9oboGQRVCEG+JrJ532TB2nRO
 efrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=USOysBqI3w7kudCtlGC42AJABhskc6i9dJ6S/ZjbPA4=;
 b=AYlHTfnxQ5eMhwq0o8LZjrIKBgu32SA9it98ELSrt1AC1pXNxxCsYHkwWXweiIQBFf
 VhpLdP6tCMExYvtxIjtAg8TBBwuN6El6Qn6c23HhrE67J3a0hnXmwvH94lnQ0t9zR9d/
 bZJX8Au/6rGbgArUCARznKD3whgl37kStDQMYvzfB2crfLtg3T8qo7erWCTMblCtynpp
 trl/iNitH3Ky/cJ15TruyI9cib9t11k2L9ziIennOtREjeqyHyGiN7q4ipofVDPL8paQ
 EwGjRtqT2vdGv3IvbaDTJLZPn+y3DmLOwDCeO05ngPfyRhFrxsYzRwHXLcSpCYJhW/bH
 hHcQ==
X-Gm-Message-State: APjAAAXCA+vA7grCzxBAp/LWcvQyM53CbMHsrqkrK08vUEGl04qz4hqN
 lNkMiuh0CUKOSXQHcCMRFNc=
X-Google-Smtp-Source: APXvYqxLNI2ZA7OpYVomyBOTC5N5fpW0mBcMJx4fBBQJJzhGBpwSPUdhP2POU8koYXZ05SsTuHUI1g==
X-Received: by 2002:a63:5443:: with SMTP id e3mr24300584pgm.265.1557646481730; 
 Sun, 12 May 2019 00:34:41 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e123sm5492242pgc.29.2019.05.12.00.34.38
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 12 May 2019 00:34:40 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-kernel@vger.kernel.org,
	linux-nvme@lists.infradead.org
Subject: [PATCH V3 1/5] nvme: Make trace common for host and target both
Date: Sun, 12 May 2019 16:34:09 +0900
Message-Id: <20190512073413.32050-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190512073413.32050-1-minwoo.im.dev@gmail.com>
References: <20190512073413.32050-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190512_003443_985428_56C95105 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
index 09f43f1bdd15..5974cadafcf7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -11084,6 +11084,7 @@ L:	linux-nvme@lists.infradead.org
 T:	git://git.infradead.org/nvme.git
 W:	http://git.infradead.org/nvme.git
 S:	Supported
+F:	drivers/nvme/
 F:	drivers/nvme/host/
 F:	include/linux/nvme.h
 F:	include/uapi/linux/nvme_ioctl.h
@@ -11105,6 +11106,7 @@ L:	linux-nvme@lists.infradead.org
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
index eebaeadaa800..ae76c0b78a5f 100644
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
index 2a8708c9ac18..d90b66543d25 100644
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
index 97d3c77365b8..acf10c7a5bef 100644
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
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
