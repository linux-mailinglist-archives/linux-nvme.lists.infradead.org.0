Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B21186EC97
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jul 2019 00:53:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z1lY+9+KqEoAgZsG2jm8XRap6bfHdRykRFg/wGYiP2E=; b=Eh5PJldl9uMOXSzKbJx2P3GnDd
	oKyja2DGiY/vGw6uIl0kyWqyi0oslTe9v2LMsVOV5baJ4NxXLnTZv3hbCN20YeW6ZP8ooFR0LX8fT
	FUYW/m/++Ux4CTumD01OfJ3HK7nDLuiIPxEDqdRtIRCH+iQnwuSHZ/saHbPHr1fAEd7Iy/ljQq5qv
	Doi4GRPWW6f1ke+KzfCqI4wwcZc2aDsw2HfYFBXini7AixpCuxp485mEOLzleG9Wz/ftVuXbRBd++
	cznwtnGP0EIEsCqvEDYl1F1EUL370cCWBNZieCbOb+l0KKtpE3TUQkkSYtsOWRhOR5OaVvP61G3bA
	MVsytwyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hobkp-0008SV-FL; Fri, 19 Jul 2019 22:53:32 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hobkZ-0008R1-HQ
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 22:53:16 +0000
Received: by mail-pg1-x543.google.com with SMTP id f25so15051614pgv.10
 for <linux-nvme@lists.infradead.org>; Fri, 19 Jul 2019 15:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZyeUwWZrjoJk8YuG5ItQD/AE4j2AEnG7HJfeMyj3vvY=;
 b=R922pbcRNh0c3F1y6Cb5+srKR7NLgM/csNAn9YSxi/66Uwxs7Q+sufGrGsvRWLhRuq
 yTA2pK73chjr7fzZOKo8uxqOhMHaDZsYunWhBZXnF/cbnYqgov6VoEqpDJOhPbReAgX1
 ZHFv8A5eF+4QJSODFe3/98+l+wnIc9wB2FQsx8+We/vlB+5nsE/68GxCDQNxPEJ6XhMX
 /swV/Up3/cBaPBVTLs8faaE3bSL03lL7yHKIGH4WLcA/zyu6zMMvxF3ZuNZ8QOwbrNLS
 WMVwp7TP1tXuuoVgv67WJZXwPNdc5OCB4XeL+kx1IortYcYSbNumrn5qPp4C0ADVvLXr
 sT1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZyeUwWZrjoJk8YuG5ItQD/AE4j2AEnG7HJfeMyj3vvY=;
 b=aF3Yqaj0+9Zcn0g2sIyVYNV+S58BQYKSeuiTgzyaVBKQoO4UKzdYkGXFhOYSBAcPTO
 yoLxeBog+bfrFf4wfa9fC8X1C9JVIDWcmYU0/UaFEh8YJt9x0Lq1XlaNEBdiH4TyZLJ/
 UIcn1vam91jcICpFtst5P5fbcXmdIcdTet3PnAruv7NWBMtfsYbvRDlsxCxiNYnBxVpK
 BLZbCY91iNDweeg5UVTbxR/yZassuZ0sC6RE4hUVJUs7pPyZa+zPI8OYk07EWz2e11Jx
 8vEHJnNhyA9NyWwSGZMfCKtNkRyhC3Cx+3Hd894LHE5F1+td5JVFeHGJIPZVd2FHmyh9
 ZXmw==
X-Gm-Message-State: APjAAAVU08sAF0yL2Iu9I0YA8Rz66nKWBA4e4RxCUaOGL0CygeA9Qyja
 9NyfMEfalrkNy11EykUTg5FcmqL1
X-Google-Smtp-Source: APXvYqz33yZdSLFRu1FAZpBy+p9zyTT63qxFkWgcseiEtFtG1IOaA8iyPkg7ZZhxCGRnJ51fXcGicA==
X-Received: by 2002:a17:90a:cb12:: with SMTP id
 z18mr57760438pjt.82.1563576794408; 
 Fri, 19 Jul 2019 15:53:14 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id w3sm27823645pgl.31.2019.07.19.15.53.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 19 Jul 2019 15:53:13 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 01/10] nvme-cli: ignore arguments that pass in "none"
Date: Fri, 19 Jul 2019 15:52:56 -0700
Message-Id: <20190719225305.11397-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190719225305.11397-1-jsmart2021@gmail.com>
References: <20190719225305.11397-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190719_155315_611700_BE8A418E 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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
