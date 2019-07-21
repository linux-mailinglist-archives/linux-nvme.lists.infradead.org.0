Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F18D16F403
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:33:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QOjqGcv3fM+OTM9J+77kkV3BgKsCEM9UHkewNuv1BTw=; b=LE4EEBjAmXHKcTBvJmJvyuHYWW
	NdBVMM1O9D2pAxMdUiGEjQVh3bpgWtqCrg3y/Yvl/SY9XrcJ97aE4uCJzbjX89FnCT1FenUJ4zRJC
	ktDeutTgdAZ8U3ZKWUuz7QlYKBwWq8lzm/halcSIocDtp1zOsNUlkW0iu3X4xk3yNW6K0UZ+fVIzB
	zyb89Dwe4Whhxpzlt5CX/QerMg8pOAx44vBYAYyl8qFiMtkZ+J7cX+m7NRvnLAYv3pzZZsvK+f/qw
	yIp5711sJdz7dssIiLsYdXeaijiO0Pi0yDMEs9yLtCs8OuB9M6W1AKJh4r6/kihOX0MN97slboZ8I
	42yj2Z7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDq9-0000jG-Bn; Sun, 21 Jul 2019 15:33:33 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDpR-0000LK-Mg
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:32:51 +0000
Received: by mail-pf1-x442.google.com with SMTP id q10so16155524pff.9
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:32:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=78xp/VhVjT81UnQyQsFSx39J8ttDf65WeokOJ4NSM3Q=;
 b=ncdvzWAq7WxZlSSxzmv1oQ9Rs6D68eid1OH62sxMxWDzWvyexllzAA7lh9VyU8TAJe
 cY24L2WYFDldIU0EUEyx9WxNOTjZeTrl9fyYMV5Ok4yw0Iza9TaTyewX1veV1P66RkpY
 iE/1yty4hGPjHof3xV1kquqhTueNdS+FG+ndwkS4TPaRvaRBSLcyoGEh5LSpyY+fJCSN
 7P2l15qzUi5UWkT8M5rg5Dsw20v0HY2s/z34WgTTK5M5OucY4oaDfKmFIUkXUZOeg5eJ
 PQTIOulhROIOjEZ52xkNewsRla5BjobtezBB6cFGEi4TDo/lADK/6f45pzMgU7W9P0c9
 VRGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=78xp/VhVjT81UnQyQsFSx39J8ttDf65WeokOJ4NSM3Q=;
 b=fOo+CmTn0+rBooIj3E5zQf75psP+lbq+64c+CEyYJlE9HAX/0hrnVp7NsBKjLrpOkC
 YBy0Mm+KTTsdxdWQwMEpITpmf4vv/5HD9grtBTtZIoejLDZIeskPRQqAQOf+6ZWQpwav
 Lvxt7Dr5fNUtdU9nOH+hCnm5G/6WdxllmHl7TbfRHxff/7jjAGAexAqV2rnu3Bq320m1
 EbQY7E/nXejqe1FYleCyrB/ZnyilV5jXDc0I2CCD2nuYryRax2B8mTpZ1qSkZt/L3cl8
 DoRM51lXDE3IwK/Q03v/HCWJWjJmCfwFFOWvn6xCrWgga1POUdr9nRvMBpMixGEWiULe
 TFdg==
X-Gm-Message-State: APjAAAXaRUo+F4nMkv6fd5T3uYnz6qhKaMVwy8i/q5y9MKMrqMlZANpl
 Dmed8COFddiw+o1HhyQh3H2xDfxljww=
X-Google-Smtp-Source: APXvYqx8TFYP4u/HH4pGFxOEB8RrOu/w4KcV2ILN48swhUgOs4l7+PiAm2dgtRZbwgWTWcKlHVdDDg==
X-Received: by 2002:a63:eb06:: with SMTP id t6mr61830230pgh.107.1563723168859; 
 Sun, 21 Jul 2019 08:32:48 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id a3sm28957384pfc.70.2019.07.21.08.32.46
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:32:48 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/4] lnvm: cast identity structure to (void *) directly
Date: Mon, 22 Jul 2019 00:32:18 +0900
Message-Id: <20190721153219.5730-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
References: <20190721153219.5730-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_083249_794490_830DF3BA 
X-CRM114-Status: GOOD (  11.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

If we use "tmp" or something like this, we can expect that it just
stores the previous pointer and do something else with the previous
pointer.  But, in this function, it just to cast it out.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme-lightnvm.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/nvme-lightnvm.c b/nvme-lightnvm.c
index 0b99786..62bdc40 100644
--- a/nvme-lightnvm.c
+++ b/nvme-lightnvm.c
@@ -422,13 +422,12 @@ static void show_lnvm_id20_ns(struct nvme_nvm_id20 *id, unsigned int flags)
 
 static void show_lnvm_id_ns(struct nvme_nvm_id *id, unsigned int flags)
 {
-	void *tmp = id;
 	switch (id->ver_id) {
 		case 1:
-			show_lnvm_id12_ns(tmp, flags);
+			show_lnvm_id12_ns((void *) id, flags);
 		break;
 		case 2:
-			show_lnvm_id20_ns(tmp, flags);
+			show_lnvm_id20_ns((void *) id, flags);
 		break;
 		default:
 			fprintf(stderr, "Version %d not supported.\n",
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
