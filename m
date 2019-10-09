Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF1CAD15B8
	for <lists+linux-nvme@lfdr.de>; Wed,  9 Oct 2019 19:25:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QCjCRutq7gtvIZPrm+5k2ejLQYpT0HoKvMeViNmrtYY=; b=ohCSxU2wK1nz/H
	xDJvFDEVGY6Ne0fWsoBw8BMz1aNzXhy06c2I18I4bZ33Psh/+S5c1DuTbUgAhdAvirSeNb8nZd13D
	5pQmVneUuaRiI2Mb6U8avsKTpxuqtJM4h599DTcLa3RE9KdsVvzArRa7SXXLBkiqoA9gTawb3NpAg
	f5SecM4l6Qi3fu58rmJREFStTAxR3DX6JrM67uGxmPjaKuU3dJLaw81LGAX9IUaTgougU06+wS631
	BFF3sUJHhHyGg2ctQliNOXBV2rysPBio6hV2+7mii6HN7wxGZY3kBKyk3TgX4DxehCb2gahtBUtvW
	IBuixlEIby+bi7TezFig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFi8-0004sg-G8; Wed, 09 Oct 2019 17:25:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFgu-0003zY-8n
 for linux-nvme@lists.infradead.org; Wed, 09 Oct 2019 17:24:02 +0000
Received: from sasha-vm.mshome.net (unknown [167.220.2.234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 91E2921920;
 Wed,  9 Oct 2019 17:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570641839;
 bh=8bnMYcLJcKc4ZU8HhKpFN1Z0TuerJPwW6b+l8HVm9/0=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tKGYLMLAa2Wvzk4k5sY9/cXLyczoZgHVFjQ9HdBOWiuyNL0ejS0xdXN3FqD7iCIlE
 N32dKQRk4WpzxADzu68ifDxCr7x9XCGoKQEeVj/Ap094WqZJQzbCKbfcEykCv5XBLr
 OXZpvtB0yPrK3/3LReQpbMOm3snaze88lGJrcCIQ=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 23/68] nvme: Add quirk for Kingston NVME SSD
 running FW E8FK11.T
Date: Wed,  9 Oct 2019 13:05:02 -0400
Message-Id: <20191009170547.32204-23-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009170547.32204-1-sashal@kernel.org>
References: <20191009170547.32204-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_102400_356470_63ABEAB4 
X-CRM114-Status: GOOD (  12.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
index ac2ac06d870b5..3304e2c8a448a 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -2270,6 +2270,16 @@ static const struct nvme_core_quirk_entry core_quirks[] = {
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
