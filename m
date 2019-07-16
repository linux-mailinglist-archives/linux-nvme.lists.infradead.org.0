Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D966B0DD
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 23:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cFWP1X623iAX2hlxrjiOlQaZl+It0zJUzohDm2ww+Oc=; b=Mrj+F+yGAnVJFDfPQ2FGBlLQUZ
	JmJ7TCLUidNYw5btHH0igSrWvwOi8wIQFtmWUL8lg4mjmQn4EPsu8CgsjIVpl8KnIVLM44NpXnhkb
	ez2ta3TTV3DP7VEmdgJkRVoGQ4tR+9vwwAfw0eABXqe94MtgX4ABl9cNMRg0toxkLX+WBxqJfxFNW
	yICsABKnAE9ax/oFnbDPP5u10XrDCnDJ8S3t02qu0StCOma43Samaxnrt7ArOJPjAehLR8iEA1ojI
	3Rye4UILQoCjpQ9mb5bQRXvHLT7iLIPdgN9CL5VEYYFKZA5Rh4T4bpWluqOnt5UjRanBkPMRhYHba
	K5R00KnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUm9-0006Bi-T8; Tue, 16 Jul 2019 21:14:17 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUku-0005Nf-QQ
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 21:13:02 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so10701311pls.8
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 14:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gCB09bAsnYE7eaEUSatuK4JtSMK9l130eiI35Bsox3c=;
 b=AD1NTH1Rz8o03qLAwsCNdq9HVHqIGOpYxNq4G++43rencuV+9wj6MnoOzWtd3TArPv
 R6yeZxlBEaT5FPr2Q3vsmVKFOdFhzGZbxTYGDX8teq+bBHcAjWgAWUd6iE+9+ENorbRb
 m7KW4v7ew18Xnc60JQ/nH8E39gE7dPZJJcuGOYtQ7vVOEOTCZ5K/hKjjbon8yVjIZMvz
 RlQdtPFjIJc3cWv+bu3jSVlSIOrm3YXqoFaCnCmDONudxHn/nVb0gJBUBMpYNzHtkNnr
 l8pD0sDZCoEROnAyUteqMEsT1XPfj8Uapl3ploo3O8WCLcMqYBqunnnKf9+E6qZMnFek
 Hn9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gCB09bAsnYE7eaEUSatuK4JtSMK9l130eiI35Bsox3c=;
 b=pHaCqlA9cCwrB5PFz5ECuJiIguH7p8t8gUS1r2O1+1IrCLxxNGwnHHNFUI8WCCsgwA
 AzVh/O3OqHcxfyRWsTMVWNnNf1E4k2D8jpHoZPHbNnjNpC4Y0ohjLMqf8J4FU5+mIZzG
 NYAYUasy3d+GH9YCtXe0oapF7UonupDC5kSNEtJ7FHxZlsYYWRAXk692Pojoscy46y44
 r7jjpE3RU1LY4YtXjARbVch2JDt2ExvHQFOzPt5GLi5QTW0qvVicu2rlipYQwD22QTBZ
 iC+UoEBGEsqbv04sRuFUzc3hn0J09WeVT1fqbwooys7MNDQ5cPcFwBC6RoXpxm6JU/eG
 9s6w==
X-Gm-Message-State: APjAAAU1bwI36hdB3YY3P9XH+cWFq5EgeU6migr4+HpDqx0zeYVn8sIa
 nmRogaF/QaWqkeoruTC5HbQzCWuR
X-Google-Smtp-Source: APXvYqw5c3Y8crWULGdCZj7Pf8/Jp2vdYCjKIpnrL2AMxudYgngeVp+Q1dyYPIxjN+KPhBtp9+xOOw==
X-Received: by 2002:a17:902:44a4:: with SMTP id
 l33mr38206835pld.174.1563311579951; 
 Tue, 16 Jul 2019 14:12:59 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v18sm140683pgl.87.2019.07.16.14.12.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 14:12:59 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 04/10] nvme-cli: Refactor to create a get_nvme_ctrl_info
 routine
Date: Tue, 16 Jul 2019 14:12:35 -0700
Message-Id: <20190716211241.7650-5-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190716211241.7650-1-jsmart2021@gmail.com>
References: <20190716211241.7650-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_141300_874914_50D402E0 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

