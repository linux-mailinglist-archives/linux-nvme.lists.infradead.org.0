Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EBED034C6C
	for <lists+linux-nvme@lfdr.de>; Tue,  4 Jun 2019 17:41:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xv874TyIix3cUm5M/ys8ye5ug1py07c3EGX45B/76A0=; b=b56xm8JBR9YUl6
	/1N6AwWzuvkxhRFcRhmOKuFLkaWrN7r6V9BXD51hrEE4T4Sj7eqBmi0gS2t5Q4IC6K6n/aCEC6tcE
	QV+KktjGQIin3V5ce+unWONPJMLvqBnDiQLTxP4DL+2+oSbZ8AlgdQboRMgfUB16NPjyC7C6nKFvW
	ZM6CeN572o8RNQ/TqyhcTXotxFP9BwzXj+Ni/IR0/c38MXVByKxDsx+yELYGzbpBT+QoEaI9ZJtAu
	ixOm+Uff6djp6fCx/KD8jnr9KWEEpKF8fJxZsmYsB0wqLuIDNT6rEvsRuc1Oe7cCMew+0HPpC0fWa
	PUxP/lHHjW5Blet34zLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYBZ4-0003hg-Rm; Tue, 04 Jun 2019 15:41:30 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBYo-0003YD-Ae
 for linux-nvme@bombadil.infradead.org; Tue, 04 Jun 2019 15:41:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sq844UfLMljwW/ufboQdPdudYaLq3gU4tTHpcTp0GsE=; b=jceVSBkPQ8+bH2lWTNZrtP8Ekl
 fh+h+x8R0L+V5+CW5J12iU3eDpKt3WKQONa6hi24E1f2VYHHodpYSlfCewVwMVQbLA+aaFuTJukl3
 nMTZ00lGPJsg78CPXcYA0KqA5sHyl9wAp+Ei5+rVy1THVPaqJla81SYW72RcQaqfRHD/tRvbs9ySG
 FtNOPacyYzQWnHwqoIB5FWYgrCYE2/aox8nvr4S5fFgzh+m0gDR1xAXYewfsH4fuYGh3TgOvO3lhz
 besC4QKxeLjPwha82u69EoiLjpZknJVvjJe6S9L1FNu/W9UT2/BRMu15kGtHpJlk6rlb334Iaa3nM
 T1UhUa0w==;
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYBYl-0002dE-40
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 15:41:13 +0000
Received: by mail-pl1-x641.google.com with SMTP id bh12so2419354plb.4
 for <linux-nvme@lists.infradead.org>; Tue, 04 Jun 2019 08:41:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Sq844UfLMljwW/ufboQdPdudYaLq3gU4tTHpcTp0GsE=;
 b=tFAgZkTRIy0B1cdigVwFyofrdXb0Pa+LGsmb3LrC3F1GG0/y8KpARBSNvfERiQpXaJ
 0EU28B6na/mSoRRJCJrRtOKRUWQMwFoK+1azgOxbdvnZlCA3QLlKF4Jop/F6dald6yot
 7lDe1RFQ0ZM061VItAAhDv69drW8HX84i9wk+RWrKB/IKRAE2CF9mc7zO6XsAlwbfTBi
 1/Ezo2/V1WD8hUHvOU5waoeqfd7uYl2RzWGRYtDTePOCz3oFpjwni5SRBAtxYMK6rcBU
 N+CaWxX8/QgmxrMK8FGWmlqYQUCObcz5lKm1oYst7pnAvcU1fg7WUodSCHe9Ts0fbm6v
 q4Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Sq844UfLMljwW/ufboQdPdudYaLq3gU4tTHpcTp0GsE=;
 b=sE3i5T+b8yZA0YBQ7pAnZu25dQdzwZctLHyO7yEleN3ZNw1knNTcIWB2UmD0UJ08p/
 kKCnhFYd6jexbW8Y258CpZ6j2gxQGKrxP1mE3u7gxHNzTaBNzqL32D81WeP2zThfEJOR
 4QR9yZaXkRdWNcfwz5Jj8VjFrV3hiQGHZgn+Tk6xpsQPr6X+bmkywHHjt5XlUbyhg6ZH
 fBD5Bz4NybRte+wDwQ8hNt3ENVi2G7pbYPEX0GhxtmTdT1tkEv4WXQZigz5Zbl7qQ+pe
 y6IBjZmVToixgaQrFXPF6vksMACkVGtTFf7WMbt8SH+R+HLz/nIjWcFrTJX2fh2RZ4gB
 x/Cw==
X-Gm-Message-State: APjAAAUV1eb6eYNN6B708/maJl/d1LAw/TPpGGFDrPEa9xGW60I1E+j6
 oEtTyC9D/httSgHPDJRzgj4Z8VKoKGk=
X-Google-Smtp-Source: APXvYqyBUInKfuDyrgxLCQpnZotH0x5HRvshIBBc0eiM8oOWG+WIZsqmZ05rSsJ8syYsNpeI+KOlUA==
X-Received: by 2002:a17:902:a607:: with SMTP id
 u7mr31670901plq.43.1559662868593; 
 Tue, 04 Jun 2019 08:41:08 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id r9sm14549233pgv.24.2019.06.04.08.41.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 08:41:07 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V6 6/6] fabrics: Return errno mapped for fabrics error status
Date: Wed,  5 Jun 2019 00:40:34 +0900
Message-Id: <20190604154034.23386-7-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
References: <20190604154034.23386-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_164111_187548_524B0A88 
X-CRM114-Status: GOOD (  17.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Sagi Grimberg <sagi@grimberg.me>,
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
Cc: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 19 +++++++++++++------
 1 file changed, 13 insertions(+), 6 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 7be7f59..81c2d9d 100644
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
 
 out:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
 
 int connect(const char *desc, int argc, char **argv)
@@ -1047,8 +1053,9 @@ int connect(const char *desc, int argc, char **argv)
 	instance = add_ctrl(argstr);
 	if (instance < 0)
 		ret = instance;
+
 out:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
 
 static int scan_sys_nvme_filter(const struct dirent *d)
@@ -1181,7 +1188,7 @@ int disconnect(const char *desc, int argc, char **argv)
 	}
 
 out:
-	return ret;
+	return nvme_status_to_errno(ret, true);
 }
 
 int disconnect_all(const char *desc, int argc, char **argv)
@@ -1212,5 +1219,5 @@ int disconnect_all(const char *desc, int argc, char **argv)
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
