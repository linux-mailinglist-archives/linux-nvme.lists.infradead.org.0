Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 872806F3F6
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=75H/p0TR79+yQ2sEBa01yJsYfvO3tW9gXEQKjt6VlCY=; b=PU6IxkvKkAEoIhV7xKj6lmpNU3
	6QZBwCxWYNzixX1sY2XE/ZfgtbekPz0E+J7EoZ5BTolsu1HVFzUlDtLqKayLM9ENZnnWNGZCSvwLa
	OikKx7KCLmwsU4QX2oWMBaBVQqYr1ENGY7moNBGeiTAuJkinmmAZn0dxBsgobNrkTo993mqYAw/jt
	c4GnBbw9ANkoAF3k/9LSZcE2TBLFwHqPqWzFQ1tisIXW5nS51bvMYDq5LZ3rn9gqDxu7izCOgC/0e
	y/W/T+rqcjl7nbRCQtupSeaNb7ZdVk8I/bRi8pJg0JlcnVn072KVi4IaNVzc3sPI2sSLNBmUPu6jA
	ga8DiK7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDku-0006WV-C4; Sun, 21 Jul 2019 15:28:08 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDkB-0006EF-9L
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:27:25 +0000
Received: by mail-pl1-x643.google.com with SMTP id w24so17934247plp.2
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8Hq4Md4bKLnj8XiyOlxJPU/ke/wJoF43KvBMqyGJEwg=;
 b=QkM8QoBX9kVGxyGFq6vKjrEX59JX0Sf8CvQerjzd+LvnX8gukvjZydmvt0hOg3oqYM
 Gwht2hn9UnR/1JTeceDWMWnIDaUTZ1Q/VN20Q4NmQPwBAAD+dfIVTim/Te3ncVogLDq7
 y0NOHu0ERZ1H2kSxX+0H693GJVoT6Os5cdEZBxngZ8tOmGhEssNZdn65v8ugEb0OZ9HC
 OqC6pCaXraZJdybpzpjSbLbVt2wBtzpAI0MEgCZtV2XAWAwXDMskJM4kb7GNjC5Ff7tb
 DuY3bD2ow3wpIIaW7sHnhDKss96tNKPBHn3qIF9WQ0V97gGskVTTv0vT5LEShZ+SwYJw
 kHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8Hq4Md4bKLnj8XiyOlxJPU/ke/wJoF43KvBMqyGJEwg=;
 b=WQed8vog6SQZLeK2aKsqg89qrr5la3ZqYQ8+SfNqNayx7oc1eyv3JY/WNlxiedfTHt
 m1duuJ9L602HUIt+GSAzDSFDI7mjGUdWFQMbLALMfmrJ8XgJlU6p3EzAKHufOFKBUje2
 nwFr6VsJ/Z6ZLKMG9iXY3BH8D8/wzv118/V7P5d8z65rGqx/YYgkA/FKoACrdvm5132R
 3ZzfURGdkA1lBfeHY9tivV9LywmbPLMVepqwp4qfJifgHlnHdjqRRrb+d8dPfoIOR3W0
 FGCzuZ85Bnt7bT4KJsx0x+hkkwtMZ37Jw0XWPHt/pKTkVcw32IGiPAzDa8pxOBXBNSEN
 xhlg==
X-Gm-Message-State: APjAAAXdBo67D/iaOjBxM8uI/eJux6bWqOZH8TORd0dKSrHfKkAJ8JGu
 VKd+NYox8D8a3jnvEpHkp/cac/xWa38=
X-Google-Smtp-Source: APXvYqyunzc+vA3bIF8fdn2nhqmkHwi6m6TICop70CZ4UpaAfJfLeO4L7ZgNtyzqxn/HFN4g+SjCNw==
X-Received: by 2002:a17:902:24a2:: with SMTP id
 w31mr71963585pla.324.1563722841959; 
 Sun, 21 Jul 2019 08:27:21 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e189sm7802512pgc.15.2019.07.21.08.27.19
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:27:21 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/4] lnvm: do not print 0 when the arg is not given
Date: Mon, 22 Jul 2019 00:26:47 +0900
Message-Id: <20190721152649.4894-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190721152649.4894-2-minwoo.im.dev@gmail.com>
References: <20190721152649.4894-1-minwoo.im.dev@gmail.com>
 <20190721152649.4894-2-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_082724_315162_7A303CE9 
X-CRM114-Status: GOOD (  13.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

If an argument is not given by the user, it just needs to show the
situation, not a prominent 0 which indicates the size of the argument
variable.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 plugins/lnvm/lnvm-nvme.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
index 37b6733..aacd469 100644
--- a/plugins/lnvm/lnvm-nvme.c
+++ b/plugins/lnvm/lnvm-nvme.c
@@ -48,7 +48,7 @@ static int lnvm_init(int argc, char **argv, struct command *cmd, struct plugin *
 		return ret;
 
 	if (!strlen(cfg.devname)) {
-		fprintf(stderr, "device name missing %d\n", (int)strlen(cfg.devname));
+		fprintf(stderr, "device name missing\n");
 		return -EINVAL;
 	}
 
@@ -179,7 +179,7 @@ static int lnvm_create_tgt(int argc, char **argv, struct command *cmd, struct pl
 		return ret;
 
 	if (!strlen(cfg.devname)) {
-		fprintf(stderr, "device name missing %d\n", (int)strlen(cfg.devname));
+		fprintf(stderr, "device name missing\n");
 		return -EINVAL;
 	}
 	if (!strlen(cfg.tgtname)) {
@@ -265,7 +265,7 @@ static int lnvm_factory_init(int argc, char **argv, struct command *cmd, struct
 		return ret;
 
 	if (!strlen(cfg.devname)) {
-		fprintf(stderr, "device name missing %d\n", (int)strlen(cfg.devname));
+		fprintf(stderr, "device name missing\n");
 		return -EINVAL;
 	}
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
