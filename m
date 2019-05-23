Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BB928057
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gSVGhFgr/qHf7OHGlEs2zSUcVlAqF0RqOqsEKjD0bmc=; b=YJal2BntIhhbH8
	P9STE/sDfTRFYLFaD8XUHK2ewUrg5zT7ZxIUiGfpNQ1VUM+93N4BCawV+7akVPuB5ue0mLImAjPB8
	nprcDwY0mn0/yM2z9wCx3bzo5HIhdCj1nclHJ0goU4m5s1tBoLxo0jQvKKJPX35zp+hDMUR2VuY/l
	iTOSp6ytxQ19bU+0ac1D2JXFbg/cPEu1UR3K+2lArbo/A1AWHFn9gNpxt5YKR24u0XT8FcrQ3qBE9
	NBzpX39cP0RzeSG+bdCkfjcI0U15xPMETZxsgTrWoEpdFh2v4yPeCsSbewk/MZNQ6d0khtLO7CFvH
	td+2tq9scPuQ0UAtU09A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpB7-0007Vh-0W; Thu, 23 May 2019 14:58:45 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpAl-00073a-Hc
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:58:30 +0000
Received: by mail-pg1-x541.google.com with SMTP id h2so220929pgg.1
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 07:58:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ga5fpXaWS/yToRAKmWy7sg8GgKZ8phdH9Ho5kY3f338=;
 b=Amd8VxbRpGHMy3Tqd7dm4KQF/UVM9Wq89sfvEj4OMUEhzcJIyW7MSk7t0yyn462Liu
 ZJdV9zMjg/WN7tLynBEwIJABAK3/CMf4NXwpX7iiqCGKQcWOMUEg7A90O4xW+zFo5hUX
 iWBn8MaWVo968c4LwqSdhOzO2W1ruLLHYnIZrRUAF9/be5dH/6W6E4rk/dn5EFaWPXmX
 GnNNRHtdYDSqkoaJTFxux28z7wmgSs95nP84IU0v4BCY2924K1/RolJ04iVqff0T+uUZ
 Bi9vJVBwfSH8zK9BxpGZGqsOTVcSDJS6v4ym2m31w0G2Njp1NsXmplhHBzXE+ANgPTmg
 2AhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ga5fpXaWS/yToRAKmWy7sg8GgKZ8phdH9Ho5kY3f338=;
 b=dS2n4z8VZtHnc8hPrvjGcbybQM4R77QpAs5eYz1RHyPuzW3Asx9TCNBcSI/zCocGt6
 JHG7M3sENwZNDcmKaPdaTRXgOWh5FOilPCnWucPlymYRyeuHGJKI5wiaLOGYoPQD7U4B
 fdTR8GOrUaqnvqXEfMkziL1KTsqVt/PFMWq2OTNyMB/CHPbQCuN13EyjlTzfczmUPmG9
 2xUpjffS+w2zmFlSQ8sYmnQPuUSlIpRtWe02wJoJaZWZUrmB4hRNZGLI0iLG5Y+YjjF1
 HUPM+Q2kHvgZBkfIakV9BqNFFAvgBvJGYBoO1097kzN7g5ZpevP4TdInsIrfwSUNWS3T
 eXYQ==
X-Gm-Message-State: APjAAAV6Ijr1FjCvIE2U5Een3ZQFJbt//OH1o6GId7ujzZwNPgxV/QAV
 oHPyEq8TOpH2o3Rf9WVsLaGTJC6wi/k=
X-Google-Smtp-Source: APXvYqwBJxie0HOAjLfoTxyTY8dPQzd5VLLZTKOEJDGDPkuV9L6b1B1eXFfa5SKCbEENVuHOi3BXOg==
X-Received: by 2002:a63:4346:: with SMTP id q67mr97854359pga.241.1558623502390; 
 Thu, 23 May 2019 07:58:22 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v4sm45946554pff.45.2019.05.23.07.58.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 07:58:21 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 3/6] nvme: Return negative error value for internal errors
