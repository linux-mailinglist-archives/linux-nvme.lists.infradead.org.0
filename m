Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DDE51A94A
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 21:38:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ItKqJ0KMhr02jWjMkrHR962WwTqbKLAJgDZepnf9Z5o=; b=Tr+xo0QbJaqwd5cQUMFJ7igBJu
	e/K13OE8VGrM/9C1pxqN9oEjfhIwFybjOyvsvHm8raJn1x0GWxudZ0xwGU6RgOrkCEQIh7arZayP/
	JjAw5E2jt6Gz4O1nn2MSQLeX+kSCww6xYYLRq+YEZh0sJPwd9isjuQ5+Hq8fT+QIKGJ/pc6SmcxEZ
	fCSuXKitMDPFahBku14QXUiH8eOkrvDw57FQjQgXMUwH6BjD3hhdlP8DMGOcGXTE2U3SOBNF8WIJr
	FBhS7s67loCvOWhrAbUpXAAUcDofIyUOioWF3FQY1MD5OuSGjpxQ+6k+2EnnXg8oRt9fnN72i8aht
	WDvmsFdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPXog-0002W5-0j; Sat, 11 May 2019 19:37:54 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPXoM-0002DL-UM
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 19:37:47 +0000
Received: by mail-pf1-x442.google.com with SMTP id g3so4997237pfi.4
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 12:37:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=h0zQ/SFPVIFgXnI9Sk42YW8K/ucFWlmwlCERUb15XxE=;
 b=UCoPw6x2yub++P24gZsLN+YZmuQb3CUNHZ3R0OfJyxMHa/nrdZdCoFPt6wT6X8i9Pz
 PDPcXctG+TS5lsIcunUBos7++/4u4yOL0fspRaBiArFjuZ7bDIMWgAbd70IXykbUgea3
 bJwJIYHN9Xb7VTLwfycBSH9GpvTcujXU1JmzHli/iU9YNOexCLb+NHLxnHqDTuRGX1vL
 K51z6OK4pVODeyFtogUPLwdYKB6SbO9U4z3MCq512V3jOlG28f+jze8DlWYaewrbhAAi
 JQoKjzhmshhi3CSpEM5OOSr8GaBwtYp27k+XnSjG7Qlf33S7TabHfR5UELlrFPcht2Or
 BV9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=h0zQ/SFPVIFgXnI9Sk42YW8K/ucFWlmwlCERUb15XxE=;
 b=NC6UZrokw0RIPNAy0srKvewWxYGdySNiX6tKsRljuvhtYrnTmJjxpKhr46pOJoAYas
 Mq6DPlA6kLH+6SWU06R1Hkd487wH16MeYvoqg1q1VD6YqCKnu3mxcdeqS6e2jB2RjNTn
 bZHZRrC3aSq36FNV/dysDcU1LkkEOdaJRCitU3sGueCBsxERR+JcbAk9+085+q+LKgG4
 4LgbSqvYdCy7prsIyvD4Rw1UXcBJmyiTaJ0lbqM5sw5Z4iGhOAn30x1cJN6wevppmV56
 VVJsXFKJWhPjV/cGEH9Cv2K/E8ARx81Vydmv4C0rPcRX1m4IfvG7fxDkeyolCLHNVn8l
 6p9A==
X-Gm-Message-State: APjAAAUyz7jX5NZp9IVoXo5UXdInqv5zJ6CA5aBMJhxyc0li5fkTTT2X
 P5OcA2QAa1CGKdZbeRC7//eYTG1+/go=
X-Google-Smtp-Source: APXvYqzisjxAUl/IGUBRtKpawdSgcf9t+37N87wfDL+Q8tOAKFzonNXEo00hslDhXKOas7GgZFGtdQ==
X-Received: by 2002:a63:1b65:: with SMTP id b37mr22768122pgm.408.1557603453248; 
 Sat, 11 May 2019 12:37:33 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a9sm10878883pgw.72.2019.05.11.12.37.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 12:37:32 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH RFC 3/4] nvme: Return errno mapped for nvme error status
Date: Sun, 12 May 2019 04:37:12 +0900
Message-Id: <20190511193713.29516-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
References: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_123735_642827_FA9A85E9 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If ioctl module has returned a nvme error status, it will be returned
by being converted to a mapped errno value which has been provided by
previous commits.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme.c | 180 +++++++++++++++++++++++++++++++++++----------------------
 1 file changed, 110 insertions(+), 70 deletions(-)

