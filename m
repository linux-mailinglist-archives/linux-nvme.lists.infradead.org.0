Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C4A8662F0
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:35:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4rsnezIBNUanEikE/gpG1m5lP3wPG7Ov3/Q7FjvOvvU=; b=d0cWYbLxc5JhthUmYinfVJOBDr
	2wEVeYZJ4gds+KM61HuYsKg2A1B9uL13tCdiIkWVy/t+wbbH4LpEMyHV5avl06h/pfmEItnnXePxJ
	vyBjZ/gu9sw3q0yQ6409kMtLmCpNJq7wGQrqlAOj0lkIKDGXpgEdQhiYW/ogemYa2GcRWVbRD3IcD
	I0iZ7nWVqjIeAanPMZ1+IJrnEajJc+B7N1MWpjKpO/WQ2BD85pedG/vKGtReIGoJAIpOXK6yLy0A4
	wYPdgkNY1K8bw/l7bvKJ8Gl/XbVfQchegAgDxs9TsCZk0VPoER2JNEJWvKQ/d8vqx15/N5AM+YvNX
	OhHjaQdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljX7-00055N-Jh; Fri, 12 Jul 2019 00:35:29 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTl-0001a4-AD
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:32:02 +0000
Received: by mail-pg1-x541.google.com with SMTP id l21so3709090pgm.3
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:32:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=4MZeZKDnsYJhRk97gBAPcF5MBbpyWApk/mG/3S11AXc=;
 b=JsvbNxl9/5dctat3Pkg6Lx4jKLymIGvbVpG+wpRozbrgTkBvENyctvb5yJajRVBRG6
 NKiZrPcrxV6BxDQ8zTBE66mKeJA5tj9mTLHJfhqHIPRZym7BZRFnxVmjOEQdLLooxScR
 2URrU5dwR+0ydTPt8Z/qgyh0dfJo/oXfFTo6thFvLoF562cJq9csJEWKz1VAIqwGrDtH
 QghO8JZl7hNW4t3T+RX/pda6wxUu+BjALaCV213zY8wzqNZePtYCZbLH4U+u/gojj8B4
 6Vgdmk0fQDAIuO1vEthO6pcYek/WmOkw0+cy1UvR+Az0hCsQDQhYyQMN0gIhJt5b+P6G
 xDwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=4MZeZKDnsYJhRk97gBAPcF5MBbpyWApk/mG/3S11AXc=;
 b=DYWzOBI6IWzbUSGnVVNpQis0zlHUsAM6phi0kFdsayTrmL1ujidr2dMufFcnGw8811
 xR0bZkMHF4spKAfMLTza6pHTO0Yl/dQE6Ebz5NAWLkwRKo6J+0c5EWNZrbrdHzh4V9Ex
 7635MR173BtEfJhXBBgf8zozx8tbHWt52/CMvV2yKoZ+1W94EaDeURYjv1L+Q+4iX6Js
 jS6E8cIUtlivKTNnQD7TltfCGnxe0moikshm+LOTg1Jfbug6r0dFL2z54ZzmX5jd+jIa
 QwUxL1MzQHxNMlZumDGO2jVKCrbclRDPCYoGc0L1mzvE2v9leKBB7wv597Qg9P3dt4f2
 WFfA==
X-Gm-Message-State: APjAAAWTR8sQ91SB0FR6j2GJuSJoOv1iOQXD/vJ6vFOf0j1f9AdImYOh
 0VPbBsUh9CD9uFTEFNmWZSfn+iUo
X-Google-Smtp-Source: APXvYqz+ZuU8T/5KdRrdFCG/RUwqnxMPPrk+5r8ZaqESliMujgRF4dMoSilfINuXhW56SAlu0jpI0g==
X-Received: by 2002:a63:6fcf:: with SMTP id k198mr7292970pgc.276.1562891520546; 
 Thu, 11 Jul 2019 17:32:00 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.31.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:32:00 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 08/10] nvme-cli: Expand --device argument processing
