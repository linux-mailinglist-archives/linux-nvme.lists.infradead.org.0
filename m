Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911197E64D
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:14:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q6NBURsSsSqqGz9vRyrBGeU5pm2ghZHHFjMrG9eNTOs=; b=taj6A55KfbgUzDcIolrxeqcXDh
	B8mMsG0c3d5Fm/6x7bAhz+67vw7r+BQp3rAzQLfqqQA8YjJnZ0Dgroo7dX6S/JB56y5/2s9WcN7ye
	A7sLFeCQFW227o5B0s43mERJTVvH3h5Z/q6tsU8kDIve+6vYHsyGAyNuuT2ah/O2Ftpj1DWjHhjtC
	GRRVwf1YKucl84Edo/o93z281vK1PDt+V79xWQNNEHdH4q5VIw6doYY9RSynKgOhdotV8WgzxfHTW
	fQ4GCfix2uyrYsNQru0VDciVZTnIqmG0UnSeTz+c69X7RxsWtsiZB7hhfDYmT3R27aQB6sszBrzyd
	JGGu5Z0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKHX-0005m7-00; Thu, 01 Aug 2019 23:14:47 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGm-00057i-U9
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:03 +0000
Received: by mail-pl1-x642.google.com with SMTP id a93so32794228pla.7
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NV9xsCc/7I6sUYFCbK8nkj8ZGUiElRJQS9D3jXGeoyE=;
 b=LBLZ95UzQsKQnYRJNZRLAoQdpju7qaz6UTf87l9z+E6uxgo6ebW7d3XUIlQOeTmV8V
 6w06diJg6PUllVgHjGCZEuyhEiawa1t8ypYGi1wfqYtoEv6JkLSP6qj8pzkCc71lL9AW
 2uFAb+HNhYqvV00wEzNrDmxN1mhdehN8ZKF9Eu55mXieRaFa6b9W5PtbXgWRgpf6HU1e
 BqfEgTHeDnvVkootTMVQkMc0vZGbzTuQ/8md4DHfjclsgfRsO7WRkVnoA4iBz3UH97p0
 C55BUGpUYHlSzBa2yY+WaS+KHu6jOiq9pcBuY2BlwhN69dIgidnpkNR8DQ4oUg+zNjc/
 0RBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NV9xsCc/7I6sUYFCbK8nkj8ZGUiElRJQS9D3jXGeoyE=;
 b=JIMhxGypys1BFrXGmGwuqnZPUu0yLIE0QyMIA4qf0croawJKQjdccgN4CRn0UfiOvB
 mNBTw+F+n1rAT6rUaL+QqOmqDzlJUBfDh+a1tZDIHHGfKiJeezxwdJsng/W9uOHDp5bH
 /2n2mhkL/lM6nxpV9XNMcEui/+fS4ZKmOgCTv1/ytGgQh7bBgXcUiBa9lK9o31Qccvey
 64m1ydPfPu1vAKP0H98s/UmcxpOj+0PND8RMtUax3w1PNQpRgjnSiOZ5rHDrDF9YBLQi
 o2ZrAGVhaiHqWttSH62vugAw+TkDJkjE908R7LAzH2afDyFwb60IRCnym86nkjrQ9fg6
 oQLw==
X-Gm-Message-State: APjAAAU+66u2pAjksYORY4fOExpHXbBv3H5lAGBm9cxWf8rYV4cVxZdm
 iDR4lnCwq287aG0KiU33Of7jWGdf
X-Google-Smtp-Source: APXvYqy1ZwjOZKF3a9+5CKByr9gwilZyRz6apXfNvdGQpF2xD7067OR9CNvTA2HCAJWzMvtjfCvKug==
X-Received: by 2002:a17:902:7687:: with SMTP id
 m7mr75079068pll.310.1564701239015; 
 Thu, 01 Aug 2019 16:13:59 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.13.58
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:13:58 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 03/10] nvme-cli: allow discover to address discovery
 controller by persistent name
