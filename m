Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92875662EB
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:34:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=snHEwFmid9T7+QSKVuKy5SiKUgxrwPNpAzEIky43muE=; b=gLzSLe9a2vELIDUoAD/m2IfxpC
	+pJ9oGqjKcRmMI2J96DNCE3IIi0ILCeaT80stPWdTKaqT9FBOSP8TEMG6S0EIZXfXHlWRdV3alhMM
	pZsuRoCbvaigbDmfn2xAzoapLiLOmQ39YxBaLwwvlXTBAFuXboQrN6yAD3pMR+bNly4QK21OvmhO1
	aVwNICRm/EAPXZQMZbselTJRrr+6SAFELh4Z8WYHwNuh7APXMKIf/cKqivunh1bS1z4K3eMBdtea5
	BSRPu/psEtKi0EwEc/n1yZJuZF+SME9uCmaevMbDMcKmwgvn0l1SvcFdr5B2wMH5rEQ4dz5cw5fJC
	RP2y/MJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljVe-0002WE-3Y; Fri, 12 Jul 2019 00:33:58 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTh-0001Y4-JV
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:31:59 +0000
Received: by mail-pl1-x642.google.com with SMTP id cl9so3861793plb.10
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:31:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=z3H9pdGF3CP+G4ntfCGTQz529dMF4Sn4FcanxU24QGU=;
 b=MKX9E8XD4yy09o01nRH+BLL/TrE2J7OXy+4YCNFkQQEWqpZbwVwQipIrl/o2ZDdo39
 9jZ9LzE9vMQ53pJD//LTx2Ekl0MExIWSB3i3EZeiOfpQCttGKyznTK7myEVdQPX5a6GG
 JR0uE784V7Knm6LbgmeIe5DqPtHX4nMDFmLrpxvDtMictPVLd12j8IWoVa//yr7suT+6
 /iajtFw6ZzAEaGyqkFMS47q/jDm/av5GfQ2duLZQ75+ay6tFDGbwmG+rJPJwy8FT50hg
 gfihClvMYaxqEBuNNGky6hFJLHwqFmlPW4e81L2oOAVHTVFb0IhFExDycwIIBKxSCYzf
 wBzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=z3H9pdGF3CP+G4ntfCGTQz529dMF4Sn4FcanxU24QGU=;
 b=VuAS7Fsq7aYnRlQaVUplTxedY3DpJBX1C5Ji6lZ/82YRo4nzbHmJ2bzfsJUtlUb8Im
 QEhuYxTTtA8SNsZysQ1v2Jpkk3kCWutQyM5DnpJZGgcMkqeBuhKN+t6n5c9UZ2eriRFj
 v9FWy1aLbU/62EDXL3qS2G6BJJ9K7gAtRPUeUUAMqpN15BB4QovfHTZqFDY6bh61ROfw
 VMOVYYZyjeMBY21sxjsj+2QfT0RG2C0bkIXXqGmUAmWMNYnMFNxu5LIYGS4xK+EP5nR9
 H2tvuYzdWBXk/YcVyA/qteJiuIOSv4t/SRFxxhefys9Uz0T0iCdKLZ+0qifGJL1esFY7
 Vhyw==
X-Gm-Message-State: APjAAAX+R6XeNyHLOw39C6b3gVQd0oatmUxhQFebUcgY9gBDqfvZYvnK
 fVDguSlBB2VuBVKUAK2at4TPcPzS
X-Google-Smtp-Source: APXvYqzLp931xXkpA7OAPC3K2T/lnYSJXPg8u7KD+EsiXYnAh12Fj6/vWgcX1riSKVn32AnA9mG5AQ==
X-Received: by 2002:a17:902:6a85:: with SMTP id
 n5mr7297419plk.73.1562891516909; 
 Thu, 11 Jul 2019 17:31:56 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.31.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:31:56 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 05/10] nvme-cli: extend ctrl_list_item for connect
 attributes
