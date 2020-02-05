Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E940153847
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Feb 2020 19:38:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=EDypZMDf2VgJtSwZBIvkIhIdqCzD7V9GsQWfQuxlJWM=; b=pKcG8pYfAj7lg13w3AvSZ0fE+j
	lklPtz5XVSxPNMJ4U7DvxIPtWXoEioNQKdLVM6ekgzQzvKn8JCgQUiwV3Y4ernFoQxXAGHVz3u2UD
	HSoPBxONxa4L2+Mhlo99qHBGA92iklVDmn0aQAI8q1S7IQKWoEWQcrPzF9mjpIcSLq57PDSEnoarj
	ji2fTDm+tprIEgxMl97qLUFEhdw2tp5S+2zcHpc04reuzoOkYE24jfFqBqczvye2dMTLrSF3F313j
	f72m9z4PtxR9q+wjWrYRNdtN8mtYAPpr/CjNyer+3+To2piMxjwkM1Fdq8M2irWo2WNp+Qz4KI4X/
	+akrLXNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izPZD-0003UI-AO; Wed, 05 Feb 2020 18:38:27 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izPYr-0003QI-AW
 for linux-nvme@lists.infradead.org; Wed, 05 Feb 2020 18:38:07 +0000
Received: by mail-wm1-x344.google.com with SMTP id t14so4055593wmi.5
 for <linux-nvme@lists.infradead.org>; Wed, 05 Feb 2020 10:38:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FRZL9QLZsp4vQCAZfBvaezxB8yVTWL/2105RqT3TDmo=;
 b=b566awOtMHnhS3qU6fgLG2F83Qqux/HMybD7XOrytTyBELx0/8T4Jfp/I8Da50emAB
 HgOn/eFOTM61ja0Umir/GSZvZ8IN2Hfm8qdQWVv0xl0SzRnlU8QN8XR6wAhBzn45VqCd
 VBfFEzWyYStsKD9ABA10Bvr5kFxeapBOPjkbUUvO5sIn9tBFKmA6Rqsbkbafb9RJAbvg
 Y5RSA6+2aAOfiDsNVdlFjoixSXyfjFxu8a0WoIisfvlDjPyNqo6I49QiDPhLqfmi61dO
 DF+3Tgv3YwUSJPzYah25I9avk7ZMtk8IT4P0RFdehlAwOsd5VJJN5xsEBi2SoW9gBtW5
 hlBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FRZL9QLZsp4vQCAZfBvaezxB8yVTWL/2105RqT3TDmo=;
 b=gFnRK0pK6fKj7nXUly+g06eqhptdXGIiqAETk2gABvWoGlhlnnk/v50JzF9J/8Zg9r
 xzlE+3SDXd6V//5RqVmCy882hYmaJVFf8jxyj4xZ93jcQy+1anlLUBZphPFELvHK/ZZ+
 jj+i6HWO0c0sYPsZ2GrNpn9prsml4W/g+730fs+eYi6xG+THz+4OeQU9dKgOD2Wp+Lso
 uVS+XBT7ba49uuHcDAeGwVv/geGNweIriveFZVf4f1sIg0cFrOWqLaZHYIVPoKHVUzcb
 N8jaA9Rnfg6jrZ9kPg+uDd4H2wnRWEfYMRRizdQeuKKU3L4itPmkBIR3FYI7Qs0AFmzu
 0Z8w==
X-Gm-Message-State: APjAAAXh5uB/PBswGkjJ7yXRRHdkWtPDCo4ozXiA1tFULhOW5i3Ean4i
 sxls+YNhC9/C4OOGMv+Oz3/rC5lP
X-Google-Smtp-Source: APXvYqwNGTxSKVY6O8eLfxpj30Yqu32HiV7NMtJ5aGBOiYbhIX8YKDNY2R/aNM0HyNo+EhjpnL1V9A==
X-Received: by 2002:a1c:791a:: with SMTP id l26mr7250976wme.58.1580927883733; 
 Wed, 05 Feb 2020 10:38:03 -0800 (PST)
Received: from os42.localdomain ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id a22sm490319wmd.20.2020.02.05.10.38.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 05 Feb 2020 10:38:03 -0800 (PST)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 01/29] nvme-fc: Sync header to FC-NVME-2 rev 1.08
Date: Wed,  5 Feb 2020 10:37:25 -0800
Message-Id: <20200205183753.25959-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20200205183753.25959-1-jsmart2021@gmail.com>
References: <20200205183753.25959-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_103805_358043_51EE9496 
X-CRM114-Status: GOOD (  12.57  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jsmart2021[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jsmart2021[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: James Smart <jsmart2021@gmail.com>, martin.petersen@oracle.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A couple of minor changes occurred between 1.06 and 1.08:
- Addition of NVME_SR_RSP opcode
- change of SR_RSP status code 1 to Reserved

Signed-off-by: James Smart <jsmart2021@gmail.com>
---
 include/linux/nvme-fc.h | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/include/linux/nvme-fc.h b/include/linux/nvme-fc.h
index e8c30b39bb27..840fa9ac733f 100644
--- a/include/linux/nvme-fc.h
+++ b/include/linux/nvme-fc.h
@@ -4,8 +4,8 @@
  */
 
 /*
- * This file contains definitions relative to FC-NVME-2 r1.06
- * (T11-2019-00210-v001).
+ * This file contains definitions relative to FC-NVME-2 r1.08
+ * (T11-2019-00210-v004).
  */
 
 #ifndef _NVME_FC_H
@@ -81,7 +81,8 @@ struct nvme_fc_ersp_iu {
 };
 
 
-#define FCNVME_NVME_SR_OPCODE	0x01
+#define FCNVME_NVME_SR_OPCODE		0x01
+#define FCNVME_NVME_SR_RSP_OPCODE	0x02
 
 struct nvme_fc_nvme_sr_iu {
 	__u8			fc_id;
@@ -94,7 +95,7 @@ struct nvme_fc_nvme_sr_iu {
 
 enum {
 	FCNVME_SRSTAT_ACC		= 0x0,
-	FCNVME_SRSTAT_INV_FCID		= 0x1,
+	/* reserved			  0x1 */
 	/* reserved			  0x2 */
 	FCNVME_SRSTAT_LOGICAL_ERR	= 0x3,
 	FCNVME_SRSTAT_INV_QUALIF	= 0x4,
-- 
2.13.7


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
