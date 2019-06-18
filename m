Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 897404A205
	for <lists+linux-nvme@lfdr.de>; Tue, 18 Jun 2019 15:23:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tZ2+3ir9ZVFPAqxWgC7vW2+0KLj9CpaSNstfQKXPXBQ=; b=cMzxL5ypPi8v3X
	raQEP1o9qz5t4iwe1FQSsEK99Z4DCzcx8Ul6kZ5aQCiPb26kU6/ksvRy2gt6okiGqmAQRqTv7rk2q
	pD8aG7YvbZYYPpMFnN+1qHBmv4xHGR9VOp9SuDVFqe8IjGbAA89RCbHqHK9bBUW3yZSsYY7PJ/aHp
	OSEWebUTd+SoPvmBeg69UHds5kSOtAJJjYXfLKgwGO/oP43MdabDyRg5dNPf5QcthOaJ9Mhqmdt6l
	NSWk01GIYqGh2t2l9kUoQVbYeBc1qUQ2Xo9HjvUP7mj4MuGSfjxg+v1WecHDf8xcRWhYk/WJzgOy3
	CeTGR3Q5pyff72ls88Xg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdE4e-0006Pu-JN; Tue, 18 Jun 2019 13:22:57 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdDuv-0006Zy-Tb
 for linux-nvme@lists.infradead.org; Tue, 18 Jun 2019 13:13:09 +0000
Received: by mail-pl1-x644.google.com with SMTP id f98so124946plb.5
 for <linux-nvme@lists.infradead.org>; Tue, 18 Jun 2019 06:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9pZy/dWIHCqcAg2InNIiIVTVo8lRywWlXoHVyV1k5oA=;
 b=Plv7zziMzid8d0hfVFDFY1cj5/GoGPHyDxKg13FWo/rzcuTSncTe0Elxczy/rlc6qR
 kZM8VReGLIIFLRja/qDwfyhwQtLwbP+mz3b8CNLzJSW3lX1RLhZbwvOaExedx5TzNAk7
 MUDDUuRWV9aVTua/t65Q/g8AgMag9K9ysMDI2XUNmrllqP5vUluUg30XF+Ytp6ydOQkM
 gKV6//gNPSVlHrNXr9tnkQGZAaa4EFMgsPzpSOWXBbGNCfUJ2zTQk9uwmnuD+VgrA+Ot
 TJOn3FnEHWUWlwmwqL5nzsYmyKtDU/Zc5BfygRm0QbrTZClWm51EwiXbQYv8Rp8ZzOlC
 GI3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9pZy/dWIHCqcAg2InNIiIVTVo8lRywWlXoHVyV1k5oA=;
 b=eqR0x9s7m9jaR9enoG7ywBlhbtUhtqW6FdNobVtWUEhWkHe4IacANXbTdfCmeTShPV
 nrK+HV6JDm9bLlP+wvykWz4vBKGmhn4pTt/ggWUgYh1frNJS2CLJGHaM+1ciy4yoJJKK
 bPX8GsTD/P/kGRra0cHLiwCgqKyL8d70Axk3RvSSH0g1vDkjKOcYZ69sQJ5MhFyrE9jZ
 +6E+KX29k3zKZ04xSaRLxZQ0Y3RBoce3uSd+qAFv20l1/C3CZHBuYBsNPgUWhY54dBb3
 9OGG7X3weOK0Pz4FBwcirlhdDFm40wPDFi/SqrlqQtZXveYCKlxwuisjl9UDDxd/UnSo
 UCQA==
X-Gm-Message-State: APjAAAUQKQWrQCqUissFlShLMwBFHV6o7tIj9ptOoits3hEwD7U1+UTV
 2VNtmT5vvhUw7SVSNLuYcgY=
