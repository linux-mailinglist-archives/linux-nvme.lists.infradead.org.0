Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B39E01A949
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 21:37:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EFgah4k4OX+ub85CdLSNSQr4jdQvLIsCdXxdnV1QGhk=; b=qq09MIyxsV4uLVEJykiTDSwuuZ
	XIY5Mb6n930Q1yx9jUAwLattOv9Jkk4RyjUy3QwHE5yAxU4vl8RoG62UWHdYU9QQBX5gIqSAF9hqm
	sCRDD2Nx6ti+/yBm7SQ8yFvEUkxOdAjZ7ndBx4xLc8rxK4eVGuCPpZ1QXaPygbxdELZc+isxzFGOP
	8J06zQBKQHVWiJAyLH0Ya0k02LwC0Ak7sC7+tyy9Clo+ri669VyzWvmiVkp2y2kVpzddJlyND+5rn
	GWwLhQBRE+Ln8YuC4sCFspu1Sjq7hvFfVbilgcamCh0bsmZBn86LPRRKsx34e0cEhlKnDbI/4YVxl
	y7kMMm1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPXoX-0002KC-6f; Sat, 11 May 2019 19:37:45 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPXoI-00027Q-M0
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 19:37:32 +0000
Received: by mail-pl1-x643.google.com with SMTP id g5so4403859plt.2
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 12:37:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=C6nTGST1hHSlFAz2Ov07l9lOPF3ajk8E7m7r7Sh7KdU=;
 b=jDaSc00k4pLiLEL/+Ftj2yuU8zZEwJl7m+JphOj6+wtxA65EpXJoq7OcfCgHC7PpjB
 ZGpWu/4X9W6HBfLTGVoeC/2/9fW2N8O2mbkWgD8Kx/M8WaYOUnda299/5MsyBgzjUopp
 KMsghjUrcslLaMsFvQBlAzyrVvhJuq8UVPixyMxEX4e2wP+grxcqNhfH9DQP7Q1azwNJ
 tYop24K5qEgi28RBmbXZHg1XXEntvXU9/wviYv+b7R8qRJInDwOZ/LyeLoYKHa/I1uog
 ldvyqbh1i1P7YtuC9EBpKeyf1iyrBMwfyxBuD8AXlYe6+uVxiN3JegtR+stx8gtv6wof
 bhZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=C6nTGST1hHSlFAz2Ov07l9lOPF3ajk8E7m7r7Sh7KdU=;
 b=M/f7dUgR8LmO8QhBShY7HO3HzM6NpNf32OTpRoNqw8P7xDhKXf0qWXxMKUfOB0z4dW
 ckw76ktoMdZ8R4A8cfysvWRSHNWBDhW4H9PaxfqtbMr40kXcWV8Vyql43pWQB6F08GaC
 RVqHITk+Xkyo/gcPI0Z2Mz8ewd8qs8uIgpxLdA0pUrNWoaYoE+4LM8FZG9fqoPsi6+os
 0C3EMt6YCtS9mqJO4MZ6tZ0o1bIFCsgoAezPcaruT/SnVJWKKIH5ldhiYKIIggR6o6Ne
 Abu05fuvPVX4nx/tIKTEAuAW3h/kfUgk62i5DVsaQMk2b4QyS9SjIWu/LHP3aYwaGQyn
 mUEw==
X-Gm-Message-State: APjAAAVtY/GtgR+RCEy67S9IO1cGqa5Plrsuf36daGrNGgnGtV5dwQEP
 Q+R59Rh7GV81SYiHDbVwSui+QOXhzNs=
X-Google-Smtp-Source: APXvYqxI24erACLasr3UtKQN67ETkhgXtdwyk57B7Hlqoi/0DFp9AidceGr132LHpU5RXbcN4JG5Wg==
X-Received: by 2002:a17:902:8f98:: with SMTP id
 z24mr9846720plo.101.1557603449621; 
 Sat, 11 May 2019 12:37:29 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a9sm10878883pgw.72.2019.05.11.12.37.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 12:37:28 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH RFC 2/4] nvme-status: Introduce nvme status module to map errno
