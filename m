Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2AFA7E64F
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:15:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CTAdh7bthjbuY5ADRRuCRfyxcLZn1s3wCsbuqrq32qg=; b=MURNCekZqxeNKgHtnSTvCxfLiS
	juQUDM7NyFJdLmnbDSoTaYb9AV5WONi0BmevquNchxz0wvEZNh3YaW/sTxGMNXCR7IFJErbdpXnde
	N9Pck4pw/cTBBAu2iHf7Q2m5CgeohkDaD44+o1V2JUs1FlDDxlXhgSh6zt2JvtOBtzXPaOkpTymxL
	bM/o0rsnDYDcKDFA1lIKZq3EnbZkCr85pCJ9SXFG+LQJuRuIhbHIMzVrQrUyayK+nWE0iP3IBApCq
	Cfn8eyXmbKEi2JGdwTc1/SjvfK1dxcCDgxKhVKKf8EHrayny0GYdPU7EMdQ+UGR8TJh7VUaWpfQil
	unBg4VTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKHt-00065Q-LE; Thu, 01 Aug 2019 23:15:09 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGo-000595-1t
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:03 +0000
Received: by mail-pl1-x642.google.com with SMTP id b3so32875168plr.4
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=DHeFs8NFh0ijcNo7Vvj42mw3qASEFpK4N8CRp9reFhg=;
 b=CV4irher1loGMv1R0IfT0mSUihChCJU7Howxt9JjCnHGxOoS17eWUGfj01wEtLP5G/
 54OhwW4m26RkX0YdRF5N7d4p2CcamxLBlRYvJikY7bfp48MrOY87LKfnrBdO7FK972EM
 Z2Ev84qDjpz2JE114Oxq1Tz8EXczWjwJL8QFd6wBq1eASGnKfWY6QVfcFhYBXbIRFM9C
 8x7IQkFAYSs1eDuRcJ3jpggH2wmT4TNO3TNbp5s/nhFBJ8oe8r/8qMP98/z2l6GRXuFJ
 oApvSwT7VdwFItVAZLmKl7RkamUVqecZMb+CFYokQTnq6BxVa2eaUQcyyXx/vrzQWStG
 4e3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=DHeFs8NFh0ijcNo7Vvj42mw3qASEFpK4N8CRp9reFhg=;
 b=XMlmAd+fELtkGRl2218/XuWnKmudR3vTdk/7OqjhGVy/J/ysuPaJ+3AO8IiSt+qZ0R
 fdKLVaoPGFoWQyYb0wJ1z/Xel0PoHsRsDmpB+vnHCV9ukS+0kUW4iyc2RmvMOK+SNSM3
 B2ku0LIAX4PIf5b4HEwOykfWq3anilhob/NvvcAXi0XN0EU4HdNCvsvsVpO8tGM9cC8T
 mVWbNFkYeUq3+/6gfQAWOQWgcQ97q9W/HDAPeXKDwLcFpBnI+Lp3XbJ0EVN8CypnxQCn
 csqpLM+0OAFgsgV7b/na6IPt76Lo9wP3GELF7dA304Var7ma3eBb5+o85Pzy1MI9IH6Z
 qEyA==
X-Gm-Message-State: APjAAAU2/9ve2d10DkUCu0a0/VnBbDzJ9d505EBEJneHOxq5KLrXABWr
 VfgrSZLvKPnErycqu9XL5wA93PbK
X-Google-Smtp-Source: APXvYqzsCdW8xN3Cp1+gJFk63xOf3/+nsBhAC4EOks1f8rBA8rRDG4eknPb6dopyTJcUN+Iqh0myxw==
X-Received: by 2002:a17:902:694a:: with SMTP id
 k10mr127116981plt.255.1564701241470; 
 Thu, 01 Aug 2019 16:14:01 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.14.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:14:00 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 06/10] nvme-cli: Add routine to compare ctrl_list_item to
 connect args
Date: Thu,  1 Aug 2019 16:13:44 -0700
Message-Id: <20190801231348.21397-7-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161402_098984_ABCA5098 
X-CRM114-Status: GOOD (  17.35  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
index b93d9da..875b2c8 100644
--- a/nvme.c
+++ b/nvme.c
@@ -2010,6 +2010,44 @@ ret:
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
