Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E2C319CC
	for <lists+linux-nvme@lfdr.de>; Sat,  1 Jun 2019 07:55:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CJrSBJvmZiE1ZvVwWns6iIbo3MDRc8WhUtJDAh3tXSM=; b=o8kpZFHh3+CknD
	AFrCGBXxAfGfOxhjNzAX+6yuq0/BLNNzOauBIcFeyBVOy2B7LMZsfzjjms/a/RqdqzoIuxVotodzK
	HCESx+jp+Q7ROL4OxIltQIFAfNXBzhuaPyaE8/+VgkIgPzVeiAOcMwzDYkGarY1BCdod1SO89h7ZM
	WpucC8+46muTju3HdBzcs1UkcjApuQYao8uJMe9rdJ1TO/KgZ3WZ5zORche9U9iaYlQkdPPT2raeL
	x5LUt3KGBvO1TMyWY5wq7Nld8SrqmOyaLZZqVVHRgQzs0OxmnPVcQcB92W3ollRulnSv8DSQGmTUX
	M8yeltwS2KBnbWye9wuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWwyf-0006qR-6U; Sat, 01 Jun 2019 05:54:49 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWwyZ-0006q7-Ty
 for linux-nvme@lists.infradead.org; Sat, 01 Jun 2019 05:54:45 +0000
Received: by mail-pg1-x543.google.com with SMTP id z3so5205295pgp.8
 for <linux-nvme@lists.infradead.org>; Fri, 31 May 2019 22:54:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ojaAw2W1gaGGLD3XKHnepoRWIp9dEkDFMl7NBUx3P54=;
 b=n7pJRz0pPtIxfLuM/L24/iUWGGCMZrXGnOuI7WOpsxVuiD+yCRDcG1cprsthQeF+T3
 UkQYb4BulCBeAcuuax8dOfB2enqp8L4Xp0jiBfnMhPLtNqnxfNkyIGs1bREcHtIAJGFg
 4A6k2cQYsQX/QAHlGIHXAcrxEptX+C1Tmx0OhlypLRhqFmQJ7M/4zziH+mjxf3KxMnvz
 yXr+yP8KHzWF1IWPvyPOfh2bCAGmOvJvCQOHT68TRTO9YFp/K55KtnA859zkd3ocmGjv
 mu6kOiLkuVmKWkelXKE49hZq7k/9jE0eUzBqti6HRCM5y4837wQkIQTEDSgKhkZTkCP0
 Jj0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=ojaAw2W1gaGGLD3XKHnepoRWIp9dEkDFMl7NBUx3P54=;
 b=l3DPEdo2Ml6eNlBAO15FtSPWBn5RIgY299dM20vzJpFn+C9OSUTH0iSnsGfhDVqmgV
 KRFIgm5t5yoUA8nxqnJSC2EFwIlEHB9e5wuSNO3z7ZgtFbsmXtVj6wfb3Nck2vjDZWHD
 JI1jmqstjXrjsMeidgIyZmSZ9phl3S8NCJ1T2YzToTqkeCq1TsfJfNzZhm43WGfEqKgp
 iWxBQDtBpTZ6SNc4FSucpQGskVgYfk5GT3aL1OAEd1kEt7/CkF/Wg7NLw5MSah9W/nEy
 zki+zcB9gOxFi6jjfx55cV27EUW19Yv1/ufm0GPoBilZMcoQVnkv2ZBI/6oIMtY0UNXA
 oyQA==
X-Gm-Message-State: APjAAAU5RgS3Ox3EARPAJY8fUiW+qkCToodts6DNKvp34eLmu0918TQ+
 gQAIt1Nq7CMtgSMWhAHekUr0FKqvokE=
X-Google-Smtp-Source: APXvYqzDQHQXzUGvd77DYVI5Rp8zaovqkdl5tTaj+p3WFSUL4MBFGO3NU/BSLc4sTtvfY2CjauvYpA==
X-Received: by 2002:aa7:8203:: with SMTP id k3mr12447850pfi.124.1559368480261; 
 Fri, 31 May 2019 22:54:40 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id m6sm13942766pjl.18.2019.05.31.22.54.37
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 22:54:39 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-cli: update command message for "help"
Date: Sat,  1 Jun 2019 14:54:28 +0900
Message-Id: <20190601055428.17906-1-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_225443_992368_5CD1F5EB 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Minwoo Im <minwoo.im@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The "help" subcommand will show the man page, not the help message which
is printed out to stdout by --help option.  The previous message might
make confusions between man page and --help options so that it needs to
be updated.

Cc: Keith Busch <kbusch@kernel.org>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 plugin.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/plugin.c b/plugin.c
index 4750df6..8fd0605 100644
--- a/plugin.c
+++ b/plugin.c
@@ -91,7 +91,7 @@ void general_help(struct plugin *plugin)
 					plugin->commands[i]->help);
 
 	printf("  %-*s %s\n", padding, "version", "Shows the program version");
-	printf("  %-*s %s\n", padding, "help", "Display this help");
+	printf("  %-*s %s\n", padding, "help", "Display the man page");
 	printf("\n");
 
 	if (plugin->name)
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