X-Google-Smtp-Source: APXvYqzeSoLWAsQe+ouDHlK74UhTrA4UHJFSgCn2Ppt3LOozUsAISjXVUSUOi9UlUBnZXRub1Mswdg==
X-Received: by 2002:a17:902:522:: with SMTP id
 31mr107637317plf.296.1560863573186; 
 Tue, 18 Jun 2019 06:12:53 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id c142sm21663733pfb.171.2019.06.18.06.12.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 18 Jun 2019 06:12:52 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: Keith Busch <kbusch@kernel.org>
Subject: [PATCH V7 7/7] fabrics: Return errno mapped for fabrics error status
Date: Tue, 18 Jun 2019 22:12:16 +0900
Message-Id: <20190618131216.3661-8-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
References: <20190618131216.3661-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

If discover has been failed due to a nvme status, it will be returned to
main() with mapped value for fabrics get log page command.

Now connect command related status cannot be added in this patch because
kernel is not currently returning the nvme status, it's instead
returning -EIO if fails.  errno for connect command can be added once
kernel is ready to return the proper value for nvme status.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 25 +++++++++++++++++--------
 1 file changed, 17 insertions(+), 8 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 8470d97..c628152 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -35,6 +35,7 @@
 
 #include "parser.h"
 #include "nvme-ioctl.h"
+#include "nvme-status.h"
 #include "fabrics.h"
 
 #include "nvme.h"
@@ -296,7 +297,7 @@ enum {
 };
 
 static int nvmf_get_log_page_discovery(const char *dev_path,
-		struct nvmf_disc_rsp_page_hdr **logp, int *numrec)
+		struct nvmf_disc_rsp_page_hdr **logp, int *numrec, int *status)
 {
 	struct nvmf_disc_rsp_page_hdr *log;
 	unsigned int hdr_size;
@@ -411,6 +412,7 @@ out_free_log:
 out_close:
 	close(fd);
 out:
+	*status = nvme_status_to_errno(error, true);
 	return error;
 }
 
@@ -860,6 +862,7 @@ static int do_discover(char *argstr, bool connect)
 	struct nvmf_disc_rsp_page_hdr *log = NULL;
 	char *dev_name;
 	int instance, numrec = 0, ret, err;
+	int status = 0;
 
 	instance = add_ctrl(argstr);
 	if (instance < 0)
@@ -867,7 +870,7 @@ static int do_discover(char *argstr, bool connect)
 
 	if (asprintf(&dev_name, "/dev/nvme%d", instance) < 0)
 		return -errno;
-	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec);
+	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec, &status);
 	free(dev_name);
 	err = remove_ctrl(instance);
 	if (err)
@@ -885,9 +888,11 @@ static int do_discover(char *argstr, bool connect)
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
@@ -900,6 +905,7 @@ static int do_discover(char *argstr, bool connect)
 	case DISC_NOT_EQUAL:
 		fprintf(stderr,
 		"Numrec values of last two get discovery log page not equal\n");
+		ret = -EBADSLT;
 		break;
 	default:
 		fprintf(stderr, "Get discovery log page failed: %d\n", ret);
@@ -1015,7 +1021,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 	}
 
 out:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
 
 int connect(const char *desc, int argc, char **argv)
@@ -1062,8 +1068,9 @@ int connect(const char *desc, int argc, char **argv)
 	instance = add_ctrl(argstr);
 	if (instance < 0)
 		ret = instance;
+
 out:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
 
 static int scan_sys_nvme_filter(const struct dirent *d)
@@ -1196,7 +1203,7 @@ int disconnect(const char *desc, int argc, char **argv)
 	}
 
 out:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
 
 int disconnect_all(const char *desc, int argc, char **argv)
@@ -1223,10 +1230,12 @@ int disconnect_all(const char *desc, int argc, char **argv)
 
 			ret = disconnect_by_device(ctrl->name);
 			if (ret)
-				goto out;
+				goto free;
 		}
 	}
-out:
+
+free:
 	free_subsys_list(slist, subcnt);
-	return ret;
+out:
+	return nvme_status_to_errno(ret, true);
 }
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
