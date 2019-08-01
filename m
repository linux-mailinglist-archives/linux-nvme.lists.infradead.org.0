Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 651967E64B
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:14:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kiOo0b+G/R23pUhPMP3S6/ypjoRlDCgf7ndz02ignB4=; b=YRqsViSSXHv6zgdJ52yLR/9PT9
	QaXxx3jErSwnuIhS70DN8sjesij6LnKNmt8Vy0Kbvsb7jPofCfpEkW/5Ssg6ClLdG7RN3jeZo0/0i
	zwdUzppP4VfZ9cvvL/TJCy3xeMtd00obc30BrnKHfqD4BsqO7+liAhOeviVINiWSNlT8jQf+V7t+W
	nZEPpYzzB4LmcAOpCH36OzsCcXyb5cBwBA1pYtNDxK22PKskeebXyCpABDv2EQRq9EgWYKxcB5aQY
	rCRLsWzcyYqfp8iWkXaDXvrRnbogMcrFkkmxpPpJSOAIVneonWNEH42Ald0uYgO1jV57D7xvN5SPe
	DwUcBoVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKHB-0005Ro-8I; Thu, 01 Aug 2019 23:14:25 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGn-00057h-3C
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id k189so15973809pgk.13
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:13:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TarBd8h5I1lRJZ6NEMyaSTgl6UwBQThSEkR+tQUsUQE=;
 b=sPrfphIrG52lj+FvxSH7QXwjWerE8TDv3e4NkVum1MXqVVv34Vgbpq+lbt0Ik2u8MW
 AMluvFBCOfn5hL4hcdi+6dYD53Iz82J41sLMNBCD6+cbc8YttxWLySaeuG3tHcJO4WVc
 32sBmkYX35VN/vVQF79KIdHDBM7r8ebokhJrWLa4MBJ6nd3x51Q1JhbS8ZAaLZUpZdoZ
 XEg7w0tB1BeSfNq1BejWAAO5pHLcCveswDmhzEPfUv7sDiCjiwE31GWC/nByNrHG1QG6
 hKaae8/SRFgEoMWbqICQt8HDYpg74Rhcl3aCbaklywBV9Z/gaDtztFcP8kkdUabXDI77
 MvqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TarBd8h5I1lRJZ6NEMyaSTgl6UwBQThSEkR+tQUsUQE=;
 b=b/RqIv2vxYLg0Fm4W8atkkQww4mSA2dTdgQvl2qSGKY5umNfrFQ7ba+1TiEFtXvqHd
 iEQYpjJXL3wgvcix/hf92HF+zV+CdtpXRNpNwwzcn66lyWge3mgIjHtRXuk+s+cW31MI
 PriDmCai0deREa3Zr4qNbfMUtblVqFc3WkKfUTqOjEItJCIkcT8bXSlCegn1xVlvmPoH
 icaAsea5lwedmbHXghqXhJ3Y88wI5oLas0e52QMl1jsqJKhK2WXDWI5j6/oYwTJLHG9N
 6P0syivzsz90cbAnbJz31N2uyzuUn8TCwSxoDCS0HkDvihfdLwnGWN2W1L3H0yZeIOJG
 5Iww==
X-Gm-Message-State: APjAAAVhF1YGUZgQvqpuGOcpXEWy0IG5AJ4rZNW6qKQCvXDeHvuAxACf
 ZUYBk0i+hpYwDE8tnbxDqCqheS9S
X-Google-Smtp-Source: APXvYqzGG8W/59vDXfpvuLB/dw+mR5x/wS4IvYRJO+cnp13QQRcGZHqaR+ZzvyNU8PvQgxJ6NSwPxQ==
X-Received: by 2002:a63:5648:: with SMTP id g8mr5107945pgm.81.1564701238181;
 Thu, 01 Aug 2019 16:13:58 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.13.57
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:13:57 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 02/10] nvme-cli: support persistent connections to a
 discovery controller
Date: Thu,  1 Aug 2019 16:13:40 -0700
Message-Id: <20190801231348.21397-3-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161401_138261_94A7BB84 
X-CRM114-Status: GOOD (  16.26  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 15 ++++++++++++---
 fabrics.h |  2 ++
 2 files changed, 14 insertions(+), 3 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 5757aaf..75dedf8 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -66,6 +66,7 @@ static struct config {
 	int  disable_sqflow;
 	int  hdr_digest;
 	int  data_digest;
+	bool persistent;
 } cfg = { NULL };
 
 #define BUF_SIZE		4096
@@ -872,9 +873,11 @@ static int do_discover(char *argstr, bool connect)
 		return -errno;
 	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec, &status);
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
@@ -957,6 +960,9 @@ static int discover_from_conf_file(const char *desc, char *argstr,
 		if (err)
 			continue;
 
+		if (cfg.persistent && !cfg.keep_alive_tmo)
+			cfg.keep_alive_tmo = NVMF_DEF_DISC_TMO;
+
 		err = build_options(argstr, BUF_SIZE);
 		if (err) {
 			ret = err;
@@ -999,6 +1005,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{"nr-write-queues", 'W', "LIST", CFG_INT, &cfg.nr_write_queues,    required_argument, "number of write queues to use (default 0)" },
 		{"nr-poll-queues",  'P', "LIST", CFG_INT, &cfg.nr_poll_queues,    required_argument, "number of poll queues to use (default 0)" },
 		{"queue-size",      'Q', "LIST", CFG_INT, &cfg.queue_size,      required_argument, "number of io queue elements to use (default 128)" },
+		{"persistent",  'p', "LIST", CFG_NONE, &cfg.persistent,  no_argument, "persistent discovery connection" },
 		{NULL},
 	};
 
@@ -1013,6 +1020,8 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		ret = discover_from_conf_file(desc, argstr,
 				command_line_options, connect);
 	} else {
+		if (cfg.persistent && !cfg.keep_alive_tmo)
+			cfg.keep_alive_tmo = NVMF_DEF_DISC_TMO;
 		ret = build_options(argstr, BUF_SIZE);
 		if (ret)
 			goto out;
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
