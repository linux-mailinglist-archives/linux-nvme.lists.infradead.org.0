Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 579C11BE88F
	for <lists+linux-nvme@lfdr.de>; Wed, 29 Apr 2020 22:31:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JDvwYOuytWi87ac0ZiQ/1QmslaLgr8LSMDdiYAAQOOk=; b=jHfmMwmm3Zy0Zw
	tYeOD0/H3v0GMen40Xa2FA1w8Qb6yQgZYtmt+XaV8p5prRlH2TOf7rL3xVBhlXGy9RjbWajb/SO7c
	RsB0X/2wrcBJuKgMpp3mCVrXmJeu9UFtgg0xD/scEc2eNB7N6ApfiOWQtMrOcQuy7UhdU2P3YL9xG
	XYMdnNJKOe5IR9pxbUcX6FLV1vq0ethBaeQds26wH+Ud6j8qo5/7P+af+5NB8fcjpV/cR/8H5sPET
	P2UF3Yvob5yxRTCpis6vrM1ie2elV2/MEahZZ6s85zjTbmW8S9WOxyJ20cOKNS2MmZsulOFWgO6TG
	WeoWtseE0JTnnNk1xs3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtMk-0002pf-Jg; Wed, 29 Apr 2020 20:31:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtMg-0002pE-5q
 for linux-nvme@lists.infradead.org; Wed, 29 Apr 2020 20:31:31 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6601B206D9;
 Wed, 29 Apr 2020 20:31:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588192289;
 bh=OyxZ/l5Hb92gbaekq68vJyDnB6/lVCBxj9RMKMqZmio=;
 h=From:To:Cc:Subject:Date:From;
 b=hA4A1QTfZpFWSj9GrfD08rdcMpKtxcnYwUCP8us8Tm42fBsCLB0Jv77YcZQ2Z8pBB
 1tJJ4jlcm4eyOdipZS9up/dG18UrCVAin0nv/axeXAk5n7sMYH/TUn6ympGI9eZFo9
 bEKTj+bnYVZgY8Ut5UZOs8AangSFIE0FMj/tTcqI=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	sagi@grimberg.me,
	hch@lst.de
Subject: [PATCH] nvme: flush scan work on passthrough commands
Date: Thu, 30 Apr 2020 05:31:23 +0900
Message-Id: <20200429203123.31302-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_133130_233386_2C60D885 
X-CRM114-Status: UNSURE (   9.92  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If a passthrough command causes the namespace inventory or capabilities
to change, flush the scan work that handles these changes so the driver
synchronizes with the user command's effects before returning the result
to user space.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index dfb064b4334f..00509973ff6a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -1404,8 +1404,10 @@ static void nvme_passthru_end(struct nvme_ctrl *ctrl, u32 effects)
 	}
 	if (effects & NVME_CMD_EFFECTS_CCC)
 		nvme_init_identify(ctrl);
-	if (effects & (NVME_CMD_EFFECTS_NIC | NVME_CMD_EFFECTS_NCC))
+	if (effects & (NVME_CMD_EFFECTS_NIC | NVME_CMD_EFFECTS_NCC)) {
 		nvme_queue_scan(ctrl);
+		flush_work(&ctrl->scan_work);
+	}
 }
 
 static int nvme_user_cmd(struct nvme_ctrl *ctrl, struct nvme_ns *ns,
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
