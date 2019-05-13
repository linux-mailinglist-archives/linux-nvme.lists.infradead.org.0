Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B6951BB81
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 19:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4b0rpSjS5mLxYZl8y/Z9avIZDUCTxGgVWcFGzYP1HiE=; b=VK0CPvLZimV1UW
	nHKi2OSWnc/JI6yloJjbjWtVtID2fjMehuGhlOkxmtbJkVZoaxI75Y+4jvixFnlNhtISQOk9JJD0I
	X4HRA2sLhqcwst3zKSr6IlKWHq80N+baCGSKv1N0hnsIMcvKCyCvCZaf3zakk1Ho3R5gpKiF3R2ff
	qTh6U0HSFL9WZLD01PyYFzvqlaM7NE2JPpM3qs78jAZIKjwOLrPjvkkRWWxnuVx0ySagxI+d3ee4z
	0EhoXRSnFfEqyz9NF9Lv+yQMUrx0bx0VSjgM9gZchKSGpsnTWl6gDFsL1l8N56XSPZfyoNDCUmzny
	1G37Kg8QpG+iD16ysmLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQEN9-0003l7-1Y; Mon, 13 May 2019 17:04:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEMz-0003dw-8W
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 17:04:12 +0000
Received: by mail-pf1-x441.google.com with SMTP id c6so7515663pfa.10
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=QQ76hlK9q8C2rP+eU+PS8U2g/FX/TBV9/M8Ka/sSBNg=;
 b=hQ2IP0U+wq7bD8Rez6E5iT0E4tGoO01mjMC2ihlXAnK0gKQmmUXcbatmLQAIN1pmvD
 GJA0HjMleIeNwqlSdnXupSJnUKjxuoC79HjW2mRNHydb8BbCKMJ1K1MhRFHK5fxE04wU
 7B+Gvk3ACoZ+xgPKZD7QXSm4wPF+G04W8O6XiK4A0hJIT6OTnxKotB6jwnddD+CIPpy/
 0T6hDta4r/I5V4nZxiCVktEDHQY5ICWkwc7Jj0LG4cMTKUh9NvEw37OnyNb/BzvVj/Wf
 ilwLgme3KQxUNXLuWRZn25IyptI7/+pf0quo9TMjPj5pwDflTwTdktOzf32R5srfIvFV
 uTKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=QQ76hlK9q8C2rP+eU+PS8U2g/FX/TBV9/M8Ka/sSBNg=;
 b=t2PW6YmJnGQC+Jo0vI+QWRU3vTsWw3Sqdfmm0enBAVpE0Yl5AdEAsvmcCGyu7YLu09
 freLZafY2fkfP4LHVCLjKkdioNJQcmZfZ3zCzxixk4529BHnfluA+E86BSRVmOYDaAix
 vCceqHh4ujh2obCKy1ufMclXUoI/sZshHeVBNWYs2oZUSo4LMGwD7gyrFkMaY+C4HlQl
 o4N1/bJ7bQhMdDoTvwZR97L9nk/eyvqUKhv3fsfv602D2ON98qJ5Y5PK0po31J1N4sgr
 nDApPGjvnoOGuV9N8PRCQADOTnjWrf9InQPOEBo4cF9ewZ7FY0CFyac3lZtQRHg8V85k
 2WiA==
X-Gm-Message-State: APjAAAVL0xM7gcIlUHmBL3MIJRK8q9ZIIijUmOFw6gVGTw23PLBu10/k
 o9nzQkGCvgUY54eAE7AMED1/Qyl0hMw=
X-Google-Smtp-Source: APXvYqzL3ePXtltWpcQcYvfVMLpIi5nO8hd72lOKad8VVIpdFaPSNZImdWndsdh8eD0b7ebiXQq2eQ==
X-Received: by 2002:a62:aa15:: with SMTP id e21mr34895836pff.140.1557767048239; 
 Mon, 13 May 2019 10:04:08 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id f87sm21116559pff.56.2019.05.13.10.04.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 10:04:07 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 1/4] nvme.h: Fix typos in status code values
Date: Tue, 14 May 2019 02:03:39 +0900
Message-Id: <20190513170342.9497-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
References: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_100409_521005_0CD44773 
X-CRM114-Status: GOOD (  14.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Fix typos in status code value.  linux/nvme.h in kernel project is going
to be fixed soon or later.

Cc: Keith Busch <keith.busch@intel.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 linux/nvme.h | 4 ++--
 nvme-print.c | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/linux/nvme.h b/linux/nvme.h
index 2c840b9..c99b438 100644
--- a/linux/nvme.h
+++ b/linux/nvme.h
@@ -1365,9 +1365,9 @@ enum {
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
index c038355..0ce88d4 100644
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
