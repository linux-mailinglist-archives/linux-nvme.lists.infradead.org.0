Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A0E7E64A
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:14:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FgapxMCMturyGtZMtKHGSzR2KkfnyCCCQNsX1Uq+cUw=; b=iqFfT/+aA7Hr+Yw/xhC7hmr9EM
	4I41XF5JjFNHuzFCtCe/KBtkWSuay44vZ2nR+rxE4DXYjV5SgWcDDmVYEYyQf6ROZxRKbPKMtNXg4
	T4sXB7TtLIdnSF9fy5PFmK9nFgttXTxOq/zgKdtlUyvmaN7FXMbycXeQiOlGEM3c+zBKDO4w9v08p
	yDjbWG680GsxMx6sOvGHbxQblIaTVq9zjIbMhD/Rg3Ql7KcL0qHMPJbOGMQMPAysb2VIT28XNb1Gr
	DefI3wMPyTAnHDKrRHrwE4z5+j/5pJMplLW3soOoz0eabPMNzQ8WGOq7p79GMF3sdX586KConA3L8
	q+1EkjNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKH2-0005FA-76; Thu, 01 Aug 2019 23:14:16 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGm-00057l-Oo
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:02 +0000
Received: by mail-pg1-x544.google.com with SMTP id l21so35017967pgm.3
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:14:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=18sy6RLW5pXnKUEWKTdvq8qFocD23iqBZP/xrfb/5F4=;
 b=gbkIooKSI2BGWRdYO0M8fQg36PgjMxXTiS6WWEuiyFfLMY8mpgXWwWTkQ2E/Sc2PJr
 JholtAgzFX5wnbKk/RQWS8vDRnc3BoWl1WZhl6nQbMBr/6huT4/6cL2Hmd/fQMqDAXUb
 WcZM8A+v1LHIk9bOP98V0HPrDIWJKTn36D/0EhXeYoHapxmC97dR54iE7VYbzGBpTLda
 M28IhN7Mm6vyUfFxB7CBGNvQB9qtG0byTX3nWmuuGOjICHjmwJTT2aJpuFYp+REq9gs1
 LKKW/mj0Rlj6gL2VnVY8z2CLEij+0JGyHzjbl+t/H1c2rvW4gSMd4Fbs1VHXXjGbIZVJ
 92uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=18sy6RLW5pXnKUEWKTdvq8qFocD23iqBZP/xrfb/5F4=;
 b=q00jDyt5uOvwwa3rcDcTpQcZP2FnYzF4tWnX2wDEHstTpInzQ5DarmmYrytMZQbAOG
 Fy52d+xAzWuy9FaWLj/jLoIxJqDsJbrFSN2XISD2BK5kbD84WGF2pxr+c6Q0plefY6T0
 /4toCBMvlzBnqIrkV+z/O0NANVyRwHIXSn+jPkW1hFyQ7rifNNhJt0fQOQIx8W7NPtZh
 /QkNCyp8pmZK7CUfqUpQ+suogdL6jRtIHqpaZP8Qfr4XN3qczfn8a+hy1VIg1bdTAQg6
 4ob755iTO1JLZfKHCq7CHMEilDxKKG2zCw7lHC7U5oGV3RpzkN38D5Hx4RwOPKB8xjqj
 Yv2Q==
X-Gm-Message-State: APjAAAVYgvinwoRwSYdlcQ1EcgN2UgpoBwpwj7hwNJocgUlxS2kDeeL1
 U5Joi3nmDvXPk1qX9bu98dXm6JuN
X-Google-Smtp-Source: APXvYqx6k3piEhu7sEPl3orVJCSlXmwGPoWbF1gmpnV41E4WCscOKOio7H0fgjPLX6szCme7l6HHfw==
X-Received: by 2002:a63:1045:: with SMTP id 5mr120658503pgq.165.1564701239713; 
 Thu, 01 Aug 2019 16:13:59 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.13.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:13:59 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 04/10] nvme-cli: Refactor to create a get_nvme_ctrl_info
 routine
Date: Thu,  1 Aug 2019 16:13:42 -0700
Message-Id: <20190801231348.21397-5-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161400_811057_10FE7481 
X-CRM114-Status: GOOD (  16.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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
index cfe3844..a5c2961 100644
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
