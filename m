Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB9C662E0
	for <lists+linux-nvme@lfdr.de>; Fri, 12 Jul 2019 02:32:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z1lY+9+KqEoAgZsG2jm8XRap6bfHdRykRFg/wGYiP2E=; b=SdMRLxrwsyFR8HUselFzQfyyml
	X3V6xul/LgvpX49eGMEdzN9u5LFpk3xlUr+ttDAwMAHPu2LTtZoF7/9dAkQQvar2sciU55v8FATfp
	O+TZ/E0ohrnTOOwQlA1B4BDE7RCayaoGd9Nr//FpTDjRNqTrN7CJS9887CTdkm1CR5UoTwuuxn3dp
	UYg5NFbfL1UMHBeFpomcE3pvo8RdCHDV+PNLHlyxbbN8OqDB0rSK7ADPo2h73bZsBIo9MekmjV1o2
	nZEJXeJuh6qWReP1yLwK30vwm1w5SDO1Ftfeffim40WR5yDpgk0l4Gg8fso1Zq+tkR4wr/9Alf5EB
	bsAEY1ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hljTz-0001YC-9s; Fri, 12 Jul 2019 00:32:15 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hljTd-0001WO-MT
 for linux-nvme@lists.infradead.org; Fri, 12 Jul 2019 00:31:55 +0000
Received: by mail-pg1-x542.google.com with SMTP id u17so3706575pgi.6
 for <linux-nvme@lists.infradead.org>; Thu, 11 Jul 2019 17:31:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZyeUwWZrjoJk8YuG5ItQD/AE4j2AEnG7HJfeMyj3vvY=;
 b=GwW/0fuFGcIFFCeIOE/1qEElwo6kbAnRbVWfyU4BFRPcUbg/ak2seB8XJePW2KaGJW
 1OgGNzeXIBORH5/ofDmdzYw0id3TNnxL6xMR46mI4dwCG0+XDEMcJRKC9DgNV1/wcNm4
 hTxpuRW8tdEw3So1m2NbQ1lA6Hcp5PZMtkpS0ywxhXk6DFg4BL2DK8gLMWoR0S9NEMKS
 P/oUO/yIZ7g420lTe2Dtj6bOYHFLJLv6NjN4oTmXTeD7pmi2yxy86OvqBLBXPhXvY8rv
 WkB9NLeiuv+kh0TaOclSxt7nBefY8ffZkyY043BW0yCwCVD6pDwTjw8xXpLAGBh5GFaG
 8hlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZyeUwWZrjoJk8YuG5ItQD/AE4j2AEnG7HJfeMyj3vvY=;
 b=JKo27XEq8Hvaa8zSFGYY5xffJwUrMSTmckQR9OKLuZK0BgN0Wkk/0tXlYN7ILSbFVX
 mC94Q5AL7RHoQ5CIM5XqgtjGECTDj+whGzAUSPuSGT4ZyUkhSNzgj3HZSq+OmQuRe2Oj
 S5MmI5yP6XgQ6Fu0UDOS/r66NKEXT6URrVhYsnQKu9SpeRwcfu6/2BKATUda3ZLLGQY7
 uNhQWtHLVT6jCAw4ITjV4m0ss+gYtIjd/ENXv0VERKFEOres4mXjz3NflSHnzkJ9nPyS
 f0whKWhgQ4FSnyMbeFaqLU1M0n3FibrDfs3QW01uXCoJ9gXqQDnbDduQibCKeMRp7/u3
 fLjw==
X-Gm-Message-State: APjAAAXW2q5Yx7kKXH3fIOGatteiMiLuQ5gdYnZlo6ZdoEpQQdBikDTs
 wZ76wmsPlrxzpH/HHyzivyuKyLVr
X-Google-Smtp-Source: APXvYqwe0BkCQGasI02YrEDvKrF+DAvwFy6agHm3+oM6qFo86L1GruivS9ymUmORbj/A33wWTExeEQ==
X-Received: by 2002:a63:1f47:: with SMTP id q7mr7456719pgm.264.1562891512365; 
 Thu, 11 Jul 2019 17:31:52 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id u69sm11480522pgu.77.2019.07.11.17.31.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 11 Jul 2019 17:31:51 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH rfc v2 01/10] nvme-cli: ignore arguments that pass in "none"
Date: Thu, 11 Jul 2019 17:31:31 -0700
Message-Id: <20190712003140.16221-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190712003140.16221-1-jsmart2021@gmail.com>
References: <20190712003140.16221-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_173153_985053_86370282 
X-CRM114-Status: GOOD (  13.38  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
