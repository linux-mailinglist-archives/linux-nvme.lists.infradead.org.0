Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DA6971A94B
	for <lists+linux-nvme@lfdr.de>; Sat, 11 May 2019 21:38:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sTDM9Pdk+2sYcpvjcOA+7p916l2PV3f+iln+vWIXLl4=; b=Z8THgaOX56eVP+cgMx0M924iM4
	TSDylqGaNoedjWuajE/a7ClveBfshrLrwpGfzml6SetuZm1G6uOoFSlkI9ars67v3jDY/Lq6uXGXk
	EfqsvpfiQkfLsbQa3y2E5+uzohXTa3BauqXKZn+2pMK0ChwjBXYTOeTYNlAuD02EaTQ6cfLNIH32g
	hIkH59mm3gy4gzqA77/FKxplzJsvM9+2AmkI1Ft5K2pffvjhX4IHqrIyM4zvbe7wmLMVcesi8ynaS
	JeqtBUwCyxDvaB+MNWiq8vQSOvgsOpw8Djw9Ev/ACPLBUQmZaVNY7d84s+Op9WxKNdfaqVK8c/saB
	y39sayag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hPXoo-0002bm-Fp; Sat, 11 May 2019 19:38:02 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hPXoQ-0002J7-Jz
 for linux-nvme@lists.infradead.org; Sat, 11 May 2019 19:37:49 +0000
Received: by mail-pl1-x642.google.com with SMTP id bi2so4374405plb.13
 for <linux-nvme@lists.infradead.org>; Sat, 11 May 2019 12:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FQtqXNk8zMr2te4f5nTqznp1Yg/FXhEgALlfGwbSVpM=;
 b=uCa8DHwvjQD8PAJaVEkacVj//bkXgrl4eSB/maFQsn7ugBakhFMB9fhk8spZulbJD0
 aWj18CyJ2NAUrFT2edblFXGhoWwHqq1Vc9TJsgureHfmlsTaoJQwugwCmfW7K8PwsOAo
 0HP+kC6RIEjdsDQM41Plee21h+g7e7ynNDcoFKjWff8RTYk4Jlq/P/xtFPI0D2SJgnhL
 h4ZQ1Iud/YzusyHXHD+WdofUY083mh3bf6971zI+EXlla56/KGPcwbzpLrdZ+Rni8Gw7
 Nx5R+NotwNYhnz92qBZhk7faChGBgzxVYdGyhs0XquetXmdy+VZZTumisaBXNrsUUf0l
 57Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FQtqXNk8zMr2te4f5nTqznp1Yg/FXhEgALlfGwbSVpM=;
 b=fIwMYCmHIoQYnq4HEgsqTMIJsWZAG+AfI1yQySC8LW+d4Wl4hmseFhOI3Z/7trOscz
 26YVmAwAlEXDlHgl9LW4TqqBaB2nP2ieBaX3fUYOsD/6W/qC/OHilHpwmN1HLMVnm0km
 QsszHrCZLGbNVI6dqi3b1BChd8v9jcdVuYll/nmhUnJsbilyb+ykV24rZefwhoEXcgli
 xjLEreNwoyK8rO6iFt/BLkKMekKZT2/6fcDhSX53OoLa/TlBNeR2oTwCUt3sml2px/oX
 nVInPiDYkMuipBg3ikFEW5m3HMTKnuI0Lfi4rcs25q1ruq3saTeu7Vaa0wI6vqRToBuL
 3cgg==
X-Gm-Message-State: APjAAAV7NFE1RJ0wFoW99WcM1h8EuBHWEL3lSmhLbAI7Pj+AZWZqJNdA
 3drn7dsY6GFs9B+bSV0OwzkSDLPAee4=
