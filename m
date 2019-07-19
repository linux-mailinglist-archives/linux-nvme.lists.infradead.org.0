Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 393C16EC9B
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:54:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cFWP1X623iAX2hlxrjiOlQaZl+It0zJUzohDm2ww+Oc=; b=Fuh3+PPeJRLJLRPB5FRhIankFl
	/g54OtQPlAuajrdnDhMM3i8Wol9F4mqvoYWhy6ERvuIhBVpO6Eiz2NXxNeiRD8EauO4ErrbJh7h3o
	bYw5iUTvOviJ8qCC1SleB40n6ECNx/jQ7pAIGR3lDcDNLUSd1h4TNU6HMH1EpZqLGq1+gCfmVeIEB
	8adr4dkqAO/iFdp4FLcpKzpjkfrBPT4mkK/Iu3gpC8d/rg4ZnJkNGTMjTruzAB7xv0+Z+vs3KJ4IU
	gt68CgEdo0DQeOwst7xzv03zl2b4SM4sp4kJ9XZplLuFsDTxQ5TCc+zurWr/gSp0c9I/5vyoV24KY
	hTmcRsVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoblm-0000kC-Nx; Fri, 19 Jul 2019 22:54:30 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobkc-0008S8-5h
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id 19so14773419pfa.4
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=gCB09bAsnYE7eaEUSatuK4JtSMK9l130eiI35Bsox3c=;
 b=LM7b8YJHhupCjG0dv3vW/ox8ux/VZF6yXiraZVdMzE/yG1a2Iqblw0N9dczkzVgxA5
 teilLNNCRUd1wFhRNvLiWKc70dRIgH1HsQSSXR/+ekeOZrHphbnr+4szdCjqCX9Q7pVy
 2ZpxjhhKo6L1tTwMKNg3skiBCif8rpdhD89thUlpe6uIWscotYh3n8AAjuPhGOP28xjV
 rgxNPzdtoecPL4ShkkJdAtg1fwJ84oG9u2pNQdiWKMcC2bG8XQg3xQux9muo68U480zp
 qpJ8joYjNdwGoA4oe/X2RqNJcB3eW6LG7kzyEFkZEJyD8UxJl6GEuuExQgR8f91Pqh+A
 9C1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=gCB09bAsnYE7eaEUSatuK4JtSMK9l130eiI35Bsox3c=;
 b=Gr4OsA5ncTKdksl65ASDZ8a6+fTJIpZueJcU7zIErPQEWcV4Re5Nh4uPpPvV/c6dcC
 uzoBNzznrHQ9pJZfbrCydlF5oOTCs1nhhrnfgy/Dvph1BpsZIjXizoUnvfpn7VT4gYX3
 aERZn/Fl4VTRwXeiY0L1+tP4Ppg9mGQcp/s7P07F7GLoj+n/65GNflb+j/t039ZvAHeq
 H1ChvaoBHqVogR3eKHFHLAKcqbr+fmPl3seolW7SwIGQ0gssYNLbbk3hkXanPm0IQ9aX
 hYZY2c57FHROIiOmxKmkZNJs+TTTbs7vksE/dd3l3CINLkEz2P7z0HxOmH0bg0QflThc
 DQKw==
X-Gm-Message-State: APjAAAWDkNy8KgZGeuZc/LjUUdXHso1qG4A1apx22EfCQ1WRxdKh8GKb
 N0KQ3Te2SFwLfQqRGAIJyH3+gAFB
X-Google-Smtp-Source: APXvYqybP2PfF2Z6ZQRE+y4v8xj7hKyg12wJg2rDuDJ7M2pHJSrWP8CAHLDJsrdbL7Wr+WFJHxkVnA==
X-Received: by 2002:a65:5188:: with SMTP id h8mr24105495pgq.294.1563576797020; 
 Fri, 19 Jul 2019 15:53:17 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.16
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:16 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 04/10] nvme-cli: Refactor to create a get_nvme_ctrl_info
 routine
Date: Fri, 19 Jul 2019 15:52:59 -0700
Message-Id: <20190719225305.11397-5-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155318_214944_9E84B235 
X-CRM114-Status: GOOD (  15.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
