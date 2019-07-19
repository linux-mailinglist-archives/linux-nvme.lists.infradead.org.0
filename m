Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C18DE6EC9D
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:55:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ms+nds/DCf0Vf7ZRg3f8YSHFT7dTzZL7HGFujDVaV94=; b=AkyrclJOEGd9CqQbcBbH6+bgSb
	gvX2N1MeSjLPnIaTEY54Sx/BeyzjfRNv6MDZdtuP/OCPmRSHMnURlMa15Le5XEgVSVbZQY8ya6OS/
	C0jAZ3m5UlYLRAFa9NooHQ+CJFPXeyyvzFsV3IUeRWXjURd+ewQODfszBZz4XVmV3yimlqVFp2miP
	+Tlohl6yTd5fIGHHpV8iXXiWE6pnhsbV0Lfubl4FfmOVF/wF0oChSFTT4Q+tHoSzM3s/8ZzsWmO+Z
	KePF1+mClOlOxjHDJOm26oF+TACvaeWMppk/Gq8iLIwVITf7cTnMdvHO3enOoKoaL01G50Mr15C7a
	0/CMKEhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hobmG-00015Z-VR; Fri, 19 Jul 2019 22:55:01 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobkd-0008St-KS
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id c2so16253407plz.13
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/rj/CHWWQpTIS8qpaHhphsixqm8gkGAoYy6JiggQhX4=;
 b=rpPsr4Pf8qKNt+8DvsICwvSIlLkOWxs6/BGHEm/Jevfnx1Dwg8SixebxOOvrDyxVPu
 nZpbtElx/0bEygjUKpNueMa9DIYU4c9oQPnawnVt8pgUNKrccBmfskd881ESE4kOxkmW
 tB0xb8X8iiyVtcJXiN71XkQIOsxNFHCWPuPEcZfD0QjXqbLW4smGax9XxQ4x7PGA1auw
 7sJGwL/07+gbFpeNdE3CEoK28LqXfek1KYNSrLzsl6gBGmVi6htBbLD9CoxfCq0uoLXX
 ySR49lFeyPqht74AWqRYtM32bJgKDMO26fLmDtJJan68jEKhI2CWxrVaehOyyZIy0wiR
 8Epw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/rj/CHWWQpTIS8qpaHhphsixqm8gkGAoYy6JiggQhX4=;
 b=rcykNw2cIf5fKCIeIDNMkQ2gd361jSLH829JrfTs1VIeHjgKhC3CO2WpHoaYAsww9n
 KrkHq02qdJEs4N1LsJlQuiIZYCaJgKJrgdcYpdR676UzZpT/Od5dz+8nfvCsRK5NrwsK
 cgikSfXLP9/BS54JwivZ6jkRVH4EHaHvCMzW+aJy3TuL1MgAKicRwWs4eh9ElslDjkmV
 4dvBcMfiLL9cU/uUBIRr4xqpanYDUjzQWhARfu+gSVJfr1LpS9EmVD9D+IclXqlkx2tu
 y115vGs0gNEPXypq8fL2RwHK4RQCAwjcc/7P1J2l4Df6+7gEQ237vZRStSWL7t/YuX7B
 czyA==
X-Gm-Message-State: APjAAAUb/QKGFfFv8O/tD3AQQ0iI+0dAJf3i2F4uQSldZnJPy7ANhma2
 2447tKMLPZjdaI0KYoCvs7S06Ckn
X-Google-Smtp-Source: APXvYqwdAPmmSkO4q4RkLUr4OYkYSwjZ47Byf3IjY/FqKardx8wWEXg5TrKqYYpyjEvaxNH3GWLuSg==
X-Received: by 2002:a17:902:e2:: with SMTP id
 a89mr59802509pla.210.1563576798949; 
 Fri, 19 Jul 2019 15:53:18 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:18 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 06/10] nvme-cli: Add routine to compare ctrl_list_item to
 connect args
Date: Fri, 19 Jul 2019 15:53:01 -0700
Message-Id: <20190719225305.11397-7-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155319_882340_23E7CCAB 
X-CRM114-Status: GOOD (  17.05  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In preparation for searching controllers to match with connect args:

Create a new routine that receives a structure containing connect
arguments and a device name. The routine will build and fill in a
ctrl_list_item for the device and compare its attributes with the
connect arguments. The routine returns true/false on whether they
match.

Routine is defined as a global as a subsequent patch will use it
from the fabrics routines.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 fabrics.c |  1 -
 nvme.c    | 38 ++++++++++++++++++++++++++++++++++++++
 nvme.h    | 11 +++++++++++
 3 files changed, 49 insertions(+), 1 deletion(-)

diff --git a/fabrics.c b/fabrics.c
index d92c2ff..f3afa0b 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -74,7 +74,6 @@ static struct config {
 #define PATH_NVMF_DISC		"/etc/nvme/discovery.conf"
 #define PATH_NVMF_HOSTNQN	"/etc/nvme/hostnqn"
 #define PATH_NVMF_HOSTID	"/etc/nvme/hostid"
-#define SYS_NVME		"/sys/class/nvme"
 #define MAX_DISC_ARGS		10
 #define MAX_DISC_RETRIES	10
 
diff --git a/nvme.c b/nvme.c
index 66ba2fc..7f706c8 100644
--- a/nvme.c
+++ b/nvme.c
@@ -2010,6 +2010,44 @@ static int list(int argc, char **argv, struct command *cmd, struct plugin *plugi
 	return nvme_status_to_errno(ret, false);
 }
 
+/*
+ * Given a controller name, create a ctrl_list_item with its
+ * attributes and compare the attributes against the connect args
+ * given.
+ * Return true/false based on whether it matches
+ */
+bool ctrl_matches_connectargs(char *name, struct connect_args *args)
+{
+	struct ctrl_list_item *ctrl;
+	bool found = false;
+
+	ctrl = malloc(sizeof(*ctrl));
+	if (!ctrl) {
+		fprintf(stderr, "Failed to allocate controller list element\n");
+		return false;
+	}
+	memset(ctrl, 0, sizeof(*ctrl));
+
+	if (get_nvme_ctrl_info(name, SYS_NVME, ctrl, NVME_NSID_ALL))
+		goto cleanup_exit;
+
+	if (!strcmp(ctrl->subsysnqn, args->subsysnqn) &&
+	    !strcmp(ctrl->transport, args->transport) &&
+	    (!strcmp(ctrl->traddr, args->traddr) ||
+	     !strcmp(args->traddr, "none")) &&
+	    (!strcmp(ctrl->trsvcid, args->trsvcid) ||
+	     !strcmp(args->trsvcid, "none")) &&
+	    (!strcmp(ctrl->host_traddr, args->host_traddr) ||
+	     !strcmp(args->host_traddr, "none")))
+		found = true;
+
+cleanup_exit:
+	free_ctrl_list_item(ctrl);
+	free(ctrl);
+
+	return found;
+}
+
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
 {
 	const char *desc = "Send an Identify Controller command to "\
diff --git a/nvme.h b/nvme.h
index 470f702..2fecb68 100644
--- a/nvme.h
+++ b/nvme.h
@@ -179,6 +179,17 @@ enum {
 	BINARY,
 };
 
+struct connect_args {
+	char *subsysnqn;
+	char *transport;
+	char *traddr;
+	char *trsvcid;
+	char *host_traddr;
+};
+
+#define SYS_NVME		"/sys/class/nvme"
+
+bool ctrl_matches_connectargs(char *name, struct connect_args *args);
 char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm);
 
 extern const char *conarg_traddr;
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
