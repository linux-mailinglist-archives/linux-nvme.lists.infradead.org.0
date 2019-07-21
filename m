Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 734F86F401
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:33:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0hoR2L8wsHRFAoBRPAl+mJn+KJX9qEic3tzvBNP6E/0=; b=VBTYsZHocnkeIKcINoba8ixvVr
	uappBKomVc1etmRqrHyWReQ254vkdmo5U/hq8Bd8zrSF6lWDZnBWmePCfgCUaq6xtvT+9XbjuhmZU
	O7G14fSG4cdEfwakCpukl53wAIb9002Uyg24K1srSzJRsz6xOCZAU20glfY5fETMt2nhjb7KgGTyk
	T7fEo7QZxQsNAYjdw7c2ATMYeh79SIt0XXR0EaGWgMtWPqqGFsILCXKzFRVMZAuE+dX4Jp066vh1w
	guVR8sE23ZmlfeQa2NLGHoy2hOchYrNAfZpKI2r671z52IjWOvgMgdy2x3jMB2MU79aojtOilA85W
	SefDBt5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDph-0000Ow-Kc; Sun, 21 Jul 2019 15:33:05 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDpM-0000GS-ER
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:32:45 +0000
Received: by mail-pf1-x442.google.com with SMTP id g2so16173476pfq.0
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:32:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=a2Not50VUXG3ThhKIQW/YZ7dUDNvCNWFSqh0y5GfpgA=;
 b=RXOARrzc6khz9uEXq51Br2AM5aIMT/PYaKK6ihPWENYYltF1AJtjQCZbBZnb/WmHN3
 RrSHA4579lV6BCljUayLrAdYfCcwRB4MphVBOpaIsr/T/0HwUf9+I6NkroV3m5rTKSZF
 CTD9Q1YjS26xTa04ThQEwFpqCQlDMxnnrUpCtm8B/HJUgq+uXdf00ue6tGY1pLvnFsyR
 N11mccZb/Ladf1a3L44DanSgnrNzizYnwaNkoG+gVs5mUpJ0ZCUs+eJ6uTxa/4kZKeQr
 8/aLA/zz5ZH4K/Faz50BOLPjOnkC/D2BRh9qNxjgl16c2qPZ2xt/5SwTN1Ez2Sw7k40O
 0a2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=a2Not50VUXG3ThhKIQW/YZ7dUDNvCNWFSqh0y5GfpgA=;
 b=LKvwSiYI60H5NZzDqW7RJkusUy7Lze3xyxe85y4e2fy5NvuL13jaIx2OMdB7RCKdje
 pKyWkRI+QXa+2GMuP9EDgzZ0OUBzblxtnflBnfRxPjrA6WKJl8xA7mJACX8Ilw9DZi8X
 l+U6gfeHR2M+RwGpL9O2R6lusUujqlibDgk3G7FY0PTkkSvL3S5K4rh6wKx+oUf47TsW
 50VM/miwcAE8YT0kFk7rGS1WiP2gXc2fFeiWEd9BymFV81sjC96BifwggIMm9Cakdu5t
 2FpI+W+HZVZkNZ40o8OJ/KW3JNjkfnoHSwi/JdKBnuFmJN5kTTQUswoLpWQlJjzDnMia
 9FHw==
X-Gm-Message-State: APjAAAU7VFsB/2XZ7zmjJ/cViY4Y6hV2XgPzub1+m+kPnZgoKZGRKqHN
 /C1GijF0b8SUgypkYAV2tljUV+wdUPc=
X-Google-Smtp-Source: APXvYqxTDbEY5qMqD5UYT1fZGavmKW3ZXTzvQKwbH24pjt/hilo4zFZxC+mGGR3exGBpLmjAIXvViw==
X-Received: by 2002:a63:590f:: with SMTP id n15mr20158971pgb.190.1563723163347; 
 Sun, 21 Jul 2019 08:32:43 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a3sm28957384pfc.70.2019.07.21.08.32.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:32:42 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/4] lnvm: remove redundant whitespace in lnvm_init()
Date: Mon, 22 Jul 2019 00:32:16 +0900
Message-Id: <20190721153219.5730-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_083244_526071_B685BDDE 
X-CRM114-Status: GOOD (  12.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The description for lnvm-init subcommand has a redundant whitespace.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 plugins/lnvm/lnvm-nvme.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
index 754931a..37b6733 100644
--- a/plugins/lnvm/lnvm-nvme.c
+++ b/plugins/lnvm/lnvm-nvme.c
@@ -17,7 +17,7 @@
 static int lnvm_init(int argc, char **argv, struct command *cmd, struct plugin *plugin)
 {
 	const char *desc = "Initialize LightNVM device. A LightNVM/Open-Channel SSD"\
-			   " must have a media manager associated before it can "\
+			   " must have a media manager associated before it can"\
 			   " be exposed to the user. The default is to initialize"
 			   " the general media manager on top of the device.\n\n"
 			   "Example:"
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
