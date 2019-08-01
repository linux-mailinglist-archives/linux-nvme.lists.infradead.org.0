Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C417E652
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:15:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DVITDzO3F6135AysSeHXMBOnVTOVqb8kTU6x/5vnpHM=; b=LkywuARWmoZtHUK5LYFGMEA1pe
	p5QMpqu06twNsRdq3tp5xjexW+kFdY71c/Ry2KL/IAoFKW1fJTZD9GZwvxrae7gtkJC5iEDsagGzk
	hLGauhOZWgvujbcvX5pNibIPKz4iVs1rFd3dOmAzHxl4gdGZ0PGzlJLtBTskRtY3XRgPpMM+AWmsz
	Rv7GU7mQN95VLPtKdDZ/6HAP/gbns8IH+fYYYaQZUrgO4HJZZwTzaiETNZIop/9hr0v1zDDkWH7Ja
	vxcKGdnEW2nn6K4pYZd1DXIe1Ca4SBAlQcXUhRk+olzGyGkqyZD1HNH3CVnEWSWHz/oSLqDLYqp0n
	FXQdENAw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKIU-0007rA-FI; Thu, 01 Aug 2019 23:15:46 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGp-0005A1-Qs
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:05 +0000
Received: by mail-pl1-x641.google.com with SMTP id y8so32862652plr.12
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=VMBBru6uapH32Wgk+1ugCAcRQVK2fPfo2T5Dfd9ciFc=;
 b=LpiJ0ObBTSzqqJLdhxYf/8o3dGHh33vI6qNoiVvd1Mo2+YcrVj7d8+6NP8w11TsnQ8
 BBaQEnH4bGUuG1X2aYnkWXtooC4cv7L7Ew9V2ilnYXI+4h/6CUcNwlMEKYJYy4cHkyK9
 vR7M1WUlgIpc6pGn73isaVWresaKMJtY46jJ3+TyASDqVo080ERCzJHA0dP7sunjGt1q
 ATVhnQiDVn2grF+3qK0ZVv9m8+QPWSGbkH5ecSlmdrdVfAgg06PogdWiYI35C6dSCT2W
 4nNS7LufQQqIiHQQ9WVv/lw0JUvxJb3WkcR9LXCl+PeirTUnnPDSGkZbFo3ufsaF4Hyb
 2l5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=VMBBru6uapH32Wgk+1ugCAcRQVK2fPfo2T5Dfd9ciFc=;
 b=fIn1SWcZg+HzCAXjTN80ZrlLwg/UFrlAVP1mZEUMLybLGUnnsQK/OG6LSyU80xHbVv
 hX5pKQ7u6P0pa6TIaUlsZSclNk7Rv24Nr/3jdZ95ZGAOACpVHWmm8xKUlUPnGAiDbO9n
 XFxoQV/yycy18FLWiLuYZBLLvKCsFFVuL571OXpMD2g1KkNxYzeMQ7t+x+JbRjC6jCSR
 INUWWpasI1k6aDT0yga45tmBP24oLmXt3mNRiATR5ulv7Veil9dYQLSJJbB4d/EtMGtH
 l6IovSzEweakbcxKI+PdcWo9GDLqhhmMlZZIf7WGNKoSfrKg8Con9KApgblIl/ZtHXJ9
 mdLA==
X-Gm-Message-State: APjAAAWBbNhbadMzl/or03a2K/NyyhCxbbfu6HoHoirhMpelPOT4DvsA
 4fpWNnk22eXFcyZ976X4/vuXwSMJ
X-Google-Smtp-Source: APXvYqyH/FQnK+OGvX4eSV+ykun2SM06zdeGLwXF56164+p4/5Z4erAvgs5NxcoyqlWKGMCmoKCHrg==
X-Received: by 2002:a17:902:ac85:: with SMTP id
 h5mr129790525plr.198.1564701242832; 
 Thu, 01 Aug 2019 16:14:02 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.14.02
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:14:02 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 08/10] nvme-cli: Expand --device argument processing
Date: Thu,  1 Aug 2019 16:13:46 -0700
Message-Id: <20190801231348.21397-9-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161404_181101_A03FE7A4 
X-CRM114-Status: GOOD (  20.63  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 38 ++++++++++++++++++++++++++++++++++++++
 nvme.c    |  2 ++
 nvme.h    |  2 ++
 3 files changed, 42 insertions(+)

diff --git a/fabrics.c b/fabrics.c
index f3afa0b..9a7f832 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -872,6 +872,8 @@ static int connect_ctrls(struct nvmf_disc_rsp_page_hdr *log, int numrec)
 	return ret;
 }
 
+static const char delim_comma  = ',';
+
 static int do_discover(char *argstr, bool connect)
 {
 	struct nvmf_disc_rsp_page_hdr *log = NULL;
@@ -879,6 +881,42 @@ static int do_discover(char *argstr, bool connect)
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
index bbf1a2c..55dbe35 100644
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
index b91a22c..e630b10 100644
--- a/nvme.h
+++ b/nvme.h
@@ -193,6 +193,8 @@ bool ctrl_matches_connectargs(char *name, struct connect_args *args);
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
