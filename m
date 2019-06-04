Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C2743531E
	for <lists+linux-nvme@lfdr.de>; Wed,  5 Jun 2019 01:23:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VvGTfmXAsaDMVmmxAJEiU7ZdpMI33UFdDiLTlwr8YJQ=; b=i1Dp1SL802Xv44
	nHRryndUUiTuk4BHddDTiuBliYpVzN1KpbneLolxcOcHPuF7PaR4sUdklVxbwfwMwMs3fuiZx0YLW
	Q46GIj0sIn3E5T8OtQcirC1wWmW2/siD3VQHFA5ZkyrV24RD/Eb5b3x43A2CkcbyimRYGRur21yVe
	f5hqCKzyFUwIYx7diSlHwdCzmuthI1e5VBBnl6sws7j95JM76ApKEK5fW6ZSkcywsRn1gu4/e2u/E
	fHN3J9cH/7A243/WCNB5V1vm/7yo8iZPFHzXN/wK0wtf3N62p+YIzKeW0yLhV+CRbEQVbELcx0Vgb
	rQhT5isk9tXsGC2f7f6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYIll-00017H-Mg; Tue, 04 Jun 2019 23:23:05 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYIle-00015T-UU
 for linux-nvme@lists.infradead.org; Tue, 04 Jun 2019 23:23:00 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 635AD208E3;
 Tue,  4 Jun 2019 23:22:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559690578;
 bh=qqAkKaDS4lL6uII4veNn02iHkQ8Wsm4Bb8JZWisIFWc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0pmrcFendHX3htXDFA1yQHlTbIQBjBqmek0B22g3D8hxHH/ubZGqrtNL29wdEYhsL
 NON3mqlIplypbSlEkVzyv/MRZcH/Yl1160+NeiY5i/cbsdDFJIDx6dWBlrvbiF+QuI
 awS1GS65XbRpmMMnSbkuWdfndw/4Ck9KjqXbz38Y=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.1 28/60] nvme-pci: Fix controller freeze wait
 disabling
Date: Tue,  4 Jun 2019 19:21:38 -0400
Message-Id: <20190604232212.6753-28-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604232212.6753-1-sashal@kernel.org>
References: <20190604232212.6753-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_162258_997737_3ABBAB94 
X-CRM114-Status: GOOD (  11.92  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: Keith Busch <keith.busch@intel.com>, Sasha Levin <sashal@kernel.org>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <keith.busch@intel.com>

[ Upstream commit e43269e6e5c49d7fec599e6bba71963935b0e4ba ]

If a controller disabling didn't start a freeze, don't wait for the
operation to complete.

Reviewed-by: Ming Lei <ming.lei@redhat.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Keith Busch <keith.busch@intel.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index a90cf5d63aac..4e064aad2b1a 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2397,7 +2397,7 @@ static void nvme_pci_disable(struct nvme_dev *dev)
 
 static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 {
-	bool dead = true;
+	bool dead = true, freeze = false;
 	struct pci_dev *pdev = to_pci_dev(dev->dev);
 
 	mutex_lock(&dev->shutdown_lock);
@@ -2405,8 +2405,10 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 		u32 csts = readl(dev->bar + NVME_REG_CSTS);
 
 		if (dev->ctrl.state == NVME_CTRL_LIVE ||
-		    dev->ctrl.state == NVME_CTRL_RESETTING)
+		    dev->ctrl.state == NVME_CTRL_RESETTING) {
+			freeze = true;
 			nvme_start_freeze(&dev->ctrl);
+		}
 		dead = !!((csts & NVME_CSTS_CFS) || !(csts & NVME_CSTS_RDY) ||
 			pdev->error_state  != pci_channel_io_normal);
 	}
@@ -2415,10 +2417,8 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 	 * Give the controller a chance to complete all entered requests if
 	 * doing a safe shutdown.
 	 */
-	if (!dead) {
-		if (shutdown)
-			nvme_wait_freeze_timeout(&dev->ctrl, NVME_IO_TIMEOUT);
-	}
+	if (!dead && shutdown && freeze)
+		nvme_wait_freeze_timeout(&dev->ctrl, NVME_IO_TIMEOUT);
 
 	nvme_stop_queues(&dev->ctrl);
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
