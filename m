Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A7376B0C8
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jul 2019 23:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=z1lY+9+KqEoAgZsG2jm8XRap6bfHdRykRFg/wGYiP2E=; b=EDOH+wolLAZKpYZmCBAMfqfcqr
	G8lrTGyZqjBIdqfXmr/H4YUngb3XOUI/YtE3zX3DXW8xlapwwHdihVqGcHt/0iM2+z9+8uL68mnk2
	mjrQ6rXHe3RAHAdgtgfhXn8HZmq+xunhiTe7nHdcoCrni5wgflueyYaZxUEjc1OXc4jpUfUl98GJy
	dcLe3UhxG4rH/hVbt8oF8SEXc0feuxIkhyFLdTPggRjo9Rf6iQzHwNnT/kZx8mV5g8a7qSZDsjVzZ
	S3KVVggngGo93MthgJg2UU7ItxU8H3/B/pVUOBZJ5QXTjpYWuQdpKmg6EK7S+IJcNBUFYBBk7IgAb
	VaE2Cvpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnUl3-0005NP-3r; Tue, 16 Jul 2019 21:13:09 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnUkr-0005ML-MJ
 for linux-nvme@lists.infradead.org; Tue, 16 Jul 2019 21:12:59 +0000
Received: by mail-pg1-x542.google.com with SMTP id f5so1214120pgu.5
 for <linux-nvme@lists.infradead.org>; Tue, 16 Jul 2019 14:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ZyeUwWZrjoJk8YuG5ItQD/AE4j2AEnG7HJfeMyj3vvY=;
 b=Q75/nWKaXtGS/u/0Ab2IaF7/eqwS8Y7qR7ipSXNmdZbn2mOOqBXimhRcc5rOVgSADd
 5YNmehNz8y1mygYb58uEi2SHUMZVJqjXBT8PdqDG9nN9f7zQhy+sDgrN6MpFZ8aYAfgL
 IOCGHsxCOZD++3Ugfj+KBcQmPJ8zG1B6Bu8PM8B5SYZW6VqMu7JXuD+Vw8viCcX8hJa1
 hUw3xulh6Dq+Xgd5vmH77x3Gc7c2jiA7aJ5TwPwgefteNcVes3DtUgUfR6sMmDot1t1G
 50eO94Ui0vIYxkE9igt6b5gECra3y4ukToJmlTOzUaW0OUBQ0M2eWpJh9WjF0hPE5Qgs
 sP8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ZyeUwWZrjoJk8YuG5ItQD/AE4j2AEnG7HJfeMyj3vvY=;
 b=ppNULNnpsKh7MwoJDA2XgGIdbjp1q36pvvsB1jKpZiF+k6CcPKyFDpwIOCPHVW7Teo
 I/sA5JiucSGvlfrGgYT3r4w7wr2xu6IelpZcweOAHO8QztE4tvAaQHug3YcHloN3LgEq
 C5Poy3Y6kkYgxyNzR1DoyO8dQcSIMcKuVO52XhVTISYCNVmA3JjcUMzYLoOBQHalZKc/
 PViAHXTjLBcQ+OuapsOx4fqmQxQYsGIsS4G7KrjGCKxDglKE9MfCcleitjhMFZSIp2l/
 8dS6hLMWfrcGiNCsvTAcCLxozpYdcLu045L3ZwLP1EDX96YKKOPxfs9BgWMUOxy2exwO
 3rng==
X-Gm-Message-State: APjAAAXrlEI/J09R1VoXVqa6kPz6/+V0wAuig7P2UO3lQU8as7ORcGsM
 oHGLnktcD9qvKDuEXttqeBB3v1N9
X-Google-Smtp-Source: APXvYqwMY7WMzzwbxzGGYUsGSfaJ7FkYU76iKEwe1J29w/Q2eDwJHq6k20haVM1tlWNax1ypCy4BRw==
X-Received: by 2002:a65:6495:: with SMTP id e21mr36977370pgv.359.1563311576778; 
 Tue, 16 Jul 2019 14:12:56 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id v18sm140683pgl.87.2019.07.16.14.12.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 16 Jul 2019 14:12:56 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 01/10] nvme-cli: ignore arguments that pass in "none"
Date: Tue, 16 Jul 2019 14:12:32 -0700
Message-Id: <20190716211241.7650-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190716211241.7650-1-jsmart2021@gmail.com>
References: <20190716211241.7650-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_141257_756716_A2E62219 
X-CRM114-Status: GOOD (  13.02  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jsmart2021[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jsmart2021[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
