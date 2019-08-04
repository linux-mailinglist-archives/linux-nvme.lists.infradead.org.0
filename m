Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E9FC809C6
	for <lists+linux-nvme@lfdr.de>; Sun,  4 Aug 2019 09:11:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SMa7v4cY3o/MWtdRH2PIsLiGIMAtq0W6r/bNWdIfX6U=; b=uB/FGCuZWTHyFwmJwNN8nr+6pk
	JsWYCHn5Qz1JnkqC6paWfEQ0LmMW6k2AVFBbrDv5iIElurGUVST9GoCebXZmP765EtW3DqTDynAxE
	NzG5Ricz3pyraGJONhHmpsy8Tn0Pt6LNrFn76ygPEh7LT2NBALR+Aay3niYiQk6U+Dms8xkJ21YKK
	ifty48KGVNh9VKCgqgMiS5jb3BlL1rkwTupeffOq8lFL4MwGrBncsiMwKtmigA2pSIcWnrc1antIu
	11JJAgQqi6r6f3l7hIt7vcCRJ9muZhDCVoWKKbB2pMxcuEEW5Nldyp62CLc03G8a5S1sc96rc0h/k
	990f9o+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huAfx-0004QT-4i; Sun, 04 Aug 2019 07:11:29 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huAfJ-0003wE-Ma
 for linux-nvme@lists.infradead.org; Sun, 04 Aug 2019 07:10:51 +0000
Received: by mail-pl1-x641.google.com with SMTP id m9so35101871pls.8
 for <linux-nvme@lists.infradead.org>; Sun, 04 Aug 2019 00:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=eniiE3qKSz7L8eXyyB5KDh+HPasxFA247h7E3O4cQ9s=;
 b=VmEosp5ncub/BSxMnOwW7A8rYL+IXOipCtKWRVvyh8Pn394w/sGao8PtsrUI1KH2Zj
 xkLC7uirjAyMDAtgtYPZctvadDMj6wemoeoUHHQ0QajaBRoC3uuNdC+fXNChGPi7AfXx
 yFbb+j5xdGZw3qOZgEqlE9xd5qxxW7F4VJd+y7pm96S69N+cdpd3XbJUiI1EaV0h7fLH
 I3gnzVr52dPRCSr7slEJ5txT3P0/ls25TNz+Uez12rsSjd6Jx/fT0WjeVrjQkPYSoYnE
 J4HRjtdjMQUlZZni31l8V9FRFWFxsHTGG2lu133kIccjcLfoiPtbQYi8lYfn6hDOs0tu
 B/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=eniiE3qKSz7L8eXyyB5KDh+HPasxFA247h7E3O4cQ9s=;
 b=V24UfIbRbUCcZrOwRiRuryI5CZ3njdKws8AnIBBcFfV+ONS17GN452W+N0pD7BWl58
 yUEvnbhNHi5sgCIzpWL5dN3foc49UKXuF9cYzGe1/ykHaNWcCXLeEaWh///dq9u1xQ5/
 Ihb7SD1tmJVz6NxHlD+egS5rxBvT+sSBAE4nTXKpRj0M2nz2JRaepkC1p52PEAQ+/5MR
 8XkYLZ2JATJpmFotIbIVJEzu/d0+dskOdTUzvb3L+Jp/E3g943t65nGiCLVkNzSCJoZX
 hdKqjEXvVVYMx02oy5fgX28MEJsGnSpu+RPPgcnVN+LvjEZ2OCrweIgTZPxuvOOwed2Y
 z8jg==
X-Gm-Message-State: APjAAAXgK7KCRqfT2mcqXUAFefNKf5UbxB8v7RqnRT9TjUaY+Sm12GKO
 NH6brN9hNZf1IrZrt/luuGFRqq6Pp3o=
X-Google-Smtp-Source: APXvYqyYpaNisIpQEDV6xa8iJ0TR6kx13zt+NtEMc1F3/W5c3j8FvrdGDiV6LmHLNwdIR1I2a3oiQw==
X-Received: by 2002:a17:902:8207:: with SMTP id
 x7mr139348088pln.63.1564902642856; 
 Sun, 04 Aug 2019 00:10:42 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id p7sm88033964pfp.131.2019.08.04.00.10.40
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sun, 04 Aug 2019 00:10:42 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/3] id-ctrl: add an indicator for get lba status capability
Date: Sun,  4 Aug 2019 16:10:24 +0900
Message-Id: <20190804071026.16149-2-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190804071026.16149-1-minwoo.im.dev@gmail.com>
References: <20190804071026.16149-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190804_001049_731276_77CC8796 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

NVMe 1.4 supports for the Get LBA Status Capability which can be
referred to 8.22.  The Identify Controller is now able to indicate
whether or not the Get LBA Status Capability is supported.

Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme-print.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/nvme-print.c b/nvme-print.c
index 2b6bc389015b..b6e18d488a8e 100644
--- a/nvme-print.c
+++ b/nvme-print.c
@@ -169,7 +169,8 @@ static void show_nvme_id_ctrl_ctratt(__le32 ctrl_ctratt)
 static void show_nvme_id_ctrl_oacs(__le16 ctrl_oacs)
 {
 	__u16 oacs = le16_to_cpu(ctrl_oacs);
-	__u16 rsvd = (oacs & 0xFE00) >> 9;
+	__u16 rsvd = (oacs & 0xFC00) >> 10;
+	__u16 glbas = (oacs & 0x200) >> 9;
 	__u16 dbc = (oacs & 0x100) >> 8;
 	__u16 vir = (oacs & 0x80) >> 7;
 	__u16 nmi = (oacs & 0x40) >> 6;
@@ -182,6 +183,8 @@ static void show_nvme_id_ctrl_oacs(__le16 ctrl_oacs)
 
 	if (rsvd)
 		printf(" [15:9] : %#x\tReserved\n", rsvd);
+	printf("  [9:9] : %#x\tGet LBA Status Capability %sSupported\n",
+		glbas, glbas ? "" : "Not ");
 	printf("  [8:8] : %#x\tDoorbell Buffer Config %sSupported\n",
 		dbc, dbc ? "" : "Not ");
 	printf("  [7:7] : %#x\tVirtualization Management %sSupported\n",
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
