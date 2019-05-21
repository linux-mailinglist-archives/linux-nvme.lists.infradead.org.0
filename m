Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D550255BC
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=howLXuEJe5CGedpxxsCkA1GGCHTGEsjHtvF1lMW2R6k=; b=b144kM89JNxCbj
	xujTCQDZywXyu9OWh/Tbg2PLPMlACN6cifHKzNPVH2s+5RArWzp/YW2hQJtso3CPdeBpsGX64Zm3t
	pOmjoTk/ZBDMLYoE/rZD6F9oe5ZfggmyIaN0JS5AJY5WtBbmyeC8EVvFAL0u5LFt31SGJbynA3ePA
	ax6ZWMFkNtpUaxu0vhAg4DY+n2mV0KyMf0leZ4DNQg80RpXHPWK01j7FPSfMqRHOsF6/wyhcLLPOo
	XEKyZOBoPluYy9c/lTyk9XD5P2sKJAs4zmJQqgG51UGT/Vf90ejfDCCxoxR0FGG49g7STukQ7DAjN
	evDEwzEc/+Bo8mABgyEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7lU-0001ae-Fe; Tue, 21 May 2019 16:37:24 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7lJ-0001Vl-HG
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:37:15 +0000
Received: by mail-pf1-x444.google.com with SMTP id y11so9324749pfm.13
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=25WUl/SpCNO5+M0bOxA1N70w7TlxxAOjNoQaC7UNROk=;
 b=Eqc1e94a5ARNKHFWagSOGue2zpizysRmCijifF+Ijpw2VGkeTIO9s/IxekymyZvTSY
 YDbUmpOfYOvDEUmVx4oAL7lMJNZda3hVBfYxlz8XAKxHS5slJM9lbfSsokt6iwT0h99C
 HTJvqG7MzvM0xppdxKHirJO53zpuhstbdwhzzR8ZgO1NaxMJQxVAh+TIYHVHWb9lCf5b
 gxLz9CM6dwGTuQnD9mLUDxAyvNlqPjNjOOkBONodbmx4IUXyG6C7YH2KxKF0g2CqKyBj
 bS7frP4BbTPewgOwAQg50BKQIwPWSZYJTqIkJ+rUe7eb6bPk4776mIhSDlROi4PA5/39
 sJ5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=25WUl/SpCNO5+M0bOxA1N70w7TlxxAOjNoQaC7UNROk=;
 b=qYXYRfQAJoyiAsX1pyHu7J2IQBn5hoDoQgYZG5eFWlYHivD0LCATP/ZNg5Z36JJ5gl
 y5dnrlyMTdoUeB6byYuGxBOkbMRK5nscs5vuXDo/cWEsRNXghYFI7HPyd9+DZ3IMlMSU
 s/L6AC8xPZiuSnK4irD1h5ZMQ1FnTBAL8r0EcU2lZdjpGVswST84pYx1T3QPMImHdZ3c
 mspRujTb/dQo08VaEaBMFy0oHgDU9PVUy52X1E3Tq5yL7Zdusw9ildssQSucWiGQ1iKZ
 xcq7Q1N77DOLi7enjBqX9xmgyWs8WTXzCaFYsgLNnoT7oj60MvTZ4itm06kdYNpNMhez
 /rcQ==
X-Gm-Message-State: APjAAAX80cxB5Cht9vq1G7jCoI0ClTg2xNQD2y9VrpSZovw/xKhypiie
 VOegvENkRSJG+fLM50MDf0ZwMApkcGY=
X-Google-Smtp-Source: APXvYqxEtyXOGEeGYZtjrNL5dfyBet2FAJ0njxj21wLybKOICcuT9OD3N38thc2p1PyjSWhvswKEqA==
X-Received: by 2002:a63:5cb:: with SMTP id 194mr83656103pgf.294.1558456632503; 
 Tue, 21 May 2019 09:37:12 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r11sm24460731pgb.31.2019.05.21.09.37.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:37:11 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V4 1/3] nvme-status: Introduce nvme status module to map errno
