Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9079213671
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 02:05:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rRBq62lvkhLAHr/bGVOsiaq6kEEPhEqXlYrHfr2z+cE=; b=YP5EeQ055kIe8AHh4nwRwQfGWv
	Mpz8aIx+clk7cNZC8gazWqueJUxWYO/vQ2y0+IZkyxSFjXniLDOAcSLJXI6Q8u+vwrwoAOSUMVq0M
	uikLF3AUBufmJ4JPDpJMjenSySBFC3cTVKtZAsVKLYXzQvrGMI9KiL41ucBwG0M/gpBNJcyqpeg0D
	Tc/zxF0Y8qM99UZrQEdn4Qyw4jVysu4Xe+cgsdWoFc8KAo6VTp4JyLVPsK8l4mwfBQbDez1XaOcZi
	IExYYTnZdUGP17A1O89I0FDpByK1kvfeu6cNVGZ7gXZOESZxJAbbwXcMyM/NtXzF6rkVeEuF61abz
	JnqpGtQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMiBI-0004xf-2H; Sat, 04 May 2019 00:05:32 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMiAu-0004Sx-CD
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 00:05:10 +0000
Received: by mail-pf1-x444.google.com with SMTP id y13so3656944pfm.11
 for <linux-nvme@lists.infradead.org>; Fri, 03 May 2019 17:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=x5/HiuXHc6MlaFrdeRbvUvnxrFZjd5HVIOw8ZLvXJEs=;
 b=BF5QWIpWEz+Vx8c2DZgw2Qq7+XotSVTy41WVaTSsI+DPhwHLhqwHXnBlsQyPOWNv0H
 q4oAsDM+KiX5QOtIdHW5VLmFT2ymjkOoJHNg6l5oxl4NfyTdAl48toGiPapoguLaEB4W
 ONq7ZzSEIA6Mx4P1BQLcFixAAaP9g+Rv/WV3vjf05uAgP3L343BhF1YyVWD37gB7eurl
 C5gc6bELL6kpWXwKeLBJq5pMPTZS7oVMN+A3Hmqf04alkie/yqPcUaM+xtVq8CFbj8ST
 YiNw5sx2/rmFZ8roRTg5cvwA4vWqA5tOFSZFfdULSNT6QcvUCv94CYLWWLPkZxGt5PHu
 0LjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=x5/HiuXHc6MlaFrdeRbvUvnxrFZjd5HVIOw8ZLvXJEs=;
 b=IDrSDVVCitPenNWDQaUOOkpZN4IxGVXjLlNu8WMzUFKmJSZFlLmscRJOWfTEJWVMts
 HB9ANUf2TiCX2sEBLUkvmaVl0HKJVOzU4k/IloA/MKN6k78dXw7SNQ2bljGeoCW+vw4u
 ppiSa1MB6DVuL9PdXNM/RnsDU1h5toh7hylJZSOvxDKaO0YNi0Os2JF/TX2M5Uj/05+c
 f1SjQm/5kg6kjh1xp1VoO7Zvhm5EToZP7TNbIE9SMy9xpiZLAOfkla2u8unv9Lod7/Yd
 3zqfhOMzPt1ZrRKgd9Z4yxtzuFMUszHNArD+17z+quW/lt1JsahX8mDmkXgmEc/l3f8W
 YVog==
X-Gm-Message-State: APjAAAXBStsRlQ9IIilMM/Ox2dhe1zr0/jlENrQTVmuCC+wbZz5wlZeb
 KB24pa1G2paVStcGN8zBiWe0y3CV
X-Google-Smtp-Source: APXvYqwXdgmNgrKkd5q2VkXCy0YtKXq0FXqSxs3KPSkfHFhw+1I8St9nXhQChf4es8qMuAIUkGqV7A==
X-Received: by 2002:a63:6842:: with SMTP id d63mr14520958pgc.49.1556928307252; 
 Fri, 03 May 2019 17:05:07 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id t65sm6461446pfa.175.2019.05.03.17.05.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 May 2019 17:05:06 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH nvme-cli rfc 2/5] fabrics: support persistent connections to a
 discovery controller
Date: Fri,  3 May 2019 17:04:53 -0700
Message-Id: <20190504000456.3888-3-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190504000456.3888-1-jsmart2021@gmail.com>
References: <20190504000456.3888-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_170508_415520_C6502FEE 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Sagi Grimberg <sagi@grimberg.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Sagi Grimberg <sagi@grimberg.me>

Simply don't destroy the discovery controller after getting the
log pages. Note that persistent connection to a discovery subsystem
require to pass in a non-zero kato value, so if not provided we
simply use a default of 30 seconds kato.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>

---
resolved merge error
---
 fabrics.c | 15 ++++++++++++---
 fabrics.h |  2 ++
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index c6ff734..6fe1343 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -65,6 +65,7 @@ static struct config {
 	int  disable_sqflow;
 	int  hdr_digest;
 	int  data_digest;
+	bool persistent;
 } cfg = { NULL };
 
 #define BUF_SIZE		4096
@@ -858,9 +859,11 @@ static int do_discover(char *argstr, bool connect)
 		return -errno;
 	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec);
 	free(dev_name);
-	err = remove_ctrl(instance);
-	if (err)
-		return err;
+	if (!cfg.persistent) {
+		err = remove_ctrl(instance);
+		if (err)
+			return err;
+	}
 
 	switch (ret) {
 	case DISC_OK:
@@ -936,6 +939,9 @@ static int discover_from_conf_file(const char *desc, char *argstr,
 		if (err)
 			continue;
 
+		if (cfg.persistent && !cfg.keep_alive_tmo)
+			cfg.keep_alive_tmo = NVMF_DEF_DISC_TMO;
+
 		err = build_options(argstr, BUF_SIZE);
 		if (err) {
 			ret = err;
@@ -978,6 +984,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{"nr-write-queues", 'W', "LIST", CFG_INT, &cfg.nr_write_queues,    required_argument, "number of write queues to use (default 0)" },
 		{"nr-poll-queues",  'P', "LIST", CFG_INT, &cfg.nr_poll_queues,    required_argument, "number of poll queues to use (default 0)" },
 		{"queue-size",      'Q', "LIST", CFG_INT, &cfg.queue_size,      required_argument, "number of io queue elements to use (default 128)" },
+		{"persistent",  'p', "LIST", CFG_NONE, &cfg.persistent,  no_argument, "persistent discovery connection" },
 		{NULL},
 	};
 
@@ -992,6 +999,8 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		return discover_from_conf_file(desc, argstr,
 				command_line_options, connect);
 	} else {
+		if (cfg.persistent && !cfg.keep_alive_tmo)
+			cfg.keep_alive_tmo = NVMF_DEF_DISC_TMO;
 		ret = build_options(argstr, BUF_SIZE);
 		if (ret)
 			return ret;
diff --git a/fabrics.h b/fabrics.h
index 988f3ef..7c1664b 100644
--- a/fabrics.h
+++ b/fabrics.h
@@ -1,6 +1,8 @@
 #ifndef _DISCOVER_H
 #define _DISCOVER_H
 
+#define NVMF_DEF_DISC_TMO	30
+
 extern int discover(const char *desc, int argc, char **argv, bool connect);
 extern int connect(const char *desc, int argc, char **argv);
 extern int disconnect(const char *desc, int argc, char **argv);
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