Date: Thu,  1 Aug 2019 16:13:41 -0700
Message-Id: <20190801231348.21397-4-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161400_974020_21923E56 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

To support discovery (connect/connect-all) to operate against a
persistent discovery controller, let the discovery controller to
be specified by its device node name rather than new connection
attributes.

Example:
  nvme connect-all ... --device=nvme5

Also centralize extraction of controller instance from the controller
name to a common helper.

Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
---
 fabrics.c | 37 +++++++++++++++++++++++++++----------
 1 file changed, 27 insertions(+), 10 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 75dedf8..d92c2ff 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -190,6 +190,21 @@ static const char *cms_str(__u8 cm)
 
 static int do_discover(char *argstr, bool connect);
 
+static int ctrl_instance(char *device)
+{
+	char d[64];
+	int ret, instance;
+
+	device = basename(device);
+	ret = sscanf(device, "nvme%d", &instance);
+	if (ret <= 0)
+		return -EINVAL;
+	if (snprintf(d, sizeof(d), "nvme%d", instance) <= 0 ||
+	    strcmp(device, d))
+		return -EINVAL;
+	return instance;
+}
+
 static int add_ctrl(const char *argstr)
 {
 	substring_t args[MAX_OPT_ARGS];
@@ -865,7 +880,10 @@ static int do_discover(char *argstr, bool connect)
 	int instance, numrec = 0, ret, err;
 	int status = 0;
 
-	instance = add_ctrl(argstr);
+	if (!cfg.device)
+		instance = add_ctrl(argstr);
+	else
+		instance = ctrl_instance(cfg.device);
 	if (instance < 0)
 		return instance;
 
@@ -873,7 +891,7 @@ static int do_discover(char *argstr, bool connect)
 		return -errno;
 	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec, &status);
 	free(dev_name);
-	if (!cfg.persistent) {
+	if (!cfg.device && !cfg.persistent) {
 		err = remove_ctrl(instance);
 		if (err)
 			return err;
@@ -996,6 +1014,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{"hostnqn",     'q', "LIST", CFG_STRING, &cfg.hostnqn,     required_argument, "user-defined hostnqn (if default not used)" },
 		{"hostid",      'I', "LIST", CFG_STRING, &cfg.hostid,      required_argument, "user-defined hostid (if default not used)"},
 		{"raw",         'r', "LIST", CFG_STRING, &cfg.raw,         required_argument, "raw output file" },
+		{"device",      'd', "LIST", CFG_STRING, &cfg.device, required_argument, "use existing discovery controller device" },
 		{"keep-alive-tmo",  'k', "LIST", CFG_INT, &cfg.keep_alive_tmo,  required_argument, "keep alive timeout period in seconds" },
 		{"reconnect-delay", 'c', "LIST", CFG_INT, &cfg.reconnect_delay, required_argument, "reconnect timeout period in seconds" },
 		{"ctrl-loss-tmo",   'l', "LIST", CFG_INT, &cfg.ctrl_loss_tmo,   required_argument, "controller loss timeout period in seconds" },
@@ -1014,6 +1033,9 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 	if (ret)
 		goto out;
 
+	if (cfg.device && !strcmp(cfg.device, "none"))
+		cfg.device = NULL;
+
 	cfg.nqn = NVME_DISC_SUBSYS_NAME;
 
 	if (!cfg.transport && !cfg.traddr) {
@@ -1157,15 +1179,10 @@ static int disconnect_by_nqn(char *nqn)
 static int disconnect_by_device(char *device)
 {
 	int instance;
-	int ret;
-
-	device = basename(device);
-	ret = sscanf(device, "nvme%d", &instance);
-	if (ret < 0)
-		return ret;
-	if (!ret)
-		return -1;
 
+	instance = ctrl_instance(device);
+	if (instance < 0)
+		return instance;
 	return remove_ctrl(instance);
 }
 
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
