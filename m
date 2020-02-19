Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA563164A03
	for <lists+linux-nvme@lfdr.de>; Wed, 19 Feb 2020 17:20:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lhdt6h6jgvXI9h5u6TVYQFwpBNpSdk57oM4U71UGwUk=; b=WA16+I/BITWb/i
	yL4HSHxO4ZMYD3/yE8h2sPYEYGuJ1B1nFtnX9jIahx4dYyoo09ZVeLT1U+75MjX1UT46LlChMFwp9
	o8RrXblEMXffOukaHbuWbkI3a27+73BWkYVe0mub8kyOSBTNpESI8Nf3el4mgi/kHgf3295Y6pdWI
	tnf0/cxan/ZR7Tj6EKbwW8kxuO1cT7/Mqr4eHes88dM8f3GaASwfJ0rfMxpua5+6Zs82zOqR+4Po6
	1woA0DKSG7R7hgQXk1LqN7eKEqCDEBLvNE1JcFTzhT5QEvj6OuPn8ecEUyLzLbWvCNnY5mObf1S+w
	SmeYsnUtYlM2PmlhfJYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4S58-0007Cu-BO; Wed, 19 Feb 2020 16:20:14 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4S4v-0006zN-8F
 for linux-nvme@lists.infradead.org; Wed, 19 Feb 2020 16:20:02 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 27DB524654;
 Wed, 19 Feb 2020 16:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582129200;
 bh=EWog6eGQ/J19icXrB5Q/RmbOUCcmGJ1OZ3tiA9Yw99g=;
 h=From:To:Cc:Subject:Date:From;
 b=zaB2DxoVjo9UqbmSM3liwiRRFHRqRD/7M0h7UAA19vOt8zUFroP++SHLKkWKhgAil
 1eNuNZBmm1Vdatd242YxE9iAs6tfLMux3o6UQhq8dTIUoB96Re6LtfJs6hvm0Y7In8
 m4NFs6cFVt0Zy6A1sclU9jk7Yy368Dlsnf/tpH7I=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	sagi@grimberg.me,
	hch@lst.de
Subject: [PATCH] nvme: Fix uninitialized-variable warning
Date: Thu, 20 Feb 2020 01:19:50 +0900
Message-Id: <20200219161950.14460-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_082001_352519_654C59EA 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

gcc may detect a false positive on nvme using an unintialized variable
if setting features fails. Since this is not a fast path, explicitly
initialize this variable to suppress the warning.

Reported-by: Arnd Bergmann <arnd@arndb.de>
Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index ada59df642d2..a4d8c90ee7cc 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1165,8 +1165,8 @@ static int nvme_identify_ns(struct nvme_ctrl *ctrl,
 static int nvme_features(struct nvme_ctrl *dev, u8 op, unsigned int fid,
 		unsigned int dword11, void *buffer, size_t buflen, u32 *result)
 {
+	union nvme_result res = { 0 };
 	struct nvme_command c;
-	union nvme_result res;
 	int ret;
 
 	memset(&c, 0, sizeof(c));
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
