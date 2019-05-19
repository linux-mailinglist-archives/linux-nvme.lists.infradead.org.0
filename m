Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DDC8A2285D
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 20:39:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HTsJcEWJPpLjMLTu1TVE3ChvvbutgT+DQC8FMp2nASI=; b=HJXSF8Tj1KYbTQ
	YQq/UWuttxroLAQIeuVtrcte31bKxkef/1YOdo3RdyySYmkS5cYvm68wmkdCk9LNXvTNsdQI/IgT1
	PqGGPej/zxB06dFWmpFsOa0jyFyoR6J+/JnnqtcskBxgR4X8xwOmg2JcnTziXwkMOX5MlA6p2YnJJ
	5Y4LFcdPiMSRwDjJ6h4YbjYgSqpNIacnC8plCCOyfL/uWk2sedL3Rkzw5qJmdyBOZ9N0Ab4UZsr34
	pi9UC64XCqG++JE0ekpSgZC/2d9Z1arn9HzGDgLYN7bk451UUblas0Oo4dsaDbgCcpbMtfgjYk0U/
	uQTJ2ylOWD9a6ibmOlDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQic-0001n0-1n; Sun, 19 May 2019 18:39:34 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQiS-0001jn-IG
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 18:39:25 +0000
Received: by mail-pf1-x443.google.com with SMTP id u17so6098399pfn.7
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 11:39:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=kzX4GkgUKz62iY/FHxsfnsJiqBD96jvMpfJmBtprVgI=;
 b=oBf1DkqpZyue2topLnh3Jdr/cPGFHWjKIP+mOjzCpdMzvlX759yVJ1JyqSgTDgqEtN
 eUS4cyWAYoUGFi5bCHfstGTxNBjnqjUL5LkqcnV1BlO3gmt0tLy3mP2rkPUD/AdumHvl
 FEb1eE86vUTrt8v/pWN+OYIPCj9YA88wQgNStX/DDucq8Il8v9wKxddd7p/H5avMJ3y3
 KqtPccCnshJ2SwEfum32EnQwHIGECAYsQ9SV1B6ixKz2aS8HPDrv4lYy1W2Amw7dJsiF
 9XdzsLtFV7zCJ/mZd1JONqhAAJbIkX9m1438e5S0S6XZW9KpuU+bsNFC+ACSjRR1+cCF
 QKjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=kzX4GkgUKz62iY/FHxsfnsJiqBD96jvMpfJmBtprVgI=;
 b=D8TrmfHqqTGXA01T4ZGYkPgxurKzDVn/0RS5u+h7/S0LmeSHjnZlfAAiJbjodg/VWA
 odLHRQ1Ub71MaLw5hqyws4EiK2i0Omski8kyWO5b9lEuX4YJVeco9L9ekmdOsqR/9sWi
 ky82k8MbzYyv3/LBJzldeRkx5H9OqTJYDFReV0FqBVorbc72xg7lCTAmKcrJZlVfev1B
 G8xTjzr5SRwbmqR1W2KdPaP7ShCYjoOPa/vfyCo3mFoaq2uq7RZcY1449AVoJUey8TFR
 rdoSSpupZNy3TeCBW6dZHnlvrtXejuBk+Jap0hzxPQ5K3BIDVvINkcuSDso1MxL2C7Vm
 u/9A==
X-Gm-Message-State: APjAAAXecT+YoMcGvaXOA+UPR8KSKJOQbU/6ozIylEtG2mu/mPBWax8u
 S5CxIT1i42dG93X1QaJKDr8fx+jdTKM=
X-Google-Smtp-Source: APXvYqy5hGdIRigmxFUtw1QFZ9Tg7M3HB3T4INm2a7HDQqfjJys6xuV1fmaBVopAgvs20fkxDyPhiw==
X-Received: by 2002:a63:2ad2:: with SMTP id q201mr69119904pgq.94.1558291163465; 
 Sun, 19 May 2019 11:39:23 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 1sm16513360pfn.165.2019.05.19.11.39.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 11:39:22 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 1/4] nvme.h: Fix typos in status code values
