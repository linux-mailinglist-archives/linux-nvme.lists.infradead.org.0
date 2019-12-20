Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 056B8127CB6
	for <lists+linux-nvme@lfdr.de>; Fri, 20 Dec 2019 15:30:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRte5LAXMM2oYzfoZo8NbyG8xuyKWvEb3ZhXimQnkQk=; b=gVjAVzSG3/PUMu
	ZW3Bv0nmct1uNILOlKo4+2WcNSL6cjbHLsV8e9expz09XR8Ctxwx+u35NQCIez5Z7hQEASpKlytlQ
	pRNBPIFBK6SJv1EK/GjRUZMDG9os+HpPcuWodT8P/qV38tTai36spnf21yQT/nNj76r5FRwVIECQt
	z99oTFaznsqBiNisTe+Vl+QWyMC1GNSdgrmd746nGix785LPLdC1TpkvT7C7SHcmBWHepN6QeS5mC
	FfUzL17gfH0767JmiHg2WFLyPoBpucxHYhmjTaO3qF84/ydA1fjcACXwthurXXUPFpdJV22e1QS9B
	VXgaRNYxUAym6rL7nh8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiJIt-0001vc-VA; Fri, 20 Dec 2019 14:30:55 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiJIE-0001SE-8j
 for linux-nvme@lists.infradead.org; Fri, 20 Dec 2019 14:30:17 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A3912465E;
 Fri, 20 Dec 2019 14:30:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576852212;
 bh=ffxSmAInVjoBFWsjoG4GzBBZtLQ3wyeLI/kWu06mIho=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=EuZONW27lieQnZpP+ApfaqD6LO+u768OEokxv2xjP3YEPVaCmjBRJBm9CdGm4a2vh
 HXXn7tVQoCA7FaWHU5mG2EJ5X0M0H5x+y5EE1JZQRUhL0yG3g9XTRYsyFGzzJYddCN
 M3D4VwaMjc1JRzb/dyUK4wVNDMCX6FkF22qiaLFY=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 13/52] nvme/pci: Fix read queue count
Date: Fri, 20 Dec 2019 09:29:15 -0500
Message-Id: <20191220142954.9500-13-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191220142954.9500-1-sashal@kernel.org>
References: <20191220142954.9500-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_063014_499928_A6A9712B 
X-CRM114-Status: GOOD (  11.26  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keith Busch <kbusch@kernel.org>, Jens Axboe <axboe@kernel.dk>,
 linux-nvme@lists.infradead.org, Sasha Levin <sashal@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <kbusch@kernel.org>

[ Upstream commit 7e4c6b9a5d22485acf009b3c3510a370f096dd54 ]

If nvme.write_queues equals the number of CPUs, the driver had decreased
the number of interrupts available such that there could only be one read
queue even if the controller could support more. Remove the interrupt
count reduction in this case. The driver wouldn't request more IRQs than
it wants queues anyway.

Reviewed-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 29d7427c2b19b..14d513087a14b 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2060,7 +2060,6 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 		.priv		= dev,
 	};
 	unsigned int irq_queues, this_p_queues;
-	unsigned int nr_cpus = num_possible_cpus();
 
 	/*
 	 * Poll queues don't need interrupts, but we need at least one IO
@@ -2071,10 +2070,7 @@ static int nvme_setup_irqs(struct nvme_dev *dev, unsigned int nr_io_queues)
 		this_p_queues = nr_io_queues - 1;
 		irq_queues = 1;
 	} else {
-		if (nr_cpus < nr_io_queues - this_p_queues)
-			irq_queues = nr_cpus + 1;
-		else
-			irq_queues = nr_io_queues - this_p_queues + 1;
+		irq_queues = nr_io_queues - this_p_queues + 1;
 	}
 	dev->io_queues[HCTX_TYPE_POLL] = this_p_queues;
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
