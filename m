Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 27A116B0E1
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 23:15:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=2XAlFDh0JJ930ppMRo1zEYFtTs2wKUq02dZdFMZv7mg=; b=uN1TLYkCHMPvHH4ytdiZdVjehL
	ZmOdeGSUMl2BkAVrQq3VWvIHBEzps3OJsaxL2QmINPlgnSlxfaTrZ9gtXul3aeugi9Aege6fRLjoH
	eD/eQVvI8rMHCQjaYdCV4gXupHLmRgOTWYGgtjbjZDg0DeBv17IhRW+jpPu5rDWdYm5Dz+AryOAxy
	loIOCiMZNxtlBpPRJ4Fz6/2+zqKYM0NZwqjqp2kUK08fTnxHNW6XrquByK6nSywsLwYiO3hrNDn5f
	RICPKa93dblYQlmAcQMRyZsbbU6IgwmDzvVf3dE4qkD3BPZZtAnizuInv4v9+AH+V7iGBXwzJq/bD
	u5tvvXmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUmy-0006g5-NM; Tue, 16 Jul 2019 21:15:08 +0000
Received: from mail-pl1-x62b.google.com ([2607:f8b0:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUky-0005R1-8l
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 21:13:05 +0000
Received: by mail-pl1-x62b.google.com with SMTP id b7so10758653pls.6
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 14:13:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=dmi/uZX2oc2O5XOcOkPxU12DqL/K1jLCEu7BdQ0LCkw=;
 b=Y/QiAt89FH6E8ox60tOTabEVp+LhcxIRyV2SbAaiDQSnNs1zsgh2d+9Y6XT+1tl7cZ
 U3WllaO/VDZeFFKELP4/PjkgYGzelbyiBkZK+6F0Mzk02DhTCzVHYHcwq3qPqXI0p5pm
 yA29aD4t5d2r3ykLw+eOaQ1OI/HQxsJF/vMFSt9+2xVICk1WdXXXA9Gr7MjwvGgt4WOy
 NHV5WGA/vszsSklDe3Fvyfl/0Wf1yRagJK/EgpU16MyAfgskLB7pHy8Qiz9u+UyZLeWu
 mYqdGUUcgymL8/UwL8B3KA71ox7LidpU/xp6U04y5muGTwcjoySreUqskHU4Md6wWkax
 t1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=dmi/uZX2oc2O5XOcOkPxU12DqL/K1jLCEu7BdQ0LCkw=;
 b=A2hhzV+IWsTpaU9HPB59Xc9GsE5+ZMJiey/o/yXsC81swZhybgL1ueiNKo0DglTon6
 45myPMGVH4yrVpaNmQ20x8EZR2ZJIZg8dOFu97IZo9BIPopnguovdJdNKAAr7S3uZ+eP
 2SDuVjhTcno+zHyVLtGFnOUzFoBlNbxPZtXVpLBQJg1jChyf865N8+9CLNOOUorMNZe/
 F4vMfgJKz0Nl3X0M2+KekjnN/0AEXwqK5m52+U4cQ2kohfdIVNndK2iO+0wKvE995fUA
 aR8C9jP9SfYSJR5N/ju5WBioXMuUR4D9mSuLYsTvgnoFNy841lU52lrHR9kd9kDbLsY0
 P6Mw==
X-Gm-Message-State: APjAAAXcR3akce3CkrUArYPKTQJreGrI8/XpitfgEOLvsJY4l3N5naHp
 9wHSW+/KGVOXg+V8baJxbLDMiAVI
X-Google-Smtp-Source: APXvYqwsJB+2Ymuie+q6gz8SPyzF5B3FCo/UhggOqbNuQQxVSz8ZeSyAPEW4sPzSdD0j3cBZvrqMsQ==
X-Received: by 2002:a17:902:9689:: with SMTP id
 n9mr38848276plp.241.1563311583060; 
 Tue, 16 Jul 2019 14:13:03 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v18sm140683pgl.87.2019.07.16.14.13.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 14:13:02 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 07/10] nvme-cli: Add routine to search for controller with
 specific attributes
Date: Tue, 16 Jul 2019 14:12:38 -0700
Message-Id: <20190716211241.7650-8-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190716211241.7650-1-jsmart2021@gmail.com>
References: <20190716211241.7650-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_141304_332106_4C931096 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:62b listed in]
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
Cc: James Smart <jsmart2021@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In preparation for searching controllers to match with connect args:

Create a new routine find_ctrl_with_connectargs() that will search the
controllers that exist in the system to find one that has attributes
that match the connect arguments specified.  If found, the routine
returns the controller name ("nvme?"). If not found, a NULL is returned.

Routine is defined as a global as a subsequent patch will use it
from the fabrics routines.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Hannes Reinecke <hare@suse.com>
---
 nvme.c | 37 +++++++++++++++++++++++++++++++++++++
 nvme.h |  1 +
 2 files changed, 38 insertions(+)

diff --git a/nvme.c b/nvme.c
index 7f706c8..3fc2658 100644
--- a/nvme.c
+++ b/nvme.c
@@ -2048,6 +2048,43 @@ cleanup_exit:
 	return found;
 }
 
+/*
+ * Look through the system to find an existing controller whose
+ * attributes match the connect arguments specified
+ * If found, a string containing the controller name (ex: "nvme?")
+ * is returned.
+ * If not found, a NULL is returned.
+ */
+char *find_ctrl_with_connectargs(struct connect_args *args)
+{
+	struct dirent **devices;
+	char *devname = NULL;
+	int i, n;
+
+	n = scandir(nvme_ctrl_dir, &devices, scan_ctrls_filter, alphasort);
+	if (n < 0) {
+		fprintf(stderr, "no NVMe controller(s) detected.\n");
+		return NULL;
+	}
+
+	for (i = 0; i < n; i++) {
+		if (ctrl_matches_connectargs(devices[i]->d_name, args)) {
+			devname = strdup(devices[i]->d_name);
+			if (devname == NULL)
+				fprintf(stderr, "no memory for ctlr name %s\n",
+						devices[i]->d_name);
+			goto cleanup_devices;
+		}
+	}
+
+cleanup_devices:
+	for (i = 0; i < n; i++)
+		free(devices[i]);
+	free(devices);
+
+	return devname;
+}
+
 int __id_ctrl(int argc, char **argv, struct command *cmd, struct plugin *plugin, void (*vs)(__u8 *vs, struct json_object *root))
 {
 	const char *desc = "Send an Identify Controller command to "\
diff --git a/nvme.h b/nvme.h
index 2fecb68..b91a22c 100644
--- a/nvme.h
+++ b/nvme.h
@@ -190,6 +190,7 @@ struct connect_args {
 #define SYS_NVME		"/sys/class/nvme"
 
 bool ctrl_matches_connectargs(char *name, struct connect_args *args);
+char *find_ctrl_with_connectargs(struct connect_args *args);
 char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm);
 
 extern const char *conarg_traddr;
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
