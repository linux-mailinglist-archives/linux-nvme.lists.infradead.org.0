Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 868A96ECA0
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:55:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Hu9ACmSXKSTi4MnnhztWpJesq1SmLJ+zE3YWfLCQ43o=; b=Zz0CGXoo5uAUCxRBi5lnJJBg1H
	RKzFec0LLjZq5Nl0khmyjzi1GYoMlkwOxGGu3rqk8VZpBzHlqJDalxtG1/Cdvr1eAx9Gbxp6XNNY1
	b5qms1riwmUetorSu3cIw/Bvj8KUPeEi7TOf5e007rH6QRfKbf1xlwLjFqsF8mJCX/k82ctiJI8ER
	iNSBPjH7GhUI2KyM0yLBPL06JgbR1CUr5LCmikCFWDAKLK1ApxifEd2Zte2LkwGA4ODl77yCnFZx/
	lUpS9BvhKJZ+f93R1YrbwA+C24gs9k8zXTcATi4ZYqEDOJUSurQRWM30XVmMvjNwY+lcTdzeyPw+M
	5Le3q47w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hobn2-0002mv-U6; Fri, 19 Jul 2019 22:55:49 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobkf-0008Tx-VP
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:23 +0000
Received: by mail-pg1-x541.google.com with SMTP id u17so15060825pgi.6
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6qZM86u9TNYpLGUBYLRUEGcwQyEWpQprxQhwj6Z3jRg=;
 b=st3sJTHUOuUKKNDIjo7Q824I3daKCK0GqJ+ERu9QVJ6QlHEnVTv0U3nrRExlImiOpV
 7VpxbAfAI0VvF9nUWUAtctkO17cfSblEmAkCworqbiWmzRn+/VlUpk5Gi9jB0v9kv/MD
 E5VQTCC2Dh34n1Vc0vXkOhqp+O2VqufRROfjL6b8mJ8Bn67stBXnWBbNDgD+leXTV9GQ
 IvwZVXvl9O4FfXaVG2dxFj4swFyAOwH6glSEpGbzBLhdp09pRYbKoqWpc1woxAF5jqUc
 ItxoXSbze9QJ5N3feOLs5lfSfrMJ7Q6egz3TqdjM5QGzSj/5fOTSHckoOS8qGWJP5Szc
 zkEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6qZM86u9TNYpLGUBYLRUEGcwQyEWpQprxQhwj6Z3jRg=;
 b=YB7bvq1PU9J6bNAEIYgqeQKv+x0K5khdH4MEni0Ch05/sqgd3MyXL/U6xQfNf4ZKtX
 3PCAcvGgHZpv95T1ehsm43R62aj4z+McaQuapWjsO0uhRklhjyEpQVrJpyaptb3gE47s
 8z0MHR4KsRbncIhD4dyoKeZWd7F51B3brCExtyOLrQ9taFhJseoqPPF1OtfSmYSfFzJ9
 eu9FBHA+oCdd+LhWZSX0HFWtWYnHoWJ8sA9AW9bgELv8ixshdIMeYIOBoMV47HpcA6Ab
 o66IpRIyYnPFUZZh+w0anT+pCOs/lyOiSBRHoz3Vw4phWeY1Sl6QzBg7Gkhh+mBlSPB1
 n9rw==
X-Gm-Message-State: APjAAAWY1JGRDnutxz9rqICA4ulNFuSTnwIvmHf6bsvj5Fd8+NAqwbmt
 rIjlEN1Mcem2z8gtHJwSjZWRqMUL
X-Google-Smtp-Source: APXvYqxuWj9JicXBO6Z2Q53JXQXj2eeb0bAlrwylEXtd9ci3KOAv03vrSdNKmXepTHod4QSNfFxwDw==
X-Received: by 2002:a63:d415:: with SMTP id a21mr55098926pgh.229.1563576800868; 
 Fri, 19 Jul 2019 15:53:20 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:20 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 08/10] nvme-cli: Expand --device argument processing
Date: Fri, 19 Jul 2019 15:53:03 -0700
Message-Id: <20190719225305.11397-9-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155322_349219_370EE884 
X-CRM114-Status: GOOD (  20.01  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
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
index e4fdb4e..1a1191a 100644
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
