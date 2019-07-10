Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F2BC64F37
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 01:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=abezltp0P/lRK83343lePk3/UGAF2eKr+vYYqVA5dYs=; b=Bho6ejV1LDb8xMNqjPX9l0wV3b
	oaV9dn+ipU3zUST7D9J9Q1de/JjrXEDQwIdjrHq2FIPYWZstFr+HA8XisgquouaZS2pk+gevQhh6Z
	st8wVktx3LusQDZLWwW4m2Ele7FPcmoG35udQKjw16U30Bo4YIMGY9Qa17x+ji7kEUInFlVAzq9Gx
	dSkVNdW14WiU16ZOtKjmMSo6qC+mngdnlNvcaD5T67S4UuHLkr/WcbsUFz465y6yKJPg9cgGI4AkX
	z2N2neJB4xEkEIdB9c8jPtjrudN3dlTbnf6BsfoO8CFhY8vY/K0P3f1gixAV7KptC2/fGNS7YOrw/
	5HiK8b4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlM16-0000BR-Sz; Wed, 10 Jul 2019 23:28:53 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlM0B-000881-De
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 23:27:58 +0000
Received: by mail-pg1-x544.google.com with SMTP id z75so1963780pgz.5
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 16:27:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=wIe+WQ8kGPoqgI/lUBcJ9T1JE9kpRHZXUVnOdVwLPZI=;
 b=YvWRBp+scl3DD0K6Q9Aje9jXMLo9XZfkya7/8oMMv1wqWBLHBhoPElPifXqVzAerTu
 haYd3tE8Nvy9eqohSzmA0DUObgQ8TihIBzTRZk7f0CBOt3PScCq7aOBJdU/LHiLchcl9
 jbBcLqiukOj5YnsZgSToRDa7VGULddq+lzduYH895LqnC3wiy+VvSoRSZU5i8J+d55BF
 Rpe4kPs0nw0QNHo6YedM24Iq69EfRklHKFTlgkWSUHtJr9NHdOK6On+4QQ9BGX6Rl9L0
 WA06IiSWHJq3kmrcqwv9QMG/Rg1s3q8w18gndhFpz3YvOESVx1YS3boYgOU+HfAxFlTc
 WH1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=wIe+WQ8kGPoqgI/lUBcJ9T1JE9kpRHZXUVnOdVwLPZI=;
 b=ZYoTWjIQB7+m4NXWQSe2fpZPvmVdrnuNYSqQ5c/g5tnsReJxOmhip4A8xnHsjk8g6G
 QcNpzmKO3Fg0ASHVb/7rC08oFuW6vIFOS/jM6fx4dZ+T8FDRXk4VfxA+e84uTsY+os96
 SnDcmO60TcA4e4ECUBtDoGvDPRYj6hRAu6znsPsF/xQgWevGjhx1umtWet/seeffbeIm
 X1YYrsJ5ZX9Cpwfn5fD80dbHOx6OxFU1QBekogTwY22bXJFpztUteZ6aPl7FGhU9c5H0
 BByverwu4wuz6L6/AC3i9qyyFbyYx/UA2/5NYZeUMzvgkC39BGx+5mPOkKiLIcE2oYl6
 SZMg==
X-Gm-Message-State: APjAAAU4jO0wgKgvvjmM57rXJ/0AN61zy4ANIBO6klxETZkMB8EsaoGq
 Wmq2vRVjW27q7XGu5rNNX33Q5WsD
X-Google-Smtp-Source: APXvYqxSDeRG/I9cGRLeQL7mpHqpHziGjLIpo5mmzg3C86IyXoKQcPrnepUBea1oOEsUIsKPyMm6IA==
X-Received: by 2002:a63:9a41:: with SMTP id e1mr933860pgo.210.1562801272943;
 Wed, 10 Jul 2019 16:27:52 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n140sm3305478pfd.132.2019.07.10.16.27.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 10 Jul 2019 16:27:52 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc 2/6] nvme-cli: support persistent connections to a
 discovery controller
Date: Wed, 10 Jul 2019 16:27:36 -0700
Message-Id: <20190710232740.26734-3-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190710232740.26734-1-jsmart2021@gmail.com>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_162755_474046_3CAC3390 
X-CRM114-Status: GOOD (  15.34  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Example:
  nvme connect-all ... --persistent

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

---
resolved merge error
---
 fabrics.c | 15 ++++++++++++---
 fabrics.h |  2 ++
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index cc91d00..c4bbe2c 100644
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
