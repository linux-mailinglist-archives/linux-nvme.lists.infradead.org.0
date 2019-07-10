Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B16CB64F35
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 01:28:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sIKdwAQD7fR38rK9bGEFojO7pNAGvgV+SGgJTUeU/W8=; b=ibGCaj54KWzNaEdYU3FGPk5lZn
	wjsm2hG9GURRmfO82ZnusasgN5GIMZ04BI3Gsh0340r6Dvm0jnvS/Ts+R7/RgucNRtJeMpxdBKqyB
	jekRM4Ln7G44vSrFUzUZoa2m9dQrbSBO/hir2CmfohJjhn7t2NFKHXOwk4C+RYNZv2tM4vXHg2rPw
	GCDi17JSre1/2LxP8hYtPQVwPQN10iugzFG4BRThKfzhI3KWCb34HuTUDEmTZqTy90hPeuZgBYkEp
	8v9RBO2oL3eivoBIkpogWdabtxgD/Gy5JVDNDowZqxdo3bBoOjGuTtKSsof9l/F1SKq7shIf513yQ
	uDHnNhYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlM0f-0008Ev-Pe; Wed, 10 Jul 2019 23:28:25 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlM0B-000882-1M
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 23:27:56 +0000
Received: by mail-pf1-x443.google.com with SMTP id b13so1818460pfo.1
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 16:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7EhjRoesWajNno5h+KcomKPV3nWU68HhbCFzI+dYjqg=;
 b=Y/OfwMtvAJe+vn0gFVpfYvbN2u1qCvPpCP1xja/YgoHKw9kRulYbJGNnIhwxfwl+5x
 f63lMyOeclot8rQQ8Pg6c336rYsA9IsnGsgXI0hMtsGarll5DCzLbH3OCNp2ZBYaOIHU
 mjT5L3/a+NtkMEuIm7WwenVrUVUNIVMgIIyxzemUzsiEee9Up89DguZjaSAnQ8fg8B68
 d/c7zz7tewI1HpQVow66ptinXhX/5BkzM12YcMFOF7zc7YrrZ7dIT8WU3dSVsa0sZ3ju
 DOi5qNSVCcdfIKoR6gF9CqR+qccMK6tpUl/+JlYgsZ81iYt46gwdTRBLmVW89m16Jw1b
 AgaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7EhjRoesWajNno5h+KcomKPV3nWU68HhbCFzI+dYjqg=;
 b=ivBnr7PTYeWbK9vyePPTlmor7o4s6QOMbeFeXSc252rZhmezJhKk4s5g1xQQmmrLY1
 fJ5N+NOIi05r/pcO1d1Kzl2vtJCDIp7syn3ziUqstMx7PdYKOZtN/obDXGhleSyipL6Q
 Iizu4TC38mx8V2BqeRsR4wiVoFxE7vHOUfnwZZ8W48FrdgbCD1l7TsWHPH3F6qnN4DB5
 A7zCaYpRPtYnaVetOqxWU+69SVgYKz4TFSITjwhk2Pzvb59e3ILMF201wkWy313DnzRa
 i1HgxJYoLXuDkRhdmoi2R2sMixtDhLP6e7x75jig33Lo1qrinUkxONSJOOx25mOd14oT
 QrMQ==
X-Gm-Message-State: APjAAAVr6S7TXeUSNpLokEFHYK8uBWWIhcyehcUV4miO6KXv/17QbkUL
 ggzU18QSQu0+hw7NtIcSd6IPaszA
X-Google-Smtp-Source: APXvYqy9GOAMz1OcF3leyrzNpyHgk+uwBQa/FALHNoNH8psDPPDAgpBHtwOoO80fCS/0eH0jO4sX3g==
X-Received: by 2002:a63:e907:: with SMTP id i7mr922887pgh.84.1562801274121;
 Wed, 10 Jul 2019 16:27:54 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n140sm3305478pfd.132.2019.07.10.16.27.53
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 10 Jul 2019 16:27:53 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc 3/6] nvme-cli: allow discover to address discovery
 controller by persistent name
Date: Wed, 10 Jul 2019 16:27:37 -0700
Message-Id: <20190710232740.26734-4-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190710232740.26734-1-jsmart2021@gmail.com>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_162755_090242_34F921BE 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Patch originated from Sagi in an RFC
fix merge issue
fix contoller->controller
add cfg.device check for "none"
---
 fabrics.c | 35 +++++++++++++++++++++++++----------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index c4bbe2c..1c5ca9a 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -189,6 +189,19 @@ static const char *cms_str(__u8 cm)
 
 static int do_discover(char *argstr, bool connect);
 
+static int ctrl_instance(char *device)
+{
+	int ret, instance;
+
+	device = basename(device);
+	ret = sscanf(device, "nvme%d", &instance);
+	if (ret < 0)
+		return ret;
+	if (!ret)
+		return -1;
+	return instance;
+}
+
 static int add_ctrl(const char *argstr)
 {
 	substring_t args[MAX_OPT_ARGS];
@@ -851,7 +864,10 @@ static int do_discover(char *argstr, bool connect)
 	char *dev_name;
 	int instance, numrec = 0, ret, err;
 
-	instance = add_ctrl(argstr);
+	if (!cfg.device)
+		instance = add_ctrl(argstr);
+	else
+		instance = ctrl_instance(cfg.device);
 	if (instance < 0)
 		return instance;
 
@@ -859,7 +875,7 @@ static int do_discover(char *argstr, bool connect)
 		return -errno;
 	ret = nvmf_get_log_page_discovery(dev_name, &log, &numrec);
 	free(dev_name);
-	if (!cfg.persistent) {
+	if (!cfg.device && !cfg.persistent) {
 		err = remove_ctrl(instance);
 		if (err)
 			return err;
@@ -975,6 +991,7 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 		{"hostnqn",     'q', "LIST", CFG_STRING, &cfg.hostnqn,     required_argument, "user-defined hostnqn (if default not used)" },
 		{"hostid",      'I', "LIST", CFG_STRING, &cfg.hostid,      required_argument, "user-defined hostid (if default not used)"},
 		{"raw",         'r', "LIST", CFG_STRING, &cfg.raw,         required_argument, "raw output file" },
+		{"device",      'd', "LIST", CFG_STRING, &cfg.device, required_argument, "use existing discovery controller device" },
 		{"keep-alive-tmo",  'k', "LIST", CFG_INT, &cfg.keep_alive_tmo,  required_argument, "keep alive timeout period in seconds" },
 		{"reconnect-delay", 'c', "LIST", CFG_INT, &cfg.reconnect_delay, required_argument, "reconnect timeout period in seconds" },
 		{"ctrl-loss-tmo",   'l', "LIST", CFG_INT, &cfg.ctrl_loss_tmo,   required_argument, "controller loss timeout period in seconds" },
@@ -993,6 +1010,9 @@ int discover(const char *desc, int argc, char **argv, bool connect)
 	if (ret)
 		return ret;
 
+	if (cfg.device && !strcmp(cfg.device, "none"))
+		cfg.device = NULL;
+
 	cfg.nqn = NVME_DISC_SUBSYS_NAME;
 
 	if (!cfg.transport && !cfg.traddr) {
@@ -1130,15 +1150,10 @@ static int disconnect_by_nqn(char *nqn)
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
