Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8014D13672
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 02:05:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lpUTqsjes1pUtwj+lcCm21FPQm4CJkxLRzwAma48kj8=; b=U7LgaJrFEonMhIP3FwcuLGZ3xq
	kHT9/yLAIg/We34AAiN3hr4eD0/jHk2t/ALc1cfzKJDh3+vP+n74/nE7JB59fLHSCUqUWyQ7RxoCg
	b662rf44U+KWrMY2PAJGgbwCcUr2FtiWr92t+EhR5Ra1S834+W2rjluAQnrpBEPL0pw6/R1hQsrQh
	MaT7qx+w5theS3x+3XX7pH2jyJ0mEGTAqtc/PMUwoYlafJObkFlRv9Yu/rTSptyPwFwpwgUE804D6
	Nesx+6KGGYgZMp6GaFhK/P5pExZAcDFRn8DSozR4obq5C71t2nwpQnT+heaFdriJ/iirLxANf/sh2
	xZmWQ8vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMiBO-000581-Pg; Sat, 04 May 2019 00:05:38 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMiAv-0004bX-0N
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 00:05:10 +0000
Received: by mail-pg1-x542.google.com with SMTP id c13so3480216pgt.1
 for <linux-nvme@lists.infradead.org>; Fri, 03 May 2019 17:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=tnqBrSFq9X0uBSRx1y2t8geOqkBQp+1ytBA5g8OYG+k=;
 b=HWrQyjYYRU8XAdX1cqgD+2OrABw9cHhhvQvjXFpj0C/SPDB4Vohoq+3Ti6xs78Er/G
 sXav+y2O3zaoMXqTgpai8ISzJmfgIrf58xEL4LFdCt+wCgbfTmAf5XC1PcFC32wrxdnt
 DxDHZZS3fJDeKCsCBzptmr0+Qp097NxH2xWB/faHgdGC4AjEBvxnX3FAcOGqDhnqgSoc
 lVCzc3V9VpZzeDFitcmW+CYIp39mzbjvbPYyY95kwr8mGVW/X5tm4OX7KZZpCHLTDYY8
 kfnpNaGksIMlPD1xbp3eNLerbQH/IgNuhKxXwI8rBZfRGW+ioCYqvTXA9ldkVpRa2Cyp
 328w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=tnqBrSFq9X0uBSRx1y2t8geOqkBQp+1ytBA5g8OYG+k=;
 b=c2tJJkcaWGWALmolyyMlizWpqQBLmRcBY8VybD8gTqjYLoCOBye0DXZE6/x8GPcALl
 7q1V0XeFdBsK+4fTkJvD1NMBarJuOb+vaSBueVxV+oDQq8qa4LwYXKRed5DdyrpIa9fm
 LxENK1wWNp8o66zApyQLcQS0e21yjYE+Er9FPhat3R9TwvDnlA9zx/Cbj3a8WszxNsrg
 T0uFOih6f8ZB7xp9KPLrW4k4XEfDQBf+X+7fmk/NdacyFWwMZnCQ8UbEblDUGxe/yc4e
 QCndfa2iFwrXtkL6023MAA2lTA5oZKqxv/ktcshIHn/YEkpfPADxZWwolYIvyV3H9K9M
 5X4g==
X-Gm-Message-State: APjAAAWhUKCeUlYxREqGnYY6chjk7iA7Zqd/LK7q13Cx7oEfO34zC6L0
 9wBU6BlLNCKKNZDufwpOjAH5zoC4
X-Google-Smtp-Source: APXvYqx3xAZXkjHxH1QjUel+FLlELCAHd6B1j7VHBSrTM/4SvjWryJ+6zyRqe8MFcWm7aC5BcTjRQg==
X-Received: by 2002:a65:58ca:: with SMTP id e10mr13308288pgu.369.1556928308049; 
 Fri, 03 May 2019 17:05:08 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id t65sm6461446pfa.175.2019.05.03.17.05.07
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 May 2019 17:05:07 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH nvme-cli rfc 3/5] fabrics: allow discover to address discovery
 controller by persistent name
Date: Fri,  3 May 2019 17:04:54 -0700
Message-Id: <20190504000456.3888-4-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190504000456.3888-1-jsmart2021@gmail.com>
References: <20190504000456.3888-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_170509_050778_D7CB1C2F 
X-CRM114-Status: GOOD (  15.21  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
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

Also centralize extraction of controller instance from the controller
name to a common helper.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: James Smart <jsmart2021@gmail.com>
---
Patch originated from Sagi in an RFC
fix merge issue
fix contoller->controller
add cfg.device check for "none"
---
 fabrics.c | 35 +++++++++++++++++++++++++----------
 1 file changed, 25 insertions(+), 10 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 6fe1343..a80c11c 100644
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
