Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 646A164F38
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 01:29:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=xoU9Qc8saw4JCEuKvkFvkmyPlzRxr4kIJYRLTUOmgP0=; b=r6ZkWFzWKyD3xyC2sQr4WX2sdG
	bUMKuClEx0mDOJHkDn1BC7cTBN0aA46p9Zy3HSgYb+ixvs+EEK5p/qxNQPeJ1jl4fL4cpeMVKWggM
	Uk6IQ61wmEZly+F0vD4H81Z2uy7Zi59HoGqzxC3FPrqRH5Vytc9KLx23oS3kU3naiDP0w5P33FKX7
	jY5ns3+d7CuOo1yoD29GCymGqTY+KcGjUVAhzfcILQS6GkUKP9S5Nmg2ZKCHUOoRtIlSS9uC8EAEQ
	MQtZrkA7BKuta2MupWumJLEj7UGq1vVSvtESfO+Jogai2vYfgH7PJXEoZasML9qZqdmglG5CJ0IzO
	7SZVdoxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlM1N-0000LF-6a; Wed, 10 Jul 2019 23:29:09 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlM0D-00089K-7d
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 23:27:58 +0000
Received: by mail-pf1-x442.google.com with SMTP id j2so1809185pfe.6
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 16:27:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6mZ3HzyeXtRvbCvOSt+YLRRQsHHAKK8tqOw7Mbl72Ak=;
 b=RjdqZLx5rfJvUss1QNUvhfcTQWmYtY/eiaOiakIXj0gHcvMiOxsgYaZbhfw0T/zCOd
 izeaYDvi/JkQ1d/R8PzPd03WqTmVKDX+mdJ0T7W6mOk7vYk7tj5rdVczW6wbO37LR5Mn
 KlyaC5DanZOMt0tZOqwnk1fiw81Dzy60RwRfN19V82D7nDoMAExQ5UTRhDryG/t3XL+4
 G+UMW7cSSqSBZG+BbS7Yp249rm7dm2ssO6ZGCFzl9+EKM7HRLE+rqbFrRumjEt9BQVZi
 EsEAZzp/ep6MQ9rj0I1G7DTngGywVCwSzOSBV9Wcw3ynJNwUFs1oXRNaX4rFMAlwJSze
 flUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6mZ3HzyeXtRvbCvOSt+YLRRQsHHAKK8tqOw7Mbl72Ak=;
 b=mWV6eXd+YHU/TStRL99gP5B6FnrPcdueKLuQmDiwy8mWTMrIyU8x1wXTguOaqPbtrY
 Be+IoEfPFPmz7pwfa69JYP2S9dwrVbl3x0Hjh7//vmnA9PLj4gx2XGMynURhMBqU30Au
 s2wlZQ9TT//9ZTjJsPmLHJ6z0yg8pqC6M5x/ar5j6EABfXNgZGjhSy+xZOBpOICfXjFz
 V9MPLTbR9wXIe9gGwKT1Oy9idIW1pRdRBrqFVLqfIdfxUCUkRpfiZKNE55YLF0X4LK5z
 YKPMZ+61e+4D02LYexayahCkJvbIlPrutChBIZbdv9lDqcZ2fUIb7LAHAXSOvoPDuGoc
 24wg==
X-Gm-Message-State: APjAAAXdzjKyBiXzXbMdminxjQ1adtF+jI2pG5e5UU1iOpHJ4dSKY/dt
 KRiqjTufp1b1FprjZaO7HdmP7TVn
X-Google-Smtp-Source: APXvYqxMCSmzffWv9BZGjbyGF/rTBfn39iFclm6b48MyGODD8UPhRQ7iZRX92f7XHWT1zdvgWw+E3g==
X-Received: by 2002:a65:4489:: with SMTP id l9mr905721pgq.207.1562801276384;
 Wed, 10 Jul 2019 16:27:56 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n140sm3305478pfd.132.2019.07.10.16.27.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 10 Jul 2019 16:27:55 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc 5/6] nvme-cli: add --quiet option
Date: Wed, 10 Jul 2019 16:27:39 -0700
Message-Id: <20190710232740.26734-6-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190710232740.26734-1-jsmart2021@gmail.com>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_162757_272244_874113EC 
X-CRM114-Status: GOOD (  16.13  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Now we are going to have discovery log change events, so
instead of trying to figure out which NVM subsystem ports
are already connected, we let the driver do that and
only suppress the failure messages.

Example:
  nvme connect-all ... --quiet

This option will be used by the discovery log change corresponding
udev rule.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
---
 fabrics.c | 21 ++++++++++++++-------
 1 file changed, 14 insertions(+), 7 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 73c3a49..86802b4 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -66,6 +66,7 @@ static struct config {
 	int  hdr_digest;
 	int  data_digest;
 	bool persistent;
+	bool quiet;
 } cfg = { NULL };
 
 #define BUF_SIZE		4096
@@ -216,9 +217,11 @@ static int add_ctrl(const char *argstr)
 		goto out;
 	}
 
-	if (write(fd, argstr, len) != len) {
-		fprintf(stderr, "Failed to write to %s: %s\n",
-			 PATH_NVME_FABRICS, strerror(errno));
+	ret = write(fd, argstr, len);
+	if (ret != len) {
+		if (errno != EALREADY || !cfg.quiet)
+			fprintf(stderr, "Failed to write to %s: %s\n",
+				 PATH_NVME_FABRICS, strerror(errno));
 		ret = -errno;
 		goto out_close;
 	}
@@ -840,10 +843,13 @@ static int connect_ctrls(struct nvmf_disc_rsp_page_hdr *log, int numrec)
 		/* already connected print message	*/
 		if (instance == -EALREADY) {
 			const char *traddr = log->entries[i].traddr;
-			fprintf(stderr,
-				"traddr=%.*s is already connected\n",
-				space_strip_len(NVMF_TRADDR_SIZE, traddr),
-				traddr);
+
+			if (!cfg.quiet)
+				fprintf(stderr,
+					"traddr=%.*s is already connected\n",
+					space_strip_len(NVMF_TRADDR_SIZE,
+							traddr),
+					traddr);
 			continue;
 		}
 
@@ -1040,6 +1046,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{"nr-poll-queues",  'P', "LIST", CFG_INT, &cfg.nr_poll_queues,    required_argument, "number of poll queues to use (default 0)" },
 		{"queue-size",      'Q', "LIST", CFG_INT, &cfg.queue_size,      required_argument, "number of io queue elements to use (default 128)" },
 		{"persistent",  'p', "LIST", CFG_NONE, &cfg.persistent,  no_argument, "persistent discovery connection" },
+		{"quiet",       'Q', "LIST", CFG_NONE, &cfg.quiet,  no_argument, "suppress already connected errors" },
 		{NULL},
 	};
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
