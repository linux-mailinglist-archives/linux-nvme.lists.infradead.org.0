Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B318255BE
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:37:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h2oTQkgQI0UX3NOyQhTyhPrXM4aXAms3jfEub/J09aI=; b=Ew1mn9xOlV3R/5
	ul969lMEHzVy5hBtHDF0R0t0ttLrHfRltMKnGz9wAJNewJzxq8tOpspqKZaoljKI+YWWSnR0QDO5r
	ANn9OFdA4U50F5edbfWQZVoFlQqWQ5cZb1qZRyOpa41dbEBmXa5/FMEAv9IFLa97us/x99x2F1k7e
	ChcnV1Ucx3OhamFbO9bvVC1NffogHelbyT/O8W22IoowSC0oDO+Pv9eIqyaOAH0WegnBNk/NQ9Ex+
	cT/SAZcutVtnX6nzCG09kKynSM5gOp/fO9boHJV9C4O0dMfpVH6RcvEJeKW+AL2ty6fDh7r8ehTT9
	jd7RJt7Ucx2IwjPZAK1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7lg-0001pC-HF; Tue, 21 May 2019 16:37:36 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7lM-0001Xw-Li
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:37:21 +0000
Received: by mail-pf1-x443.google.com with SMTP id a23so1241169pff.4
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:37:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=l4lV6JW/694KjW8HWe1mCBdck2fEBcFmz1cdFoW8JAY=;
 b=C8pbwIl2iFmX99ZxwtQjreE0PL/7DeVN4nSLuj3sIyMr0BAGzIFAPz5xPxvt134Idr
 jukoIk3QfJ3Msa6k7sh4GNETUzO/pp1N9M9QBNjaMRhrbJ6zoD6/CaliJcyapK/CMzny
 /gAkjfgHvCdjqwdnzJHTBQKHKfMXtNbdZJYZUL4LHuOJfDVZCpZupj0nmMUgRMB58Ngg
 +y8mXqp+KfFwYl9moj4GgpQgC+paeBlcIUNxaDiOYiRUXJORu3Yr8o++VBpWTmJetoS+
 6N7p5NPMu/uREaEnfjrRpkkomiEWVnnN9z+34HX0/pEYirdtHLFSFAtJBUTteY4D9D9k
 4t5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=l4lV6JW/694KjW8HWe1mCBdck2fEBcFmz1cdFoW8JAY=;
 b=Yy+XG4v8M5o+TQrd4Xo5PWzy9s2/ETdHJlcJpuhbE1y7rxHLa5FEDDyf298YjErDO1
 25J3CDZj58oHkMjFgwfelZknrFzeSLO3RxEoWqAqmf8pZmlvQ4nu0zs9+t4oFm1Vnr+O
 y7rwWNtUgQeMcNFDMsm1H7ePw16E7Wqr8Y/KGfR4pspQoX3MbhsAEjye/igEnuv9zjXP
 lxrCPqSeKU2LhDlUuvDFYBNdreQadmeviQXLJLerCx8JDsYCJBOZ0lS4rgloGxyWdYgv
 l91rSJfIZos6+kpgm4+b7896kUc3XH0I+3BcVf5xumguPk6EjfWO9gv/UPvekOcy+LXP
 r+NA==
X-Gm-Message-State: APjAAAX+ZK4WjG7T74EMwjpLkBrgnNMRfI5TSt0mB79c+S7pLOt+Efrn
 ivKAvTyL1caBP9RPHZQCbuDLPVXr5jc=
X-Google-Smtp-Source: APXvYqwKYum7jb9BSaHTjk5xHG7lNylBQCCOV/wxEXTDf513DTKH0LBr24eCbZzPKtWC0tuanUk8OQ==
X-Received: by 2002:a63:de53:: with SMTP id y19mr80201014pgi.166.1558456635539; 
 Tue, 21 May 2019 09:37:15 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r11sm24460731pgb.31.2019.05.21.09.37.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:37:14 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V4 2/3] nvme: Return errno mapped for nvme error status
Date: Wed, 22 May 2019 01:36:58 +0900
Message-Id: <20190521163659.24577-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521163659.24577-1-minwoo.im.dev@gmail.com>
References: <20190521163659.24577-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_093717_006525_3878410F 
X-CRM114-Status: GOOD (  12.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 nvme.c | 108 +++++++++++++++++++++++----------------------------------
 1 file changed, 43 insertions(+), 65 deletions(-)

diff --git a/nvme.c b/nvme.c
index 9819fcb..b81b8e1 100644
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
@@ -941,11 +940,9 @@ static int list_ctrl(int argc, char **argv, struct command *cmd, struct plugin *
 		perror("id controller list");
 
 	free(cntlist);
-
 close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -988,8 +985,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 		perror("id namespace list");
 
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_nsid(int fd)
@@ -1060,8 +1056,7 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, struct command *cmd)
@@ -1125,8 +1120,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int attach_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -1253,8 +1247,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 
 close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 char *nvme_char_from_block(char *block)
@@ -1867,8 +1860,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 	for (i = 0; i < n; i++)
 		free(devices[i]);
 	free(devices);
-
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
@@ -1941,8 +1933,7 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2022,8 +2013,7 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2109,8 +2099,7 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2167,8 +2156,7 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2256,8 +2244,7 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
 		perror("virt-mgmt");
 
 	close(fd);
-	return err;
-
+	return nvme_status_to_errno(err, false);
 }
 
 static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2381,7 +2368,7 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
 		perror("Device self-test");
 
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int self_test_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2436,8 +2423,7 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2567,8 +2553,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int fw_download(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2672,8 +2657,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
 	close(fw_fd);
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static char *nvme_fw_status_reset_type(__u32 status)
@@ -2765,8 +2749,7 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int subsystem_reset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2933,8 +2916,7 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
 
  close_fd:
 	close(fd);
-
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 static int show_registers(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3058,8 +3040,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int set_property(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3113,8 +3094,7 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int format(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3274,8 +3254,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
 
  close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int set_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3394,7 +3373,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
 		free(buf);
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3641,7 +3620,7 @@ free:
 		free(buf);
 close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3695,8 +3674,7 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
 
 close_fd:
 	close(fd);
-
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3787,7 +3765,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3887,7 +3865,7 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int flush(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3934,7 +3912,7 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
 		printf("NVMe Flush: success\n");
 close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4008,7 +3986,7 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_register(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4085,7 +4063,7 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_release(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4158,7 +4136,7 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
 
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_report(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4497,7 +4475,7 @@ static int submit_io(int opcode, char *command, const char *desc,
 	close(dfd);
  close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int compare(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4733,7 +4711,7 @@ free:
 		free(buf);
 close_fd:
 	close(fd);
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, struct command *cmd)
@@ -4933,7 +4911,7 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
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
