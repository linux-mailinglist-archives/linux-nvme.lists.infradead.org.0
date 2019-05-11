Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A69341A948
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 21:37:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=o66ulU7FiOC1aWNfdl7KTkBSu++OBldER2vv9yT+OS4=; b=HVTrg5vIvQTJbTcKDRMhNb+WTS
	hFcAfNwY1bqAOqA64v49KOZHT7WI4rxBhw8yP9peZliY9IJvjk7uKZIJz18XSmBmfIftmDyGY08lb
	kubg92EqovZufjcm2PgK3Lo9ALC1E2WyAwvZqJsBzZ1thKRzOcbk9tue0Re/xVUg0ih2Sh+LOCCWw
	Wx8WObjcb2j04MuuUlFcAS/MtmSsfRQXtSq/NJsexHF0+UDcQvjdFTwL4shL+U5kHfJwx+pgPPaNu
	GOrRsZAyBrHbE9qkOzqeJVMrhc9AimKLLUCxSxQBt2J9MLCsvoPLVsHmQrdhe0UJtqk8LfcFZdD0j
	xlif5V9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPXoP-000293-AV; Sat, 11 May 2019 19:37:37 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPXoF-00023R-FX
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 19:37:29 +0000
Received: by mail-pl1-x642.google.com with SMTP id b3so4393482plr.7
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 12:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/T3sQnKKLHp+1TzrDc3tXUHXpM2rJq0HtOqQxPmcxhI=;
 b=vHXouokejFtimzyKZbT7cgFz7OFUXXOz4Ip58/DsMAImwySFGghxe7LMtvhE/cJNGx
 317JJZl9f9PsHgwLugJnDibVsNDPlPk8pesCIgM9RVYTUaOYdZPt6vGjs4ijLZG83ynB
 FrOMrQTyKgDZimxTaEJn3I15lSoZt/RV9f4/Y8RQ4aDkZ6oeyT20EXxkgJG4KYg7t7X8
 WMfDkvSZQliHT6u7cLxZvvfqMgv/3LEeEEiWu5wJbqwRSMHFdTj3yQJc0XNa+cZjUCOn
 xz5XJwwcWuDVNHj3oVLbqvv9p6arfMeaNBR713q6cflniXz6gRziAbVMhlIwCK61ENOh
 Utrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/T3sQnKKLHp+1TzrDc3tXUHXpM2rJq0HtOqQxPmcxhI=;
 b=ot6cgO880+MYrCjCQcBlsm1JTjWrD3L+2vpbL00wGvqwPNY01yP6kifpP8npCMievV
 sFilbJTfzkfbtKtuxp1ZQH1F+1a4Xg68UNeg8NbvlGCHuNzSQJ5yIQxbDtA0tGcW3X/r
 S0nPWGi0juvT2sL2kP1ZdBMlz7wtk0L3Qb/8+Xs+JTyERUvXP4TfB+hPNlLjzUUqH0H/
 /pm7j8qL4opAyNs3V3aVUz9A6f9QyvlfIzktgyGBOm3Xo9IsRFQzrBTFZAFvxkJItn1C
 zlR5C858ExoMuesPEo5z4WILKoHpdHNJ4gTYrLSKzIRatowy8iF1xRRTcmdGA3jdKhaN
 Wtvg==
X-Gm-Message-State: APjAAAVZ4xY7lvwZBVfXwiwSdgCFBHMrX2IJQjwt4bzCtgHSHcOh9Jb9
 4nSs3jUMjIXowwuKLE0l/jLFN3xJojA=
X-Google-Smtp-Source: APXvYqz7iurShn1Gki96UdZH6Sp/f4028kEoVAZ8A+K5ATIr9OC8Q/uRy9R1sImJqNxUptH/zEGrsA==
X-Received: by 2002:a17:902:8e87:: with SMTP id
 bg7mr12922426plb.281.1557603446578; 
 Sat, 11 May 2019 12:37:26 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a9sm10878883pgw.72.2019.05.11.12.37.24
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 12:37:25 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/4] nvme.h: Fix typos in status code values
Date: Sun, 12 May 2019 04:37:10 +0900
Message-Id: <20190511193713.29516-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
References: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_123727_612249_187929B5 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Fix typos in status code value.  linux/nvme.h in kernel project is going
to be fixed soon or later.

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
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
