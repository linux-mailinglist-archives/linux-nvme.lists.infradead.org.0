Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 442896F402
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:33:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=75H/p0TR79+yQ2sEBa01yJsYfvO3tW9gXEQKjt6VlCY=; b=Ome0QqVdVoMQaMqZFkIJR5hhb/
	0IlhqssxBg+t/eObwPt+cjlGsQdk8HXLlxAVQi3wiA9wxlufnkZeHgLwejdLr7lF+AqoputDFSat0
	qX3j3rR8bYxKOA+FPt0ND9TjXUh04zHtkSxEZKlb2zRtNrf+gK5s7r4qPssEZr8GD3A+VJgjvQlut
	HzB4AeU/o3NWgLp/Pz4rfeqfp9/pE+PvZ4TBcco2O5EWWaP8aCP3hNwDgM7/xkHgWbr8WKvMgjwkp
	T1o0Xpp0O46V7aWq9B8YPdiRPZkrT1xa+t49X9Ez2xO4XKNrRfb5uqqn37h6BoyDiaILqnSDiYsoP
	23z/wq5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDpu-0000ZP-F2; Sun, 21 Jul 2019 15:33:18 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDpP-0000Id-19
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:32:48 +0000
Received: by mail-pg1-x543.google.com with SMTP id s1so10144142pgr.2
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8Hq4Md4bKLnj8XiyOlxJPU/ke/wJoF43KvBMqyGJEwg=;
 b=RaThjih63p9kk9gg6h5M6VW4/itN4pphLfok0B26Z7agzOR/oo2jO8JeRLS4g411Kc
 6DZIB3OLDKl+UlLcu0zh6VnigmlIgqa/9mPxXBRzFB8Stzh+BQt8wXW45gLCh50rp+VS
 7BuGLZjDoGIx3ly28WBaonacWrAH9zFUzmcB5cVRd9wu1OlssHhDrRzCe5xluILxaibN
 m0gbTh3fz+4SA2orabDBKFS8+3l6F5X7FCDFSxe0UMAL0vH1BO4Lh7dzLaw4JmoXPumz
 miTJOatiKGEnpWmhbJLFf2Iok1X36Dv1+5GH13Bin0WAfSWsahwJ30zCH8GvY1wiZwMG
 oYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8Hq4Md4bKLnj8XiyOlxJPU/ke/wJoF43KvBMqyGJEwg=;
 b=cuqIbRQkuhm/sdtVx8lXqXkedER8Nna4XsHuj1Oa/su96b8czMZsvlhoOhdQYh2feq
 GHEWBQvxua5rHCGQwomhp4yvLaEoFoIusgC3FrbAsDivWhUOK1gZC0g6yC3D1699Er6Z
 qfU7fLe0+vn1Dz+fqwCuhtttGkgdSeOGHhG3y0AIBob94mFAL3bayntBeb6px3965oKA
 GVAzO2a8UTf/L7JBlL0W87rKysHxucAU4T+30qsnN1d7TbXvFNg/198er/XhcuMpnMoY
 rZkfP2u24DQWEarvArWIvLqPrib/Yig7AzfyV/tQN0tUpACcaaD2GdMEdYtYrA2YhW5A
 oNpQ==
X-Gm-Message-State: APjAAAVqLIOJ0Ku21wlrhyvPJ4O0CLLipPVDgAv6y1gZfE0YGkSBRul/
 I5m/Z/NW7ZRDqiG9A67NV8Q4ys+Fm4s=
X-Google-Smtp-Source: APXvYqxp/hNMp3xRAmrlj5zUoby0BuRBJmuyjoloSVIFMOc6I616DJ+EQsGgV2hY/rFkxc3BGCzLPw==
X-Received: by 2002:a65:4844:: with SMTP id i4mr68024025pgs.113.1563723166018; 
 Sun, 21 Jul 2019 08:32:46 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a3sm28957384pfc.70.2019.07.21.08.32.43
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:32:45 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 2/4] lnvm: do not print 0 when the arg is not given
Date: Mon, 22 Jul 2019 00:32:17 +0900
Message-Id: <20190721153219.5730-3-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_083247_168459_31343144 
X-CRM114-Status: GOOD (  13.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Matias Bjorling <mb@lightnvm.io>, Klaus Birkelund <birkelund@gmail.com>,
 =?UTF-8?q?Javier=20Gonz=C3=A1lez?= <javier@javigon.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If an argument is not given by the user, it just needs to show the
situation, not a prominent 0 which indicates the size of the argument
variable.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 plugins/lnvm/lnvm-nvme.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/plugins/lnvm/lnvm-nvme.c b/plugins/lnvm/lnvm-nvme.c
index 37b6733..aacd469 100644
--- a/plugins/lnvm/lnvm-nvme.c
+++ b/plugins/lnvm/lnvm-nvme.c
@@ -48,7 +48,7 @@ static int lnvm_init(int argc, char **argv, struct command *cmd, struct plugin *
 		return ret;
 
 	if (!strlen(cfg.devname)) {
-		fprintf(stderr, "device name missing %d\n", (int)strlen(cfg.devname));
+		fprintf(stderr, "device name missing\n");
 		return -EINVAL;
 	}
 
@@ -179,7 +179,7 @@ static int lnvm_create_tgt(int argc, char **argv, struct command *cmd, struct pl
 		return ret;
 
 	if (!strlen(cfg.devname)) {
-		fprintf(stderr, "device name missing %d\n", (int)strlen(cfg.devname));
+		fprintf(stderr, "device name missing\n");
 		return -EINVAL;
 	}
 	if (!strlen(cfg.tgtname)) {
@@ -265,7 +265,7 @@ static int lnvm_factory_init(int argc, char **argv, struct command *cmd, struct
 		return ret;
 
 	if (!strlen(cfg.devname)) {
-		fprintf(stderr, "device name missing %d\n", (int)strlen(cfg.devname));
+		fprintf(stderr, "device name missing\n");
 		return -EINVAL;
 	}
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
