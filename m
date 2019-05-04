Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BEAF1366F
	for <lists+linux-nvme@lfdr.de>; Sat,  4 May 2019 02:05:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Ks66bcH+sKvA4ZCDh2HJeiyLEkz53iE49CfCJ7k+0B8=; b=NuxRgymosP56N1AenkwkkUlyKG
	oFfLuHkkoUuP4UAJfZS8oHRg7JgB1g6okxVKXvYg5x3YWCoxFzAxT2rS1egrE3140XSC+CmYcvLJh
	DmHc9DfJcmWDXTVbcu1Ln9IRAJu6fkYSp4byx1Q/rJAdx0zLKHw68eCupSI2RTMuNKUQhTs0+8+fq
	i7YLSUEMplusj7/rejW+/FXwkrqDxGlZcuHcCuJIyeWdpkZSdX+nMOHA85V0yFxt4gxPdu4h2kRlT
	C4lEGvhOySSlCA5hrnBZrt4U7vi+qpuFmvI5jOsk/eK1CMN8FzfWMAjf0yW3OUmrcHAwqEMoth5u1
	coGWsjVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMiAy-0004dq-SA; Sat, 04 May 2019 00:05:12 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMiAt-0004Le-5G
 for linux-nvme@lists.infradead.org; Sat, 04 May 2019 00:05:08 +0000
Received: by mail-pl1-x641.google.com with SMTP id x15so3437206pln.9
 for <linux-nvme@lists.infradead.org>; Fri, 03 May 2019 17:05:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=H9DcYkgGHr2hI8m/pZWedGTgbQy2BXh3VDdkx9PUplQ=;
 b=N2sCK0GGYBrSsxBXrJXwXQHzQo2oSu+3MOpEjjLBb+MWqd9IrsUkVTYznj8elXZgf3
 DSmkhlZJpBRf034TxOtcqrFxe5Z9I74/LDRBNM+ChvSoWaKqscDRqAvfIA87ytnXitpP
 sksWPiz1rU0pvI9+pwJ+8yMjLzGXxh1zlvTofDKoEr5v9WmomV4ILkEu5HqLKPkYvkAV
 O14Fx0Pc50bzu/ovvrLh5g8tv5a0wR/umasm1ZINFYubRZXJobTpXR0uambTkgocTHKt
 KgNWXwJZurMeHzGDsUaRJFDN87UaQISWkVHwwTu8PfyIueZ0kUARzd+f8tGf6hvFrToS
 6Myg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=H9DcYkgGHr2hI8m/pZWedGTgbQy2BXh3VDdkx9PUplQ=;
 b=Ovp/LiT5wI+2XOFPI7D1jjZEJyafPDhEQEpHcFkuqZCWP5Cy+TnBNdoMQAcfuysmzX
 RBD8gBqnqhlKlhQ/HDR88dtjxXH+q2DQCCNE50baL2jfHlDdCAlxOACoD+bSUXVWBZrA
 ErFsO3C/hC3Gd4nLeUtmWgI+pGSNAoBEvVfkhLnReYxF1s+iNBJP4BPaVJFyh0I3WroM
 PBccpybZD0cL8EeBDimuqnN0dfzE4FThFTrfOWonnitXyTPfgP0B9TsHkBtoHQiJCpbW
 AQCyXqXV2Mm5/9Eul/79rLzBCw5sA6i0MCv/Kd2UyvRoDB6F8EfQeQBIlZa7+2XuEUY9
 aqng==
X-Gm-Message-State: APjAAAUMMfng6n05DNls1YRaSSyF3m+SbOrDlqK59sDc87+sHEf+UlBm
 VE0dwxEOUX9I6z1AMUW7QlraGL8q
X-Google-Smtp-Source: APXvYqys4IWUVa6xfjD024Fg4DFxReLbtE+R1JFJ00A3kghbP299GPHo6KGdpo2D+3TGg3hauBSxvg==
X-Received: by 2002:a17:902:112b:: with SMTP id
 d40mr10740714pla.31.1556928306422; 
 Fri, 03 May 2019 17:05:06 -0700 (PDT)
Received: from pallmd1.broadcom.com ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id t65sm6461446pfa.175.2019.05.03.17.05.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 03 May 2019 17:05:06 -0700 (PDT)
From: James Smart <jsmart2021@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH nvme-cli rfc 1/5] fabrics: ignore arguments that pass in "none"
Date: Fri,  3 May 2019 17:04:52 -0700
Message-Id: <20190504000456.3888-2-jsmart2021@gmail.com>
X-Mailer: git-send-email 2.13.7
In-Reply-To: <20190504000456.3888-1-jsmart2021@gmail.com>
References: <20190504000456.3888-1-jsmart2021@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_170507_227398_6DE13722 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

As we want to support discovery uevents over different
transports, we want to allow the kernel to provide missing
information in the form of none and have nvme-cli properly
ignore it.

One example is the host_traddr. If it is not set (which means
that the default route determined the host address) we will
want to do the same for newly discovered controllers.

So allow users to pass 'none' arguments as well.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: James Smart <jsmart2021@gmail.com>
---
Patch originated from Sagi in an RFC
Fixed typo in Sagi's patch on cfg.hostid
---
 fabrics.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/fabrics.c b/fabrics.c
index 511de06..c6ff734 100644
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
