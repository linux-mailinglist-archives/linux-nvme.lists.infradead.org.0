Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92703E4CD5
	for <lists+linux-nvme@lfdr.de>; Fri, 25 Oct 2019 15:56:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lmFs6iewkf6Zv8yn4gn3fXmL8KdGPPsWLsrtM2Bauz0=; b=TdRwjAfLwfLess
	/uhShghb2WgrcsrIXrXPs0ho2roOxTJUONHl8oIFMKuRWtUNnAK+iWVxy/ZC3Ktd7SWb8ooyAb4Gf
	5vZ401yHm70hMPV9VLO2tbZRtdjcF9if5KrXMociqNWzLEzcj3he2GShIwzhJvP8b2d4XnP1dOEH7
	qP+ivakiUACwOBHorgMk8yowisjnBXpx8SyTJHKt7Y2k2tm0C5CXHsLormgsPlee5JeTHx9JAVIWK
	WOLZiw3Hsch/m36yGcpUC9vhsBGEJTQR0WwOVLYz480t6DZt7hdAq8V2l+Bb5mnDCgsSKYCZqd208
	HSWmyXSR4/MjJVosDWQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iO04a-0002VY-F0; Fri, 25 Oct 2019 13:56:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iO04M-0002SO-Er
 for linux-nvme@lists.infradead.org; Fri, 25 Oct 2019 13:56:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 45DE121E6F;
 Fri, 25 Oct 2019 13:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572011757;
 bh=YHnkUtw/XFK3xLZfVX45y1vkAAIo5c2SU20QP3kvqz4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oGwWxYJP6lUgbX8jY5COVBfApoiUAEcB3UQbq4S+BTlz4lAQwF0/5veIsOzQk72tm
 vvNXAzFuZtnsqiANaCV2iLMRj10gSjysSQ7QZmFQatrUuJZZY4H8+cBEoDiD+PCPId
 IWBnHwkEIoMhc2OwJmE29HdFcqHYs8HD9UDMKcIY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 33/33] nvme: Add quirk for Kingston NVME SSD
 running FW E8FK11.T
Date: Fri, 25 Oct 2019 09:55:05 -0400
Message-Id: <20191025135505.24762-33-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191025135505.24762-1-sashal@kernel.org>
References: <20191025135505.24762-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_065558_538686_DCFB27E7 
X-CRM114-Status: GOOD (  12.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Sasha Levin <sashal@kernel.org>, Jian-Hong Pan <jian-hong@endlessm.com>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Jian-Hong Pan <jian-hong@endlessm.com>

[ Upstream commit 19ea025e1d28c629b369c3532a85b3df478cc5c6 ]

Kingston NVME SSD with firmware version E8FK11.T has no interrupt after
resume with actions related to suspend to idle. This patch applied
NVME_QUIRK_SIMPLE_SUSPEND quirk to fix this issue.

Fixes: d916b1be94b6 ("nvme-pci: use host managed power state for suspend")
Buglink: https://bugzilla.kernel.org/show_bug.cgi?id=204887
Signed-off-by: Jian-Hong Pan <jian-hong@endlessm.com>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index d3d6b7bd69033..079da1c613f04 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2267,6 +2267,16 @@ static const struct nvme_core_quirk_entry core_quirks[] = {
 		.vid = 0x14a4,
 		.fr = "22301111",
 		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
+	},
+	{
+		/*
+		 * This Kingston E8FK11.T firmware version has no interrupt
+		 * after resume with actions related to suspend to idle
+		 * https://bugzilla.kernel.org/show_bug.cgi?id=204887
+		 */
+		.vid = 0x2646,
+		.fr = "E8FK11.T",
+		.quirks = NVME_QUIRK_SIMPLE_SUSPEND,
 	}
 };
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
