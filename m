Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3ED80662E7
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:33:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=M4UCGs7oc2a8IpLElV6ySsZgPvJC7dRJGQFNAS3eWcs=; b=u9uVMODGVvMAxtE4uYv+UQO7F0
	O85Ldd6D7PqkWYDV7PyLo6ACLJ5RntsiEPJe7zX5xgR2DmzEKIZSuh/ZRoGSlY8E0XmcFOnxUBgyy
	gKqujCKqKwzwCFpxCSOIB+kIHT1yEC1hB1JypkUOJJCWxG+7Ekt0E0VmyyNf5lqJ2cf0xivLGXRQQ
	ti5T4js52GHIOD2poJ8CCnqVpLROrQYWF70HD+vCs1XjIUI7AfrAVaxP+oFyK1HAfj/cSfKAQ/V0A
	FRDR+bDkGDY16bls9cedgyiTFsXU74G5MiFFjGrf2+r/+AZzgevfJTk7S41L47nyHgkVX/8QGAeVw
	i1cyxlvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljV7-00029e-0y; Fri, 12 Jul 2019 00:33:25 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTg-0001Wy-5l
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:31:57 +0000
Received: by mail-pg1-x541.google.com with SMTP id i18so3695141pgl.11
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:31:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aknOC+6QLe9D+M/o+4FRTGTRSpL2Tn/tKpXa9CkFbgw=;
 b=S0bZMr4N6jfy/WrHqT6ewEYZW42FIJ9c9oSk4cZntAST5LunYdUImDZi82NJiNaOLI
 ezo3xYNGb1Jn60UuzP3w3+g1QQhQMQHFauV4lJmyVsWONvRg3GQxx6IUHDNEVINTsW3o
 YxtSpAzscvugLbx9o7AfxSWFbif0lPeigbgYmFCKdUDOmD3qzv0s5xOTuxq+y6+l9z3b
 mO00za+KS0/aKe51fXbdRz4fs+QlsniRzL2DmAIVkIU1FqfKq7YoiSP/gMjFeSw5xb8K
 FTGfGn0UAFG6IqaBWM75Jr742uSydXe7MSxOsKvqGnmSW4DEMX0AZvmEg9L63DlY7dBC
 92Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aknOC+6QLe9D+M/o+4FRTGTRSpL2Tn/tKpXa9CkFbgw=;
 b=QvBwAwM4N1gEPx1U8cTLwO+TMOelP7qKmiKXoSSJs3jgYcHkiWX/o0WJ+Kwi6k7fsu
 FG9Z8vONwlFbikHz4tkOm8BcdpOrA5QVhe8RuXAFYpeKVoVbUUmFBKxJGtgXUS13ZoRK
 mCrsK6UpNwG5peZpDNRW0PiK1io6JQ01DOOenZo8h3+FVPbYY12EJf8R3Us8FEYMQbrv
 PDUDTEdtV6xVyH5048LQm3WWlw6htXK6Yz4drydUoLdAM5lWONUxocnbZbnY6P1YULGd
 c+CUzPx9XxgzTMHk4CrneNk6TFLqi6jkmAWm/DPG7OMAy0Y6fBnSGpghHQ7SbcSrvXrt
 PeUw==
X-Gm-Message-State: APjAAAUYpdnIOSc+mFd/C7SCpsaEcmbMqXqs+CX8oaMvCE4y38IV/k3F
 WRFcS7JtgLYMtP/xdZvjJpuBlan9
X-Google-Smtp-Source: APXvYqwD7vzg9mCeNYzt34tb978Xs5kZPSsRdhB7hUO74zBu/Uwi7rl+1IgchjJ4/N8Q2jolhCIrrA==
X-Received: by 2002:a63:5045:: with SMTP id q5mr46671pgl.380.1562891514344;
 Thu, 11 Jul 2019 17:31:54 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.31.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:31:53 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 03/10] nvme-cli: allow discover to address discovery
 controller by persistent name
Date: Thu, 11 Jul 2019 17:31:33 -0700
Message-Id: <20190712003140.16221-4-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712003140.16221-1-jsmart2021@gmail.com>
References: <20190712003140.16221-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173156_220239_D1C2ACEB 
X-CRM114-Status: GOOD (  15.15  )
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
Cc: James Smart <jsmart2021@gmail.com>, Sagi Grimberg <sagi@grimberg.me>
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

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>

---
v2:
 Rework ctrl_instance for return value on error.
 Validate device name is a controller name.
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