Date: Mon, 20 May 2019 03:39:10 +0900
Message-Id: <20190519183913.3493-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190519183913.3493-1-minwoo.im.dev@gmail.com>
References: <20190519183913.3493-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_113924_601698_30ECB339 
X-CRM114-Status: GOOD (  13.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Fix typos in status code value.  linux/nvme.h in kernel project is going
to be fixed soon or later.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 linux/nvme.h | 4 ++--
 nvme-print.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/linux/nvme.h b/linux/nvme.h
index 13fa52a..69f287e 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -1377,9 +1377,9 @@ enum {
 	NVME_SC_FW_NEEDS_SUBSYS_RESET	= 0x110,
 	NVME_SC_FW_NEEDS_RESET		= 0x111,
 	NVME_SC_FW_NEEDS_MAX_TIME	= 0x112,
-	NVME_SC_FW_ACIVATE_PROHIBITED	= 0x113,
+	NVME_SC_FW_ACTIVATE_PROHIBITED	= 0x113,
 	NVME_SC_OVERLAPPING_RANGE	= 0x114,
-	NVME_SC_NS_INSUFFICENT_CAP	= 0x115,
+	NVME_SC_NS_INSUFFICIENT_CAP	= 0x115,
 	NVME_SC_NS_ID_UNAVAILABLE	= 0x116,
 	NVME_SC_NS_ALREADY_ATTACHED	= 0x118,
 	NVME_SC_NS_IS_PRIVATE		= 0x119,
diff --git a/nvme-print.c b/nvme-print.c
index ae22a5b..43488ef 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -1801,9 +1801,9 @@ const char *nvme_status_to_string(__u32 status)
 	case NVME_SC_FW_NEEDS_SUBSYS_RESET:	return "FW_NEEDS_SUBSYSTEM_RESET: The firmware commit was successful, however, activation of the firmware image requires an NVM Subsystem";
 	case NVME_SC_FW_NEEDS_RESET:		return "FW_NEEDS_RESET: The firmware commit was successful; however, the image specified does not support being activated without a reset";
 	case NVME_SC_FW_NEEDS_MAX_TIME:		return "FW_NEEDS_MAX_TIME_VIOLATION: The image specified if activated immediately would exceed the Maximum Time for Firmware Activation (MTFA) value reported in Identify Controller. To activate the firmware, the Firmware Commit command needs to be re-issued and the image activated using a reset";
-	case NVME_SC_FW_ACIVATE_PROHIBITED:	return "FW_ACTIVATION_PROHIBITED: The image specified is being prohibited from activation by the controller for vendor specific reasons";
+	case NVME_SC_FW_ACTIVATE_PROHIBITED:	return "FW_ACTIVATION_PROHIBITED: The image specified is being prohibited from activation by the controller for vendor specific reasons";
 	case NVME_SC_OVERLAPPING_RANGE:		return "OVERLAPPING_RANGE: This error is indicated if the firmware image has overlapping ranges";
-	case NVME_SC_NS_INSUFFICENT_CAP:	return "NS_INSUFFICIENT_CAPACITY: Creating the namespace requires more free space than is currently available. The Command Specific Information field of the Error Information Log specifies the total amount of NVM capacity required to create the namespace in bytes";
+	case NVME_SC_NS_INSUFFICIENT_CAP:	return "NS_INSUFFICIENT_CAPACITY: Creating the namespace requires more free space than is currently available. The Command Specific Information field of the Error Information Log specifies the total amount of NVM capacity required to create the namespace in bytes";
 	case NVME_SC_NS_ID_UNAVAILABLE:		return "NS_ID_UNAVAILABLE: The number of namespaces supported has been exceeded";
 	case NVME_SC_NS_ALREADY_ATTACHED:	return "NS_ALREADY_ATTACHED: The controller is already attached to the namespace specified";
 	case NVME_SC_NS_IS_PRIVATE:		return "NS_IS_PRIVATE: The namespace is private and is already attached to one controller";
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
