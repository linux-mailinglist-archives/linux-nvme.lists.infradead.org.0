Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C1FE255BF
	for <lists+linux-nvme@lfdr.de>; Tue, 21 May 2019 18:37:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sO6Fdf54NkKH9mE5GekVnSKqwZlPPtux3Sphp3tJKKs=; b=Ni0JYnGFDG+2oe
	0DOgKlzFp6ZKtYYlK78odTDn5ymn0u4XEkA486Ng6J/pY0KOH8j0CI8a/e7gEFCbvZI4AlIbEB2SN
	wM0YjY5tW/G6GFnraBWl1y9P0bXfeF/HzrQsNvcJjyVysFXQXBDQ0wnj00HXOhp9VYJRr/Kd/9MXw
	WUWHRAbphLpETRUAhe8ymkLUzLyr1IInQwO8vynbUFwovXastN1P69QIy3p1Sr231cQAoqp6oU4xh
	pAt+ZKZt52mQTETdo8iN8nRPqZ2AJeoevGG4T6Oq/qphbbUnVEARh5qFhNA9aZwDkImd3VtJU7eZ9
	0rHOfTC7NjgChNQG2dnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT7ln-0001zj-Ke; Tue, 21 May 2019 16:37:43 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT7lP-0001bq-0L
 for linux-nvme@lists.infradead.org; Tue, 21 May 2019 16:37:24 +0000
Received: by mail-pf1-x444.google.com with SMTP id n19so9360090pfa.1
 for <linux-nvme@lists.infradead.org>; Tue, 21 May 2019 09:37:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0vNIC7vcgwTnOJTo6F4Wa4vrfuoWrptq+2sCjFJlSi8=;
 b=QI2iIv6fGKv9smXGT+0r3jWvZ+QD1qtOzveyBLpylXuw84TZwCBWNEmtErcKrfSX2x
 K0adE440tAwDxpMUBVCSFla161BgK3/zvewLKwAGVk+JF4ATezqzshtpwaPNxa3riHTd
 /KxdH9nhTud0XAAtWeRtnFf0M6iXogTF9V9MX1H/yNb5EVsqboO5EBXwhcBeNfkVi0Ej
 BCfhWpxPV5fGzrVT2vQ7zjR9yHRYFUphtgzwca5MiMZ244ngytQpZ1OWZ/KVwqnUr+/B
 H75AvRDkwIJEfKsKeCAzCtAIKMcRjFUyFQPRvQYGGod+hjZI1vKpPy1p1R/sFk515wLK
 cGSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0vNIC7vcgwTnOJTo6F4Wa4vrfuoWrptq+2sCjFJlSi8=;
 b=aDI30uwcgfPECbP5CSogbjl+vBASMyY7vtgErkhK6EMugQtvYPC6FJaIlhwQ2hqBJg
 OZzYsXMBE13xYwxb3FZu7iWQ2XUcKfPzThQ9tzoppxl0xfYhVtOfv7DjCMI79u9aVJQI
 ej/p1NKNc0eGjG4TT0dMNcAILyAzm5e103mm2YWC/ypLSe/9p+08B3zc2ONBGcsKkYcp
 cax7rtBKLWn6uZm6ohYGd8DdTlzWgFIQMlLqDif8/iAXarib4Dfw0I4783zAlDAnlZBv
 iIJ0gqiUlkGfz5srJ4O3W2ULICXiSf3YQ8EZirqYupDFi7CGl5tZJMk+0eqNM1DCDyDl
 pekg==
X-Gm-Message-State: APjAAAVzIOqHJwoMF1Vlx21yqnVauYyFPwzbSAbJTf5Go1Q+1ACA+gEN
 R97I69NluGWMNRbTidZMT+VtBdm11HY=
X-Google-Smtp-Source: APXvYqxJjdSyJlcQvqxNsddriM8NcBGXx12+u+5SFJV2KVVXDnfm+2fqLDQ37x10WioPpBq2dFkyJg==
X-Received: by 2002:a65:430a:: with SMTP id j10mr37574182pgq.133.1558456638129; 
 Tue, 21 May 2019 09:37:18 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r11sm24460731pgb.31.2019.05.21.09.37.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 21 May 2019 09:37:17 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V4 3/3] fabrics: Return errno mapped for fabrics error status
Date: Wed, 22 May 2019 01:36:59 +0900
Message-Id: <20190521163659.24577-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190521163659.24577-1-minwoo.im.dev@gmail.com>
References: <20190521163659.24577-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_093719_370907_B2BA8271 
X-CRM114-Status: GOOD (  16.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
 fabrics.c | 18 +++++++++++++-----
 1 file changed, 13 insertions(+), 5 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 511de06..5e16f09 100644
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
@@ -400,6 +401,7 @@ out_free_log:
 out_close:
 	close(fd);
 out:
+	*status = nvme_status_to_errno(error, true);
 	return error;
 }
 
@@ -849,6 +851,7 @@ static int do_discover(char *argstr, bool connect)
 	struct nvmf_disc_rsp_page_hdr *log = NULL;
 	char *dev_name;
 	int instance, numrec = 0, ret, err;
+	int status = 0;
 
 	instance = add_ctrl(argstr);
 	if (instance < 0)
@@ -856,7 +859,7 @@ static int do_discover(char *argstr, bool connect)
 
 	if (asprintf(&dev_name, "/dev/nvme%d", instance) < 0)
 		return -errno;
-	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec);
+	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec, &status);
 	free(dev_name);
 	err = remove_ctrl(instance);
 	if (err)
@@ -874,9 +877,11 @@ static int do_discover(char *argstr, bool connect)
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
@@ -885,6 +890,7 @@ static int do_discover(char *argstr, bool connect)
 	case DISC_NOT_EQUAL:
 		fprintf(stderr,
 		"Numrec values of last two get discovery log page not equal\n");
+		ret = DISC_OK;
 		break;
 	default:
 		fprintf(stderr, "Get discovery log page failed: %d\n", ret);
@@ -989,15 +995,17 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 	cfg.nqn = NVME_DISC_SUBSYS_NAME;
 
 	if (!cfg.transport && !cfg.traddr) {
-		return discover_from_conf_file(desc, argstr,
+		ret = discover_from_conf_file(desc, argstr,
 				command_line_options, connect);
 	} else {
 		ret = build_options(argstr, BUF_SIZE);
 		if (ret)
-			return ret;
+			return nvme_status_to_errno(ret, true);
 
-		return do_discover(argstr, connect);
+		ret = do_discover(argstr, connect);
 	}
+
+	return nvme_status_to_errno(ret, true);
 }
 
 int connect(const char *desc, int argc, char **argv)
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
