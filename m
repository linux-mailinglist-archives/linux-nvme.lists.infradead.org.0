Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0E62BEAF1
	for <lists+linux-nvme@lfdr.de>; Thu, 26 Sep 2019 05:45:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5Bpc9aI+5rj91mih44F+flJa2c6/3zjk6W4qYmGbm0E=; b=u0yO43lipOXwJU
	bkATuy4GtgsdEF66PXQConMVvGho0Gs+ggYqcCrWxlawL08UeQSPAl+MaXjwjI0D8Hw6F0AYDUNDj
	kW9ZqO3jd/lVhGSqU6DXAiU0Qomt7e80c9SxjvKtVRoBk2AyNWPEGDjgjAQyBbzzEag3OS3LypdM+
	HWy91vpLqRPc3ukbdt7nHCIR6dSKifKypfPkq1A6ADTqc+39KERzodQo6cwggGev/JdACXjmYuLBt
	ok7aac4eoi4EoN69fN7VCLwQ0Mq0PJOGpfEOdaI205jF+qm0A1hCjn8ZiVc6B9DbkyNn3oTHLSnB6
	r8RzqJwto61bhacMLF9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDKi9-0001jc-Qd; Thu, 26 Sep 2019 03:44:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDKht-0001fQ-QB
 for linux-nvme@lists.infradead.org; Thu, 26 Sep 2019 03:44:43 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F0737207FF;
 Thu, 26 Sep 2019 03:44:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1569469481;
 bh=W8C6qSQ/4eqO+qrxRMRTJJ+iSiXjDMwwyyM1+tVxycU=;
 h=From:To:Cc:Subject:Date:From;
 b=zXyk5QXun5rlGHo4y8uFGSfCkKY14NOta0WVhqx3aErauID8q+lB8spdtPAXxVECo
 X1KA/ZWIUupfQm3XaNBSMViD4sgLRu0eqgzPDH3T6e16Z9/P3M+rlYwvHC2xB0ZXP4
 BzWLvRVFWt8PJ972uWSXuUwJ2BIn3bEC4R2hiTWI=
From: kbusch@kernel.org
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme: Move ctrl sqsize to generic space
Date: Thu, 26 Sep 2019 12:44:39 +0900
Message-Id: <20190926034439.2542-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190925_204441_869762_00B46699 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <kbusch@kernel.org>

This isn't specific to fabrics.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/nvme.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index b5013c101b35..38a83ef5bcd3 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -221,6 +221,7 @@ struct nvme_ctrl {
 	u16 oacs;
 	u16 nssa;
 	u16 nr_streams;
+	u16 sqsize;
 	u32 max_namespaces;
 	atomic_t abort_limit;
 	u8 vwc;
@@ -269,7 +270,6 @@ struct nvme_ctrl {
 	u16 hmmaxd;
 
 	/* Fabrics only */
-	u16 sqsize;
 	u32 ioccsz;
 	u32 iorcsz;
 	u16 icdoff;
-- 
2.20.1 (Apple Git-117)


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