diff --git a/nvme.c b/nvme.c
index 220fb18..2e1ce4f 100644
--- a/nvme.c
+++ b/nvme.c
@@ -48,6 +48,7 @@
 #include "common.h"
 #include "nvme-print.h"
 #include "nvme-ioctl.h"
+#include "nvme-status.h"
 #include "nvme-lightnvm.h"
 #include "plugin.h"
 
@@ -213,9 +214,10 @@ static int get_smart_log(int argc, char **argv, struct command *cmd, struct plug
 		else
 			show_smart_log(&smart_log, cfg.namespace_id, devicename);
 	}
-	else if (err > 0)
+	else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("smart log");
 
  close_fd:
@@ -286,9 +288,10 @@ static int get_ana_log(int argc, char **argv, struct command *cmd,
 			json_ana_log(ana_log, devicename);
 		else
 			show_ana_log(ana_log, devicename);
-	} else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("ana-log");
 	free(ana_log);
 close_fd:
@@ -364,6 +367,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
 		perror("get-telemetry-log");
 	else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
 		fprintf(stderr, "Failed to acquire telemetry header %d!\n", err);
 		goto close_output;
 	}
@@ -402,6 +406,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
 		} else if (err > 0) {
 			fprintf(stderr, "Failed to acquire full telemetry log!\n");
 			show_nvme_status(err);
+			err = nvme_status_to_errno(err, false);
 			break;
 		}
 
@@ -467,9 +472,10 @@ static int get_endurance_log(int argc, char **argv, struct command *cmd, struct
 			json_endurance_log(&endurance_log, cfg.group_id, devicename);
 		else
 			show_endurance_log(&endurance_log, cfg.group_id, devicename);
-	} else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("endurance log");
 
  close_fd:
@@ -528,10 +534,10 @@ static int get_effects_log(int argc, char **argv, struct command *cmd, struct pl
 			json_effects_log(&effects, devicename);
 		else
 			show_effects_log(&effects, flags);
-	}
-	else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("effects log page");
 
  close_fd:
@@ -610,10 +616,10 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
 				json_error_log(err_log, cfg.log_entries, devicename);
 			else
 				show_error_log(err_log, cfg.log_entries, devicename);
-		}
-		else if (err > 0)
+		} else if (err > 0) {
 			show_nvme_status(err);
-		else
+			err = nvme_status_to_errno(err, false);
+		} else
 			perror("error log");
 		free(err_log);
 	}
@@ -666,10 +672,10 @@ static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin
 			json_fw_log(&fw_log, devicename);
 		else
 			show_fw_log(&fw_log, devicename);
-	}
-	else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("fw log");
 
  close_fd:
@@ -722,9 +728,10 @@ static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, s
 			json_changed_ns_list_log(&changed_ns_list_log, devicename);
 		else
 			show_changed_ns_list_log(&changed_ns_list_log, devicename);
-	} else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("changed ns list log");
 
  close_fd:
@@ -820,9 +827,10 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
 				d(log, cfg.log_len, 16, 1);
 			} else
 				d_raw((unsigned char *)log, cfg.log_len);
-		} else if (err > 0)
+		} else if (err > 0) {
 			show_nvme_status(err);
-		else
+			err = nvme_status_to_errno(err, false);
+		} else
 			perror("log page");
 		free(log);
 	}
@@ -883,10 +891,10 @@ static int sanitize_log(int argc, char **argv, struct command *command, struct p
 			json_sanitize_log(&sanitize_log, devicename);
 		else
 			show_sanitize_log(&sanitize_log, flags, devicename);
-	}
-	else if (ret > 0)
+	} else if (ret > 0) {
 		show_nvme_status(ret);
-	else
+		ret = nvme_status_to_errno(ret, false);
+	} else
 		perror("sanitize status log");
 
  close_fd:
@@ -934,10 +942,10 @@ static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *
 
 		for (i = 0; i < (min(num, 2048)); i++)
 			printf("[%4u]:%#x\n", i, le16_to_cpu(cntlist->identifier[i]));
-	}
-	else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("id controller list");
 
 	free(cntlist);
@@ -980,10 +988,10 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 		for (i = 0; i < 1024; i++)
 			if (ns_list[i])
 				printf("[%4u]:%#x\n", i, le32_to_cpu(ns_list[i]));
