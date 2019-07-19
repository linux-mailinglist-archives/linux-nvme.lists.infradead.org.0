Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C371D6EC9A
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:54:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Q6NBURsSsSqqGz9vRyrBGeU5pm2ghZHHFjMrG9eNTOs=; b=FlQJcRRdCPzP/KGooYqhn6snFu
	YNPcRgNrqtH24Wqv23hc9S5EyDRiU+0yWOe1NcpYcrtDvzOKCkDzoacIpXLrnisMZEpt5fgPuU2Eh
	/rOuLTJ7UzV4iSAU9H9hl5vOKh7ppCSTzXJL5Qd4dkz0lAt7vBaifyWrIOszqPyFnp7DoTIBDRoT4
	VgvshcFxnqz17g3FG5QjDKoDR74HsqRkSH1+bwXNNdfSBahMMUP+4EJYwJwoHE67YwE6ixm3LJ5sN
	C2Y830QbL/c0wWCL2OIc6ww5F7txrTQ+PKdSc03MPTLdV4tvGmIfz2g+ZqfsTFwRSW8KkqeK18osL
	aCeGQokg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoblZ-0000W8-5G; Fri, 19 Jul 2019 22:54:17 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobkb-0008Ri-4g
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:18 +0000
Received: by mail-pl1-x644.google.com with SMTP id m9so16203530pls.8
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NV9xsCc/7I6sUYFCbK8nkj8ZGUiElRJQS9D3jXGeoyE=;
 b=lenWBMcqAFBsVJt206UdOgRkTMVnjPVol8jFprBpI079SdauGXJXf2ywwfyESePhzR
 7iotnYfsQGWKUBBtjmyq6vm7wpV+5fnD9nZLJB9nRj/7nX25HA4oNERl2azMz83Ap6Ku
 DIlOlc8sPBLwaWqeJhRWcD1kDqrDgyyhPKG97bec0fhsWyceW2tYx0i7gETf4AUyKpj4
 rbpjompItnzdVHmK6eIJFRrd5xof9tjRAs8GOXgKJCyg2mQsWhPELnZ6dN3QAAj3EtrA
 ucVpipuT9Ld47cvAMr8Q3qlOV+HLIuJpF1Pf4KdjZ6cxvCkZUOw4sudHIFQve86RlTaN
 ryxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NV9xsCc/7I6sUYFCbK8nkj8ZGUiElRJQS9D3jXGeoyE=;
 b=HtyGsYZ4d7qFnLkbFqhndXRGO9raBiPJpBdZuapnecBKwwlVE7V//btm8ioq9twokG
 Mxpq3E7TfkKT4+zOV28DH/gf/G6RhlqIFlOPHAvO8rMnWlRYnQCGC2W1lFVuV7vrtEZZ
 flKyTmHNhTLnlTQG+xX23LzWeEnW176WSSJjOk2N7isEsbAleQUxBxVgRdI0C9zZtHSz
 vzuY4Rp5DIPdpXSv0CMgb5FVvxu3Jzky8igB8iJUffx2i5SNz7YGLNjMwu7KdypHeZW3
 dJMhdJCyD2uhj4fzDQLjTjOE26PMgs6SOEuo0b9X0iH+gSN4wrXW8GMM1JSm0jcj84Wg
 rPYw==
X-Gm-Message-State: APjAAAUJq9/tbLyQ7Ui/yPehkfPAQK7QIal1w7NSa/5tkO3i0DSIQWEf
 vyUoIS6fDOuR8kFVnIcMCjrsW9q0
X-Google-Smtp-Source: APXvYqwH2FOsb9iBkvt8X5ipZt/MCEPkZdT5IpB711x80U6KZIE1YnioJfofKPzkFOYqLWfNPCbgGw==
X-Received: by 2002:a17:902:b688:: with SMTP id
 c8mr58657015pls.243.1563576796189; 
 Fri, 19 Jul 2019 15:53:16 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:15 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 03/10] nvme-cli: allow discover to address discovery
 controller by persistent name
Date: Fri, 19 Jul 2019 15:52:58 -0700
Message-Id: <20190719225305.11397-4-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155317_224942_481647F8 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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
