Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 591442805B
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 16:59:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lewdWqYnV3n0XTW2w4TYQBYTuW0XEsEDR5Z+3W86pW0=; b=i1k2Zgdqn3NMfi
	GhJM3RmTsc1l2eNGuB943yh/91aGryOjcCG3MdznwRMHaD/aG65McGnoiAURx2B+oLgJXyi6FBnGM
	L+GD6dG4/Fl98N3Wu51Yb2uBJ+3j9PUxT5li8XKTHZn7MQ56EwyzfbuIWX5Bp81yJv0zIbo60zSGj
	sdW0GwHM+rHGEFTtR/A/nLev6Y41m4o+D7+UVb58Eh8Eh4cm/Zb8qFaVeGsPOCKoeH9VBVlRaMpi5
	bSyxfX4v8BLVlFQGOAUL35GQGO8LA23VJgLQ+aMBXf9bAWTjNkt9X9CwhFc0KttMpmXe9lr637LNz
	h2c0OTtznK6FDrKOkw/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTpBf-00084L-Ue; Thu, 23 May 2019 14:59:20 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTpAt-0007CH-Mq
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 14:58:54 +0000
Received: by mail-pl1-x644.google.com with SMTP id g21so2889965plq.0
 for <linux-nvme@lists.infradead.org>; Thu, 23 May 2019 07:58:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=V+7ZfRQ8tRsYJSPCTxb99AmIGm0eb8BRF7Tmo55NlWM=;
 b=FfgMrsKzc0iudyfQJiofkXNSdTX5Ln6oFKrkNxVv6brFgB6/Q12txFY8qKUjXpN+Os
 DxitZQlVlwngSGItyi4dKt+WW9kz5xoc7nHxqDxaWHGoJDTMB+xRgg4Y09dd1TFd3/Nj
 OJEQpObfkwK2/NA58x8zSv31h9aCGu3xB0ArXOjipsjXFS/0EbZYFPcviWqOR4kqnzQ4
 u9K1KKAtaLUlIM1gYd38vqLfxJVqBD9RxkwwAAyqac3V6wN/5nKytCDxNSrRYzXDRL2a
 O1LsYQrDp/XQN9bf7mLp3fgNoDRNUa4UqEOT0lsiJOKJZRsb8EScjfNsIOf0iBB2Uew9
 fKOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=V+7ZfRQ8tRsYJSPCTxb99AmIGm0eb8BRF7Tmo55NlWM=;
 b=qyXAHzqgpt+IsWiyWb0AuSgY6MW/iY//N9+9muD8jcYW5HtjUYq+qab31UfFhoHPE/
 f61VJWHDc8N1bR8f6oueNE+mDUBqVpwIrzxalN8qFtC5GM3jzr73X/kk5FAVLGPixjZV
 Bcx0wmo4wcXMljGfvBOUtNEinlJOu1ARPYEchBIPpavIcvTj3u092WOnWDPAQJNqJUPa
 dFvsvtJw0nGZfCcY/itGJ2Z5RVjqZIFJ6s4Vgp3jltAbj+FbYJfvC+jc5T2yQxf8HBOA
 9ZbOojcRubOoznA3pLfRNrLZbIu3EPltlVdJHRoUhNkXdXCpSWhwumdu0OBBLwOFeGEJ
 pmMQ==
X-Gm-Message-State: APjAAAVUJ4D2zOJGHEytF1XYlFWvdc20wVVPrdlk9OocIR4M7da3pRKF
 7NYEuAcVV0vRC+hfT7G01wcuL7F6xV8=
X-Google-Smtp-Source: APXvYqz7wxv+yaKdbnRYFCUBpu4K+Xsv/4wDF+AenKdw+4lzDXkBknnOsTEO+nlHfK60x5X9LSnyqQ==
X-Received: by 2002:a17:902:e28a:: with SMTP id
 cf10mr96753302plb.77.1558623510552; 
 Thu, 23 May 2019 07:58:30 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id v4sm45946554pff.45.2019.05.23.07.58.28
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 23 May 2019 07:58:29 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V5 6/6] fabrics: Return errno mapped for fabrics error status
Date: Thu, 23 May 2019 23:57:50 +0900
Message-Id: <20190523145750.27425-7-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
References: <20190523145750.27425-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_075833_120866_984A39C6 
X-CRM114-Status: GOOD (  15.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

If discover has been failed due to a nvme status, it will be returned to
main() with mapped value for fabrics get log page command.

Now connect command related status cannot be added in this patch because
kernel is not currently returning the nvme status, it's instead
returning -EIO if fails.  errno for connect command can be added once
kernel is ready to return the proper value for nvme status.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Chaitanya Kulkarni <chaitanya.Kulkarni@wdc.com>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 469b4a1..8dae627 100644
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
@@ -1000,7 +1006,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 	}
 
  ret:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
 
 int connect(const char *desc, int argc, char **argv)
@@ -1048,7 +1054,7 @@ int connect(const char *desc, int argc, char **argv)
 	if (instance < 0)
 		ret = instance;
  ret:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
 
 static int scan_sys_nvme_filter(const struct dirent *d)
@@ -1181,7 +1187,7 @@ int disconnect(const char *desc, int argc, char **argv)
 	}
 
  ret:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
 
 int disconnect_all(const char *desc, int argc, char **argv)
@@ -1210,5 +1216,5 @@ int disconnect_all(const char *desc, int argc, char **argv)
 		}
 	}
 out:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