Date: Sun, 12 May 2019 04:37:11 +0900
Message-Id: <20190511193713.29516-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
References: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_123730_750491_B1F92395 
X-CRM114-Status: GOOD (  17.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Background:
  It's not enough to return the nvme status value in main() because it's
allowed to be in 8bits, but nvme status is indicated in 16bits.  So we
has not been able to figure out what kind of nvme status has been
returned by return value.

  This patch introduces nvme-status module that manages mapping between
nvme status and errno.  It's not possible to make 1:1 mapping relations,
but we can map it as a groups.

All the internal errors which has been returned in a negative value will
be returned with ECOMM that indicates communication errors.  In this
case, we can see what happened via stderr.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 Makefile      |   3 +-
 linux/nvme.h  |   6 +++
 nvme-status.c | 127 ++++++++++++++++++++++++++++++++++++++++++++++++++
 nvme-status.h |  14 ++++++
 4 files changed, 149 insertions(+), 1 deletion(-)
 create mode 100644 nvme-status.c
 create mode 100644 nvme-status.h

diff --git a/Makefile b/Makefile
index 4bfbebb..1e50a65 100644
--- a/Makefile
+++ b/Makefile
@@ -32,7 +32,8 @@ override CFLAGS += -DNVME_VERSION='"$(NVME_VERSION)"'
 NVME_DPKG_VERSION=1~`lsb_release -sc`
 
 OBJS := argconfig.o suffix.o parser.o nvme-print.o nvme-ioctl.o \
-	nvme-lightnvm.o fabrics.o json.o nvme-models.o plugin.o
+	nvme-lightnvm.o fabrics.o json.o nvme-models.o plugin.o \
+	nvme-status.o
 
 PLUGIN_OBJS :=					\
 	plugins/intel/intel-nvme.o		\
diff --git a/linux/nvme.h b/linux/nvme.h
index c99b438..5ca7442 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -1307,6 +1307,12 @@ static inline bool nvme_is_write(struct nvme_command *cmd)
 	return cmd->common.opcode & 1;
 }
 
