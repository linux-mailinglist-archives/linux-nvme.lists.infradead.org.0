Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D4E64176B26
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Mar 2020 03:48:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4wWFgxy/8xjZWE9+vjnRwXeN6iwRNCygA2g+4yL0YPw=; b=MmMqfhateui1QB
	asFk9t3iB69Jo5zCtmhGVxhc53cASFg9apbipMCMsliP/u/t0Y/vdlNhqSDNUi7Nkkgzv/ckAEbbA
	4Mb8U19/M9z30yTJsjjSiodxdVsaTMr6sLuOm5RPTxAEls4GGwK5D0cRm8SfTKbDwdSYeRnxgvxvX
	UGl94CNKqUSdFppUu4bfnci5e3TOYWmGDOFB7rqwxXoE6OUX+yzqWmQpCYZv/tPWsq7mZBNN8ZLTL
	A6KNVn59EOgUbsRzll+yKTrKbzaBI6RUoxROvPLMoDuqnEAjSjxBZMjQ/n3P2soProUKijNma5ZqR
	UApXyj9sPbbdB88q10TQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8xbr-00061g-6d; Tue, 03 Mar 2020 02:48:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8xbh-00060B-Pn
 for linux-nvme@lists.infradead.org; Tue, 03 Mar 2020 02:48:31 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E91C24697;
 Tue,  3 Mar 2020 02:48:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583203709;
 bh=EcXmh/sViq3cjX+kT2vA7ywCjsgkFY/MvcXJvo0fHBQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=cDMmJwWEceWeru+Zs8KI0eQvBx7BVTCIrT5UCNNB/H/aPXMtIpETfzKcibAG1cK4U
 podRZ7iknZvtWWzswK+WNBmqgsgdMlpLheK8+tc30vIFgetCmvLDCudIqETxbpXYes
 x/FQ125lE5i/hBDLIRtgK05b4vJpTBb76y6BeYw4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 40/58] nvme/pci: Add sleep quirk for Samsung and
 Toshiba drives
Date: Mon,  2 Mar 2020 21:47:22 -0500
Message-Id: <20200303024740.9511-40-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200303024740.9511-1-sashal@kernel.org>
References: <20200303024740.9511-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_184829_857415_7B9FF8F5 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Sasha Levin <sashal@kernel.org>, linux-nvme@lists.infradead.org,
 Shyjumon N <shyjumon.n@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>, Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Shyjumon N <shyjumon.n@intel.com>

[ Upstream commit 1fae37accfc5872af3905d4ba71dc6ab15829be7 ]

The Samsung SSD SM981/PM981 and Toshiba SSD KBG40ZNT256G on the Lenovo
C640 platform experience runtime resume issues when the SSDs are kept in
sleep/suspend mode for long time.

This patch applies the 'Simple Suspend' quirk to these configurations.
With this patch, the issue had not been observed in a 1+ day test.

Reviewed-by: Jon Derrick <jonathan.derrick@intel.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Shyjumon N <shyjumon.n@intel.com>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index f34a56d588d31..944f89fc15946 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2740,6 +2740,18 @@ static unsigned long check_vendor_combination_bug(struct pci_dev *pdev)
 		    (dmi_match(DMI_BOARD_NAME, "PRIME B350M-A") ||
 		     dmi_match(DMI_BOARD_NAME, "PRIME Z370-A")))
 			return NVME_QUIRK_NO_APST;
+	} else if ((pdev->vendor == 0x144d && (pdev->device == 0xa801 ||
+		    pdev->device == 0xa808 || pdev->device == 0xa809)) ||
+		   (pdev->vendor == 0x1e0f && pdev->device == 0x0001)) {
+		/*
+		 * Forcing to use host managed nvme power settings for
+		 * lowest idle power with quick resume latency on
+		 * Samsung and Toshiba SSDs based on suspend behavior
+		 * on Coffee Lake board for LENOVO C640
+		 */
+		if ((dmi_match(DMI_BOARD_VENDOR, "LENOVO")) &&
+		     dmi_match(DMI_BOARD_NAME, "LNVNB161216"))
+			return NVME_QUIRK_SIMPLE_SUSPEND;
 	}
 
 	return 0;
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
