Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE07471F62
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 20:37:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=g3dMdDxpg+baNrc1zitECMTddEHxgK7pWO90WrX84QI=; b=l0Y4iqclT88uuJYiMrFOjtRAnl
	E/vDsWmSWwah+U2tIUqq4nIU63oAJDkYwRD5Kw4uJNlkB2e3oydtNRgDJHAgo/i53ia2IzVs4WMnl
	w93WpEEfbv/Gx+S0pz+5XWyr5xYYLLliw5Z4WKmIEjkkE6PmlyrpdcewxUy/Rze8pIgX+FPskLuK8
	+Ck4i/S7EZtkZatCDJJVUxuppc06x4oSg6wVTmI5LXfyXT1fQsh7ch38MNhv3UR+CyxC8Y7o0BZTY
	RG2ZTaCeUgIZjBvXXlyF9M7h7Y5PMS5ONPe1FtSPE29l7pJY5AlBSQ32hRQ79G7NKCbyF3t5O7JpL
	HtpDx6QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpzes-00035K-1R; Tue, 23 Jul 2019 18:37:06 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hpze7-0002Zm-Nl
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 18:36:21 +0000
Received: by mail-pl1-x644.google.com with SMTP id t14so20911870plr.11
 for <linux-nvme@lists.infradead.org>; Tue, 23 Jul 2019 11:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L76u5Z1EG/f/s9MkdBhB1TNAHY0sCDjHsZc98ubH5mg=;
 b=g2Vwcj2nr/rRk0e86QDvhdHjubsuw41GuQR/g4DwCYOS26gJDdErEkhACkyPIaUgtg
 SRFr6p3+H/NWqTlYLghhh+zeSoTGZYIfN+JgqGvp9Fb7dd1dRA2keumi8cUaMYfKjYDA
 YHZKEROJqsgeivELGGND76RUbgUtgfeNKs3845t7PDtH8BUQqQ7RGy+ZR7YwDDdeGwGE
 AQVccziTl7dXzzfofdXUGLWZ9U7cm+ywmvFiWO4qgNaqIoiPHqUnqkimV55GXwslo+8E
 pjZLzS5LCxVTwyTQsYiHl9q6LM8YwH3eRz6T9UriWlYNg3JcaTehzQJNgduR0KmPoKa3
 byFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L76u5Z1EG/f/s9MkdBhB1TNAHY0sCDjHsZc98ubH5mg=;
 b=rJyds/OD0aiH/O5Ao9ACLfA6BKUmO7WI9EhaOs1JAXjsLR/t5z9vMyzcD0tPQBBuof
 pboeUigMvADdEH5mu3Snix/bLnnchtChruAHZ1MIM37YIe96g6/dYvPcBZj1GPpL4A4F
 ylTKJqdUt6yMevP77Ee1fNaBbl6kAgDAzLzFH708AGWIIZTbkmgUCBqIXI/x8VmnXIsA
 lZqvrWTD7EzgrrfhkBofZoXnW64e4VHbOnqPSxNTJy+f5aR9fbQsqRyUXHAdOUzz7ZoN
 KsvO6rXTDJ9USKl/2aOgdnWgyeifHwn+XCEXsVF0NCnyng1Ojazch6rHk8bTYcJ4wfp0
 bnZQ==
X-Gm-Message-State: APjAAAXe6/XYvsMQE5t011M6PUSvX47J+DlwQkRS7BSaiwiNfsXSowHE
 6C/zdiriFMzAvDzWK8Syux+p0V286+A=
X-Google-Smtp-Source: APXvYqxMg9y+Y60Z6nopOJ0RqZGHx7VxKX9uifqxspif5Gc9xHtQSkWTPK2531bFHVKfa9NQNYwnyQ==
X-Received: by 2002:a17:902:3181:: with SMTP id
 x1mr80211945plb.135.1563906978281; 
 Tue, 23 Jul 2019 11:36:18 -0700 (PDT)
Received: from localhost.localdomain ([123.213.206.190])
 by smtp.gmail.com with ESMTPSA id g6sm38548400pgh.64.2019.07.23.11.36.15
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 23 Jul 2019 11:36:17 -0700 (PDT)
From: Minwoo Im <minwoo.im.dev@gmail.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 3/5] lnvm: add chunk_info log page structure
Date: Wed, 24 Jul 2019 03:35:59 +0900
Message-Id: <20190723183601.29370-4-minwoo.im.dev@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
References: <20190723183601.29370-1-minwoo.im.dev@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_113619_836036_F1021615 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (minwoo.im.dev[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

The log ID is 0xCA which is defined in OCSSD 2.0 spec.  Also it has
32bytes sized structure for each entries.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Matias Bjorling <mb@lightnvm.io>
Signed-off-by: Minwoo Im <minwoo.im.dev@gmail.com>
---
 nvme-lightnvm.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/nvme-lightnvm.h b/nvme-lightnvm.h
index 9dc1868..7a8ef7d 100644
--- a/nvme-lightnvm.h
+++ b/nvme-lightnvm.h
@@ -246,6 +246,20 @@ struct nvme_nvm_id {
 	__u8			resv[4095];
 } __attribute__((packed));
 
+enum {
+	NVM_LID_CHUNK_INFO = 0xCA,
+};
+
+struct nvme_nvm_chunk_desc {
+	__u8	cs;
+	__u8	ct;
+	__u8	wli;
+	__u8	rsvd_7_3[5];
+	__u64	slba;
+	__u64	cnlb;
+	__u64	wp;
+};
+
 struct nvme_nvm_bb_tbl {
 	__u8	tblid[4];
 	__le16	verid;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
