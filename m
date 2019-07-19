Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E056EC9C
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:54:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sTYpPMXedEeAmX4yJ8S1Nbr/bsumauVDSKRSkbPGTCw=; b=N0AarMexM/lFEG2GCvKkvhcaX1
	iYWCDtVKePn4qpJswe6cYC1qteUAew4vXorseKVUpopuO637z2gR+fJAdSclUhbxz4nwBgO6ETKAp
	XH24m2iTE+YVGCuHb8y7B672WeL+G22ribOBlvRoc2FBd3kshTrWMUMLS1gser2q2LtioaZwcMFjg
	jSqVCGCc8x45RxBRSrt1zOPb5sQa2TpzDdfA0mVlGuF3X0nqgy5o+USnxIxnU19OlsYkPrSaoXvk6
	99s/MkazaQ3797jLqMc4dGNOk7va3VLomPrn1/QLNHheUrSzP1/3m4Oby0wR8Q9DZwVv2rLZUyYug
	Cxt3ln8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hobm2-0000tc-J8; Fri, 19 Jul 2019 22:54:46 +0000
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobkd-0008SS-3Z
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:21 +0000
Received: by mail-pf1-x42d.google.com with SMTP id y15so14777250pfn.5
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Bed0vsIGHvXESqBeA3nuMtM9DJrB+S/iVkn6x8+MRjI=;
 b=inPbomsWpSAS4BeG0lVHo35X2DLN74+ODL4+apPtUI5V+hDfIleJRgoRN6q+xZnK6P
 AFrqG1DhEuAfUy4f1LQwh6MeVi1ckTBmuz1VBkshJ4W9ChDQRwwOw89e4J4s3lDnhdpw
 2gBI5VFm7BXZe9xy/Vr7VojjetU77qZzVR4ASq5NfTjZhHYWR3TCKCRezdkUcBsBvi1U
 vNATEHnLe3ldb4gj81G4jZxgmj34DCKKbEFjYU8aPIuBuPTrKjivb3enfxJCFUrXSNDQ
 YbLaL5WB+5OC77Fl1kjoz04pNr64zmjfbm43sKFGgljgcfaGQtZBPKuGeMr67WzZP5YT
 M+VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Bed0vsIGHvXESqBeA3nuMtM9DJrB+S/iVkn6x8+MRjI=;
 b=A0zgIjdymWeDhM0ejnr/uErHWqNgqeyw5+PgdpvMoujFys5QVpWb97xhsKXV0x6L7F
 u7UHSSIvnMyKrok68MIsoSP3khxayyCylrqsBxfzkU29gS13ncRiFcTCtgHbvp2UFtZU
 F2vSOdY+72Nu2C+XGhD1hkCTumTl00OmKvhPQoGm1+vAk3JUPMSwweRzHwWJ0Yii/aQI
 8bqe6yQ1D2t4h0aCsCUhPGzLhGpNLWTls/XR00+5LqfuqbgrMMj2GNxth6riLzPzPXVF
 L41EWUB32qb6sPf4EPxHwpzfFmWOsnei1SXdbdXuerhKDOarMsCd/vQuQ8zJ9P9CWZGJ
 5NsA==
X-Gm-Message-State: APjAAAVaN3MwM037i2rDkzcCIEBRsCF2JycadRJoSRV1LV8w6IL+tuD7
 JY+f4P8MUgU0Re6pmPPnJ3cslHyC
X-Google-Smtp-Source: APXvYqxpjHTRjN2mfDm4K/PHBlKtwk3OLonCm8H8TOl1YruC9Mjs5n/MlpcjLnmnymHMTpumLGDhaw==
X-Received: by 2002:a65:6256:: with SMTP id q22mr56144685pgv.408.1563576797997; 
 Fri, 19 Jul 2019 15:53:17 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:17 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 05/10] nvme-cli: extend ctrl_list_item for connect
 attributes
Date: Fri, 19 Jul 2019 15:53:00 -0700
Message-Id: <20190719225305.11397-6-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155319_392881_CA2A1DAB 
X-CRM114-Status: GOOD (  19.33  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:42d listed in]
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
