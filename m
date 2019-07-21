Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E0D36F3F7
	for <lists+linux-nvme@lfdr.de>; Sun, 21 Jul 2019 17:28:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QOjqGcv3fM+OTM9J+77kkV3BgKsCEM9UHkewNuv1BTw=; b=rUsvHWGasZwyGVcIpFsJfRgDPx
	jGtS8AIZl7ldNh4QWNxQmY7oezKLAin/DWowtLkt1fqjZJ/bndzs3t3ESxQpvomcKN46sYI0pNF+p
	0zOHXDVt/v0bsPIizXbzBRlkULYhvvHlh73KlcTyQQxK69SXFAtZPsmcAtlkaL9gETVrV8Tt6ne1e
	Y5ISs99mN9TW+MAYrNzmH0L9lmcQYSVoJp2W08Xi2JpFgqbGgQh1K7vEaT7uSJgcJcq4TAOygOZlu
	ueqnGw9jeDErrnub1cs38QywUS/AKarFpdM5zuFFiOhNBpcI07BMZNxJudP1g5iZVIm7/7mSpz/SQ
	VM+49rUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpDl8-0006hL-I5; Sun, 21 Jul 2019 15:28:22 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpDkE-0006FG-5U
 for linux-nvme@lists.infradead.org; Sun, 21 Jul 2019 15:27:28 +0000
Received: by mail-pl1-x641.google.com with SMTP id b7so17956042pls.6
 for <linux-nvme@lists.infradead.org>; Sun, 21 Jul 2019 08:27:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=78xp/VhVjT81UnQyQsFSx39J8ttDf65WeokOJ4NSM3Q=;
 b=LVTaXw1i0tS6OWUGwrhgVFcHWbCOLFRGrGjslEvyq3wJ50/IHGXkvqP692SlK4BioE
 1OPoqhYXlkH2mdxmcmc6vwMiCj/qiCAbL4xcQHk+3vgnsQRyoKNO/wIqliJqibXfVXHO
 PRSblcHBxEauUHAcaHVYktdUXXMSGzxLrqJUsdMMb9QsdBfblU+FHfl4rPranGdyRcsS
 aRv5dfhgY7+gUDI6x3Rur4WKtXE9V3xSP6CJZD3/y64FSJSaQzDte3GrThRjRUYTndJe
 Mm0NkgM2MqDHg6Zd53xN8yK6174tgGVQu5BjIR3u87dudVBUZqgeBtB5ZRpvG/rYv0+A
 Q3/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=78xp/VhVjT81UnQyQsFSx39J8ttDf65WeokOJ4NSM3Q=;
 b=kjalUezDiSOsrg/vH0pnUncHh/7HXg9NGZ/7welIDTUVi6cXB1bLfTcPrzq/3cKhos
 IYnyR/g5bMhVlXZlq9xAuGZzR0hrO47B49v50bZWiSyeegDrh49nhk10cCDx7MEm36iS
 7/t9tMgiTnXnZ6ZYvQ9Jwz2cNH8EEIv8Uq3+gJhosrUZKcGJS7HSCfq1Q1cJXS6OTXMQ
 GqsvTjg7G5xcFuDJfpJiRLKCSw7c50KFDKi3L1FUUQKYgu8TrMbcq80uFle4ypsXC81u
 Cwms2j+7F0ynfBp7RAbVuCktOu8gLUk2MTmm3BFsz/e+jXeynl+9Ip4NvoSY+Rrc9xcB
 MZLw==
X-Gm-Message-State: APjAAAUfidFN22QjbstuPftt/IUpBjZ7fnnzfFmS75eNkrodbipYjEUv
 eIa15tp+cNrLHDmr/8vkE0q3RugdHYo=
X-Google-Smtp-Source: APXvYqylEiW8Cjr0xXpHf0hEJL0OVaSYGWijdx6ZW5oOZVdXapBnF71yDQhIlTKgvBg1jWEmW8tk4w==
X-Received: by 2002:a17:902:4124:: with SMTP id
 e33mr63359743pld.6.1563722844864; 
 Sun, 21 Jul 2019 08:27:24 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id e189sm7802512pgc.15.2019.07.21.08.27.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 21 Jul 2019 08:27:24 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/4] lnvm: cast identity structure to (void *) directly
Date: Mon, 22 Jul 2019 00:26:48 +0900
Message-Id: <20190721152649.4894-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190721152649.4894-3-minwoo.im.dev@gmail.com>
References: <20190721152649.4894-1-minwoo.im.dev@gmail.com>
 <20190721152649.4894-2-minwoo.im.dev@gmail.com>
 <20190721152649.4894-3-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190721_082726_687438_5BA59111 
X-CRM114-Status: GOOD (  11.60  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
