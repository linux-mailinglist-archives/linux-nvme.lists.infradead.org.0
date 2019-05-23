Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A41328055
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:58:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+9LdGN0EKIede64YPyoICk6ImEGKz9638NKVO18qB9c=; b=uxkKMk8+adJvOK
	B2b6eZJm1sH6gWDJBZWumZbkt4obymA7dHeekOYgfi4U+bGH9N7wMZouUGDYpiR8ez7YncnbJw59F
	71Q5vuqN9lMA/D2p9HXtzR1iIdlrh8jbhkitjBQHStMyKXclGVjBtJIzAAblWwGvTOX5G3lNni4NK
	xNOGdBisELaCiHz/hYuADVXTewdurhYvcW8/o/KXupVYlPGSybLwFFM+RCOGGl1snul8Fc+K3FAEp
	/IVYin68w77tgCvza9DPtxRGykCYWHcjzQ0JFNFJCxCtXbxONQqt1ofy7vbnQnRstvDJUKqzKEyzW
	OD9+QjZ57Kjvrj6r8EQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpB1-0007Ef-NT; Thu, 23 May 2019 14:58:39 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpAh-0006z2-T9
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:58:24 +0000
Received: by mail-pg1-x542.google.com with SMTP id h17so3292329pgv.0
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 07:58:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VSVNdaZLGdonyuxKel5TPgCTzJZ/beGCJj+1PiF8RP4=;
 b=nMwl4iqBpU+g8rcuLynggMXA2xJZCbAFjspeCrb8eM1xS55NVc+cbel165dO8RTyi/
 QQ3QhwCZKT0KkQqTo1oQt8HyWBDiv4jgesRYkv3Vp/UTOxwJ5DgUJCuHf9HzDfBiYkqv
 OrejPeQA51uVC8psCg1IDf3Nw7B+wi+q2g8TDT+lTehCJ2ri+PzLnwgoWKe2hr+Iy+lS
 dS8ALFImiCx9UyEZOt82zByI1KlIafw91QHlZ8j+SDeqlruTK8Fs+DAtKJKdJDfqVHG0
 lDXPwCJ6rhYswIEdyNgJpjIscg33YZGMVAoARA7BsrYrTN0jQJ1ZJWdWUIe/JYvSvL8/
 rkdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VSVNdaZLGdonyuxKel5TPgCTzJZ/beGCJj+1PiF8RP4=;
 b=kMDdpYlL7hKjLpk8qIXt1pnrcdc9b3u/K83bNmh3RS+FULv3pOCRdpvUw8+p2LSIA6
 rGs6gIFSJ8cg1fKjjoHXGa57J7/LXmtfG4dIJOJdnCB+fHPS6t5EP7jBC1U8BLJ98o+b
 zIWZNE8fd3n6D1oKVhQ6n39k7CzUHkWsz4qR3773tLpHPVlsCaJWoPbKdtbnBqCiX8T+
 Zb7F+iCBhkBEMAjEA9VwGGLprHgQaJEdg+0eph9hICil7De7A2jZbrj1SNbB0cZSMSoY
 yshEyfpOJaOn6vzmr/Mxu991e/ESULz9O9Mp2fcp9tXSu9AQHs7V1v1fZrBz4ZY2KiwJ
 v/Ng==
X-Gm-Message-State: APjAAAVtlsO+EFWBCE7O/dklkIw1neDSt+ADw/GJg+Hj1MK+FmEtVY4e
 cpDeR28fDBjw6qq7gTOtJQfwWKG0XQQ=
X-Google-Smtp-Source: APXvYqxWryooqWDri/gGmLQUVq9mpDdJALIUqLQlf0K0i7Qz/NPIO+G0CFkgFEyhEhmpO2uJvM1t4A==
X-Received: by 2002:a17:90a:c503:: with SMTP id
 k3mr1776247pjt.46.1558623498981; 
 Thu, 23 May 2019 07:58:18 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v4sm45946554pff.45.2019.05.23.07.58.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 07:58:18 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 2/6] fabrics: Do not return in the middle of the subcommand
Date: Thu, 23 May 2019 23:57:46 +0900
Message-Id: <20190523145750.27425-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_075820_439467_84C79D45 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch also makes fabrics module to not return the internal error
status in the middle of the subcommands to support uniformed mapped
error value which will be introduced in the next patches.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 31 +++++++++++++++++++------------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 511de06..469b4a1 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -984,20 +984,23 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
 			sizeof(cfg));
 	if (ret)
-		return ret;
+		goto ret;
 
 	cfg.nqn = NVME_DISC_SUBSYS_NAME;
 
 	if (!cfg.transport && !cfg.traddr) {
-		return discover_from_conf_file(desc, argstr,
+		ret = discover_from_conf_file(desc, argstr,
 				command_line_options, connect);
 	} else {
 		ret = build_options(argstr, BUF_SIZE);
 		if (ret)
-			return ret;
+			goto ret;
 
-		return do_discover(argstr, connect);
+		ret = do_discover(argstr, connect);
 	}
+
+ ret:
+	return ret;
 }
 
 int connect(const char *desc, int argc, char **argv)
@@ -1029,21 +1032,23 @@ int connect(const char *desc, int argc, char **argv)
 	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
 			sizeof(cfg));
 	if (ret)
-		return ret;
+		goto ret;
 
 	ret = build_options(argstr, BUF_SIZE);
 	if (ret)
-		return ret;
+		goto ret;
 
 	if (!cfg.nqn) {
 		fprintf(stderr, "need a -n argument\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto ret;
 	}
 
 	instance = add_ctrl(argstr);
 	if (instance < 0)
-		return instance;
-	return 0;
+		ret = instance;
+ ret:
+	return ret;
 }
 
 static int scan_sys_nvme_filter(const struct dirent *d)
@@ -1148,11 +1153,12 @@ int disconnect(const char *desc, int argc, char **argv)
 	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
 			sizeof(cfg));
 	if (ret)
-		return ret;
+		goto ret;
 
 	if (!cfg.nqn && !cfg.device) {
 		fprintf(stderr, "need a -n or -d argument\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto ret;
 	}
 
 	if (cfg.nqn) {
@@ -1174,6 +1180,7 @@ int disconnect(const char *desc, int argc, char **argv)
 				cfg.device);
 	}
 
+ ret:
 	return ret;
 }
 
@@ -1188,7 +1195,7 @@ int disconnect_all(const char *desc, int argc, char **argv)
 	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
 			sizeof(cfg));
 	if (ret)
-		return ret;
+		goto out;
 
 	slist = get_subsys_list(&subcnt, NULL, NVME_NSID_ALL);
 	for (i = 0; i < subcnt; i++) {
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
