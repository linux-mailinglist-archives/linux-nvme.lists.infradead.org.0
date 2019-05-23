Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAE828054
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Uh6cFGPbaCe0CnlapAxnlVj/ltzTxVpYVb9UXX7klLw=; b=bVi6HsvOgsDwlP
	xuLY9kKPNQ9I9z4OeavCteTntSw6R/vZOM1mhf8f0t9ZBDwlynxSk/mocHoxjBPBgcfateiAfQasY
	Gx3nwcBsx6OOP8mSZAiymChEXmhFqw60fEyAMDJ3vYxpjZ9V8I5O4l1sfqE15Ty6wQRLyG+rkoczS
	fHihOBiaaYeQULfRCJbXaCqDBxPUsAKOBb39sBjfEw8ZaVL+jR+A0bNoWq9hiZ+CQt5hwCqjhUCq/
	CIDgorfdlEr4R663Iaz+Z37KxXKzQuL5myFm34G4AZfYmUrGRMFRmjzGPMpNsUcmDC0KQSfS5JVnG
	FrSW5ovId3UK2J8jEp5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpAu-00076a-LL; Thu, 23 May 2019 14:58:32 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpAf-0006uC-Fv
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:58:23 +0000
Received: by mail-pg1-x541.google.com with SMTP id n27so3279473pgm.4
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 07:58:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cMPoiaCDP++xb0dsVyxToHdcDDdPcT0YL7STvpYJ+HQ=;
 b=KLpdrPUGON+0HPb4ORF7z+6BlBQ8shKlW4t2oYjTECrSQnhZ3e6P+MNceFeYxCARuH
 zX6VZnAtB3hoi0fbRNE/dMRjEXtQIdCz361KLFnNrlr4CExLgKVmxiBxlHo8tKue3u5q
 uDxFIJC26Q3yiYmeiksc02NS6S+zVVS1pkVYS5FvG21/cfgRcqeZJ31Zf5UnMm6Io8XM
 MmvRLk8nslpHg6CLlkl9SVNHSfpGFJbc9Arbf889fyOe+Zh3eTtsE6gdvX4qbd9rta6X
 FLuLoDCW0cXw4jNmofvmvInXOb+HvrbYM5PvjlXbQ2RJB97/CWTO6Mm7LK3tziLcxazS
 +mcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cMPoiaCDP++xb0dsVyxToHdcDDdPcT0YL7STvpYJ+HQ=;
 b=lp0+xBroFSyP4kguC/VCEYVbHGuMQQEFdYDkpsTv2qbgYpDnyha6540L8JqnWOyVkZ
 Cm5WWNucsnLfypHc5t46i9mXXvTr7Grh8kzGyYPJIgvpVA294uLU1Y5p+4HBlNOcKeEo
 ykYcXBkAPO2uq9dqi02JunJY0VYiSzlAzmshcq/8M+Cn8Ds/K8emGEO2FxzI2Y7j9Vta
 GSxfiZ9cWoPOIIE7hEBe9vmoYjFWPgv+najqjXIQz7K6zVBIWlJIFQWA5un23PlfVrrU
 TNKV2hS6g5VWL77BuSflQpzQjnNe2g7nE7luzexUHP1I5W+BQdGmkTdxKkib0g0k0jg2
 GehQ==
X-Gm-Message-State: APjAAAU6cmed2BgqlH/GdjpqAoLHJQYLIRC1SQzIa490jIBr1FbSLrXJ
 Vy5h3Lo+9VqTQqa4FYVgisdxJXafj68=
X-Google-Smtp-Source: APXvYqzmDvzDJN4gk5pfY4K2v4NLoeGIzTPyxm/TgNcwdniqE6WQjRIWbmkcKJEtlY68/0YPBnjCRA==
X-Received: by 2002:aa7:9726:: with SMTP id k6mr42297465pfg.246.1558623495851; 
 Thu, 23 May 2019 07:58:15 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v4sm45946554pff.45.2019.05.23.07.58.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 07:58:15 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 1/6] nvme: Do not return in the middle of the subcommand
Date: Thu, 23 May 2019 23:57:45 +0900
Message-Id: <20190523145750.27425-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_075817_906469_4F861DF5 
X-CRM114-Status: GOOD (  17.57  )
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

To make nvme-cli subcommand return a mapped errno value to main(), it
should return the error status in a single place because it would be
great if the return statements and free operations are in an one shot
place.

This patch makes all the subcommands in nvme module return the error
which means internal error which should be in negative and nvme error
status which is in positive at the end of the subcommand.

Most of the changed parts are file descriptors which is returned from
parse_and_open() function.  The "fd" could be in a negative value so
that it needs to be mapped to a uniformed errno value which will be
applied by the next patches.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme.c | 425 +++++++++++++++++++++++++++++++++++++--------------------
 1 file changed, 277 insertions(+), 148 deletions(-)

