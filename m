Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C5091BB84
	for <lists+linux-nvme@lfdr.de>; Mon, 13 May 2019 19:04:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xSOpJZO0wewqli/SHnpEU5Ad6o/G3eAFkCr38bN/NVI=; b=Uo/zR1ob2wmGpw
	lyL5YpgoLQ2GjgaLL0oqNn4WVhw5KvIPPnpGj8IU6segwaHL0YOX7asDdprVW38aOmUE5davj4TnL
	SH7ieuGZln+ac73XlBL7/O0ZGDwVkvFs2uV5+R+WjNUFChEskXKUw/M9voGame7LwNFTASeQi6u4y
	wlqi5gPXcrRxqG/PSl5o8veNBqx7NfcbvNdXHJ4KEULuO5cVYJhom8CS58rZOlfFYSV+7Qh5rUwEj
	vOTmIHSQa7JHf6pf6hcyjG3U5oKXtmI7pFugsvnb90J6F7w2ko0Sr75GSWYN6N96vFXgc62NrUgB/
	7CVS0wvDbhyX6szciY3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQENX-0004Fe-8Q; Mon, 13 May 2019 17:04:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQEN7-0003qE-TV
 for linux-nvme@lists.infradead.org; Mon, 13 May 2019 17:04:30 +0000
Received: by mail-pl1-x641.google.com with SMTP id a5so6763647pls.12
 for <linux-nvme@lists.infradead.org>; Mon, 13 May 2019 10:04:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=29XrFgVqfNBYUdE2ySLnEmHU1z5yHXvgyOEGbSyUCKs=;
 b=WyGup0MsjjLv633cfGbDsYWKctYbrEpJZG8+x92azXylMF4al4TpDZyE2pJ6gvpysh
 TShHcUyYtXrRM5nGGjiydhbJCLPooUErxXdayAa5wqotu3tj03WANE7zqqvF/OK3f6t2
 XnNgB+JgtK5LbpfUp6pw6dQ6ibn0uWAZpRpn4HDLVATK8FyiorAQ9a8d/pU9RD+MZDd3
 7ROeQ2h0xBvrQd1j/wThheT+egGT58BsoPn5ZCUCMXXmT6O6t7fJAvvaTeaHIBonlaqP
 hgCdVDRrYA4vB9FNdrdB6fxMzaJpVkwkMtcZiEeBFomw3EHAgQrAvKxiN8HH2WM/dxsx
 xmjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=29XrFgVqfNBYUdE2ySLnEmHU1z5yHXvgyOEGbSyUCKs=;
 b=S2Q7H524DSho5sAp7xSaq10yfvBUepKk3lLCTud/CXcIL4MI0Qvyfrolp/T3iYTpjl
 8RK+g4O4l9vhJbBTlm8LssSxl2a4DmzrZ20Do/hDbmAJrjcx4XxTPx+wFlL2V2yc0XuB
 8vc4HWg9wRVk4DJPzkEfCejvMGL5ARgZhzU4DJWfdETEfgJ2nKTxQCpiXXUFv9RvKwZ6
 zL6cDHLVx0yXKsQ/wQSxBPEXs+scbGgY5j/YVSAHHxSycO1jcO3RlbzsDCZo8zSXHKCE
 yCRjl8IzdASANKvioVP9TeMxfN2hXQMUKUH99fCNteQBHSO1ba11jFeYX0Q98GKDFgru
 EfnA==
X-Gm-Message-State: APjAAAW9JHJSlV5TzoL1OI9+B4/qWMTOKFYItpax1H0tXhATfuMOUkhf
 gSVGLhIv3l2zvY8v8XJZpk3aDD1hQP8=
X-Google-Smtp-Source: APXvYqwpWN69lx4jfhILbvP0q+1BT0CGUnufRfzrs+CD6JkSXD/G2r2O4/RdPq9Ktfm0Bq5GI5LMWA==
X-Received: by 2002:a17:902:8642:: with SMTP id
 y2mr32725103plt.104.1557767056832; 
 Mon, 13 May 2019 10:04:16 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id f87sm21116559pff.56.2019.05.13.10.04.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 10:04:16 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V2 4/4] fabrics: Return errno mapped for fabrics error status
Date: Tue, 14 May 2019 02:03:42 +0900
Message-Id: <20190513170342.9497-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
References: <20190513170342.9497-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_100418_374907_2F450B81 
X-CRM114-Status: GOOD (  17.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
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
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