-	}
-	else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("id namespace list");
 
 	close(fd);
@@ -1052,9 +1060,10 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
 	if (!err)
 		printf("%s: Success, deleted nsid:%d\n", cmd->name,
 								cfg.namespace_id);
-	else if (err > 0)
+	else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("delete namespace");
 
  close_fd:
@@ -1117,9 +1126,10 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
 
 	if (!err)
 		printf("%s: Success, nsid:%d\n", cmd->name, cfg.namespace_id);
-	else if (err > 0)
+	else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror(attach ? "attach namespace" : "detach namespace");
 
  close_fd:
@@ -1216,6 +1226,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 			else {
 				fprintf(stderr, "identify failed\n");
 				show_nvme_status(err);
+				err = nvme_status_to_errno(err, false);
 			}
 			return err;
 		}
@@ -1241,9 +1252,10 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 			     cfg.nmic, cfg.timeout, &nsid);
 	if (!err)
 		printf("%s: Success, created nsid:%d\n", cmd->name, nsid);
-	else if (err > 0)
+	else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("create namespace");
 
 	close(fd);
@@ -1840,6 +1852,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 		else if (ret > 0) {
 			fprintf(stderr, "identify failed\n");
 			show_nvme_status(ret);
+			ret = nvme_status_to_errno(ret, false);
 		}
 		else {
 			fprintf(stderr, "%s: failed to obtain nvme info: %s\n",
@@ -1927,10 +1940,10 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
 			printf("NVME Identify Controller:\n");
 			__show_nvme_id_ctrl(&ctrl, flags, vs);
 		}
-	}
-	else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("identify controller");
 
  close_fd:
@@ -2006,10 +2019,10 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
 			printf("NVME Namespace Identification Descriptors NS %d:\n", cfg.namespace_id);
 			show_nvme_id_ns_descs(nsdescs);
 		}
-	}
-	else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("identify namespace");
 
 	free(nsdescs);
@@ -2095,10 +2108,10 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
 			printf("NVME Identify Namespace %d:\n", cfg.namespace_id);
 			show_nvme_id_ns(&ns, flags);
 		}
-	}
-	else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("identify namespace");
 
  close_fd:
@@ -2153,10 +2166,10 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
 			printf("NVME Identify NVM Set List %d:\n", cfg.nvmset_id);
 			show_nvme_id_nvmset(&nvmset);
 		}
-	}
-	else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		perror("identify nvm set list");
 
  close_fd:
@@ -2247,6 +2260,7 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
 	}
 	else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
 	} else
 		perror("virt-mgmt");
 
@@ -2374,6 +2388,7 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
 			printf("Device self-test started\n");
 	} else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
 	} else
 		perror("Device self-test");
 
@@ -2427,6 +2442,7 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
 		}
 	} else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
 	} else {
 		perror("self_test_log");
 	}
@@ -2556,6 +2572,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
 			d_raw(buf, cfg.data_len);
 	} else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
 	} else
 		perror("get-feature");
 
@@ -2654,6 +2671,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
 			break;
 		} else if (err != 0) {
 			show_nvme_status(err);
+			err = nvme_status_to_errno(err, false);
 			break;
 		}
 		fw_buf     += cfg.xfer;
@@ -2750,6 +2768,7 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
 			break;
 		default:
 			show_nvme_status(err);
+			err = nvme_status_to_errno(err, false);
 			break;
 		}
 	else {
@@ -2925,8 +2944,10 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
 			    cfg.no_dealloc, cfg.ovrpat);
 	if (ret < 0)
 		perror("sanitize");
-	else if (ret > 0)
+	else if (ret > 0) {
 		show_nvme_status(ret);
+		ret = nvme_status_to_errno(ret, false);
+	}
 
  close_fd:
 	close(fd);
@@ -3051,6 +3072,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
 		show_single_property(cfg.offset, value, cfg.human_readable);
 	} else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
 	}
 
  close_fd:
@@ -3106,6 +3128,7 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
 				nvme_register_to_string(cfg.offset), cfg.value);
 	} else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
 	}
 
  close_fd:
@@ -3201,6 +3224,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 			else {
 				fprintf(stderr, "identify failed\n");
 				show_nvme_status(err);
+				err = nvme_status_to_errno(err, false);
 			}
 			return err;
 		}