Date: Thu, 23 May 2019 23:57:47 +0900
Message-Id: <20190523145750.27425-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_075823_636224_84844A40 
X-CRM114-Status: GOOD (  16.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

To support the mapping of error values which will be introduced in the
next patches, All the internal errors caused in the middle of the
subcommands preparation or teardown should be returned as a negative
value to make it distinguished from nvme error status which is positive.

This patch makes all the internal error values which used to be returned
as a positive value to be returned as a negative value.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme.c | 170 ++++++++++++++++++++++++++++-----------------------------
 1 file changed, 85 insertions(+), 85 deletions(-)

diff --git a/nvme.c b/nvme.c
index 88b2cfc..a8d382a 100644
--- a/nvme.c
+++ b/nvme.c
@@ -343,7 +343,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
 
 	if (!cfg.file_name) {
 		fprintf(stderr, "Please provide an output file!\n");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -353,7 +353,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
 	if (!hdr || !page_log) {
 		fprintf(stderr, "Failed to allocate %zu bytes for log: %s\n",
 				bs, strerror(errno));
-		err = ENOMEM;
+		err = -ENOMEM;
 		goto free_mem;
 	}
 	memset(hdr, 0, bs);
@@ -393,7 +393,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
 		break;
 	default:
 		fprintf(stderr, "Invalid data area requested");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_output;
 	}
 
@@ -597,7 +597,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
 
 	if (!cfg.log_entries) {
 		fprintf(stderr, "non-zero log-entries is required param\n");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -606,7 +606,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
 		perror("identify controller");
 	else if (err) {
 		fprintf(stderr, "could not identify controller\n");
-		err = ENODEV;
+		err = -ENODEV;
 	} else {
 		struct nvme_error_log_page *err_log;
 
@@ -614,7 +614,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
 		err_log = calloc(cfg.log_entries, sizeof(struct nvme_error_log_page));
 		if (!err_log) {
 			fprintf(stderr, "could not alloc buffer for error log\n");
-			err = ENOMEM;
+			err = -ENOMEM;
 			goto close_fd;
 		}
 
@@ -815,13 +815,13 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
 
 	if (cfg.log_id > 0xff) {
 		fprintf(stderr, "Invalid log identifier: %d. Valid range: 0-255\n", cfg.log_id);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
 	if (!cfg.log_len) {
 		fprintf(stderr, "non-zero log-len is required param\n");
-		err = EINVAL;
+		err = -EINVAL;
 	} else {
 		unsigned char *log;
 
@@ -829,7 +829,7 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
 		if (!log) {
 			fprintf(stderr, "could not alloc buffer for log: %s\n",
 					strerror(errno));
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 
@@ -1073,13 +1073,13 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
 	if (S_ISBLK(nvme_stat.st_mode)) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	} else if (!cfg.namespace_id) {
 		fprintf(stderr, "%s: namespace-id parameter required\n",
 						cmd->name);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -1130,7 +1130,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
 	if (!cfg.namespace_id) {
 		fprintf(stderr, "%s: namespace-id parameter required\n",
 						cmd->name);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -1140,7 +1140,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
     if (num == -1) {
 		fprintf(stderr, "%s: controller id list is required\n",
 						cmd->name);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
     }
 
@@ -2040,14 +2040,14 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
 
 	if (posix_memalign(&nsdescs, getpagesize(), 0x1000)) {
 		fprintf(stderr, "can not allocate controller list payload\n");
-		err = ENOMEM;
+		err = -ENOMEM;
 		goto close_fd;
 	}
 
@@ -2134,7 +2134,7 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
 	if (!cfg.namespace_id && S_ISBLK(nvme_stat.st_mode)) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
@@ -2567,12 +2567,12 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
 
 	if (cfg.sel > 7) {
 		fprintf(stderr, "invalid 'select' param:%d\n", cfg.sel);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 	if (!cfg.feature_id) {
 		fprintf(stderr, "feature-id required param\n");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -2606,7 +2606,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
 	if (cfg.data_len) {
 		if (posix_memalign(&buf, getpagesize(), cfg.data_len)) {
 			fprintf(stderr, "can not allocate feature payload\n");
-			err = ENOMEM;
+			err = -ENOMEM;
 			goto close_fd;
 		}
 		memset(buf, 0, cfg.data_len);
@@ -2689,7 +2689,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
 	if (fw_fd < 0) {
 		fprintf(stderr, "Failed to open firmware file %s: %s\n",
 				cfg.fw, strerror(errno));
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -2702,12 +2702,12 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
 	fw_size = sb.st_size;
 	if (fw_size & 0x3) {
 		fprintf(stderr, "Invalid size:%d for f/w image\n", fw_size);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fw_fd;
 	}
 	if (posix_memalign(&fw_buf, getpagesize(), fw_size)) {
 		fprintf(stderr, "No memory for f/w size:%d\n", fw_size);
-		err = ENOMEM;
+		err = -ENOMEM;
 		goto close_fw_fd;
 	}
 
@@ -2797,17 +2797,17 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
 
 	if (cfg.slot > 7) {
 		fprintf(stderr, "invalid slot:%d\n", cfg.slot);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 	if (cfg.action > 7 || cfg.action == 4 || cfg.action == 5) {
 		fprintf(stderr, "invalid action:%d\n", cfg.action);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 	if (cfg.bpid > 1) {
 		fprintf(stderr, "invalid boot partition id:%d\n", cfg.bpid);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -2975,14 +2975,14 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
 		break;
 	default:
 		fprintf(stderr, "Invalid Sanitize Action\n");
-		ret = EINVAL;
+		ret = -EINVAL;
 		goto close_fd;
 	}
 
 	if (cfg.sanact == NVME_SANITIZE_ACT_EXIT) {
 	       if (cfg.ause || cfg.no_dealloc) {
 			fprintf(stderr, "SANACT is Exit Failure Mode\n");
-			ret = EINVAL;
+			ret = -EINVAL;
 			goto close_fd;
 	       }
 	}
@@ -2990,13 +2990,13 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
 	if (cfg.sanact == NVME_SANITIZE_ACT_OVERWRITE) {
 		if (cfg.owpass > 16) {
 			fprintf(stderr, "OWPASS out of range [0-16]\n");
-			ret = EINVAL;
+			ret = -EINVAL;
 			goto close_fd;
 		}
 	} else {
 		if (cfg.owpass || cfg.oipbp || cfg.ovrpat) {
 			fprintf(stderr, "SANACT is not Overwrite\n");
-			ret = EINVAL;
+			ret = -EINVAL;
 			goto close_fd;
 		}
 	}
@@ -3057,7 +3057,7 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
 
 	if (cfg.human_readable && fmt != NORMAL) {
 		fprintf(stderr, "Only --output-format=normal supports -H\n");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -3069,7 +3069,7 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
 			err = 0;
 	}
 	if (!bar) {
-		err = ENODEV;
+		err = -ENODEV;
 		goto close_fd;
 	}
 
@@ -3124,7 +3124,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
 
 	if (cfg.offset == -1) {
 		fprintf(stderr, "offset required param");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -3175,12 +3175,12 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
 
 	if (cfg.offset == -1) {
 		fprintf(stderr, "offset required param");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 	if (cfg.value == -1) {
 		fprintf(stderr, "value required param");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -3279,7 +3279,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 	if (S_ISBLK(nvme_stat.st_mode)) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
@@ -3320,27 +3320,27 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 	/* ses & pi checks set to 7 for forward-compatibility */
 	if (cfg.ses > 7) {
 		fprintf(stderr, "invalid secure erase settings:%d\n", cfg.ses);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 	if (cfg.lbaf > 15) {
 		fprintf(stderr, "invalid lbaf:%d\n", cfg.lbaf);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 	if (cfg.pi > 7) {
 		fprintf(stderr, "invalid pi:%d\n", cfg.pi);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 	if (cfg.pil > 1) {
 		fprintf(stderr, "invalid pil:%d\n", cfg.pil);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 	if (cfg.ms > 1) {
 		fprintf(stderr, "invalid ms:%d\n", cfg.ms);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -3424,7 +3424,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
 
 	if (!cfg.feature_id) {
 		fprintf(stderr, "feature-id required param\n");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 	if (cfg.feature_id == NVME_FEAT_LBA_RANGE)
@@ -3432,7 +3432,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
 	if (cfg.data_len) {
 		if (posix_memalign(&buf, getpagesize(), cfg.data_len)) {
 			fprintf(stderr, "can not allocate feature payload\n");
-			err = ENOMEM;
+			err = -ENOMEM;
 			goto close_fd;
 		}
 		memset(buf, 0, cfg.data_len);
@@ -3444,7 +3444,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
 			if (ffd <= 0) {
 				fprintf(stderr, "Failed to open file %s: %s\n",
 						cfg.file, strerror(errno));
-				err = EINVAL;
+				err = -EINVAL;
 				goto free;
 			}
 		}
@@ -3540,7 +3540,7 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
 	if (sec_fd < 0) {
 		fprintf(stderr, "Failed to open %s: %s\n",
 				cfg.file, strerror(errno));
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -3553,7 +3553,7 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
 	sec_size = sb.st_size;
 	if (posix_memalign(&sec_buf, getpagesize(), sec_size)) {
 		fprintf(stderr, "No memory for security size:%d\n", sec_size);
-		err = ENOMEM;
+		err = -ENOMEM;
 		goto close_sec_fd;
 	}
 
@@ -3652,14 +3652,14 @@ static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *p
 		case NVME_DIR_SND_ID_OP_ENABLE:
 			if (!cfg.ttype) {
 				fprintf(stderr, "target-dir required param\n");
-				err = EINVAL;
+				err = -EINVAL;
 				goto close_fd;
 			}
 			dw12 = cfg.ttype << 8 | cfg.endir;
 			break;
 		default:
 			fprintf(stderr, "invalid directive operations for Identify Directives\n");
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 		break;
@@ -3670,20 +3670,20 @@ static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *p
 			break;
 		default:
 			fprintf(stderr, "invalid directive operations for Streams Directives\n");
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 		break;
 	default:
 		fprintf(stderr, "invalid directive type\n");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
 
 	if (cfg.data_len) {
 		if (posix_memalign(&buf, getpagesize(), cfg.data_len)) {
-			err = ENOMEM;
+			err = -ENOMEM;
 			goto close_fd;
 		}
 		memset(buf, 0, cfg.data_len);
@@ -3695,7 +3695,7 @@ static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *p
 			if (ffd <= 0) {
 				fprintf(stderr, "Failed to open file %s: %s\n",
 						cfg.file, strerror(errno));
-				err = EINVAL;
+				err = -EINVAL;
 				goto free;
 			}
 		}
@@ -3775,7 +3775,7 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
@@ -3855,7 +3855,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
 	}
 
 	if (cfg.prinfo > 0xf) {
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -3869,7 +3869,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
@@ -3957,14 +3957,14 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
 	nr = max(nc, max(nb, ns));
 	if (!nr || nr > 256) {
 		fprintf(stderr, "No range definition provided\n");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
@@ -3974,7 +3974,7 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
 	dsm = nvme_setup_dsm_range((__u32 *)ctx_attrs, (__u32 *)nlbs, (__u64 *)slbas, nr);
 	if (!dsm) {
 		fprintf(stderr, "failed to allocate data set payload\n");
-		err = ENOMEM;
+		err = -ENOMEM;
 		goto close_fd;
 	}
 
@@ -4024,7 +4024,7 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
 	if (S_ISBLK(nvme_stat.st_mode)) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
@@ -4094,13 +4094,13 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
 	if (cfg.racqa > 7) {
 		fprintf(stderr, "invalid racqa:%d\n", cfg.racqa);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -4168,19 +4168,19 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
 	if (cfg.cptpl > 3) {
 		fprintf(stderr, "invalid cptpl:%d\n", cfg.cptpl);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
 	if (cfg.rrega > 7) {
 		fprintf(stderr, "invalid rrega:%d\n", cfg.rrega);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -4250,13 +4250,13 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
 	if (cfg.rrela > 7) {
 		fprintf(stderr, "invalid rrela:%d\n", cfg.rrela);
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -4331,7 +4331,7 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
 		if (cfg.namespace_id == 0) {
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
@@ -4344,7 +4344,7 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
 
 	if (posix_memalign((void **)&status, getpagesize(), size)) {
 		fprintf(stderr, "No memory for resv report:%d\n", size);
-		err = ENOMEM;
+		err = -ENOMEM;
 		goto close_fd;
 	}
 	memset(status, 0, size);
@@ -4469,7 +4469,7 @@ static int submit_io(int opcode, char *command, const char *desc,
 
 	dfd = mfd = opcode & 1 ? STDIN_FILENO : STDOUT_FILENO;
 	if (cfg.prinfo > 0xf) {
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
@@ -4483,7 +4483,7 @@ static int submit_io(int opcode, char *command, const char *desc,
 		if (cfg.dtype > 0xf) {
 			fprintf(stderr, "Invalid directive type, %x\n",
 				cfg.dtype);
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 		control |= cfg.dtype << 4;
@@ -4494,7 +4494,7 @@ static int submit_io(int opcode, char *command, const char *desc,
 		dfd = open(cfg.data, flags, mode);
 		if (dfd < 0) {
 			perror(cfg.data);
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 		mfd = dfd;
@@ -4503,14 +4503,14 @@ static int submit_io(int opcode, char *command, const char *desc,
 		mfd = open(cfg.metadata, flags, mode);
 		if (mfd < 0) {
 			perror(cfg.metadata);
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_dfd;
 		}
 	}
 
 	if (!cfg.data_size)	{
 		fprintf(stderr, "data size not provided\n");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_mfd;
 	}
 
@@ -4527,7 +4527,7 @@ static int submit_io(int opcode, char *command, const char *desc,
 
 	if (posix_memalign(&buffer, getpagesize(), buffer_size)) {
 		fprintf(stderr, "can not allocate io payload\n");
-		err = ENOMEM;
+		err = -ENOMEM;
 		goto close_mfd;
 	}
 	memset(buffer, 0, buffer_size);
@@ -4537,7 +4537,7 @@ static int submit_io(int opcode, char *command, const char *desc,
 		if (!mbuffer) {
 			fprintf(stderr, "can not allocate io metadata "
 					"payload: %s\n", strerror(errno));
-			err = ENOMEM;
+			err = -ENOMEM;
 			goto free_buffer;
 		}
 	}
@@ -4594,12 +4594,12 @@ static int submit_io(int opcode, char *command, const char *desc,
 		if (!(opcode & 1) && write(dfd, (void *)buffer, cfg.data_size) < 0) {
 			fprintf(stderr, "write: %s: failed to write buffer to output file\n",
 					strerror(errno));
-			err = EINVAL;
+			err = -EINVAL;
 		} else if (!(opcode & 1) && cfg.metadata_size &&
 				write(mfd, (void *)mbuffer, cfg.metadata_size) < 0) {
 			fprintf(stderr, "write: %s: failed to write meta-data buffer to output file\n",
 					strerror(errno));
-			err = EINVAL;
+			err = -EINVAL;
 		} else
 			fprintf(stderr, "%s: Success\n", command);
 	}
@@ -4700,7 +4700,7 @@ static int sec_recv(int argc, char **argv, struct command *cmd, struct plugin *p
 		if (posix_memalign(&sec_buf, getpagesize(), cfg.size)) {
 			fprintf(stderr, "No memory for security size:%d\n",
 								cfg.size);
-			err = ENOMEM;
+			err = -ENOMEM;
 			goto close_fd;
 		}
 	}
@@ -4793,7 +4793,7 @@ static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin
 			break;
 		default:
 			fprintf(stderr, "invalid directive operations for Identify Directives\n");
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 		break;
@@ -4812,19 +4812,19 @@ static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin
 			break;
 		default:
 			fprintf(stderr, "invalid directive operations for Streams Directives\n");
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 		break;
 	default:
 		fprintf(stderr, "invalid directive type\n");
-		err = EINVAL;
+		err = -EINVAL;
 		goto close_fd;
 	}
 
 	if (cfg.data_len) {
 		if (posix_memalign(&buf, getpagesize(), cfg.data_len)) {
-			err = ENOMEM;
+			err = -ENOMEM;
 			goto close_fd;
 		}
 		memset(buf, 0, cfg.data_len);
@@ -4973,7 +4973,7 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
 			   S_IRUSR | S_IRGRP | S_IROTH);
 		if (wfd < 0) {
 			perror(cfg.input_file);
-			err = EINVAL;
+			err = -EINVAL;
 			goto close_fd;
 		}
 	}
@@ -4983,21 +4983,21 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
 		if (!metadata) {
 			fprintf(stderr, "can not allocate metadata "
 					"payload: %s\n", strerror(errno));
-			err = ENOMEM;
+			err = -ENOMEM;
 			goto close_wfd;
 		}
 	}
 	if (cfg.data_len) {
 		if (posix_memalign(&data, getpagesize(), cfg.data_len)) {
 			fprintf(stderr, "can not allocate data payload\n");
-			err = ENOMEM;
+			err = -ENOMEM;
 			goto free_metadata;
 		}
 
 		memset(data, cfg.prefill, cfg.data_len);
 		if (!cfg.read && !cfg.write) {
 			fprintf(stderr, "data direction not given\n");
-			err = EINVAL;
+			err = -EINVAL;
 			goto free_data;
 		} else if (cfg.write) {
 			if (read(wfd, data, cfg.data_len) < 0) {
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
