Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 390A61F27C9
	for <lists+linux-nvme@lfdr.de>; Tue,  9 Jun 2020 01:54:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DMsxgGIF+MYhnHHXqARGmYLBL5i4Tm6IpYLFSCO/qb0=; b=HHxP3OiJQQgvK6
	clCoH+MRfnKywVifpdSwbXI45W0NmNuKy7xeFv7H2sg9uRU5YwwGk4GnXCrAz/SnFBMFgDULr5ooK
	OnX1FwcORrcZ1oOk2Ni3EyWn6OJ4xD1NUGbyS5PW/JVSILIoLLjV1Ep5FD3TMW3mmZhMT/xHznOck
	VSYZL4z6lTnKL8EvoTmbSW9RGxxhqr5WNv9bdWcNaJvKdxIFN3aB6JLLEvWDsMkM8BuCbzF/Hl5aN
	SWIQf7FHL4yKUU4b08XY7WNL/YpuRbXEHsAHVzaRGItd6RUmt/QY9l5yGQOMdPwVyS0DTixV/4nuw
	8BJX/PBQthstZ17Dj/Uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiRax-0002rG-0a; Mon, 08 Jun 2020 23:54:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiR9a-0007Am-IL
 for linux-nvme@lists.infradead.org; Mon, 08 Jun 2020 23:26:07 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 431772076A;
 Mon,  8 Jun 2020 23:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591658766;
 bh=NtesFIHCIvPh7eh6G+qjEWANchUZ00nFEMcDWC3jfZQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=d4F0W94RuXo3xu7FcF3g5VI3byJaN8nAZPPUXUOOhcHpyrsH4D/ylTF5BJnT7EEHI
 osSH3LWsjeCCaDA9ixZS+xkcsq2HPAdUCZutIRCmuUlZBs/GD9XtduSeVws7Rf+pgL
 qqXyPfXwyQZ1W2ngByiBrDKXp9MtR33wOYwtSPZc=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 48/72] nvme: refine the Qemu Identify CNS quirk
Date: Mon,  8 Jun 2020 19:24:36 -0400
Message-Id: <20200608232500.3369581-48-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200608232500.3369581-1-sashal@kernel.org>
References: <20200608232500.3369581-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_162606_633716_ACE47FDC 
X-CRM114-Status: GOOD (  13.96  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

[ Upstream commit b9a5c3d4c34d8bd9fd75f7f28d18a57cb68da237 ]

Add a helper to check if we can use Identify CNS values > 1, and refine
the Qemu quirk to not apply to reported versions larger than 1.1, as the
Qemu implementation had been fixed by then.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reviewed-by: Keith Busch <kbusch@kernel.org>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/core.c | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index a760c449f4a9..2d95755092e3 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -758,6 +758,19 @@ void nvme_stop_keep_alive(struct nvme_ctrl *ctrl)
 }
 EXPORT_SYMBOL_GPL(nvme_stop_keep_alive);
 
+/*
+ * In NVMe 1.0 the CNS field was just a binary controller or namespace
+ * flag, thus sending any new CNS opcodes has a big chance of not working.
+ * Qemu unfortunately had that bug after reporting a 1.1 version compliance
+ * (but not for any later version).
+ */
+static bool nvme_ctrl_limited_cns(struct nvme_ctrl *ctrl)
+{
+	if (ctrl->quirks & NVME_QUIRK_IDENTIFY_CNS)
+		return ctrl->vs < NVME_VS(1, 2, 0);
+	return ctrl->vs < NVME_VS(1, 1, 0);
+}
+
 static int nvme_identify_ctrl(struct nvme_ctrl *dev, struct nvme_id_ctrl **id)
 {
 	struct nvme_command c = { };
@@ -2538,8 +2551,7 @@ static void nvme_scan_work(struct work_struct *work)
 		return;
 
 	nn = le32_to_cpu(id->nn);
-	if (ctrl->vs >= NVME_VS(1, 1, 0) &&
-	    !(ctrl->quirks & NVME_QUIRK_IDENTIFY_CNS)) {
+	if (!nvme_ctrl_limited_cns(ctrl)) {
 		if (!nvme_scan_ns_list(ctrl, nn))
 			goto done;
 	}
-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