X-Google-Smtp-Source: APXvYqyfTLSVTNfxHC6R0GBwYcD2tO5TD8V86BcFFCItfdJScOIFTNSdgioqcbgscZQR2TY6aayR9g==
X-Received: by 2002:a17:902:7205:: with SMTP id
 ba5mr22103152plb.285.1557603457657; 
 Sat, 11 May 2019 12:37:37 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a9sm10878883pgw.72.2019.05.11.12.37.35
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sat, 11 May 2019 12:37:36 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH RFC 4/4] fabrics: Return errno mapped for fabrics error status
Date: Sun, 12 May 2019 04:37:13 +0900
Message-Id: <20190511193713.29516-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
References: <20190511193713.29516-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190511_123738_880998_186F8E7F 
X-CRM114-Status: GOOD (  17.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

If discover has been failed due to a nvme status, it will be returned to
main() with mapped value for fabrics get log page command.

Now connect command related status cannot be added in this patch because
kernel is not currently returning the nvme status, it's instead
returning -EIO if fails.  errno for connect command can be added once
kernel is ready to return the proper value for nvme status.

Cc: Keith Busch <keith.busch@intel.com>
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 24 ++++++++++++++++++++----
 1 file changed, 20 insertions(+), 4 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 511de06..ad61b07 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -35,6 +35,7 @@
 
 #include "parser.h"
 #include "nvme-ioctl.h"
+#include "nvme-status.h"
 #include "fabrics.h"
 
 #include "nvme.h"
@@ -295,7 +296,7 @@ enum {
 };
 
 static int nvmf_get_log_page_discovery(const char *dev_path,
-		struct nvmf_disc_rsp_page_hdr **logp, int *numrec)
+		struct nvmf_disc_rsp_page_hdr **logp, int *numrec, int *status)
 {
 	struct nvmf_disc_rsp_page_hdr *log;
 	unsigned int hdr_size;
@@ -328,6 +329,7 @@ static int nvmf_get_log_page_discovery(const char *dev_path,
 
 	error = nvme_discovery_log(fd, log, hdr_size);
 	if (error) {
+		*status = (error > 0) ? nvme_status_to_errno(error, true) : error;
 		error = DISC_GET_NUMRECS;
 		goto out_free_log;
 	}
@@ -366,6 +368,8 @@ static int nvmf_get_log_page_discovery(const char *dev_path,
 		 */
 		error = nvme_discovery_log(fd, log, log_size);
 		if (error) {
+			*status = (error > 0) ?
+				nvme_status_to_errno(error, true) : error;
 			error = DISC_GET_LOG;
 			goto out_free_log;
 		}
@@ -379,6 +383,8 @@ static int nvmf_get_log_page_discovery(const char *dev_path,
 		genctr = le64_to_cpu(log->genctr);
 		error = nvme_discovery_log(fd, log, hdr_size);
 		if (error) {
+			*status = (error > 0) ?
+				nvme_status_to_errno(error, true) : error;
 			error = DISC_GET_LOG;
 			goto out_free_log;
 		}
@@ -849,6 +855,7 @@ static int do_discover(char *argstr, bool connect)
 	struct nvmf_disc_rsp_page_hdr *log = NULL;
 	char *dev_name;
 	int instance, numrec = 0, ret, err;
+	int status = 0;
 
 	instance = add_ctrl(argstr);
 	if (instance < 0)
@@ -856,7 +863,7 @@ static int do_discover(char *argstr, bool connect)
 
 	if (asprintf(&dev_name, "/dev/nvme%d", instance) < 0)
 		return -errno;
-	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec);
+	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec, &status);
 	free(dev_name);
 	err = remove_ctrl(instance);
 	if (err)
@@ -874,9 +881,11 @@ static int do_discover(char *argstr, bool connect)
 	case DISC_GET_NUMRECS:
 		fprintf(stderr,
 			"Get number of discovery log entries failed.\n");
+		ret = status;
 		break;
 	case DISC_GET_LOG:
 		fprintf(stderr, "Get discovery log entries failed.\n");
+		ret = status;
 		break;
 	case DISC_NO_LOG:
 		fprintf(stdout, "No discovery log entries to fetch.\n");
@@ -885,6 +894,7 @@ static int do_discover(char *argstr, bool connect)
 	case DISC_NOT_EQUAL:
 		fprintf(stderr,
 		"Numrec values of last two get discovery log page not equal\n");
+		ret = DISC_OK;
 		break;
 	default:
 		fprintf(stderr, "Get discovery log page failed: %d\n", ret);
@@ -989,15 +999,21 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 	cfg.nqn = NVME_DISC_SUBSYS_NAME;
 
 	if (!cfg.transport && !cfg.traddr) {
-		return discover_from_conf_file(desc, argstr,
+		ret = discover_from_conf_file(desc, argstr,
 				command_line_options, connect);
+		if (ret > 0)
+			ret = nvme_status_to_errno(ret, true);
 	} else {
 		ret = build_options(argstr, BUF_SIZE);
 		if (ret)
 			return ret;
 
-		return do_discover(argstr, connect);
+		ret = do_discover(argstr, connect);
+		if (ret > 0)
+			ret = nvme_status_to_errno(ret, true);
 	}
+
+	return ret;
 }
 
 int connect(const char *desc, int argc, char **argv)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
