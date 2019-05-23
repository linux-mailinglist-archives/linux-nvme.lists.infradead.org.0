Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07A682805A
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:59:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UZAfF/pqhgywW5afOhRUE8H1qPO11+A8wXhxZcIdWvk=; b=s0KNQHSwKvEdm3
	WaNF79eATqfP3h/4hbetqnoYzpF7mT3d4dYlTkFnMPSDHncwlT3ezNmPFPBmTd0UV5oqcI6RG/kjX
	ts6wO+to5gybEqjY0/5QDhA2htr59Lp5jxg1szjwD6C8EgQU2Fjq6qoWmhHE1AAr+Cq7K0C2sQGNs
	tES+hF13KxRVitPW0ILUkxPb3Cwvz8RKHwoECz/jm064ZJBuOAMJpAVK0niOcmqIHgKS2v6v3tY8Q
	UJfTP0hH/tOOIcpfsvNmm68pWMWLo24TYF4Ubfm6czG5gkuyHN6k0kYXyJlf7ziPVvs++2A/KjePk
	VGN4fs2FkvInLve+rDEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpBU-0007pV-Fs; Thu, 23 May 2019 14:59:08 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpAr-00079E-Ep
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:58:46 +0000
Received: by mail-pg1-x541.google.com with SMTP id 33so310236pgv.9
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 07:58:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rAfklnOmfLLNYWsT85EaW1uD3iyuuI/KuMHIezZhnhc=;
 b=f8WRzAbvjka/xiTGO/FUtXnIwra+bddrncLhHDqyni2c77eWdKXZ5Qvp5FXvlfmpjA
 WNPERNF3To7+T62TNK4ktioYujowmqP5Z11PRvvbylulcYEZ2IwzYI8+6zJVo0aigOjO
 MnZ+kp+rHIFRii5JyoQr0iCOWZxXTg8wjQFrbS+MpvWbrfP6kqVW4T7QTBB1lyFrW1wc
 Tixw473Xam/XdPrwfx2eXLCWMfGOOHRXQiwRNWVh98q+XqWx2mA7aKBEIRlh2avV6wec
 H9McLcwKNoUMfR6d5fRSiU1ghy8ZyjSnaR1VZcn1dDRd99wuPV1hDU7tS0ZkeZoQdK1X
 IY1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rAfklnOmfLLNYWsT85EaW1uD3iyuuI/KuMHIezZhnhc=;
 b=ZXiMDIzbwOBYbJzcLYo1V9xBywLtekqljVKNmNTEYYE9SkAm9H9GPK3h8wybZdQtZ4
 S11EscC1HZXxQFYkHL3bssoJRUqbN/oFGpEfq/5wlJDtji5KIbT7T15ppkcoENdy6HAx
 P3rkwMmiC5Pys3L+FYLoQ3Qli7FIp+Ysx4BCXKHbOLDcvVCm986A3sh5R8mpUYbUqhVk
 f0ZFcXgY2A7MGog0CmCSaO7+Ya5vqsT0ZHUO67RixAT2tCCW3t9+Vi0MKoOx6Z3FIonG
 c382Z6YkEqEmOSzUPzz/ciqv1gonB5QJXQM6wmTi8pAg+unbvCeVywBtqEsYQLvvc4QC
 6W2g==
X-Gm-Message-State: APjAAAViMCRt4QaT9PaXE/XalOj28rpwdrMGb6zsboLpL3/0yFAzKCFD
 2GIO7cykxS9D5BbYTWGzq1oUuSrpdBY=
X-Google-Smtp-Source: APXvYqxSgAdBVU5QdR7NWRdcgHLFEPB6foDLIWpd+ACa8i2/nKa6zjgCnmY2JfOqH328Oh4fEFG96g==
X-Received: by 2002:a17:90a:378b:: with SMTP id
 v11mr1748001pjb.10.1558623507765; 
 Thu, 23 May 2019 07:58:27 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v4sm45946554pff.45.2019.05.23.07.58.25
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 07:58:27 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 5/6] nvme: Return errno mapped for nvme error status
Date: Thu, 23 May 2019 23:57:49 +0900
Message-Id: <20190523145750.27425-6-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_075829_819491_6BFC7CF8 
X-CRM114-Status: GOOD (  12.47  )
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

If ioctl module has returned a nvme error status, it will be returned
by being converted to a mapped errno value which has been provided by
previous commits.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme.c | 106 ++++++++++++++++++++++++++++-----------------------------
 1 file changed, 53 insertions(+), 53 deletions(-)

