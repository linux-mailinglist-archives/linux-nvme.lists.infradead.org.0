Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 68733662E3
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:32:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kiOo0b+G/R23pUhPMP3S6/ypjoRlDCgf7ndz02ignB4=; b=Th8/LKTLxLjNg0Lb4EfiP7ykXh
	aqj/OTcHJ1dnegPitAGJCdX+gj1PuCGNJ1G8F5KgehLSfJgFQc6/HIjAkbXfjZb8vQ89tLWuARs9q
	1au1EvG+X3HVd5B4pGhkZfxkr4sNXT+LfHCSAOlP+gHjTh+vcYmzKk1zGvTL6y2Cs1ICy93OcYw2t
	cGibXi8LjoOlwL1BFPdyjJ8EJcTC7p1luSkt2p6BtG1jVdVPAmh1wIFTYXrMkn89MJP4RViiBYHp4
	pK8ENAycFxN4IBpAzgDiWNZnJTFNtS4GW6c15kcUlCzcAOqL22ZEqhc9+5V5k1IIsSp0dk2mLdxz0
	pGTrC5mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljUK-0001i6-Nj; Fri, 12 Jul 2019 00:32:36 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTe-0001WW-6X
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:31:55 +0000
Received: by mail-pl1-x642.google.com with SMTP id w24so3890922plp.2
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TarBd8h5I1lRJZ6NEMyaSTgl6UwBQThSEkR+tQUsUQE=;
 b=UgiC8XcXWnV3ha811w8aim61Z4t6Cz4+t0LPc3JP1BAgl0hxd1CjjL1/TBtvaLiwPI
 gTglwYekzlqAq5TgMQ9GV8yhwm+o8u2XBSXeIdX22cX7kfMM6rmJQUGHnS/iFok1l0jG
 2KyNk5EjfJv+nGt7Jg4eRpCRU6LNMpaDtqtqe3167UZN4plMTyMzh2afcV+M2V+4+nlM
 NdO5NY/RjkjXE8sdy8xa6uV6ctFgxMHIPCM6IyuOeMS4asH7LcRxJHojao95uxClXM01
 5MtN2+BJGEObTMgZ+LpGjD4dpZK3VFKLviinhJbdq2PXG6gVUs94qQvWuIKClZrmGr+b
 04pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TarBd8h5I1lRJZ6NEMyaSTgl6UwBQThSEkR+tQUsUQE=;
 b=TDM86VxKk+f0sIfiRAdAqTeblTKlK04BZUqi/a9ywAudT25Smqgs1lO+Qxze2rzjeo
 9ahVKwHwNAAdFt0SmKvjEioIMEzoQHN5KLrKCNgE2gDAMV8P+iBQdS+LyXGmpokLVp7I
 cx/2lu3UJxyBnty3Lvo+vK0QDzJZQEzjmQpxA6vWhSIGNeUEoCRU2YJpNfpWBMFVHoJm
 A4k9fYRF7PGE0h1EMC/jMX6XSdVCHHUgRjdlF8/8bQajNABtN+7gLHeuH71B4h62uhuv
 YDnBdJTXfDUSL58mYhxJvS3Uo1Mk/ZfC/A3j3B5sC+PW99WWgZQmc+rIrHLzkLaKSom9
 6iIQ==
X-Gm-Message-State: APjAAAVZwfsrisRDtN2895b2jRLY0iDRPKURaV0EqHQhobBncdTEf6Ye
 QuvEqw9lLeCVPPYU46zoPZ6nk6+u
X-Google-Smtp-Source: APXvYqycuC+6X/aSa0uHU1DRlNEymHihlD5J3oGSzN+I2qe0TuHpVBjnVzIj1iMu7JKZkGpLJqxZbw==
X-Received: by 2002:a17:902:44e:: with SMTP id
 72mr7807605ple.326.1562891513370; 
 Thu, 11 Jul 2019 17:31:53 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.31.52
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:31:52 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 02/10] nvme-cli: support persistent connections to a
 discovery controller
Date: Thu, 11 Jul 2019 17:31:32 -0700
Message-Id: <20190712003140.16221-3-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712003140.16221-1-jsmart2021@gmail.com>
References: <20190712003140.16221-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173154_282702_E8316919 
X-CRM114-Status: GOOD (  14.99  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