+enum {
+	NVME_SCT_GENERIC		= 0x0,
+	NVME_SCT_CMD_SPECIFIC		= 0x1,
+	NVME_SCT_MEDIA			= 0x2,
+};
+
 enum {
 	/*
 	 * Generic Command Status:
diff --git a/nvme-status.c b/nvme-status.c
new file mode 100644
index 0000000..63511a5
--- /dev/null
+++ b/nvme-status.c
@@ -0,0 +1,127 @@
+#include <linux/types.h>
+#include <stdbool.h>
+#include <errno.h>
+
+#include "nvme.h"
+#include "nvme-status.h"
+
+/*
+ * nvme_status_to_errno - It converts given status to errno mapped
+ * @status: nvme status field in completion queue entry
+ * @fabrics: true if given status is for fabrics
+ *
+ * Notes: This function can handle generic command status only.
+ */
+__u8 nvme_status_to_errno(__u16 status, bool fabrics)
+{
+	__u8 sct = nvme_status_type(status);
+
+	/*
+	 * The actual status code is enough with masking 0xff, but we need to
+	 * cover status code type which is 3bits with 0x7ff.
+	 */
+	status &= 0x7ff;
+
+	if (sct == NVME_SCT_GENERIC) {
+		switch (status) {
+		case NVME_SC_INVALID_OPCODE:
+		case NVME_SC_INVALID_FIELD:
+		case NVME_SC_INVALID_NS:
+		case NVME_SC_SGL_INVALID_LAST:
+		case NVME_SC_SGL_INVALID_COUNT:
+		case NVME_SC_SGL_INVALID_DATA:
+		case NVME_SC_SGL_INVALID_METADATA:
+		case NVME_SC_SGL_INVALID_TYPE:
+		case NVME_SC_SGL_INVALID_OFFSET:
+		case NVME_SC_SGL_INVALID_SUBTYPE:
+			return EINVAL;
+		case NVME_SC_CMDID_CONFLICT:
+			return EADDRINUSE;
+		case NVME_SC_DATA_XFER_ERROR:
+		case NVME_SC_INTERNAL:
+		case NVME_SC_SANITIZE_FAILED:
+			return EIO;
+		case NVME_SC_POWER_LOSS:
+		case NVME_SC_ABORT_REQ:
+		case NVME_SC_ABORT_QUEUE:
+		case NVME_SC_FUSED_FAIL:
+		case NVME_SC_FUSED_MISSING:
+			return EWOULDBLOCK;
+		case NVME_SC_CMD_SEQ_ERROR:
+			return EILSEQ;
+		case NVME_SC_SANITIZE_IN_PROGRESS:
+			return EINPROGRESS;
+		case NVME_SC_NS_WRITE_PROTECTED:
+		case NVME_SC_NS_NOT_READY:
+		case NVME_SC_RESERVATION_CONFLICT:
+			return EACCES;
+		case NVME_SC_LBA_RANGE:
+			return EREMOTEIO;
+		case NVME_SC_CAP_EXCEEDED:
+			return ENOSPC;
+		}
+	} else if (sct == NVME_SCT_CMD_SPECIFIC && !fabrics) {
+		switch (status) {
+		case NVME_SC_CQ_INVALID:
+		case NVME_SC_QID_INVALID:
+		case NVME_SC_QUEUE_SIZE:
+		case NVME_SC_FIRMWARE_SLOT:
+		case NVME_SC_FIRMWARE_IMAGE:
+		case NVME_SC_INVALID_VECTOR:
+		case NVME_SC_INVALID_LOG_PAGE:
+		case NVME_SC_INVALID_FORMAT:
+		case NVME_SC_INVALID_QUEUE:
+		case NVME_SC_NS_INSUFFICIENT_CAP:
+		case NVME_SC_NS_ID_UNAVAILABLE:
+		case NVME_SC_CTRL_LIST_INVALID:
+		case NVME_SC_BAD_ATTRIBUTES:
+		case NVME_SC_INVALID_PI:
+			return EINVAL;
+		case NVME_SC_ABORT_LIMIT:
+		case NVME_SC_ASYNC_LIMIT:
+			return EDQUOT;
+		case NVME_SC_FW_NEEDS_CONV_RESET:
+		case NVME_SC_FW_NEEDS_SUBSYS_RESET:
+		case NVME_SC_FW_NEEDS_MAX_TIME:
+			return ERESTART;
+		case NVME_SC_FEATURE_NOT_SAVEABLE:
+		case NVME_SC_FEATURE_NOT_CHANGEABLE:
+		case NVME_SC_FEATURE_NOT_PER_NS:
+		case NVME_SC_FW_ACTIVATE_PROHIBITED:
+		case NVME_SC_NS_IS_PRIVATE:
+		case NVME_SC_BP_WRITE_PROHIBITED:
+		case NVME_SC_READ_ONLY:
+			return EPERM;
+		case NVME_SC_OVERLAPPING_RANGE:
+		case NVME_SC_NS_NOT_ATTACHED:
+			return ENOSPC;
+		case NVME_SC_NS_ALREADY_ATTACHED:
+			return EALREADY;
+		case NVME_SC_THIN_PROV_NOT_SUPP:
+		case NVME_SC_ONCS_NOT_SUPPORTED:
+			return EOPNOTSUPP;
+		}
+	} else if (sct == NVME_SCT_CMD_SPECIFIC && fabrics) {
+		switch (status) {
+		case NVME_SC_CONNECT_FORMAT:
+		case NVME_SC_CONNECT_INVALID_PARAM:
+			return EINVAL;
+		case NVME_SC_CONNECT_CTRL_BUSY:
+			return EBUSY;
+		case NVME_SC_CONNECT_RESTART_DISC:
+			return ERESTART;
+		case NVME_SC_CONNECT_INVALID_HOST:
+			return ECONNREFUSED;
+		case NVME_SC_DISCOVERY_RESTART:
+			return EAGAIN;
+		case NVME_SC_AUTH_REQUIRED:
+			return EPERM;
+		}
+	}
+
+	/*
+	 * Media, integrity related status, and the others will be mapped to
+	 * EIO.
+	 */
+	return EIO;
+}
diff --git a/nvme-status.h b/nvme-status.h
new file mode 100644
index 0000000..094132b
--- /dev/null
+++ b/nvme-status.h
@@ -0,0 +1,14 @@
+#include <linux/types.h>
+#include <stdbool.h>
+
+/*
+ * nvme_status_type - It gives SCT(Status Code Type) in status field in
+ *                    completion queue entry.
+ * @status: status field located at DW3 in completion queue entry
+ */
+static inline __u8 nvme_status_type(__u16 status)
+{
+	return (status & 0x700) >> 8;
+}
+
+__u8 nvme_status_to_errno(__u16 status, bool fabrics);
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