diff --git a/nvme.c b/nvme.c
index a8d382a..f3d003b 100644
--- a/nvme.c
+++ b/nvme.c
@@ -48,6 +48,7 @@
 #include "common.h"
 #include "nvme-print.h"
 #include "nvme-ioctl.h"
+#include "nvme-status.h"
 #include "nvme-lightnvm.h"
 #include "plugin.h"
 
@@ -223,7 +224,7 @@ static int get_smart_log(int argc, char **argv, struct command *cmd, struct plug
 	close(fd);
 
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_ana_log(int argc, char **argv, struct command *cmd,
@@ -298,7 +299,7 @@ static int get_ana_log(int argc, char **argv, struct command *cmd,
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -428,7 +429,7 @@ static int get_telemetry_log(int argc, char **argv, struct command *cmd, struct
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_endurance_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -485,7 +486,7 @@ static int get_endurance_log(int argc, char **argv, struct command *cmd, struct
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_effects_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -550,7 +551,7 @@ static int get_effects_log(int argc, char **argv, struct command *cmd, struct pl
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_error_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -637,7 +638,7 @@ static int get_error_log(int argc, char **argv, struct command *cmd, struct plug
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -694,7 +695,7 @@ static int get_fw_log(int argc, char **argv, struct command *cmd, struct plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -752,7 +753,7 @@ static int get_changed_ns_list_log(int argc, char **argv, struct command *cmd, s
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -854,7 +855,7 @@ static int get_log(int argc, char **argv, struct command *cmd, struct plugin *pl
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int sanitize_log(int argc, char **argv, struct command *command, struct plugin *plugin)
@@ -919,7 +920,7 @@ static int sanitize_log(int argc, char **argv, struct command *command, struct p
  close_fd:
 	close(fd);
  ret:
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -975,7 +976,7 @@ static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -1021,7 +1022,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_nsid(int fd)
@@ -1095,7 +1096,7 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, struct command *cmd)
@@ -1162,7 +1163,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int attach_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -1292,7 +1293,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 char *nvme_char_from_block(char *block)
@@ -1780,7 +1781,7 @@ static int list_subsys(int argc, char **argv, struct command *cmd,
 		free(subsysnqn);
 
  ret:
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 static int get_nvme_info(int fd, struct list_item *item, const char *node)
@@ -1913,7 +1914,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 		free(devices[i]);
 	free(devices);
  ret:
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
@@ -1989,7 +1990,7 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2072,7 +2073,7 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2161,7 +2162,7 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2221,7 +2222,7 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2250,7 +2251,7 @@ static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2317,8 +2318,7 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
 
 	close(fd);
  ret:
-	return err;
-
+	return nvme_status_to_errno(err, false);
 }
 
 static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2396,7 +2396,7 @@ static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struc
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int device_self_test(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2447,7 +2447,7 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
 
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int self_test_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2505,7 +2505,7 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2638,7 +2638,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int fw_download(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2745,7 +2745,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static char *nvme_fw_status_reset_type(__u32 status)
@@ -2840,7 +2840,7 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int subsystem_reset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2869,7 +2869,7 @@ static int subsystem_reset(int argc, char **argv, struct command *cmd, struct pl
 
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int reset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2893,7 +2893,7 @@ static int reset(int argc, char **argv, struct command *cmd, struct plugin *plug
 
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int ns_rescan(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2917,7 +2917,7 @@ static int ns_rescan(int argc, char **argv, struct command *cmd, struct plugin *
 
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3011,7 +3011,7 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
  close_fd:
 	close(fd);
  ret:
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 static int show_registers(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3086,7 +3086,7 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_property(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3140,7 +3140,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int set_property(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3197,7 +3197,7 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int format(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3360,7 +3360,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int set_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3482,7 +3482,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3581,7 +3581,7 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3735,7 +3735,7 @@ free:
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3792,7 +3792,7 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3886,7 +3886,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3989,7 +3989,7 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int flush(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4039,7 +4039,7 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4116,7 +4116,7 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_register(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4196,7 +4196,7 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_release(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4272,7 +4272,7 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_report(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4369,7 +4369,7 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int submit_io(int opcode, char *command, const char *desc,
@@ -4617,7 +4617,7 @@ static int submit_io(int opcode, char *command, const char *desc,
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int compare(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4726,7 +4726,7 @@ static int sec_recv(int argc, char **argv, struct command *cmd, struct plugin *p
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4859,7 +4859,7 @@ free:
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, struct command *cmd)
@@ -5062,7 +5062,7 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
  close_fd:
 	close(fd);
  ret:
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
