Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CFCD4A207
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 15:24:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z60mkvelW003+qzzwHpDG7BIVQ0ORj67wgeq/KmxY6A=; b=NA0wwGOlY0flyH
	xLM7EdMLjdXfOo53kuJIL37sDuaj++0xncOZa75eAtOEKdepkXkSGeUqJxF2W5kSifYO/6B7H4+TN
	GZUMo3xVB4zfmzndmvuSsV1cha0iH2imJeaxBuhuoa75PmtiUcLlRg7MxdOmpcPSCvE9ZIJWSDc5q
	3tojkfXNaP1JNasK63EjeC3kTwcEiLWq0Fn8uB3hZbxbhg1NVAkT77++vWHGnxhG4cBgLgOZgWNK6
	EY2ZQCIdzeiv5b/LjoQ/gaWXgEZhWla+Y2zOuv3YsDv/tz2dm+/M8cwaKgGP1ziLHuFILY8m0tgXD
	snUsTFHbTSoMQyo9Bm6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE5V-0006cL-QY; Tue, 18 Jun 2019 13:23:50 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDuq-0006Z9-O0
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 13:13:10 +0000
Received: by mail-pg1-x544.google.com with SMTP id n2so7668578pgp.11
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 06:12:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Cv5poHagb65CHyN7N+rbBWxQMCSC8kq0uth1J0vfdZc=;
 b=jM/00ou3OZULWTDiNoiDjXekTkSCBjG1O93rqzDAvR37TwJuw/tBdJCzN19rTnKUvU
 4Nq4lWITMdOWp0c7UtDOYTW5DcAlTenak5/0xf5CqQ2y1GSQMMf8YhN7xJGGrY498lUP
 95GNGE7B/D35vSnKZemHqkoPWw1ZNxJ1HeouCV+WK7053Ew3doCpVssW20qrLnuD2yV9
 U4Wo9+hYhV08MmKT6Dr3s8JAEeTdMDpGwglWx3q6qNal/s1uy0Wm3fqKYq2csbxuLY96
 jWJIMDxw3PAiE3qEd4COZc17rpAVgkrypdUo73e8xBr6ilCOuG1dbyH/DYodZx7YsyL6
 mhrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Cv5poHagb65CHyN7N+rbBWxQMCSC8kq0uth1J0vfdZc=;
 b=g05IuKY6CvA6I3mZvunK0zt+JsjTUYTrSqKQzo58L7pvkfSi0WUHlafbDhhbiq1oA4
 PG9roSOaaCd5jXqudrSkWlmc5SzLQP5zreFYK6fciuFVRYWy8Bnea54cPJGDXIByGJSO
 1eTarOAi83nEkk+m/tgnURaHVIO4FNA3skavqNLMocqYnH4cGwJlZdDPpbwA4CDYwm/T
 YTyOczR7pGKeu8+oJD4cPnDkQDl06Ma2SkrNup8gGSjYu9SVpJQDJwsarFxyIFgO/Cl8
 7Gs2wksXkKs5pMlwtnHyBk1BXEg78KYUqBZ/iG+u60nKDZ4lKtTNlYFaq9irC27aTYo2
 w3dA==
X-Gm-Message-State: APjAAAVE/HQTbMPyeBZfAOAIQ+TOvxE/aPh1vM0P5BOg7X0i4WIKE7BW
 SLYvC3OrjOq47i38Z4YE4gE=
X-Google-Smtp-Source: APXvYqwP6tDi0wTo8rAcRhPPGndMW97RxutaIxY8egFejS2S5KQEsdNFTi9kLMreClgRiqGt4LBsLQ==
X-Received: by 2002:a62:e518:: with SMTP id n24mr4637618pff.102.1560863567098; 
 Tue, 18 Jun 2019 06:12:47 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c142sm21663733pfb.171.2019.06.18.06.12.44
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 06:12:46 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <kbusch@kernel.org>
Subject: [PATCH V7 5/7] nvme: Return errno mapped for nvme error status
Date: Tue, 18 Jun 2019 22:12:14 +0900
Message-Id: <20190618131216.3661-6-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
References: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_061251_285659_0F2CF9C6 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
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
Reviewed-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 nvme.c | 106 ++++++++++++++++++++++++++++-----------------------------
 1 file changed, 53 insertions(+), 53 deletions(-)

