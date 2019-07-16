Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B182A6B0DE
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 23:14:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3Qv98BSb6kdUdI4JRA2XRaEEM55rMuzip0BY/gnN4fs=; b=cXtKEX1rSeQw1VR9mU/YVEJUst
	oLb10iQU2JjvqvpcyWROVyoajcPPp+7IWyseZuy8aKGE1TqM2hz9PeyMLMaKDB12ieViIPioLp89n
	ym+NCi23iFu0cGindwOpoiqhmMXsW0iVBh+c/zAuVo41VXMMEpJRMQnCt8qRiE8+yVxUQUhddO+z1
	dwHpf1eUEtCtg/pJK5I7keNUAiCntm0xCu3nTgIqGrLoA5tB6QwG84P0vmJMMhVIORyh3D1vJ7U/N
	6L9CFB5JarOOqVi6STbRxnVqnimYWOCtR+BYGJCtg3gQHS7qJOKE/EuTJ9umSuDhRFFAs+U0tWZki
	VJuebwaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUmQ-0006L7-R0; Tue, 16 Jul 2019 21:14:34 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUkx-0005Q0-6D
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 21:13:04 +0000
Received: by mail-pl1-x644.google.com with SMTP id m9so10701342pls.8
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 14:13:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FdSgpTWrbDtA6Q6po+EG7kUxN5RbPmhFtp0QMjSdSM8=;
 b=GjLyRz9BXzKzd7cCI6z97rbPudixA9CPHvRJR9uVeKU1FDypcici13mRCTTb2eNen/
 1JHRE+ff5GPA4WUlKAvIC0OYvQLFfaWkKPUCBK2d5MXR+wQ6mrBynNKWiJAsDR89K+pn
 nPzVUXEVuNvKU1SAfReckH8oW5tUWqYOgBOGPWUfgTdsDl3EqWJUXT8FJR0b+DHXksdS
 6h1eHoW7skMHWSLfef+dOqxRp4jKO+rwrRhcsqBQtmv8jkagv97sw+S5gW9DAFGpWD7l
 3K56IE4wCaRrawPB+JoyRVcduWVu4dSlMJSIKEqXZFzJ9KPz/1RS3hgvKpjN9ApAJit2
 reHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FdSgpTWrbDtA6Q6po+EG7kUxN5RbPmhFtp0QMjSdSM8=;
 b=TvnkYSsadpSZS4NNDm9OFcDfZAISX0oGZ/DynOYArTwGrgb5wc9mxT5xhL9aQ7Qgng
 9g4K1v4Z5OB7ubuDKudA6/3jOwKBsSScHPbOvrFF7QTcZS9BHzTE0ecA5wofvAoun49P
 qtxD/oAUcAIaD1LB9Oleo2SdW2bvjnLbQJBv/c6R8zR1jx5lqLzWm/J+sKwPAVL4+rhn
 1NpB032Y+aFZD8Qm5YNUa0DMsEs5z5mJmj1ID5B1KgBXtNJTMSmLvm2aMlzA1yQJQjmF
 Q/RKYIT0t/TLuPoG7CekpIf5jrwU/zdRt0AzoZha8GZBI/vo7IEiCKm8RFurxYn7c/uR
 X2Qg==
X-Gm-Message-State: APjAAAWC7HJCwWd+x1XWGMpE4V2gt0UTdi/TVy6mFf231Ndop1SDIqRI
 V9OXZ1op9WKpsOjmc+zqB0tLIvt4
X-Google-Smtp-Source: APXvYqxJ7+Vk+z3yUFFPVG7cpv0exMLcx2f7/K1X+iTr34ahAKSgXDQnQW1FZ2MshRihLZE0iGQSnQ==
X-Received: by 2002:a17:902:7043:: with SMTP id
 h3mr8649526plt.10.1563311582097; 
 Tue, 16 Jul 2019 14:13:02 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v18sm140683pgl.87.2019.07.16.14.13.01
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 14:13:01 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 06/10] nvme-cli: Add routine to compare ctrl_list_item to
 connect args
Date: Tue, 16 Jul 2019 14:12:37 -0700
Message-Id: <20190716211241.7650-7-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190716211241.7650-1-jsmart2021@gmail.com>
References: <20190716211241.7650-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_141303_304964_56355377 
X-CRM114-Status: GOOD (  16.18  )
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
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Hannes Reinecke <hare@suse.com>, James Smart <jsmart2021@gmail.com>,
 Sagi Grimberg <sagi@grimberg.me>
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
CC: Sagi Grimberg <sagi@grimberg.me>
CC: Hannes Reinecke <hare@suse.com>

---
from rfc to actual posting:
  moved SYS_NVME from fabrics.c to nvme.h
  replaced nvme_ctrl_dir with SYS_NVME
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
