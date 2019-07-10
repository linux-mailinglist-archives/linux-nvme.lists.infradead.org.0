Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9C2E64F36
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 01:28:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R6E2Cbt6gWQ87P4Z4YK4S0XIoQpc2djN5VyDVd1MFCM=; b=Mcl6ULA/ExPv/OyESD8p3YoNXO
	420n5twP/mroTEdngtPAOw2tlSdCnK9L7EY5SQgWAR7cjIPw7AExAkCCMRHTbckkJ0gtlzTepdJUN
	4mHthW0l2WUPIufiMC8oyMaWvcyumHeV8Y1qLlovzRi+fUlFPU0DhMkYsgETOXhkxg8eTR/HwH/tq
	PJOMQmVmvwBkLaE+RI98aD4qMGEwfd5q3rJqPQj2OAgzoSv+tNdAN4ho2O/Z11BHca/NcETWYKge8
	BV0/SSRa5/W1FJdRdkwQEEEhS93HK7ZqXiXXNOzIDuoEqpTfLIsgpZBYohFZbmI7lKvfDh5B/1XFB
	iEMJMUsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlM0u-0008RY-2F; Wed, 10 Jul 2019 23:28:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlM0B-00087z-DE
 for linux-nvme@lists.infradead.org; Wed, 10 Jul 2019 23:27:57 +0000
Received: by mail-pg1-x544.google.com with SMTP id i8so1942008pgm.13
 for <linux-nvme@lists.infradead.org>; Wed, 10 Jul 2019 16:27:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LVrEbZDbQDqh4/Ks47qYgsBJWlmfLM2uYJRcxLI5jSo=;
 b=DoYgyJYbQc1DqED6Q9K5FM4MsMuFrnvP2mb2z03KAiDyoy4O49dDlpSIBtt7f3FPvk
 X8J5aDr89zBpUPePV559tHxXqgrZ+2BIwtfXzR6x479BHoIFbo64XLmRWrCEiUbj80NP
 2ribhAKep+X22kEc3OyF4uPWMbHPWN9E6ozXYRxWV3N1h9nq+R+a2e8R+5KZlZn9O/Tc
 eP8b41uRs/mpzbcJQw42QDYfGmUIg3ZliKPeRzIT/ncxuRC8Q/GJmT4UyIRlBu4ixK55
 SoeIE2GdRrtnNVZeRVwA3/G33iytdCl6MVnpUEYgMu9g9QURkt2kYpj2w0aVXCgxf9oP
 SrfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LVrEbZDbQDqh4/Ks47qYgsBJWlmfLM2uYJRcxLI5jSo=;
 b=J3yOdywiZz9dWN4gdjIJqcdBxJJpIiX/pJC1WT+A6hY6/mMcJ54wiL1scoXqHT5tnH
 MAWOLkH1eCxjw0Y4HT/PlC+NLXjrEECG9DvfyDuJpkYw3w3+fG+2s9vJOLNgYsfmxEPR
 KjSgk+UOwTunPuPjtHdoh230yr3e8JZYq34VTgScZJuvVhz1A3c0JnAMuQokz7Nk3qqc
 3FQo/ydtcusk7uW1dW4JUapTUGC4T9Xg6pwpHPL3e+d2Ai6SpmH0fKXiDVwBs7wgkbxD
 QVWFBvXtS9Q1MovgV7l7CaaOSf1F5d5vfKw485ttc0QCJTEaVNIV4sqm1hYMcIwd6/6I
 REPw==
X-Gm-Message-State: APjAAAXj8ovEamE7FnOGdy/Xit/PpL8X8kex2wY45LeUqUAZb7T4plL6
 RYL7fdtuR7SWTHYq7IodJnTAZb1b
X-Google-Smtp-Source: APXvYqz+Wc0fydM3hpJFTSIguwaBmOtn9GefZZ0RYrBBBcRfrH3zaTj5Di0/QXp96Fxicq0/LKvtLQ==
X-Received: by 2002:a17:90a:21ac:: with SMTP id
 q41mr1069209pjc.31.1562801271921; 
 Wed, 10 Jul 2019 16:27:51 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id n140sm3305478pfd.132.2019.07.10.16.27.50
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 10 Jul 2019 16:27:51 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc 1/6] nvme-cli: ignore arguments that pass in "none"
Date: Wed, 10 Jul 2019 16:27:35 -0700
Message-Id: <20190710232740.26734-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190710232740.26734-1-jsmart2021@gmail.com>
References: <20190710232740.26734-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_162755_462046_1C820D67 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

As we want to support discovery uevents over different
transports, we want to allow the kernel to provide missing
information in the form of none and have nvme-cli properly
ignore it.

One example is the host_traddr. If it is not set (which means
that the default route determined the host address) we will
want to do the same for newly discovered controllers.

So allow users to pass 'none' arguments as well.

Example:
  nvme connect-all ... --hostnqn=none --hostid=none --host_traddr=none

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: James Smart <jsmart2021@gmail.com>
Reviewed-by: Hannes Reinecke <hare@suse.com>

---
Patch originated from Sagi in an RFC
Fixed typo in Sagi's patch on cfg.hostid
---
 fabrics.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 573a6ef..cc91d00 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -565,7 +565,7 @@ add_argument(char **argstr, int *max_len, char *arg_str, char *arg)
 {
 	int len;
 
-	if (arg) {
+	if (arg && strcmp(arg, "none")) {
 		len = snprintf(*argstr, *max_len, ",%s=%s", arg_str, arg);
 		if (len < 0)
 			return -EINVAL;
@@ -658,14 +658,14 @@ retry:
 		return -EINVAL;
 	p += len;
 
-	if (cfg.hostnqn) {
+	if (cfg.hostnqn && strcmp(cfg.hostnqn, "none")) {
 		len = sprintf(p, ",hostnqn=%s", cfg.hostnqn);
 		if (len < 0)
 			return -EINVAL;
 		p += len;
 	}
 
-	if (cfg.hostid) {
+	if (cfg.hostid && strcmp(cfg.hostid, "none")) {
 		len = sprintf(p, ",hostid=%s", cfg.hostid);
 		if (len < 0)
 			return -EINVAL;
@@ -700,7 +700,7 @@ retry:
 		p += len;
 	}
 
-	if (cfg.host_traddr) {
+	if (cfg.host_traddr && strcmp(cfg.host_traddr, "none")) {
 		len = sprintf(p, ",host_traddr=%s", cfg.host_traddr);
 		if (len < 0)
 			return -EINVAL;
-- 
2.13.7


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
