Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 057852285F
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 20:40:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OCtc2UznwxJ2H8cLuqns3FG2p9h2FLRtmInrFTjj0/k=; b=M9THFZ9BLyNCzk
	8npIZBEFH5dqTpmAYa27pfzHnRm/WXDdOvJgim2ohF2T1eQhQ8Nj4UW7MkdhfYwH/0h8sBm3paRDz
	3lKq1eowTK3lN95XGb4KcONvRW03girdQJ3uBOLvK5aY5tAD4q5mZ/1jFl2H2XJwP9xaDG2YUWeKg
	U0xGDYQufetkSDuu1W3D2mfXL2dZPVQUWjVMOoxAFVzo7ElgfmMPQ5vITublAgY+/g8fBUEBok2Fc
	iswRYali4tgM6EgBBhugLPbLz3rNwrCwWFU9kVUdWghvHz851e3cKZrbgApz0ie3yXSNkCoz8/SRi
	Je86A40tKsbF/xUTpVfg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQiw-0002E9-T6; Sun, 19 May 2019 18:39:54 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQiY-0001pq-45
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 18:39:40 +0000
Received: by mail-pg1-x542.google.com with SMTP id n27so3072342pgm.4
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 11:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cYeg/vMJNrocag8MQhSBkimV0pL7tUvGe3YHZxBWI1w=;
 b=XFbex74RJ7pT7x1z+Zsxu47yFH0yU5n3ZXkfwn1ZWau3arLQ1IoCos7UgeLcyqRWxk
 QDjW9zXyxB5oIFW0ABadU8WPZtmbx2ARKePqNEgG0R/cOQIn+hyLNeyxwnfa244ZOEag
 3Ue/DXRTVLWmVklI6IC+GY+OQ0EYS160q5irmRV9YQ4m84wTkbKjxdtCS7G4yKTCtB/t
 q4PR0w668K0Pxnk3iJZfnxDCDyXJFjhqT11hzQe+yIvNQoOfpMe4V19Rom0XDuS8xaLU
 wrnl2ZBIR4SWxU0133U5Iz1eVVxyawc3Rg4GLhTpZDAASS6mYbJ3S+ai9DHnTh2/qm31
 lrMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cYeg/vMJNrocag8MQhSBkimV0pL7tUvGe3YHZxBWI1w=;
 b=trxHFFT060YZnlw+lg0Os52xcgVJUL6YqQpkKj3yZDZN0HCZh9f0ykch69dSfgioEn
 DSk0lEoc+O2EMDy9NGt5AH3M/7nqWz4XpFG3a3RCVPK+jqcvKf1QkZu4py7rFGQtJ4hB
 VBsrbOQgQrodR/fQmlamJCMz+fQ2JCPdmwlkqjffeUEazWYdOhXFa+pytbUBNbB1n+sQ
 bjpam0r2fuUo0rUJNZvnYykyZvrO4FJGfroOsKzjj4xgF0S7eJmXL66vBJlqJYOr323p
 MPTz3R3Odqc5I/3tL92wKKdYUdkWsA+OoDJRIuUKeWTZU2scejncKz9tC/g7HdLp86aV
 eBPg==
X-Gm-Message-State: APjAAAVifv+eHO7Pq0/fPzYQhLZZQBiFEPpZ+vg62MSdo/qhJzQgwnZm
 YM80CiNajCN/s7szuWTyzLziyGkrzbY=
X-Google-Smtp-Source: APXvYqwiJ0+XQlEWYt4j6Bmpw8SS/JhUPTio/uLigzGhTRQi9zTgNJXHBdxvLicDeOZtFfXihVKBLw==
X-Received: by 2002:a63:fd0c:: with SMTP id d12mr71133353pgh.391.1558291169034; 
 Sun, 19 May 2019 11:39:29 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 1sm16513360pfn.165.2019.05.19.11.39.26
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 11:39:28 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 3/4] nvme: Return errno mapped for nvme error status
Date: Mon, 20 May 2019 03:39:12 +0900
Message-Id: <20190519183913.3493-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190519183913.3493-1-minwoo.im.dev@gmail.com>
References: <20190519183913.3493-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_113930_875282_778C217D 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 nvme.c | 112 +++++++++++++++++++++++----------------------------------
 1 file changed, 45 insertions(+), 67 deletions(-)