Date: Thu, 11 Jul 2019 17:31:38 -0700
Message-Id: <20190712003140.16221-9-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712003140.16221-1-jsmart2021@gmail.com>
References: <20190712003140.16221-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173201_453428_4BEB475C 
X-CRM114-Status: GOOD (  19.55  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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

The connect-all --device argument was used to specify a specific device
to be used as the discovery controller. The device is typically a
long-lived discovery controller that posted a discovery event.
No attempt was made to ensure the device is who it is supposed to be
before using it.

Revised the code to use the other arguments in the connect-all request
to validate that the device is the entity that was expected. If the
device doesn't match, the cli will look for an existing matching device
in the system (should be a discovery controller due to nqn) with the
same connect parameters and use it.  If one is not found on the system,
a new discovery controller will be created for the connect-all request.

The revision uses new routines to parse the connect arguments given
in the argstr parameter. As a couple of new fieldnames are needed, the
parse routine constants were expanded for them.

The revision uses the new routines to match the specified device vs
it's attributes as well as the search routine that looks for a device
with the connect arguments.

Signed-off-by: James Smart <jsmart2021@gmail.com>
CC: Sagi Grimberg <sagi@grimberg.me>
CC: Hannes Reinecke <hare@suse.com>
---
 fabrics.c | 38 ++++++++++++++++++++++++++++++++++++++
 nvme.c    |  2 ++
 nvme.h    |  2 ++
 3 files changed, 42 insertions(+)

diff --git a/fabrics.c b/fabrics.c
index d92c2ff..e101ead 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -873,6 +873,8 @@ static int connect_ctrls(struct nvmf_disc_rsp_page_hdr *log, int numrec)
 	return ret;
 }
 
+static const char delim_comma  = ',';
+
 static int do_discover(char *argstr, bool connect)
 {
 	struct nvmf_disc_rsp_page_hdr *log = NULL;
@@ -880,6 +882,42 @@ static int do_discover(char *argstr, bool connect)
 	int instance, numrec = 0, ret, err;
 	int status = 0;
 
+	if (cfg.device) {
+		struct connect_args cargs;
+
+		memset(&cargs, 0, sizeof(cargs));
+		cargs.subsysnqn = __parse_connect_arg(argstr, delim_comma,
+						conarg_nqn);
+		cargs.transport = __parse_connect_arg(argstr, delim_comma,
+						conarg_transport);
+		cargs.traddr = __parse_connect_arg(argstr, delim_comma,
+						conarg_traddr);
+		cargs.trsvcid = __parse_connect_arg(argstr, delim_comma,
+						conarg_trsvcid);
+		cargs.host_traddr = __parse_connect_arg(argstr, delim_comma,
+						conarg_host_traddr);
+
+		/*
+		 * if the cfg.device passed in matches the connect args
+		 *    cfg.device is left as-is
+		 * else if there exists a controller that matches the
+		 *         connect args
+		 *    cfg.device is the matching ctrl name
+		 * else if no ctrl matches the connect args
+		 *    cfg.device is set to null. This will attempt to
+		 *    create a new ctrl.
+		 * endif
+		 */
+		if (!ctrl_matches_connectargs(cfg.device, &cargs))
+			cfg.device = find_ctrl_with_connectargs(&cargs);
+
+		free(cargs.subsysnqn);
+		free(cargs.transport);
+		free(cargs.traddr);
+		free(cargs.trsvcid);
+		free(cargs.host_traddr);
+	}
+
 	if (!cfg.device)
 		instance = add_ctrl(argstr);
 	else
diff --git a/nvme.c b/nvme.c
index 314a04f..74d7c21 100644
--- a/nvme.c
+++ b/nvme.c
@@ -1549,6 +1549,8 @@ static void free_ctrl_list_item(struct ctrl_list_item *ctrls)
 }
 
 static const char delim_space  = ' ';
+const char *conarg_nqn = "nqn";
+const char *conarg_transport = "transport";
 const char *conarg_traddr = "traddr";
 const char *conarg_trsvcid = "trsvcid";
 const char *conarg_host_traddr = "host_traddr";
diff --git a/nvme.h b/nvme.h
index 04f8d46..eedc234 100644
--- a/nvme.h
+++ b/nvme.h
@@ -191,6 +191,8 @@ bool ctrl_matches_connectargs(char *name, struct connect_args *args);
 char *find_ctrl_with_connectargs(struct connect_args *args);
 char *__parse_connect_arg(char *conargs, const char delim, const char *fieldnm);
 
+extern const char *conarg_nqn;
+extern const char *conarg_transport;
 extern const char *conarg_traddr;
 extern const char *conarg_trsvcid;
 extern const char *conarg_host_traddr;
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
