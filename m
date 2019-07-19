Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04E186DB9E
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 06:10:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=37ypNdHX237F59G8UQaJqeqez+X7J/s2Ropx/UkgIAM=; b=BVhG1/MYQfkPC5
	IDgvQVn1HBougXEMUTr5QUucH96DfVEFuxSNy3eT2DrL/mxpT1RwVEE0Nyom1/hAG24ntdOCIEtDb
	vyv5QQvv5jwj3Qe6Sxml5X6sJ1PrygfXYsOsKjK/aYPYCo6rrMYo8uiNTwclP9UpuSBhiJ6XWFkck
	F0xsbtU83qPGPLsiFptOmhGNpKddClMNkVTgQ5XYeELVuehAq+sfRIdWVQcp/y4CF7TN+5mclU0VM
	ZTvBGRGlhsS7Q6KvfZUbcq85XzsDtyhEu+OOUSAIDQLXpghdczpPharKInJindDTDDWqOpl8+1PfB
	aiL3+BqPDkGMY3d37Mwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoKDu-0004tD-F8; Fri, 19 Jul 2019 04:10:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoKA0-0002xV-I9
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 04:06:23 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0BEA8218BC;
 Fri, 19 Jul 2019 04:06:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563509179;
 bh=A6R18evUCaptpdOweBZB//YzgLJ/mugOzxrSr/UlB6Y=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=VF58oREiyDeR0tygmVU9U9dn+Q15jACOavh/jgwMD7+d/iWLQswQk58yUlpABqZyo
 WsDFP3S7NOHMB38Rb7qjZ3WCo8uMdAm+8gW6ZwcyktVKCyfgu0OwKwjzV5E679uRmh
 c+FQsSko4Ic/rBmc7iQmS4G7qARfCOAFHsKku6BE=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 109/141] nvme-pci: limit max_hw_sectors based on
 the DMA max mapping size
Date: Fri, 19 Jul 2019 00:02:14 -0400
Message-Id: <20190719040246.15945-109-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190719040246.15945-1-sashal@kernel.org>
References: <20190719040246.15945-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_210620_813517_6C401527 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Atish Patra <Atish.Patra@wdc.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Christoph Hellwig <hch@lst.de>

[ Upstream commit 7637de311bd2124b298a072852448b940d8a34b9 ]

When running a NVMe device that is attached to a addressing
challenged PCIe root port that requires bounce buffering, our
request sizes can easily overflow the swiotlb bounce buffer
size.  Limit the maximum I/O size to the limit exposed by
the DMA mapping subsystem.

Signed-off-by: Christoph Hellwig <hch@lst.de>
Reported-by: Atish Patra <Atish.Patra@wdc.com>
Tested-by: Atish Patra <Atish.Patra@wdc.com>
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index b97ba5ea0e61..5112983a59fb 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2538,7 +2538,8 @@ static void nvme_reset_work(struct work_struct *work)
 	 * Limit the max command size to prevent iod->sg allocations going
 	 * over a single page.
 	 */
-	dev->ctrl.max_hw_sectors = NVME_MAX_KB_SZ << 1;
+	dev->ctrl.max_hw_sectors = min_t(u32,
+		NVME_MAX_KB_SZ << 1, dma_max_mapping_size(dev->dev) >> 9);
 	dev->ctrl.max_segments = NVME_MAX_SEGS;
 	mutex_unlock(&dev->shutdown_lock);
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