Refactor the get_nvme_subsystem_info() routine to take the portion
that creates a ctrl_list_item and sets its values and put it in a
separate get_nvme_ctrl_info() routine.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 nvme.c | 77 ++++++++++++++++++++++++++++++++++++++----------------------------
 1 file changed, 45 insertions(+), 32 deletions(-)

diff --git a/nvme.c b/nvme.c
index 6fe99eb..dabbbe0 100644
--- a/nvme.c
+++ b/nvme.c
@@ -1544,10 +1544,50 @@ static void free_ctrl_list_item(struct ctrl_list_item *ctrls)
 	free(ctrls->ana_state);
 }
 
+static int get_nvme_ctrl_info(char *name, char *path,
+			struct ctrl_list_item *ctrl, __u32 nsid)
+{
+	char ctrl_path[512];
+
+	ctrl->name = strdup(name);
+
+	snprintf(ctrl_path, sizeof(ctrl_path), "%s/%s", path, ctrl->name);
+
+	ctrl->address = get_nvme_ctrl_attr(ctrl_path, "address");
+	if (!ctrl->address) {
+		fprintf(stderr, "%s: failed to get controller address.\n",
+			ctrl->name);
+		goto free_ctrl_items;
+	}
+
+	ctrl->transport = get_nvme_ctrl_attr(ctrl_path, "transport");
+	if (!ctrl->transport) {
+		fprintf(stderr, "%s: failed to get controller transport.\n",
+			ctrl->name);
+		goto free_ctrl_items;
+	}
+
+	ctrl->state = get_nvme_ctrl_attr(ctrl_path, "state");
+	if (!ctrl->state) {
+		fprintf(stderr, "%s: failed to get controller state.\n",
+			ctrl->name);
+		goto free_ctrl_items;
+	}
+
+	if (nsid != NVME_NSID_ALL)
+		ctrl->ana_state = get_nvme_ctrl_path_ana_state(ctrl_path, nsid);
+
+	return 0;	/* success */
+
+free_ctrl_items:
+	free_ctrl_list_item(ctrl);
+
+	return 1;	/* failure */
+}
+
 static int get_nvme_subsystem_info(char *name, char *path,
 				struct subsys_list_item *item, __u32 nsid)
 {
-	char ctrl_path[512];
 	struct dirent **ctrls;
 	int n, i, ret = 1, ccnt = 0;
 
@@ -1574,38 +1614,11 @@ static int get_nvme_subsystem_info(char *name, char *path,
 	item->nctrls = n;
 
 	for (i = 0; i < n; i++) {
-		item->ctrls[ccnt].name = strdup(ctrls[i]->d_name);
-
-		snprintf(ctrl_path, sizeof(ctrl_path), "%s/%s", path,
-			 item->ctrls[ccnt].name);
-
-		item->ctrls[ccnt].address =
-				get_nvme_ctrl_attr(ctrl_path, "address");
-		if (!item->ctrls[ccnt].address) {
-			fprintf(stderr, "failed to get controller[%d] address.\n", i);
-			free_ctrl_list_item(&item->ctrls[ccnt]);
-			continue;
+		if (get_nvme_ctrl_info(ctrls[i]->d_name, path,
+				&item->ctrls[ccnt], nsid)) {
+			fprintf(stderr, "failed to get controller[%d] info.\n",
+					i);
 		}
-
-		item->ctrls[ccnt].transport =
-				get_nvme_ctrl_attr(ctrl_path, "transport");
-		if (!item->ctrls[ccnt].transport) {
-			fprintf(stderr, "failed to get controller[%d] transport.\n", i);
-			free_ctrl_list_item(&item->ctrls[ccnt]);
-			continue;
-		}
-
-		item->ctrls[ccnt].state =
-				get_nvme_ctrl_attr(ctrl_path, "state");
-		if (!item->ctrls[ccnt].state) {
-			fprintf(stderr, "failed to get controller[%d] state.\n", i);
-			free_ctrl_list_item(&item->ctrls[ccnt]);
-			continue;
-		}
-
-		if (nsid != NVME_NSID_ALL)
-			item->ctrls[ccnt].ana_state =
-				get_nvme_ctrl_path_ana_state(ctrl_path, nsid);
 		ccnt++;
 	}
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
