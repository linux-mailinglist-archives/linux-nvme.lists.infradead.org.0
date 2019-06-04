Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D4C034C68
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 17:41:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BeO6Ivx6beDQf1KUFlMZirK0kllM4IczUC36zN6aYik=; b=AJZT3+oh1rcZzi
	oAFI6R8wHHQrIvOd8EUY4iIu++8jCf+oWOSpYafFDoom3pXUS6RXvmuXwk9KISlQp5aG/ijESFcIK
	B4P7UN3peAQYjciJR1bRukYxrBTRUMljlkVCom9NL+q6OraUv5QvMBrmS9P7/HQABTQQM8nicICgy
	nYuEyt7ZisIak58mvD6T69/+TLCnn5k3AeoLZTL309uiFOufa5ChRd4Ryuf7QMQcIWkAFnMfg8kb6
	3WHmAJ8qXVni9i5LTfZljTDBdpLn/9Qq+VJexZlo77VjuPfr/gRpMQQq77fyFVmrRqhcEUAFa0bs2
	s2ZZtWNt/vsA0978VqPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBYm-0003XQ-CI; Tue, 04 Jun 2019 15:41:12 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBYW-00034t-Nl
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 15:41:06 +0000
Received: by mail-pf1-x443.google.com with SMTP id a186so12221497pfa.5
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 08:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ByFaJ6BrUMU33zzklnApM1n4ZV56JaMKWUcrWeQ2lLQ=;
 b=F+vqvAZRiuplntuuL+PCv3qIkTCkDXKuMJnwS8+/k0Aos15sRZJp+i7YpFY7Aw/FGu
 6fFmqkFlpwvt2p2DmpGZ7kkiQtyWAA2AVIyxYTahR1PS7ljiyuJYZ9hgN2X0DZmjS7g2
 8gd8E7nlGfogGaO5JL7AP/MCH9DFHXuvJIB4CC9UkedDqmn7J/n1uw77AALvmYCrv0tD
 L8fKLeRmrK0DcKhdJzYVV4AwtkJy2K/WRqStbmtnaIxy21QMm7UAyODBtyDccMYbNXdO
 zTZNiznGvOTijtYpqJ0/juoHvF0pU1SOk8OCB7adKdUyiNLWZyQ30lby94LkxE83vtcA
 AArw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ByFaJ6BrUMU33zzklnApM1n4ZV56JaMKWUcrWeQ2lLQ=;
 b=Trn5guoFwlnQ4EER6Pgd5aQcN6z9I9EOffBt6B56mcxGk/vIN1ubhRTVpzM34TeLro
 2K5JplFHNcYXa7wIDfxUNBWTWKb5CbKfVZhLO6KM3R4JJAuo1xr9UOUoJMdbzu28ljd7
 KaiwsI54gw6ZHW99OvVVpn8CODOMp3C8SW3tXjRRDCzI3qQW8Ms5zBDpMe2er/i6xON7
 nANbdt6T0GESjM7mlhzm0hdHVdKOFhVjhLF3yEEhfsnx+6ELF5WeiQaWmcS1kQDoSGJL
 Ay7U/JId/Ft7lNKhBBRA0KoRbuo5/9B3uEwOCSXVxUephlg/7i8sEQV0zzJCVllB3ZJy
 0qQg==
X-Gm-Message-State: APjAAAW9h04lVMmTr2WhufGrVUrY9dIb+WvNyZXr1RobMBAn9XEWXjwt
 ShKH4rbeYhsGISdOf7NGw6/RCVbQVaE=
X-Google-Smtp-Source: APXvYqy5L0YJ2cBiU10Ig7d4eVqv60mMI9aKiu2kc+YTDugoATxrbzlYeYv8+bbd4WC13mqH9L/IhQ==
X-Received: by 2002:a63:fd4a:: with SMTP id m10mr33034123pgj.302.1559662855105; 
 Tue, 04 Jun 2019 08:40:55 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r9sm14549233pgv.24.2019.06.04.08.40.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 08:40:54 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V6 2/6] fabrics: Do not return in the middle of the subcommand
Date: Wed,  5 Jun 2019 00:40:30 +0900
Message-Id: <20190604154034.23386-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_084057_077873_165A4EFE 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
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
---
 fabrics.c | 31 +++++++++++++++++++------------
 1 file changed, 19 insertions(+), 12 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 573a6ef..7be7f59 100644
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