diff --git a/nvme.c b/nvme.c
index d337b4a..9a00b26 100644
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
@@ -1029,7 +1030,7 @@ static int list_ns(int argc, char **argv, struct command *cmd, struct plugin *pl
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_nsid(int fd)
@@ -1103,7 +1104,7 @@ static int delete_ns(int argc, char **argv, struct command *cmd, struct plugin *
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, struct command *cmd)
@@ -1170,7 +1171,7 @@ static int nvme_attach_ns(int argc, char **argv, int attach, const char *desc, s
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int attach_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -1300,7 +1301,7 @@ static int create_ns(int argc, char **argv, struct command *cmd, struct plugin *
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 char *nvme_char_from_block(char *block)
@@ -1788,7 +1789,7 @@ free:
 		free(subsysnqn);
 
 ret:
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 static int get_nvme_info(int fd, struct list_item *item, const char *node)
@@ -1921,7 +1922,7 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 		free(devices[i]);
 	free(devices);
  ret:
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
@@ -1997,7 +1998,7 @@ int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin,
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2080,7 +2081,7 @@ static int ns_descs(int argc, char **argv, struct command *cmd, struct plugin *p
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2169,7 +2170,7 @@ static int id_ns(int argc, char **argv, struct command *cmd, struct plugin *plug
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2229,7 +2230,7 @@ static int id_nvmset(int argc, char **argv, struct command *cmd, struct plugin *
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2258,7 +2259,7 @@ static int get_ns_id(int argc, char **argv, struct command *cmd, struct plugin *
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2325,8 +2326,7 @@ static int virtual_mgmt(int argc, char **argv, struct command *cmd, struct plugi
 
 	close(fd);
 ret:
-	return err;
-
+	return nvme_status_to_errno(err, false);
 }
 
 static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2404,7 +2404,7 @@ static int list_secondary_ctrl(int argc, char **argv, struct command *cmd, struc
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int device_self_test(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2455,7 +2455,7 @@ static int device_self_test(int argc, char **argv, struct command *cmd, struct p
 
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int self_test_log(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2513,7 +2513,7 @@ static int self_test_log(int argc, char **argv, struct command *cmd, struct plug
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2646,7 +2646,7 @@ static int get_feature(int argc, char **argv, struct command *cmd, struct plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int fw_download(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2753,7 +2753,7 @@ static int fw_download(int argc, char **argv, struct command *cmd, struct plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static char *nvme_fw_status_reset_type(__u32 status)
@@ -2848,7 +2848,7 @@ static int fw_commit(int argc, char **argv, struct command *cmd, struct plugin *
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int subsystem_reset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2877,7 +2877,7 @@ static int subsystem_reset(int argc, char **argv, struct command *cmd, struct pl
 
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int reset(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2901,7 +2901,7 @@ static int reset(int argc, char **argv, struct command *cmd, struct plugin *plug
 
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int ns_rescan(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -2925,7 +2925,7 @@ static int ns_rescan(int argc, char **argv, struct command *cmd, struct plugin *
 
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3019,7 +3019,7 @@ static int sanitize(int argc, char **argv, struct command *cmd, struct plugin *p
  close_fd:
 	close(fd);
  ret:
-	return ret;
+	return nvme_status_to_errno(ret, false);
 }
 
 static int show_registers(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3094,7 +3094,7 @@ static int show_registers(int argc, char **argv, struct command *cmd, struct plu
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int get_property(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3148,7 +3148,7 @@ static int get_property(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int set_property(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3205,7 +3205,7 @@ static int set_property(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int format(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3368,7 +3368,7 @@ static int format(int argc, char **argv, struct command *cmd, struct plugin *plu
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int set_feature(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3490,7 +3490,7 @@ static int set_feature(int argc, char **argv, struct command *cmd, struct plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3589,7 +3589,7 @@ static int sec_send(int argc, char **argv, struct command *cmd, struct plugin *p
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int dir_send(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3743,7 +3743,7 @@ free:
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3800,7 +3800,7 @@ static int write_uncor(int argc, char **argv, struct command *cmd, struct plugin
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3894,7 +3894,7 @@ static int write_zeroes(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -3997,7 +3997,7 @@ static int dsm(int argc, char **argv, struct command *cmd, struct plugin *plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int flush(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4047,7 +4047,7 @@ static int flush(int argc, char **argv, struct command *cmd, struct plugin *plug
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4124,7 +4124,7 @@ static int resv_acquire(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_register(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4204,7 +4204,7 @@ static int resv_register(int argc, char **argv, struct command *cmd, struct plug
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_release(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4280,7 +4280,7 @@ static int resv_release(int argc, char **argv, struct command *cmd, struct plugi
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int resv_report(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4377,7 +4377,7 @@ static int resv_report(int argc, char **argv, struct command *cmd, struct plugin
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int submit_io(int opcode, char *command, const char *desc,
@@ -4625,7 +4625,7 @@ static int submit_io(int opcode, char *command, const char *desc,
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int compare(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4734,7 +4734,7 @@ static int sec_recv(int argc, char **argv, struct command *cmd, struct plugin *p
  close_fd:
 	close(fd);
  ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int dir_receive(int argc, char **argv, struct command *cmd, struct plugin *plugin)
@@ -4867,7 +4867,7 @@ free:
 close_fd:
 	close(fd);
 ret:
-	return err;
+	return nvme_status_to_errno(err, false);
 }
 
 static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, struct command *cmd)
@@ -5070,7 +5070,7 @@ static int passthru(int argc, char **argv, int ioctl_cmd, const char *desc, stru
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
