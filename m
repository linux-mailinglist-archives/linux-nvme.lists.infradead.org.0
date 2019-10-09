Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74672D1595
	for <lists+linux-nvme@lfdr.de>; Wed,  9 Oct 2019 19:24:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ZE291awNS1239qJ4Qf32En0Yyh959sDkzrNCP7t4ck=; b=fWCyLXVJu4rFWt
	TD0x/1jY2YUwQQ/yQV+onb+XybHJvXDvkO8Yrxb2QAGLOe+R0GDkfqYA62rrW5ISB3HPD1Y6B27w5
	c1dxBXQRYJjERuTS8D6kNwPOjGbq/l65MXEIc/Hdreo7TXaYJRixQqLAoC/6PjFNuSxS2dRSx3/rG
	KHcBHM4mw4lSWwT2OmE6SqggUsPsNxlCk3qJDrzpFmxOYF+mRJgLuhrvwphjRD3j5qG9C5nOIc7kI
	tvgXgDDfhyOdJ6dvlsgrup1SKYsrwDGNtV/mWnit13FzRxOVVVs3G5oJGQ/ebSxjoABtv5cWJ71Fy
	VUE+QHKCCgdm5OMmYxMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iIFhO-0004Ji-60; Wed, 09 Oct 2019 17:24:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iIFgs-0003xj-VB
 for linux-nvme@lists.infradead.org; Wed, 09 Oct 2019 17:24:00 +0000
Received: from sasha-vm.mshome.net (unknown [167.220.2.234])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9938921D56;
 Wed,  9 Oct 2019 17:23:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570641838;
 bh=R3+/hJX/2rD8flEe2XZwxCvvYNQNQxgQCV+Xkg2vBdw=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=kxngq0O07xbxdf3ZEEveYUR2Rp5zNJWzvBZGtI1qLBTcqJm6KwotGk83acEJuZz3H
 M6z2NcGdWdAZ4TrslWHICCxbwIywIhFO70JzgN18cukMcdltxcNf086V9JRm0+CM+M
 VxXmhG2u+6Vy8nAFTZmK0X+d4BS60wZh46AzONXw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.3 19/68] nvme-pci: Save PCI state before putting
 drive into deepest state
Date: Wed,  9 Oct 2019 13:04:58 -0400
Message-Id: <20191009170547.32204-19-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191009170547.32204-1-sashal@kernel.org>
References: <20191009170547.32204-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_102359_023179_E098E5E6 
X-CRM114-Status: GOOD (  12.12  )
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
Cc: Keith Busch <kbusch@kernel.org>, Sasha Levin <sashal@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Mario Limonciello <mario.limonciello@dell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Mario Limonciello <mario.limonciello@dell.com>

[ Upstream commit 7cbb5c6f9aa7cfda7175d82a9cf77a92965b0c5e ]

The action of saving the PCI state will cause numerous PCI configuration
space reads which depending upon the vendor implementation may cause
the drive to exit the deepest NVMe state.

In these cases ASPM will typically resolve the PCIe link state and APST
may resolve the NVMe power state.  However it has also been observed
that this register access after quiesced will cause PC10 failure
on some device combinations.

To resolve this, move the PCI state saving to before SetFeatures has been
called.  This has been proven to resolve the issue across a 5000 sample
test on previously failing disk/system combinations.

Signed-off-by: Mario Limonciello <mario.limonciello@dell.com>
Reviewed-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 17 ++++++++++-------
 1 file changed, 10 insertions(+), 7 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 732d5b63ec054..19458e85dab34 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2894,11 +2894,21 @@ static int nvme_suspend(struct device *dev)
 	if (ret < 0)
 		goto unfreeze;
 
+	/*
+	 * A saved state prevents pci pm from generically controlling the
+	 * device's power. If we're using protocol specific settings, we don't
+	 * want pci interfering.
+	 */
+	pci_save_state(pdev);
+
 	ret = nvme_set_power_state(ctrl, ctrl->npss);
 	if (ret < 0)
 		goto unfreeze;
 
 	if (ret) {
+		/* discard the saved state */
+		pci_load_saved_state(pdev, NULL);
+
 		/*
 		 * Clearing npss forces a controller reset on resume. The
 		 * correct value will be resdicovered then.
@@ -2906,14 +2916,7 @@ static int nvme_suspend(struct device *dev)
 		nvme_dev_disable(ndev, true);
 		ctrl->npss = 0;
 		ret = 0;
-		goto unfreeze;
 	}
-	/*
-	 * A saved state prevents pci pm from generically controlling the
-	 * device's power. If we're using protocol specific settings, we don't
-	 * want pci interfering.
-	 */
-	pci_save_state(pdev);
 unfreeze:
 	nvme_unfreeze(ctrl);
 	return ret;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