Date: Wed, 22 May 2019 01:36:57 +0900
Message-Id: <20190521163659.24577-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521163659.24577-1-minwoo.im.dev@gmail.com>
References: <20190521163659.24577-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_093713_572617_9C094142 
X-CRM114-Status: GOOD (  17.61  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 linux/nvme.h  |   6 ++
 nvme-status.c | 155 ++++++++++++++++++++++++++++++++++++++++++++++++++
 nvme-status.h |  14 +++++
 4 files changed, 177 insertions(+), 1 deletion(-)
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
index 69f287e..9963e90 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -1319,6 +1319,12 @@ static inline bool nvme_is_write(struct nvme_command *cmd)
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
index 0000000..c69ff3f
--- /dev/null
+++ b/nvme-status.c
@@ -0,0 +1,155 @@
+#include <linux/types.h>
+#include <stdbool.h>
+#include <errno.h>
+
+#include "nvme.h"
+#include "nvme-status.h"
+
+static inline __u8 nvme_generic_status_to_errno(__u16 status)
+{
+	switch (status) {
+	case NVME_SC_INVALID_OPCODE:
+	case NVME_SC_INVALID_FIELD:
+	case NVME_SC_INVALID_NS:
+	case NVME_SC_SGL_INVALID_LAST:
+	case NVME_SC_SGL_INVALID_COUNT:
+	case NVME_SC_SGL_INVALID_DATA:
+	case NVME_SC_SGL_INVALID_METADATA:
+	case NVME_SC_SGL_INVALID_TYPE:
+	case NVME_SC_SGL_INVALID_OFFSET:
+	case NVME_SC_SGL_INVALID_SUBTYPE:
+		return EINVAL;
+	case NVME_SC_CMDID_CONFLICT:
+		return EADDRINUSE;
+	case NVME_SC_DATA_XFER_ERROR:
+	case NVME_SC_INTERNAL:
+	case NVME_SC_SANITIZE_FAILED:
+		return EIO;
+	case NVME_SC_POWER_LOSS:
+	case NVME_SC_ABORT_REQ:
+	case NVME_SC_ABORT_QUEUE:
+	case NVME_SC_FUSED_FAIL:
+	case NVME_SC_FUSED_MISSING:
+		return EWOULDBLOCK;
+	case NVME_SC_CMD_SEQ_ERROR:
+		return EILSEQ;
+	case NVME_SC_SANITIZE_IN_PROGRESS:
+		return EINPROGRESS;
+	case NVME_SC_NS_WRITE_PROTECTED:
+	case NVME_SC_NS_NOT_READY:
+	case NVME_SC_RESERVATION_CONFLICT:
+		return EACCES;
+	case NVME_SC_LBA_RANGE:
+		return EREMOTEIO;
+	case NVME_SC_CAP_EXCEEDED:
+		return ENOSPC;
+	}
+
+	return EIO;
+}
+
+static inline __u8 nvme_cmd_specific_status_to_errno(__u16 status)
+{
+	switch (status) {
+	case NVME_SC_CQ_INVALID:
+	case NVME_SC_QID_INVALID:
+	case NVME_SC_QUEUE_SIZE:
+	case NVME_SC_FIRMWARE_SLOT:
+	case NVME_SC_FIRMWARE_IMAGE:
+	case NVME_SC_INVALID_VECTOR:
+	case NVME_SC_INVALID_LOG_PAGE:
+	case NVME_SC_INVALID_FORMAT:
+	case NVME_SC_INVALID_QUEUE:
+	case NVME_SC_NS_INSUFFICIENT_CAP:
+	case NVME_SC_NS_ID_UNAVAILABLE:
+	case NVME_SC_CTRL_LIST_INVALID:
+	case NVME_SC_BAD_ATTRIBUTES:
+	case NVME_SC_INVALID_PI:
+		return EINVAL;
+	case NVME_SC_ABORT_LIMIT:
+	case NVME_SC_ASYNC_LIMIT:
+		return EDQUOT;
+	case NVME_SC_FW_NEEDS_CONV_RESET:
+	case NVME_SC_FW_NEEDS_SUBSYS_RESET:
+	case NVME_SC_FW_NEEDS_MAX_TIME:
+		return ERESTART;
+	case NVME_SC_FEATURE_NOT_SAVEABLE:
+	case NVME_SC_FEATURE_NOT_CHANGEABLE:
+	case NVME_SC_FEATURE_NOT_PER_NS:
+	case NVME_SC_FW_ACTIVATE_PROHIBITED:
+	case NVME_SC_NS_IS_PRIVATE:
+	case NVME_SC_BP_WRITE_PROHIBITED:
+	case NVME_SC_READ_ONLY:
+		return EPERM;
+	case NVME_SC_OVERLAPPING_RANGE:
+	case NVME_SC_NS_NOT_ATTACHED:
+		return ENOSPC;
+	case NVME_SC_NS_ALREADY_ATTACHED:
+		return EALREADY;
+	case NVME_SC_THIN_PROV_NOT_SUPP:
+	case NVME_SC_ONCS_NOT_SUPPORTED:
+		return EOPNOTSUPP;
+	}
+
+	return EIO;
+}
+
+static inline __u8 nvme_fabrics_status_to_errno(__u16 status)
+{
+	switch (status) {
+	case NVME_SC_CONNECT_FORMAT:
+	case NVME_SC_CONNECT_INVALID_PARAM:
+		return EINVAL;
+	case NVME_SC_CONNECT_CTRL_BUSY:
+		return EBUSY;
+	case NVME_SC_CONNECT_RESTART_DISC:
+		return ERESTART;
+	case NVME_SC_CONNECT_INVALID_HOST:
+		return ECONNREFUSED;
+	case NVME_SC_DISCOVERY_RESTART:
+		return EAGAIN;
+	case NVME_SC_AUTH_REQUIRED:
+		return EPERM;
+	}
+
+	return EIO;
+}
+
+/*
+ * nvme_status_to_errno - It converts given status to errno mapped
+ * @status: >= 0 for nvme status field in completion queue entry,
+ *          < 0 for linux internal errors
+ * @fabrics: true if given status is for fabrics
+ *
+ * Notes: This function will convert a given status to an errno mapped
+ */
+__u8 nvme_status_to_errno(int status, bool fabrics)
+{
+	__u8 sct;
+
+	if (!status)
+		return 0;
+
+	if (status < 0)
+		return ECOMM;
+
+	/*
+	 * The actual status code is enough with masking 0xff, but we need to
+	 * cover status code type which is 3bits with 0x7ff.
+	 */
+	status &= 0x7ff;
+
+	sct = nvme_status_type(status);
+	if (sct == NVME_SCT_GENERIC)
+		return nvme_generic_status_to_errno(status);
+	else if (sct == NVME_SCT_CMD_SPECIFIC && !fabrics)
+		return nvme_cmd_specific_status_to_errno(status);
+	else if (sct == NVME_SCT_CMD_SPECIFIC && fabrics)
+		return nvme_fabrics_status_to_errno(status);
+
+	/*
+	 * Media, integrity related status, and the others will be mapped to
+	 * EIO.
+	 */
+	return EIO;
+}
diff --git a/nvme-status.h b/nvme-status.h
new file mode 100644
index 0000000..92a474c
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
+__u8 nvme_status_to_errno(int status, bool fabrics);
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
