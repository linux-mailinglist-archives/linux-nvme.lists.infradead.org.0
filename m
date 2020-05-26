Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC41A1BB22E
	for <lists+linux-nvme@lfdr.de>; Tue, 28 Apr 2020 01:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zGqkwBobHfBW3QfNP+yH2Svv2/6fBJAWt09KF1kUaCU=; b=FEvElWoSKvsosd
	qA4FY+E2HkrI/dzG4xf7scxT8vVxi4unnHS/2Jqpbq5Pxq0YrbWzHneMEkzLlogeJAhyWOwF2FYT5
	pwTMft4e+a8VVzv0+/9F2muYomy8GbFF/YUzvm9663AEkf1ayS9/E+Dx+/W0AwLk/XIb1Tyma8VH3
	1wVWPDTtJPxuV/o0fhT5wOdyJUkFjqdi6vonoAwPxkRDBMuZ2cGCSpdiOgwPakOoeDKWuKXQS22Jq
	62ONsb4yHYgo2OYQmFzmdFYs6th2eB+ZMm2aWZXXNhx1vMLAsIHh0/iiJyF+xbWoxw4oxpDOal/mr
	T012jh1eLfUW/0cKQ9zg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDYQ-0004lJ-NH; Mon, 27 Apr 2020 23:52:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDYM-0004kM-W2
 for linux-nvme@lists.infradead.org; Mon, 27 Apr 2020 23:52:48 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C32E82072D;
 Mon, 27 Apr 2020 23:52:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588031566;
 bh=Tc290Mv41kLq9eRXeN8o3Fc3CiPLdzdW3HnP0hWo5EA=;
 h=From:To:Cc:Subject:Date:From;
 b=jzeTo8t6Od5JESKNci6CRcKff7okrDNkX7k3pNFvIzo5PanWP6yt6h/VDSGhPHuxb
 e7SaGxyfIkMSoq2/q1CH7VAlnoFVNPmS+9Th5fcWPCfC9bzOptvygzsmWRuMqV9dVo
 z2FjH65YRCiWlZaV3kQObYPLF2rkXtRVJ00UH8Os=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 1/3] nvme-pci: clear shadow doorbell memory on resets
Date: Mon, 27 Apr 2020 16:52:41 -0700
Message-Id: <20200427235243.2268765-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_165247_122377_58E5078D 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

The host memory doorbell and event buffers need to be initialized on
each reset so the driver doesn't observe stale values from the previous
instantiation.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index cf386c84588b..d388fff9c358 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -228,8 +228,11 @@ static int nvme_dbbuf_dma_alloc(struct nvme_dev *dev)
 {
 	unsigned int mem_size = nvme_dbbuf_size(dev->db_stride);
 
-	if (dev->dbbuf_dbs)
+	if (dev->dbbuf_dbs) {
+		memset(dev->dbbuf_dbs, 0, mem_size);
+		memset(dev->dbbuf_eis, 0, mem_size);
 		return 0;
+	}
 
 	dev->dbbuf_dbs = dma_alloc_coherent(dev->dev, mem_size,
 					    &dev->dbbuf_dbs_dma_addr,
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
