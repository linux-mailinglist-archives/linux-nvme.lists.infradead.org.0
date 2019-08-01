Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 370C77E648
	for <lists+linux-nvme@lfdr.de>; Fri,  2 Aug 2019 01:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z1lY+9+KqEoAgZsG2jm8XRap6bfHdRykRFg/wGYiP2E=; b=oWPrIggyDWGAakghnNGKUjgZIH
	8Za5Ene9UdFyHKnflgZ2hwwEBFuZUYR5NfFgsDQyBJmN/2Fzv3jWwJ+pB0l/lS4YdxMhxJtFWcbS8
	Cr6xoDc/ULH/uo8SsoDRA4QQKafusD+JioWocfP/A3Eync5v7Wl3mBMRvSXkY4ssy6uKjtJ7N2fMp
	aegYCsIZ4OIjQwrJS0ZjYhQtS47oMNGpG7Ph9/e/hK0StGJ+Pvf5Gj+rCWak/m31SmIOqUNdsJAwe
	C3vmois+h0EpsORsfFZWmst3D1olUDWsRHELKdI+ghhEXyly6Hi0f4CDgNGXT6LGAgdolHD01D5Df
	ddpEAylw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htKGs-00059Z-G8; Thu, 01 Aug 2019 23:14:06 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htKGm-00057g-O3
 for linux-nvme@lists.infradead.org; Thu, 01 Aug 2019 23:14:02 +0000
Received: by mail-pl1-x643.google.com with SMTP id az7so32822124plb.5
 for <linux-nvme@lists.infradead.org>; Thu, 01 Aug 2019 16:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZyeUwWZrjoJk8YuG5ItQD/AE4j2AEnG7HJfeMyj3vvY=;
 b=I/UNBd8fNZ42t0xf3qtgNGDiZ/kxYzSq8w7R9ip+rRuCCvQYpr+wjvCAgQ54DK1bMw
 YX4e/0RGaTDIFn/HBIYdPy22IeJifi4H7sqYDcuQQC4RhXk6UJY2uAnl19P/EKBCZLu8
 coWb/2tcNrIATrvQn5xfMIPLXftC0oAQWQcg1jhWLVDQKw/rSTOPS7fMJjh6kcMIEzXw
 rN1TfzOIZNLoGH2ZImXiFdU8lFLgfehn45yGXe3yJB05HRzKj0n5e8rURJ0ZeYW6TOmV
 Av+rv1c6r/WmUpKZYlWrRk19xvN+OcATZ6Vj6Q8nE0J5h2U2I9peX0oOnrUeDAWOgxGT
 nB4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZyeUwWZrjoJk8YuG5ItQD/AE4j2AEnG7HJfeMyj3vvY=;
 b=jXXIHgcDPrJFMub/E5cWxyc8nI+yWVykjmlTaNg2nWqjwmwnYZq47KaTlwUnjIZTjo
 xw2mvHjji8kp+zYDJo9TyQ/GcAx4A83N6FWPDIdjNONKuwUGP55dZH0gCmsQpeWfxHqP
 dPco6LQw4NnunS5Uvtv+D6+zIAHtyJ5EkVXBg7sC0tFwIfgYn+7m1WklLYy+Sies0oEf
 RBuMHtqzT2sr3w6Na8DiGxfO3bOasSBh4thKfEz7SRzGd/k/yuG9DohKedd0VyA9dc7H
 BKEdOL7bXzIUvroizlz1SykF49gFfZMyDL7/dSM2w1ajMyC9+s7SCI5cBFFinxlKXBW8
 dSWg==
X-Gm-Message-State: APjAAAV9+6Wl02SJpe4bu+oMbjOgjwFKiXXmUBOXzkwJtDssjcHQCDoP
 FeMY77jdRcKKQqcOM9vAInoQwG68
X-Google-Smtp-Source: APXvYqxoMd5UNAV2ALEBqe6A7jEDJ7W4cy3zNj3Ie3M9wD0nOLJnmgj+Z/yGhi7yKyWtXHEwTMrH4g==
X-Received: by 2002:a17:902:2ae7:: with SMTP id
 j94mr128274315plb.270.1564701237430; 
 Thu, 01 Aug 2019 16:13:57 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id q144sm74358669pfc.103.2019.08.01.16.13.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 01 Aug 2019 16:13:56 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v3 01/10] nvme-cli: ignore arguments that pass in "none"
Date: Thu,  1 Aug 2019 16:13:39 -0700
Message-Id: <20190801231348.21397-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190801231348.21397-1-jsmart2021@gmail.com>
References: <20190801231348.21397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_161400_811063_4D67F452 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
Reviewed-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 fabrics.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 32c3a9c..5757aaf 100644
--- a/fabrics.c
+++ b/fabrics.c
@@ -578,7 +578,7 @@ add_argument(char **argstr, int *max_len, char *arg_str, char *arg)
 {
 	int len;
 
-	if (arg) {
+	if (arg && strcmp(arg, "none")) {
 		len = snprintf(*argstr, *max_len, ",%s=%s", arg_str, arg);
 		if (len < 0)
 			return -EINVAL;
@@ -671,14 +671,14 @@ retry:
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
@@ -713,7 +713,7 @@ retry:
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