diff --git a/nvme.c b/nvme.c
index 9819fcb..88b2cfc 100644
--- a/nvme.c
+++ b/nvme.c
@@ -193,8 +193,10 @@ static int get_smart_log(int argc, char **argv, struct command *cmd, struct plug
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -220,6 +222,7 @@ static int get_smart_log(int argc, char **argv, struct command *cmd, struct plug
  close_fd:
 	close(fd);
 
+ ret:
 	return err;
 }
 
@@ -249,8 +252,10 @@ static int get_ana_log(int argc, char **argv, struct command *cmd,
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -292,6 +297,7 @@ static int get_ana_log(int argc, char **argv, struct command *cmd,
 	free(ana_log);
 close_fd:
 	close(fd);
+ret:
 	return err;
 }
 
@@ -330,8 +336,10 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (!cfg.file_name) {
 		fprintf(stderr, "Please provide an output file!\n");
@@ -419,6 +427,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
 	free(page_log);
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -449,8 +458,10 @@ static int get_endurance_log(int argc, char **argv, struct command *cmd, struct
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -473,6 +484,7 @@ static int get_endurance_log(int argc, char **argv, struct command *cmd, struct
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -505,8 +517,10 @@ static int get_effects_log(int argc, char **argv, struct command *cmd, struct pl
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -535,6 +549,7 @@ static int get_effects_log(int argc, char **argv, struct command *cmd, struct pl
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -567,8 +582,10 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -619,6 +636,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -646,8 +664,10 @@ static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -673,6 +693,7 @@ static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -701,8 +722,10 @@ static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, s
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -728,7 +751,7 @@ static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, s
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -780,8 +803,10 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (cfg.aen) {
 		cfg.log_len = 4096;
@@ -828,6 +853,7 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -860,8 +886,10 @@ static int sanitize_log(int argc, char **argv, struct command *command, struct p
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		ret = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -890,7 +918,7 @@ static int sanitize_log(int argc, char **argv, struct command *command, struct p
 
  close_fd:
 	close(fd);
-
+ ret:
 	return ret;
 }
 
@@ -919,8 +947,10 @@ static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (posix_memalign((void *)&cntlist, getpagesize(), 0x1000)) {
 		fprintf(stderr, "can not allocate controller list payload\n");
@@ -944,7 +974,7 @@ static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *
 
 close_fd:
 	close(fd);
-
+ret:
 	return err;
 }
 
@@ -973,8 +1003,10 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	err = nvme_identify_ns_list(fd, cfg.namespace_id, !!cfg.all, ns_list);
 	if (!err) {
@@ -988,7 +1020,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 		perror("id namespace list");
 
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -1033,8 +1065,10 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (S_ISBLK(nvme_stat.st_mode)) {
 		cfg.namespace_id = get_nsid(fd);
@@ -1060,7 +1094,7 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -1088,8 +1122,10 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (!cfg.namespace_id) {
 		fprintf(stderr, "%s: namespace-id parameter required\n",
@@ -1125,7 +1161,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -1195,8 +1231,10 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (cfg.flbas != 0xff && cfg.bs != 0x00) {
 		fprintf(stderr,
@@ -1253,7 +1291,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 
 close_fd:
 	close(fd);
-
+ret:
 	return err;
 }
 
@@ -1691,7 +1729,7 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
 
 	ret = argconfig_parse(argc, argv, desc, opts, &cfg, sizeof(cfg));
 	if (ret < 0)
-		return ret;
+		goto ret;
 
 	devicename = NULL;
 	if (optind < argc) {
@@ -1703,29 +1741,30 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
 			   &cfg.namespace_id) != 2) {
 			fprintf(stderr, "%s is not a NVMe namespace device\n",
 				argv[optind]);
-			return -EINVAL;
+			ret = -EINVAL;
+			goto ret;
 		}
 		sprintf(path, "/sys/block/%s/device", devicename);
 		subsysnqn = get_nvme_subsnqn(path);
 		if (!subsysnqn) {
 			fprintf(stderr, "Cannot read subsys NQN from %s\n",
 				devicename);
-			return -EINVAL;
+			ret = -EINVAL;
+			goto ret;
 		}
 		optind++;
 	}
 
 	if (ret < 0) {
 		argconfig_print_help(desc, opts);
-		if (subsysnqn)
-			free(subsysnqn);
-		return ret;
+		goto free;
 	}
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt != JSON && fmt != NORMAL) {
 		if (subsysnqn)
 			free(subsysnqn);
-		return -EINVAL;
+		ret = -EINVAL;
+		goto free;
 	}
 
 	slist = get_subsys_list(&subcnt, subsysnqn, cfg.namespace_id);
@@ -1736,8 +1775,11 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
 		show_nvme_subsystem_list(slist, subcnt);
 
 	free_subsys_list(slist, subcnt);
+ free:
 	if (subsysnqn)
 		free(subsysnqn);
+
+ ret:
 	return ret;
 }
 
@@ -1809,17 +1851,20 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 
 	ret = argconfig_parse(argc, argv, desc, opts, &cfg, sizeof(cfg));
 	if (ret < 0)
-		return ret;
+		goto ret;
 
 	fmt = validate_output_format(cfg.output_format);
 
-	if (fmt != JSON && fmt != NORMAL)
-		return -EINVAL;
+	if (fmt != JSON && fmt != NORMAL) {
+		ret = -EINVAL;
+		goto ret;
+	}
 
 	n = scandir(dev, &devices, scan_dev_filter, alphasort);
 	if (n < 0) {
 		fprintf(stderr, "no NVMe device(s) detected.\n");
-		return n;
+		ret = n;
+		goto ret;
 	}
 
 	list_items = calloc(n, sizeof(*list_items));
@@ -1867,7 +1912,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 	for (i = 0; i < n; i++)
 		free(devices[i]);
 	free(devices);
-
+ ret:
 	return ret;
 }
 
@@ -1905,8 +1950,10 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -1941,7 +1988,7 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -1978,8 +2025,10 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -2022,7 +2071,7 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -2066,8 +2115,10 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -2109,7 +2160,7 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -2140,8 +2191,10 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -2167,13 +2220,13 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
 static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *plugin)
 {
-	int nsid, fd;
+	int err = 0, nsid, fd;
 	const char *desc = "Get namespce ID of a the block device.";
 
 	const struct argconfig_commandline_options command_line_options[] = {
@@ -2181,18 +2234,23 @@ static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
+
 	nsid = nvme_get_nsid(fd);
 	if (nsid <= 0) {
 		perror(devicename);
-		close(fd);
-		return errno;
+		err = errno;
+		goto close_fd;
 	}
 	printf("%s: namespace-id:%d\n", devicename, nsid);
 
+ close_fd:
 	close(fd);
-	return 0;
+ ret:
+	return err;
 }
 
 static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2240,8 +2298,10 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	cfg.cdw10 = cfg.cntlid << 16;
 	cfg.cdw10 = cfg.cdw10 | (cfg.rt << 8);
@@ -2256,6 +2316,7 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
 		perror("virt-mgmt");
 
 	close(fd);
+ ret:
 	return err;
 
 }
@@ -2293,8 +2354,10 @@ static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struc
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -2332,7 +2395,7 @@ static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struc
 
 close_fd:
 	close(fd);
-
+ret:
 	return err;
 }
 
@@ -2366,8 +2429,10 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	err = nvme_self_test_start(fd, cfg.namespace_id, cfg.cdw10);
 	if (!err) {
@@ -2381,6 +2446,7 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
 		perror("Device self-test");
 
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -2406,8 +2472,10 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -2436,7 +2504,7 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -2492,8 +2560,10 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (cfg.sel > 7) {
 		fprintf(stderr, "invalid 'select' param:%d\n", cfg.sel);
@@ -2567,7 +2637,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -2609,8 +2679,10 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fw_fd = open(cfg.fw, O_RDONLY);
 	cfg.offset <<= 2;
@@ -2672,7 +2744,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
 	close(fw_fd);
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -2718,8 +2790,10 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (cfg.slot > 7) {
 		fprintf(stderr, "invalid slot:%d\n", cfg.slot);
@@ -2765,7 +2839,7 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -2779,21 +2853,22 @@ static int subsystem_reset(int argc, char **argv, struct command *cmd, struct pl
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	err = nvme_subsystem_reset(fd);
 	if (err < 0) {
-		close(fd);
 		if (errno == ENOTTY)
 			fprintf(stderr,
 				"Subsystem-reset: NVM Subsystem Reset not supported.\n");
 		else
 			perror("Subsystem-reset");
-		return errno;
 	}
 
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -2807,17 +2882,17 @@ static int reset(int argc, char **argv, struct command *cmd, struct plugin *plug
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	err = nvme_reset_controller(fd);
-	if (err < 0) {
-		close(fd);
+	if (err < 0)
 		perror("Reset");
-		return errno;
-	}
 
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -2831,17 +2906,17 @@ static int ns_rescan(int argc, char **argv, struct command *cmd, struct plugin *
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	err = nvme_ns_rescan(fd);
-	if (err < 0) {
-		close(fd);
+	if (err < 0)
 		perror("Namespace Rescan");
-		return errno;
-	}
 
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -2887,8 +2962,10 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, NULL, 0);
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		ret = fd;
+		goto ret;
+	}
 
 	switch (cfg.sanact) {
 	case NVME_SANITIZE_ACT_CRYPTO_ERASE:
@@ -2933,7 +3010,7 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
 
  close_fd:
 	close(fd);
-
+ ret:
 	return ret;
 }
 
@@ -2965,8 +3042,10 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -3006,7 +3085,7 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -3038,8 +3117,10 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (cfg.offset == -1) {
 		fprintf(stderr, "offset required param");
@@ -3058,7 +3139,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -3087,8 +3168,10 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (cfg.offset == -1) {
 		fprintf(stderr, "offset required param");
@@ -3113,7 +3196,7 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -3173,8 +3256,10 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (cfg.lbaf != 0xff && cfg.bs !=0) {
 		fprintf(stderr,
@@ -3274,7 +3359,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 
  close_fd:
 	close(fd);
-
+ ret:
 	return err;
 }
 
@@ -3332,8 +3417,10 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (!cfg.feature_id) {
 		fprintf(stderr, "feature-id required param\n");
@@ -3394,6 +3481,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
 		free(buf);
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -3443,8 +3531,10 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	sec_fd = open(cfg.file, O_RDONLY);
 	if (sec_fd < 0) {
@@ -3490,6 +3580,7 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
 	close(sec_fd);
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -3550,8 +3641,10 @@ static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *p
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	switch (cfg.dtype) {
 	case NVME_DIR_IDENTIFY:
@@ -3641,6 +3734,7 @@ free:
 		free(buf);
 close_fd:
 	close(fd);
+ret:
 	return err;
 }
 
@@ -3673,8 +3767,10 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
@@ -3695,7 +3791,7 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
 
 close_fd:
 	close(fd);
-
+ret:
 	return err;
 }
 
@@ -3753,8 +3849,10 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (cfg.prinfo > 0xf) {
 		err = EINVAL;
@@ -3787,6 +3885,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -3847,8 +3946,10 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	nc = argconfig_parse_comma_sep_array(cfg.ctx_attrs, ctx_attrs, ARRAY_SIZE(ctx_attrs));
 	nb = argconfig_parse_comma_sep_array(cfg.blocks, nlbs, ARRAY_SIZE(nlbs));
@@ -3887,6 +3988,7 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -3914,8 +4016,10 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (S_ISBLK(nvme_stat.st_mode)) {
 		cfg.namespace_id = get_nsid(fd);
@@ -3934,6 +4038,7 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
 		printf("NVMe Flush: success\n");
 close_fd:
 	close(fd);
+ret:
 	return err;
 }
 
@@ -3981,8 +4086,10 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
@@ -4008,6 +4115,7 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -4052,8 +4160,10 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
@@ -4085,6 +4195,7 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -4131,8 +4242,10 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (!cfg.namespace_id) {
 		cfg.namespace_id = get_nsid(fd);
@@ -4158,6 +4271,7 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -4201,8 +4315,10 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	fmt = validate_output_format(cfg.output_format);
 	if (fmt < 0) {
@@ -4252,6 +4368,7 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -4345,8 +4462,10 @@ static int submit_io(int opcode, char *command, const char *desc,
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	dfd = mfd = opcode & 1 ? STDIN_FILENO : STDOUT_FILENO;
 	if (cfg.prinfo > 0xf) {
@@ -4497,6 +4616,7 @@ static int submit_io(int opcode, char *command, const char *desc,
 	close(dfd);
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -4571,8 +4691,10 @@ static int sec_recv(int argc, char **argv, struct command *cmd, struct plugin *p
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (cfg.size) {
 		if (posix_memalign(&sec_buf, getpagesize(), cfg.size)) {
@@ -4603,6 +4725,7 @@ static int sec_recv(int argc, char **argv, struct command *cmd, struct plugin *p
 
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
@@ -4656,8 +4779,10 @@ static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	switch (cfg.dtype) {
 	case NVME_DIR_IDENTIFY:
@@ -4733,6 +4858,7 @@ free:
 		free(buf);
 close_fd:
 	close(fd);
+ret:
 	return err;
 }
 
@@ -4837,8 +4963,10 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
 	};
 
 	fd = parse_and_open(argc, argv, desc, command_line_options, &cfg, sizeof(cfg));
-	if (fd < 0)
-		return fd;
+	if (fd < 0) {
+		err = fd;
+		goto ret;
+	}
 
 	if (strlen(cfg.input_file)){
 		wfd = open(cfg.input_file, O_RDONLY,
@@ -4933,6 +5061,7 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
 		close(wfd);
  close_fd:
 	close(fd);
+ ret:
 	return err;
 }
 
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
