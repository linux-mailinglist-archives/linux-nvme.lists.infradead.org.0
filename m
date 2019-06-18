Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E75674A20C
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 15:25:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wQJtf6nho6QE2FkUpAnFOuSNgwSfWRtbdOpOAId5TTQ=; b=ko4/xL4Sccx5Be
	9kiQQIf8NrI1OABfIQQu8kbUu+ii5q55+0hW/ePZep92RBuAXiZrY4aCL1z6dmyg/wmzjKShEtlIn
	Q6nv4BifrGwPLS1BQTi7kn5XMeWdXmUBYZzx9WIOxfi9csV6NVRc3ft+UIOkALCGR2ZofUa9LhYBa
	u+zsDY6Dyc2KCHKTfDfkyushSpZiFG353oplkiXy5BBA6ln+Nrzj7ixUBwut+ylWObtADLfo0ZlYg
	bXzOAG6WD4IbUiIC4unPIPH36HNLLsLCcM7qSuTsGDKz+D17QkbUfSeXce3yeKYaAreebb37tmZfO
	9a53J1eoub9tFgjqxX+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE6t-0007Ez-Lk; Tue, 18 Jun 2019 13:25:16 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDuh-0006XA-Re
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 13:13:12 +0000
Received: by mail-pf1-x441.google.com with SMTP id i189so7640549pfg.10
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 06:12:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TdsLe5w0oD6WYmWFcY/HGWvXgZ/n8GbLJFPtxamS55w=;
 b=aId5LAuaYwNiVklhfa9JoIdAMfdqHZ+v6eUeqJ7QLkl/oMRu4bIv36H29y5Ic4+/h2
 TVJbCqXszRaGye0r9ybdBJz1uYv9j50srFQaPHxaItPlz5h7nKI9i2+wWiyrqG+yEAPa
 9CVkv5fM+8Wv5VneEPa5BOD/bK1kTDykFL8PLIfDV8fc3yoU75IH6+ccZQOIvqS1v55v
 YetWTtC22sfqhFyHPksE6u8KOw2BIOu3xiPoVC3pVh8O3UjDhWF9InFC/BXWbX7U1rIU
 OrpYWmNuY8CJ9gCCRWJS0lQLMQrZaNo1Q54xST+QWbTIgXNRCurn8rIk9HDTbjHC2RuQ
 FHlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TdsLe5w0oD6WYmWFcY/HGWvXgZ/n8GbLJFPtxamS55w=;
 b=UamtV5r4OSzHnIF/uDyes6tXbzseH8RlR3sgLjyY2y5NAHSR/KJEDdpejhKTEKWsZu
 1iZ/iytlp+4uyQiE1g0IoWLztij56n+pKz9TmdGFkBPfiF4q/pcFTVlJtF12ZGa03kdj
 PcQocqBBQDIPWJJvrfxfMuEqfePAmx5tHbwl88t6PTagrUNxWyrpnzstaqDf+aWHmZCh
 /1k8whJrxGOCncHxfthMM/8MbrombB5NmF9IXm+k0cUXkLwNH36VKp1eTTC0uOuAc5mG
 OOvcdJo/qkKwjFvKoSF6+AuaIKT7vHUSl6YwHlrJSxX5hHL/k+nB1BuCkn5EYt1txWnV
 E3Rg==
X-Gm-Message-State: APjAAAUClHAcJ2B5TjR3MEIdYQYbODWYK9VuHiNGN3xSz4NeAsPcer09
 dcHIIAmYouypSGYHQBIwhJs=
X-Google-Smtp-Source: APXvYqyXnBUWq8U7NYPoNiAxB6sbGHQksETb+r0ZQ7uhysU3PWSAesovfZ/RTG5y2XF8HKXdvcc14Q==
X-Received: by 2002:a17:90a:3310:: with SMTP id
 m16mr5008577pjb.7.1560863557948; 
 Tue, 18 Jun 2019 06:12:37 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c142sm21663733pfb.171.2019.06.18.06.12.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 06:12:37 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <kbusch@kernel.org>
Subject: [PATCH V7 2/7] fabrics: Do not return in the middle of the subcommand
Date: Tue, 18 Jun 2019 22:12:11 +0900
Message-Id: <20190618131216.3661-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
References: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_061240_579594_A0AA4AE3 
X-CRM114-Status: GOOD (  13.22  )
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
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch also makes fabrics module to not return the internal error
status in the middle of the subcommands to support uniformed mapped
error value which will be introduced in the next patches.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 fabrics.c | 31 +++++++++++++++++++------------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 9ed4a56..adedca0 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -984,20 +984,23 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
 			sizeof(cfg));
 	if (ret)
-		return ret;
+		goto out;
 
 	cfg.nqn = NVME_DISC_SUBSYS_NAME;
 
 	if (!cfg.transport && !cfg.traddr) {
-		return discover_from_conf_file(desc, argstr,
+		ret = discover_from_conf_file(desc, argstr,
 				command_line_options, connect);
 	} else {
 		ret = build_options(argstr, BUF_SIZE);
 		if (ret)
-			return ret;
+			goto out;
 
-		return do_discover(argstr, connect);
+		ret = do_discover(argstr, connect);
 	}
+
+out:
+	return ret;
 }
 
 int connect(const char *desc, int argc, char **argv)
@@ -1029,21 +1032,23 @@ int connect(const char *desc, int argc, char **argv)
 	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
 			sizeof(cfg));
 	if (ret)
-		return ret;
+		goto out;
 
 	ret = build_options(argstr, BUF_SIZE);
 	if (ret)
-		return ret;
+		goto out;
 
 	if (!cfg.nqn) {
 		fprintf(stderr, "need a -n argument\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out;
 	}
 
 	instance = add_ctrl(argstr);
 	if (instance < 0)
-		return instance;
-	return 0;
+		ret = instance;
+out:
+	return ret;
 }
 
 static int scan_sys_nvme_filter(const struct dirent *d)
@@ -1148,11 +1153,12 @@ int disconnect(const char *desc, int argc, char **argv)
 	ret = argconfig_parse(argc, argv, desc, command_line_options, &cfg,
 			sizeof(cfg));
 	if (ret)
-		return ret;
+		goto out;
 
 	if (!cfg.nqn && !cfg.device) {
 		fprintf(stderr, "need a -n or -d argument\n");
-		return -EINVAL;
+		ret = -EINVAL;
+		goto out;
 	}
 
 	if (cfg.nqn) {
@@ -1174,6 +1180,7 @@ int disconnect(const char *desc, int argc, char **argv)
 				cfg.device);
 	}
 
+out:
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
