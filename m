Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 866B33A1D3
	for <lists+linux-nvme@lfdr.de>; Sat,  8 Jun 2019 22:01:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=JuLr/BVy4QJKTzh+kzKlqZZ2bPeUH3DkbqLVSo03wFs=; b=BL+
	s/t/xkOvLoelTXjwkbFJ8HPm7pYoKUqt4PX6XHg9ls43hmewRj+/Za0WgCUEFQVV6aKFgyOp0or14
	zOIlhckyqCDEvpdtcDrwAS7Csb/CFCkuKM42MNs30tWHzHbck7G2Q8OaYnA0VrAaHYoi3gmfrDeWi
	aS6kSFd775GUwFhUu0BGchvHQiaO3I7mvfZwWeofL0UwEilozycLh3UKPsMlUb7KcjCi0LZ87w1G0
	LfOOgqkPIjDapTtQvtUpAr2xw8ZSnLv1X9yDi8NjnKAAwLZugK4edRrFb/3aiqjmt8NUhHQ8Hes3v
	eAYqLx5DAdDvTrwqxlSQvBMFAo6G2mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZhWp-0004c8-3b; Sat, 08 Jun 2019 20:01:27 +0000
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZhWa-0004XK-Kw
 for linux-nvme@lists.infradead.org; Sat, 08 Jun 2019 20:01:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1560024073; x=1591560073;
 h=from:to:cc:subject:date:message-id;
 bh=wuB+cxEe45VwbSlPQ0C5ki9icNeSpTqMR5p797PP24s=;
 b=KF45zJsz1KZGEjVBWFcaVi22bBbLZbhncaJglLfv1W2V6Rr9vGP/u5gy
 L2NFqIy/oZ4O1tP0DNOuc9dFG2JtP2z7HTJgGway9kDY9X/UDIeZo9Mwb
 ji7w03+ZUduq8llbrNKZBQU06bAU0fSApthxxwRrArNdnEiqit5Uguwk/
 F+weyF8gOADHzWIFEZqdYXvoQKD+M69yaWdfZRq4OXFvak4lQ/pl8kwIt
 6urUEhO1cnBmHmNgPftYa+4pIC0wbQ8B0/qJRZap4qlYGIbWwbdcnJpxb
 FeAOR4P2xrpp3JEKMkk9JdDp4dHfQQpRN3iXn/8BqAX3P3EO0cGKjsJcp g==;
X-IronPort-AV: E=Sophos;i="5.63,568,1557158400"; d="scan'208";a="111763066"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 09 Jun 2019 04:01:09 +0800
IronPort-SDR: mniErcF0FacKPs5qeMxWK+4gDO/6KfF6JJfhOFT5qLBR4jArMurYICB0QCo8Iy0sZrhQeh2Asf
 kIhzpIPD3QebCgBErARTWFXsIoFPJh+8RO3MOlQWJEQPBvxdf0keZGeVZ4/yoEK74RDYfI3mGq
 Ms0iI435NNKzezTPf6e0D1ECLalgcVQNVoGytJgONrWEQK3IhdmCsmkIAjpmngA3VC2OWPSLIi
 fwAQUR7NWroK5PkPhrkGgtEgJm2b7/27Khh7YLhKTDMxDsXnRXA8IqUEVkSQ8hYq+2VgobfqIC
 K9xYuh2mVvA6aKt6HA7sDmHQ
Received: from uls-op-cesaip01.wdc.com ([10.248.3.36])
 by uls-op-cesaep01.wdc.com with ESMTP; 08 Jun 2019 12:36:00 -0700
IronPort-SDR: FV3Ozf9Uk97KnAi96nJ8J+e4v8Y+YTP2C/C9elDce3ciFIHTGyGtKFE1MxtB2m3OWnNPGHfzfW
 zDvj9qhYsE0FDyVoElV5zUOP37KdLgsjwbKVrach6jAoGgzlQBhGYr69HfMpEdJ3G14/NCFOa/
 7HyEdoZ+OWx24uD+B37ksItqCPerHUxhWtQRgOgVc1r85XlTGO9+tZoihic+gcTzrbglRIm3f3
 QT6jmakNUWf8KBMUynNPxVXAXaEAajTBmeK3BmnXwv6OwAL+/K1j1IAePlXFw1fSVOoVpJmydi
 6qc=
Received: from qemu.hgst.com ([10.202.65.140])
 by uls-op-cesaip01.wdc.com with ESMTP; 08 Jun 2019 13:01:09 -0700
From: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-pci: set the errno on ctrl state change error
Date: Sat,  8 Jun 2019 13:01:02 -0700
Message-Id: <20190608200102.7281-1-chaitanya.kulkarni@wdc.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190608_130112_772371_D690D865 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This patch removes the confusing assignment of the variable result at
the time of declaration and sets the value in error cases next to the
places where the actual error is happening.

Here we also set the result value to -ENODEV when we fail at the final
ctrl state transition in nvme_reset_work(). Without this assignment
result will hold 0 from nvme_setup_io_queue() and on failure 0 will be
passed to he nvme_remove_dead_ctrl() from final state transition.

Signed-off-by: Chaitanya Kulkarni <chaitanya.kulkarni@wdc.com>
---
 drivers/nvme/host/pci.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 5c051a8470d4..aca5867d2e6a 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2482,11 +2482,13 @@ static void nvme_reset_work(struct work_struct *work)
 	struct nvme_dev *dev =
 		container_of(work, struct nvme_dev, ctrl.reset_work);
 	bool was_suspend = !!(dev->ctrl.ctrl_config & NVME_CC_SHN_NORMAL);
-	int result = -ENODEV;
+	int result;
 	enum nvme_ctrl_state new_state = NVME_CTRL_LIVE;
 
-	if (WARN_ON(dev->ctrl.state != NVME_CTRL_RESETTING))
+	if (WARN_ON(dev->ctrl.state != NVME_CTRL_RESETTING)) {
+		result = -ENODEV;
 		goto out;
+	}
 
 	/*
 	 * If we're called to reset a live controller first shut it down before
@@ -2584,6 +2586,7 @@ static void nvme_reset_work(struct work_struct *work)
 	if (!nvme_change_ctrl_state(&dev->ctrl, new_state)) {
 		dev_warn(dev->ctrl.device,
 			"failed to mark controller state %d\n", new_state);
+		result = -ENODEV;
 		goto out;
 	}
 
-- 
2.17.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
