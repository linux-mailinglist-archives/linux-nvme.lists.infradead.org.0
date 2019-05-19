Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9E0322860
	for <lists+linux-nvme@lfdr.de>; Sun, 19 May 2019 20:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mR6/wTA/O355RZS3cEsddgzUYMwRtaFjHjPEamu11VE=; b=fKIPf6B2dlSEHK
	KhU0EFFXbdQrCXC4unBRsS5/8o+FEtb9H5pk1a3OHxuSbBd7YKcZ6KcakvGhmbNLODpIpnSXeelRB
	J1I498YJdl/uXG+7wdmSrfrMpQ57oO+xJHqxNokv/zAq9xuZvM5RyxZlsL3rAph7UiDsUdImFdRsT
	OL8+Yt368AswUvCPLqz1ATlO3TORrZXt89UogmuwsRVFu2JmogbRYgwhiA2X7JwuGjl9QG7jukKTg
	JiBH8GshjDGeKwb8QNBoAExBsWQ9fIv0QVFhhCD23aJxbMOwDYPbdbru6Rn0gqqz/gS2cf3RlT5Pl
	86pMAa5+LZH6kh8G3myA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSQj5-0002NF-VC; Sun, 19 May 2019 18:40:04 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSQia-0001u9-ON
 for linux-nvme@lists.infradead.org; Sun, 19 May 2019 18:39:42 +0000
Received: by mail-pl1-x641.google.com with SMTP id y3so5670945plp.0
 for <linux-nvme@lists.infradead.org>; Sun, 19 May 2019 11:39:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hDzkwwdZJMcFwabvOW+S+1Jx8mtkjR0Nn0rz9sZ9Aq4=;
 b=rjoTKtLBFfe/XFAomTpT7ohFh0hLYurPeUybo5KpH3inTfl73zHFUOMdcpXCaIJed4
 TopW/uN1fv7Y1AcgZ946cWUkSY0LvHlbTS4qvD9yCy4ERE4nDxRgxdoHtkzRVRHYTOjW
 qVaBG16HOoyasOENQC4mfcKj1JW8nFEg348Ps1pdm9m4pj/aUbVSQEFaM/niWnAkkhjY
 p0OOPDJL9jZz0U1DkUy2tZypQEnT5V4++qj3BXFBMRdkNbUu4U94ht0SMGjnwrifoPfO
 APj4NMIJuISyvOKeWTiTnvtEJ9jdZFViYa/qr+RHOF8w8xL41ZDzm+LNsLJhRmOs21Vf
 mrdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hDzkwwdZJMcFwabvOW+S+1Jx8mtkjR0Nn0rz9sZ9Aq4=;
 b=chtnJxdWR7+Pasd5MK4Wupq54pibdtM/Z4MVqB4xMx0tUEZfjG/Bm+hBRWGRy9FvBi
 PwkZzGvr+R1UFlx3ZDuvRWwhdMzuKHJGwCTVcS0dA8WYQu4oFyryhkiyTg10UhLadlzJ
 8zEyVB7zoRklv7eA5Oyj4+8jfhdo05Z8nxkeEOPfAiCpTczl0u23xFIecSUJTV2nX6NY
 naEImJcXZ6yuiPED1RkfSiUOOljF/JaGvZnwCm9oQZq7F7vq7I5ZAIJX3df+85rzoNwT
 wP6SNhDyfL7fINjmsfIl2vWz26HHZO0+qdDk1BWJaG9l6czowiX8IbYpxVAYlwfx7cxt
 vzGQ==
X-Gm-Message-State: APjAAAWeW0Z/JvxtoaNvLS4Tb+DRLbDrk+68Kbe1zjc0R2Y3hKSBZP6y
 xxFt5CuN0Gllb9BojAlOCReow4iACRQ=
X-Google-Smtp-Source: APXvYqz43wsjI9jwuJ7dl8+olj2hOB+VCMCP+Wmm27rUSwJVBpejzJaWAlxapEs7UQFXlokPacYH5w==
X-Received: by 2002:a17:902:bd95:: with SMTP id
 q21mr34977555pls.159.1558291171778; 
 Sun, 19 May 2019 11:39:31 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id 1sm16513360pfn.165.2019.05.19.11.39.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 19 May 2019 11:39:31 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 4/4] fabrics: Return errno mapped for fabrics error status
Date: Mon, 20 May 2019 03:39:13 +0900
Message-Id: <20190519183913.3493-5-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190519183913.3493-1-minwoo.im.dev@gmail.com>
References: <20190519183913.3493-1-minwoo.im.dev@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190519_113933_261733_4CDACEA3 
X-CRM114-Status: GOOD (  16.78  )
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
