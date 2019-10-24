Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B6BE3685
	for <lists+linux-nvme@lfdr.de>; Thu, 24 Oct 2019 17:24:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=4l5zRQEb/Pn4gOfGxvkMV0aLxFJvyGghB6Yml8y9l3A=; b=fHP
	KVl0x9OVuf/h7/IT/ohY9vAaWNscWDz40VObxB8YsYAN836kCmb/k6NLFn+F2eLP8OzMml7Ytu1jQ
	+NEPmnJYfznc2yXq+JD+3iU7sO1IU0wSZG84nYS7T6qopnIPWIOBrwMbuSdzIvlc/SCOiXS4oyOIV
	vN0tg3Pl+xDdHxH3KFTZPtyBLuYVdUctX3H0f0AAJHrcpwHlkfKyx912wCH3h1TvcDwNQAnlUeJm+
	E52vc94/1cEpH2kN55GIJNHXgThjMH4ii3nCcdD9dFKPU2/W8ljMSSq9KVx3j/lp+D7mPwY+q1eqJ
	ePIH1gMnPuLaYYE0v/uJoJhO46hFsSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNeyA-0006Mg-Ri; Thu, 24 Oct 2019 15:24:10 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNey5-0006Lm-7y
 for linux-nvme@lists.infradead.org; Thu, 24 Oct 2019 15:24:06 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id HTQ12100F5USYZQ01TQ1aA; Thu, 24 Oct 2019 17:24:01 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNey1-00076Q-Bs; Thu, 24 Oct 2019 17:24:01 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iNey1-0007px-9B; Thu, 24 Oct 2019 17:24:01 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@fb.com>,
 Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 Jiri Kosina <trivial@kernel.org>
Subject: [PATCH trivial] nvme-pci: Spelling s/resdicovered/rediscovered/
Date: Thu, 24 Oct 2019 17:24:00 +0200
Message-Id: <20191024152400.30082-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_082405_446633_4EF71265 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Fix misspelling of "rediscovered".

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 drivers/nvme/host/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 869f462e6b6ea01c..dd4a2ce85e872cd0 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2982,7 +2982,7 @@ static int nvme_suspend(struct device *dev)
 
 		/*
 		 * Clearing npss forces a controller reset on resume. The
-		 * correct value will be resdicovered then.
+		 * correct value will be rediscovered then.
 		 */
 		ret = nvme_disable_prepare_reset(ndev, true);
 		ctrl->npss = 0;
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
