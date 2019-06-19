Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ADB64C01D
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Jun 2019 19:46:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CY+V61MeNlksPut7eK6Ak+Cehj93/zwu09o7Qqv5PCM=; b=JVv+KaPn0WZJvK
	20pEkzxiSGyNs+yc8WiozrxU9yhXAmMy+IimWicbkOWcEezoFHgPZkWX7wE7zDkyVdURk5ZfhywQk
	wSYqWNbLyGe8yLrrR+/kXN0yIlFlZ8sugDXKxjOOaLvktPzfQ9MUzvgntookOxe4c+HFLXNhak7Qt
	PIsVF0HAGBsDDL4+SS7wTr+30bBaMxwcHcemS4LKK/FDD1U8Tl6dzxPEkQKEQmj0pYaVHBFzjX/af
	NoV3e0MYfzV/djvI8tEWQjex20UMgeYXu1acr+txickmOgEoTr8VTFY3/gr1qm3YPzYlCTXJvyV83
	MNa8dhAKDTq2NB2pVZ/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdefU-0002yl-23; Wed, 19 Jun 2019 17:46:44 +0000
Received: from mail-pf1-f193.google.com ([209.85.210.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdeWG-0006cA-M0
 for linux-nvme@lists.infradead.org; Wed, 19 Jun 2019 17:37:15 +0000
Received: by mail-pf1-f193.google.com with SMTP id q10so5052pff.9
 for <linux-nvme@lists.infradead.org>; Wed, 19 Jun 2019 10:37:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=q9FZEmbq2FOHZopwjyBtqpl6fSFYPM728HYUqXk+pxI=;
 b=t/4niIJgzVJE7Ig1appaDsZhauBXdhU/uw3Z90nTo+vscI4LeQgI9dW4unicWJ+rXZ
 vnNayhMA/SdOObOpd1XNEz5LbQU23wGajwqwYI3QKWk+XmnHhdFj3XKOO0bKLjeuEWB4
 3/Yb2Se7GN6KhDpeYBNH6WL7ThQCCMPci7TmR5Q5yUcvU2DpmeLb3nkPqvALko8wYVca
 PB1KJNhK/qnlE7vRywMxLu5CcL1MsQgj5wPQz/TCorLDsMc5amR3b+Wre6RZ25n9bELX
 gSVUCVqirEj39dTQ6+ERYUSakkDMgjYJL9ZAgT2O5XD+z5D1iCxXtzfB4Ds/vHSQRwl0
 S6Vw==
X-Gm-Message-State: APjAAAUC1PgPhSEo3SS0JcY7DVdoS8hakhJqMHTmd53JOvkRGvD9Cqei
 n5YgiMy/qTIPucUSn/4evTE=
X-Google-Smtp-Source: APXvYqzK064E8SY4oltnKn2jKCy2od7W9scez8IJJu6MxNiSgGk2HqEXT0hEZ/sWCR8Oqm1U/7QuRw==
X-Received: by 2002:aa7:9a92:: with SMTP id w18mr5370572pfi.167.1560965831368; 
 Wed, 19 Jun 2019 10:37:11 -0700 (PDT)
Received: from desktop-bart.svl.corp.google.com
 ([2620:15c:2cd:202:4308:52a3:24b6:2c60])
 by smtp.gmail.com with ESMTPSA id o13sm2474204pje.28.2019.06.19.10.37.10
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 19 Jun 2019 10:37:10 -0700 (PDT)
From: Bart Van Assche <bvanassche@acm.org>
To: Keith Busch <keith.busch@intel.com>,
	Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCH nvme-cli 02/13] Use NULL instead of 0 where a pointer is
 expected
Date: Wed, 19 Jun 2019 10:36:50 -0700
Message-Id: <20190619173701.8263-3-bvanassche@acm.org>
X-Mailer: git-send-email 2.20.GIT
In-Reply-To: <20190619173701.8263-1-bvanassche@acm.org>
References: <20190619173701.8263-1-bvanassche@acm.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_103712_747628_B39439A4 
X-CRM114-Status: GOOD (  13.07  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.193 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.193 listed in wl.mailspike.net]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bart.vanassche[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Hannes Reinecke <hare@suse.com>, Bart Van Assche <bvanassche@acm.org>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 linux-nvme@lists.infradead.org, Quyen Truong <quyen.truong@virtium.com>,
 Muhammad Ahmad <muhammad.ahmad@seagate.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch avoids that sparse reports the following:

warning: Using plain integer as NULL pointer

Cc: Muhammad Ahmad <muhammad.ahmad@seagate.com>
Cc: Quyen Truong <quyen.truong@virtium.com>
Signed-off-by: Bart Van Assche <bvanassche@acm.org>
---
 plugins/seagate/seagate-nvme.c | 8 ++++----
 plugins/virtium/virtium-nvme.c | 8 ++++----
 2 files changed, 8 insertions(+), 8 deletions(-)

diff --git a/plugins/seagate/seagate-nvme.c b/plugins/seagate/seagate-nvme.c
index 4b5b0acb9244..69f3667d5b16 100644
--- a/plugins/seagate/seagate-nvme.c
+++ b/plugins/seagate/seagate-nvme.c
@@ -173,7 +173,7 @@ static int log_pages_supp(int argc, char **argv, struct command *cmd,
 	const struct argconfig_commandline_options command_line_options[] = {
 		{"output-format", 'o', "FMT", CFG_STRING, &cfg.output_format,
 		 required_argument, output_format },
-		{0}
+		{ }
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options,
@@ -735,7 +735,7 @@ static int vs_smart_log(int argc, char **argv, struct command *cmd, struct plugi
 
 	const struct argconfig_commandline_options command_line_options[] = {
 		{"output-format", 'o', "FMT", CFG_STRING, &cfg.output_format, required_argument, output_format },
-		{0}
+		{ }
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
@@ -832,7 +832,7 @@ static int temp_stats(int argc, char **argv, struct command *cmd, struct plugin
 
 	const struct argconfig_commandline_options command_line_options[] = {
 		{"output-format", 'o', "FMT", CFG_STRING, &cfg.output_format, required_argument, output_format },
-		{0}
+		{ }
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
@@ -1004,7 +1004,7 @@ static int vs_pcie_error_log(int argc, char **argv, struct command *cmd, struct
 
 	const struct argconfig_commandline_options command_line_options[] = {
 		{"output-format", 'o', "FMT", CFG_STRING, &cfg.output_format, required_argument, output_format },
-		{0}
+		{ }
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
diff --git a/plugins/virtium/virtium-nvme.c b/plugins/virtium/virtium-nvme.c
index b5b30af5dacd..ca5f5774af8c 100644
--- a/plugins/virtium/virtium-nvme.c
+++ b/plugins/virtium/virtium-nvme.c
@@ -287,7 +287,7 @@ static int vt_add_entry_to_log(const int fd, const char *path, const struct vtvi
         strcpy(filename, cfg->output_file);
     }
 	
-    smart.time_stamp = time(0);
+    smart.time_stamp = time(NULL);
     nsid = nvme_get_nsid(fd);
 	
     if(nsid <= 0) 
@@ -353,7 +353,7 @@ static int vt_update_vtview_log_header(const int fd, const char *path, const str
     }
 
     printf("Log file: %s\n", filename);
-    header.time_stamp = time(0);
+    header.time_stamp = time(NULL);
 
     ret = nvme_identify_ctrl(fd, &header.raw_ctrl);
     if(ret) 
@@ -881,14 +881,14 @@ Just logging :\n\
         freq_time = 1;
     }
 	
-    start_time = time(0);
+    start_time = time(NULL);
     end_time = start_time + total_time;
 
     fflush(stdout);
 	
     while(1)
     {
-        cur_time = time(0);
+        cur_time = time(NULL);
         if(cur_time >= end_time)
         {
             break;
-- 
2.22.0.rc3


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