Date: Thu, 11 Jul 2019 17:31:35 -0700
Message-Id: <20190712003140.16221-6-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712003140.16221-1-jsmart2021@gmail.com>
References: <20190712003140.16221-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173157_657909_0A095EA3 
X-CRM114-Status: GOOD (  18.78  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.3 PDS_NO_HELO_DNS        High profile HELO but no A record
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

Extend the ctrl_list_item with elements that can be compared against
connect arguments. Extend the get_nvme_ctrl_info() routine to set
the fields.

subsysnqn was added as the ctrl_list_item may now be used outside of
a subsystem listing.

traddr, trsvid, and host_traddr are added. Their values come from
the address attribute.  A new parsing routine was added that extracts
the values from the address string.

The new parsing routine and supporting field names strings are
declared as a global interface as a subsequent patch will call it
from the fabrics routines.

Signed-off-by: James Smart <jsmart2021@gmail.com>
CC: Sagi Grimberg <sagi@grimberg.me>
CC: Hannes Reinecke <hare@suse.com>
---
 nvme.c | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 nvme.h | 10 ++++++++++
 2 files changed, 82 insertions(+)

diff --git a/nvme.c b/nvme.c
index dabbbe0..66ba2fc 100644
--- a/nvme.c
+++ b/nvme.c
@@ -1542,6 +1542,64 @@ static void free_ctrl_list_item(struct ctrl_list_item *ctrls)
 	free(ctrls->address);
 	free(ctrls->state);
 	free(ctrls->ana_state);
+	free(ctrls->subsysnqn);
+	free(ctrls->traddr);
+	free(ctrls->trsvcid);
+	free(ctrls->host_traddr);
+}
+
+static const char delim_space  = ' ';
+const char *conarg_traddr = "traddr";
+const char *conarg_trsvcid = "trsvcid";
+const char *conarg_host_traddr = "host_traddr";
+
+/*
+ * parse strings with connect arguments to find a particular field.
+ * If field found, return string containing field value. If field
+ * not found, return an empty string.
+ */
+char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm)
+{
+	char *s, *e;
+	size_t cnt;
+
+	/*
+	 * There are field name overlaps: traddr and host_traddr.
+	 * By chance, both connect arg strings are set up to
+	 * have traddr field followed by host_traddr field. Thus field
+	 * name matching doesn't overlap in the searches. Technically,
+	 * as is, the loop and delimiter checking isn't necessary.
+	 * However, better to be prepared.
+	 */
+	do {
+		s = strstr(conargs, fieldnm);
+		if (!s)
+			goto empty_field;
+		/* validate prior character is delimiter */
+		if (s == conargs || *(s - 1) == delim) {
+			/* match requires next character to be assignment */
+			s += strlen(fieldnm);
+			if (*s == '=')
+				/* match */
+				break;
+		}
+		/* field overlap: seek to delimiter and keep looking */
+		conargs = strchr(s, delim);
+		if (!conargs)
+			goto empty_field;
+		conargs++;	/* skip delimiter */
+	} while (1);
+	s++;		/* skip assignment character */
+	e = strchr(s, delim);
+	if (e)
+		cnt = e - s;
+	else
+		cnt = strlen(s);
+
+	return strndup(s, cnt);
+
+empty_field:
+	return strdup("\0");
 }
 
 static int get_nvme_ctrl_info(char *name, char *path,
@@ -1577,6 +1635,20 @@ static int get_nvme_ctrl_info(char *name, char *path,
 	if (nsid != NVME_NSID_ALL)
 		ctrl->ana_state = get_nvme_ctrl_path_ana_state(ctrl_path, nsid);
 
+	ctrl->subsysnqn = get_nvme_ctrl_attr(ctrl_path, "subsysnqn");
+	if (!ctrl->subsysnqn) {
+		fprintf(stderr, "%s: failed to get controller subsysnqn.\n",
+			ctrl->name);
+		goto free_ctrl_items;
+	}
+
+	ctrl->traddr = __parse_connect_arg(ctrl->address, delim_space,
+					conarg_traddr);
+	ctrl->trsvcid = __parse_connect_arg(ctrl->address, delim_space,
+					conarg_trsvcid);
+	ctrl->host_traddr = __parse_connect_arg(ctrl->address, delim_space,
+					conarg_host_traddr);
+
 	return 0;	/* success */
 
 free_ctrl_items:
diff --git a/nvme.h b/nvme.h
index 3409515..470f702 100644
--- a/nvme.h
+++ b/nvme.h
@@ -160,6 +160,10 @@ struct ctrl_list_item {
 	char *transport;
 	char *state;
 	char *ana_state;
+	char *subsysnqn;
+	char *traddr;
+	char *trsvcid;
+	char *host_traddr;
 };
 
 struct subsys_list_item {
@@ -175,6 +179,12 @@ enum {
 	BINARY,
 };
 
+char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm);
+
+extern const char *conarg_traddr;
+extern const char *conarg_trsvcid;
+extern const char *conarg_host_traddr;
+
 void register_extension(struct plugin *plugin);
 
 #include "argconfig.h"
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
