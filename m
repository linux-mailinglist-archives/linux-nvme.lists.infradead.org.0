Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 435647E64C
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:14:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=UjjSHfdE48Pmm6aTYnpSymNnWCVUnqdHNf2WZ11UX6k=; b=nV8dl5Pk7sx1A8RkF9sZSeWexK
	j3khGw0Ebtk+Hq1O7O/HRQMVNEmLcKqdQi08NgrOJBsRXDBn+1//tQ7Bq5QmUSWFH08ri0xAzQr51
	r2jug4VVDfzC2Dz7W7fto02Ue75TGxuPaVm5QxsKqplXzir6a0i2Gs4kW17Fy6yTytV7B3VwZHDE2
	cJE++PZSpMeMQ1y32AHO/1d+fOfvz87LhQfgtx64fW/2DmN6q1UJlzwn2TnHnxagk8431YW0BRK6Z
	VplF0aXxLSqgf55hLJR12Wh+OFdMwn6K9//9Xxl6o85VGsNfgZihowED+XKY3rKdZbFfBmxiLqfkB
	GXQ5e++w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKHM-0005bU-9Q; Thu, 01 Aug 2019 23:14:36 +0000
Received: from mail-pg1-x529.google.com ([2607:f8b0:4864:20::529])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGn-00058P-L0
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:03 +0000
Received: by mail-pg1-x529.google.com with SMTP id t132so35012633pgb.9
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=YgOirw3E1YFT5hqbL/JkN4DqMFGUk0MFtMU/VdSq3Tw=;
 b=NWhZ48e/4cARMAD4QwluYun93HCKTsgHrjqQ2cJwUpF5ZF7J5HHr00jAtl44zw0e3w
 fRvcUdcL3uaomaXsdXncwk53XLUifWwNu9uLmPcGbjJxWCvZFUsic0X2dASL8QvqvIOo
 e+OKdPrHRKwrK1DxSgg+XmVPy3xazZY2OHgcOQdPc3YIFTd8gS4HeJflU+vCi6nG8AVW
 xjGjj4Io3I/Nsm46CNEvRvYjhmpmBKl7h+OOYEFzvBB/rjAeL1CvGPQupjWTExN149UN
 NkGqob6ocP26MTC8BHXWebVRBY+rNvVs3H/f27krFTdijdxirLb7qQO/L+3B/pM5w6lW
 Dc9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=YgOirw3E1YFT5hqbL/JkN4DqMFGUk0MFtMU/VdSq3Tw=;
 b=X3lN3f7zXFH6Us5SSq1OYiHqVqHXwNrlmSeFegt6+Tzn/X/z2GVe8fmX5leDiXjXgg
 8OKmk62n/dNT/lKXqKNwalWu/mQK26ho3gmbkcsuH2OuK7lAbTKza7cze0PpiJd4jvf1
 rZAGHY1LYdtL3+Yg5UfFc4AyrzjkEtRle2GDDwNHmBlgZVwPkZ/Mho91K8arPIssNqT1
 QUBlK9ebe/SVzLVimTiJe5bnj6sHbXsZgfQowSR2zAveP9yCyGTh5WU6p/97CWfIiX+5
 a3Fcj8ddTlBUZgB/8F8cMusVGLkhQN/gY+rzbEaGG0MR6gnF84DX3oc21LtqsCxrZgLd
 3QoA==
X-Gm-Message-State: APjAAAWZReuDXCpRhJREyeDu/MAjvdgFBVkq+4W16ThxldR1+vthdhzq
 61TYtE1X8cDDw+w6HlKJ6kIcvU/B
X-Google-Smtp-Source: APXvYqxO/sJ0lmyW+8pktm+4S0J7BFcP9BdYxSjDj1ibIfU/TXcVf8V4Ss9FBzLYcAtrQG3k4varEw==
X-Received: by 2002:a63:e148:: with SMTP id h8mr10316900pgk.275.1564701240549; 
 Thu, 01 Aug 2019 16:14:00 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.13.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:14:00 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 05/10] nvme-cli: extend ctrl_list_item for connect
 attributes
Date: Thu,  1 Aug 2019 16:13:43 -0700
Message-Id: <20190801231348.21397-6-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161401_686617_87739837 
X-CRM114-Status: GOOD (  19.86  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:529 listed in]
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
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Hannes Reinecke <hare@suse.com>
---
 nvme.c | 72 ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
 nvme.h | 10 ++++++++++
 2 files changed, 82 insertions(+)

diff --git a/nvme.c b/nvme.c
index a5c2961..b93d9da 100644
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