diff --git a/nvme.c b/nvme.c
index e0f7552..8e153b8 100644
--- a/nvme.c
+++ b/nvme.c
@@ -48,6 +48,7 @@
 #include "common.h"
 #include "nvme-print.h"
 #include "nvme-ioctl.h"
+#include "nvme-status.h"
 #include "nvme-lightnvm.h"
 #include "plugin.h"
 
@@ -220,7 +221,7 @@ static int get_smart_log(int argc, char **argv, struct command *cmd, struct plug
  close_fd:
 	close(fd);
 
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_ana_log(int argc, char **argv, struct command *cmd,
@@ -292,7 +293,7 @@ static int get_ana_log(int argc, char **argv, struct command *cmd,
 	free(ana_log);
 close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -419,7 +420,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
 	free(page_log);
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_endurance_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -473,7 +474,7 @@ static int get_endurance_log(int argc, char **argv, struct command *cmd, struct
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_effects_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -535,7 +536,7 @@ static int get_effects_log(int argc, char **argv, struct command *cmd, struct pl
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_error_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -619,7 +620,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -673,7 +674,7 @@ static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -728,8 +729,7 @@ static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, s
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -828,7 +828,7 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int sanitize_log(int argc, char **argv, struct command *command, struct plugin *plugin)
@@ -890,8 +890,7 @@ static int sanitize_log(int argc, char **argv, struct command *command, struct p
 
  close_fd:
 	close(fd);
-
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -940,10 +939,8 @@ static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *
 		perror("id controller list");
 
 	free(cntlist);
-
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -986,8 +983,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 		perror("id namespace list");
 
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_nsid(int fd)
@@ -1058,8 +1054,7 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, struct command *cmd)
@@ -1123,8 +1118,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int attach_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -1216,7 +1210,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 				fprintf(stderr, "identify failed\n");
 				show_nvme_status(err);
 			}
-			return err;
+			return nvme_status_to_errno(err, false);
 		}
 		for (i = 0; i < 16; ++i) {
 			if ((1 << ns.lbaf[i].ds) == cfg.bs && ns.lbaf[i].ms == 0) {
@@ -1246,8 +1240,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 		perror("create namespace");
 
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 char *nvme_char_from_block(char *block)
@@ -1860,8 +1853,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 	for (i = 0; i < n; i++)
 		free(devices[i]);
 	free(devices);
-
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
@@ -1934,8 +1926,7 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2015,8 +2006,7 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2102,8 +2092,7 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2160,8 +2149,7 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2249,8 +2237,7 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
 		perror("virt-mgmt");
 
 	close(fd);
-	return err;
-
+	return nvme_status_to_errno(err, false);
 }
 
 static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2374,7 +2361,7 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
 		perror("Device self-test");
 
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int self_test_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2429,8 +2416,7 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2560,8 +2546,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int fw_download(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2665,8 +2650,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
 	close(fw_fd);
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static char *nvme_fw_status_reset_type(__u32 status)
@@ -2758,8 +2742,7 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int subsystem_reset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2926,8 +2909,7 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
 
  close_fd:
 	close(fd);
-
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 static int show_registers(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3051,8 +3033,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int set_property(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3106,8 +3087,7 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int format(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3198,7 +3178,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 				fprintf(stderr, "identify failed\n");
 				show_nvme_status(err);
 			}
-			return err;
+			return nvme_status_to_errno(err, false);
 		}
 		prev_lbaf = ns.flbas & 0xf;
 
@@ -3264,8 +3244,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int set_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3384,7 +3363,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
 		free(buf);
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3631,7 +3610,7 @@ free:
 		free(buf);
 close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3685,8 +3664,7 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
 
 close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3777,7 +3755,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3877,7 +3855,7 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int flush(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3924,7 +3902,7 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
 		printf("NVMe Flush: success\n");
 close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3998,7 +3976,7 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_register(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4075,7 +4053,7 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_release(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4148,7 +4126,7 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_report(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4487,7 +4465,7 @@ static int submit_io(int opcode, char *command, const char *desc,
 	close(dfd);
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int compare(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4723,7 +4701,7 @@ free:
 		free(buf);
 close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, struct command *cmd)
@@ -4923,7 +4901,7 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
 		close(wfd);
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int io_passthru(int argc, char **argv, struct command *cmd, struct plugin *plugin)
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