@@ -3257,9 +3281,10 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 				cfg.pil, cfg.ms, cfg.timeout);
 	if (err < 0)
 		perror("format");
-	else if (err != 0)
+	else if (err != 0) {
 		show_nvme_status(err);
-	else {
+		err = nvme_status_to_errno(err, false);
+	} else {
 		printf("Success formatting namespace:%x\n", cfg.namespace_id);
 		ioctl(fd, BLKRRPART);
 		if (cfg.reset && S_ISCHR(nvme_stat.st_mode))
@@ -3378,8 +3403,10 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
 			else
 				d(buf, cfg.data_len, 16, 1);
 		}
-	} else if (err > 0)
+	} else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
+	}
 
  close_ffd:
 	close(ffd);
@@ -3625,8 +3652,10 @@ static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *p
 				d_raw(buf, cfg.data_len);
 		}
 	}
-	else if (err > 0)
+	else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
+	}
 
 close_ffd:
 	close(ffd);
@@ -3682,9 +3711,10 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
 					cfg.block_count);
 	if (err < 0)
 		perror("write uncorrectable");
-	else if (err != 0)
+	else if (err != 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		printf("NVME Write Uncorrectable Success\n");
 
 close_fd:
@@ -3774,9 +3804,10 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
 			control, cfg.ref_tag, cfg.app_tag, cfg.app_tag_mask);
 	if (err < 0)
 		perror("write-zeroes");
-	else if (err != 0)
+	else if (err != 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		printf("NVME Write Zeroes Success\n");
 
  close_fd:
@@ -3874,9 +3905,10 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
 	err = nvme_dsm(fd, cfg.namespace_id, cfg.cdw11, dsm, nr);
 	if (err < 0)
 		perror("data-set management");
-	else if (err != 0)
+	else if (err != 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		printf("NVMe DSM: success\n");
 
  close_fd:
@@ -3922,9 +3954,10 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
 	err = nvme_flush(fd, cfg.namespace_id);
 	if (err < 0)
 		perror("flush");
-	else if (err != 0)
+	else if (err != 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		printf("NVMe Flush: success\n");
 close_fd:
 	close(fd);
@@ -3995,9 +4028,10 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
 				!!cfg.iekey, cfg.crkey, cfg.prkey);
 	if (err < 0)
 		perror("reservation acquire");
-	else if (err != 0)
+	else if (err != 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		printf("NVME Reservation Acquire success\n");
 
  close_fd:
@@ -4072,9 +4106,10 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
 				!!cfg.iekey, cfg.crkey, cfg.nrkey);
 	if (err < 0)
 		perror("reservation register");
-	else if (err != 0)
+	else if (err != 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		printf("NVME Reservation  success\n");
 
  close_fd:
@@ -4145,9 +4180,10 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
 				!!cfg.iekey, cfg.crkey);
 	if (err < 0)
 		perror("reservation release");
-	else if (err != 0)
+	else if (err != 0) {
 		show_nvme_status(err);
-	else
+		err = nvme_status_to_errno(err, false);
+	} else
 		printf("NVME Reservation Release success\n");
 
  close_fd:
@@ -4463,9 +4499,10 @@ static int submit_io(int opcode, char *command, const char *desc,
 			command, elapsed_utime(start_time, end_time));
 	if (err < 0)
 		perror("submit-io");
-	else if (err)
+	else if (err) {
 		show_nvme_status(err);
-	else {
+		err = nvme_status_to_errno(err, false);
+	} else {
 		if (!(opcode & 1) && write(dfd, (void *)buffer, cfg.data_size) < 0) {
 			fprintf(stderr, "write: %s: failed to write buffer to output file\n",
 					strerror(errno));
@@ -4720,8 +4757,10 @@ static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin
 			}
 		}
 	}
-	else if (err > 0)
+	else if (err > 0) {
 		show_nvme_status(err);
+		err = nvme_status_to_errno(err, false);
+	}
 free:
 	if (cfg.data_len)
 		free(buf);
@@ -4904,9 +4943,10 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
 				cfg.timeout, &result);
 	if (err < 0)
 		perror("passthru");
-	else if (err)
+	else if (err) {
 		show_nvme_status(err);
-	else  {
+		err = nvme_status_to_errno(err, false);
+	} else  {
 		if (!cfg.raw_binary) {
 			fprintf(stderr, "NVMe command result:%08x\n", result);
 			if (data && cfg.read && !err)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
