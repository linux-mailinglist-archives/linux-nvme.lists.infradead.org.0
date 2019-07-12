Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AA3662E8
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:33:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QDxVuXQdz996fdfYnmHj1fx14N9f38DCDixKStLA4Wk=; b=DqdbDswTFGFVsgzAJo2STESdbz
	kYejgtY4C1n8XvJBINT/Y7i4uzYp6rrTG+1gN+JHkRLi/y2TGP6VhspidFozdy4B+S64v6SwoQGVu
	qIdX4TZP0NkulsrJcpyVZ03OiD7sCh3bEKoiipb2tZJK0V02aV09PR9jVGjxFcPjV4c6bx0FmYFo9
	ql6H6elxptNaYaxDzlOWhGOj+DL003XknwO2yiQcrd4KbH7kN9zSDKYnXjiT336wb9YR+8gE2s10O
	Lz9bxxEUkIMOo98c2HDcjrFhPnOElG2Vrdq76K5L59uS9g/cbFk4fo4TGNjrkD6XV2T1PKq3Ko9Lu
	KLf0iqhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljVN-0002Jb-Rc; Fri, 12 Jul 2019 00:33:42 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTg-0001XS-Ay
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:31:57 +0000
Received: by mail-pg1-x542.google.com with SMTP id s27so3718745pgl.2
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:31:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=5jHyMu2R4tJhBzTytUMOx3dbWGNx4rJP4rzViGoWBok=;
 b=BYWC+M9xdp1AheRjgvvUZ3jqjJ8lyIzjk/xcPHrWu0HdWuX1KP/55MaZYd1c8Sh1K/
 FG3Cm3ZYC0ow8tXP2HzNLBTGcRtX3prZ5088gt3ZCK2N+xo5HtkOQ6Jqt3D6xIKCQNnb
 W+41rlJ8Bg4pUVC6GNBPBzJiaU1gQqKiapi7dpHXQJtx6LQesuB2AMiFRTzJRmJc9JXx
 tKrLhB/RPuJkvlG0SoXcQgRyLYWtSvtnSkOaYHB/OZZCbKuPGBKpK9e+y+3kNbHkAIP6
 kWv9gcVXDyPGwU94oxrjDfD0s6WH1EKhNbAoTYjLGIcNJndqfbBnnjMbLAQVm9+gO+Tk
 M8Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=5jHyMu2R4tJhBzTytUMOx3dbWGNx4rJP4rzViGoWBok=;
 b=gadmYYEJNYxjcu0tYf1xKonoYPmiYgh9C9nvRwNq+iTLRKH0yYDIOppSrtG0q/IcBm
 jv5NWsF93mWm49dvWoKWK3Nyno/Nywdfy3CqQv5LRxL6xM9d9ZHK806hs7Xfbg7fJoEN
 wfzSCcg+k2Ogy2VAva+HH4lW3+1hC5eh07nZEO8bBV9cJmTlsFwqo75upmXb13SbiFZc
 dm8s+Vvc4NRiq5iO1Nyf/9SfFJkqJQAaUiWL00D1JzCAHWXId8GjeNWgMBf30On9wKmD
 gtdTv4LoowFycTHcKutGjH+H5r42pmU56AKFdsH0Y6ob1IVUKG3r92KEJdj8gTEUz+fV
 LOjw==
X-Gm-Message-State: APjAAAWNJpQHTT9iKefXBBbmkcJ4OM9APMdcMIGfZlxaAPduH94s69Wh
 Y131QbCBo5zdUd0s8kSQzWMPSzd8
X-Google-Smtp-Source: APXvYqzuzLfOyByu70vwHKZ1GC/mZXBkbykFuS7p2wS3zREvYUiMMmsTX1OdMQ9lynFQWfc5JvFBLA==
X-Received: by 2002:a65:43c2:: with SMTP id n2mr7396597pgp.110.1562891515522; 
 Thu, 11 Jul 2019 17:31:55 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.31.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:31:54 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 04/10] nvme-cli: Refactor to create a
 get_nvme_ctrl_info routine
Date: Thu, 11 Jul 2019 17:31:34 -0700
Message-Id: <20190712003140.16221-5-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712003140.16221-1-jsmart2021@gmail.com>
References: <20190712003140.16221-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173156_374595_82B324CA 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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

Refactor the get_nvme_subsystem_info() routine to take the portion
that creates a ctrl_list_item and sets its values and put it in a
separate get_nvme_ctrl_info() routine.

Signed-off-by: James Smart <jsmart2021@gmail.com>
CC: Sagi Grimberg <sagi@grimberg.me>
CC: Hannes Reinecke <hare@suse.com>
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
