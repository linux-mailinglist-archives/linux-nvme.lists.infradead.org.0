Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B010D1693A3
	for <lists+linux-nvme@lfdr.de>; Sun, 23 Feb 2020 03:24:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QMi1B3ZFutR4IH/081Yz63LL7BaQF+VW5ALJr+FSS0E=; b=imRd0jDtVLSmm8
	e3VMU7PTqiQgYGrhMFzCCVyGx27bKnIlKsH8hjqpOjwPk9caC4Z5MRG6syH5uAERKczi2nFjiJArZ
	k3Xrac+1v5A84lH0iVFNudyVbwmtQo/iGU+uNnAlrN4FWp6x6ZIUQNiK7hfKUiSxLBpiJoTNjw9s5
	J5aPPqqxjrp+cn7dkvhYk2iQrUkqlJuroUlIb1f/eiY1sqrb8MIAVcE9gk4eIKeKgQGu8CJm0qbNF
	Z5mORAsSr7ORk2AcQBQ7h1AzTaEkEinuv36+irlct7YO7g4KxEHXcexDzS41NWDXw2smfKA7K/CGE
	vBUBsiD26KwMTYcsVfpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5gwm-0003bD-VL; Sun, 23 Feb 2020 02:24:44 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5gvh-0002tH-IA
 for linux-nvme@lists.infradead.org; Sun, 23 Feb 2020 02:23:39 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2D818227BF;
 Sun, 23 Feb 2020 02:23:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582424617;
 bh=z6zUjYv03o/ZBQbMjsGF1EYgUSVBYR0phVp6qM4MZ/o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=FmVtGLUYOSd3nrpn2uBsGbCRQPrloEn1rbO9f2E1ZhpkxDgSL/2W9GLb5dF+4NPTV
 L/9JWpOD+vkalWxzjk5/2AZHI5hPEDcYlgB3Bl5oCIbP2XGifq3ewyXDmIqY56z8x3
 FRs+dy8KigGP/cerQkJrWYJ/Jj78UeMfdP3HRLSk=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 50/50] nvme/pci: move cqe check after device
 shutdown
Date: Sat, 22 Feb 2020 21:22:35 -0500
Message-Id: <20200223022235.1404-50-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200223022235.1404-1-sashal@kernel.org>
References: <20200223022235.1404-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200222_182337_642770_AE9ECE06 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

From: Keith Busch <kbusch@kernel.org>

[ Upstream commit fa46c6fb5d61b1f17b06d7c6ef75478b576304c7 ]

Many users have reported nvme triggered irq_startup() warnings during
shutdown. The driver uses the nvme queue's irq to synchronize scanning
for completions, and enabling an interrupt affined to only offline CPUs
triggers the alarming warning.

Move the final CQE check to after disabling the device and all
registered interrupts have been torn down so that we do not have any
IRQ to synchronize.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=206509
Reviewed-by: Sagi Grimberg <sagi@grimberg.me>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/nvme/host/pci.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 14d513087a14b..858805929b2cd 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1413,6 +1413,23 @@ static void nvme_disable_admin_queue(struct nvme_dev *dev, bool shutdown)
 	nvme_poll_irqdisable(nvmeq, -1);
 }
 
+/*
+ * Called only on a device that has been disabled and after all other threads
+ * that can check this device's completion queues have synced. This is the
+ * last chance for the driver to see a natural completion before
+ * nvme_cancel_request() terminates all incomplete requests.
+ */
+static void nvme_reap_pending_cqes(struct nvme_dev *dev)
+{
+	u16 start, end;
+	int i;
+
+	for (i = dev->ctrl.queue_count - 1; i > 0; i--) {
+		nvme_process_cq(&dev->queues[i], &start, &end, -1);
+		nvme_complete_cqes(&dev->queues[i], start, end);
+	}
+}
+
 static int nvme_cmb_qdepth(struct nvme_dev *dev, int nr_io_queues,
 				int entry_size)
 {
@@ -2248,11 +2265,6 @@ static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode)
 		if (timeout == 0)
 			return false;
 
-		/* handle any remaining CQEs */
-		if (opcode == nvme_admin_delete_cq &&
-		    !test_bit(NVMEQ_DELETE_ERROR, &nvmeq->flags))
-			nvme_poll_irqdisable(nvmeq, -1);
-
 		sent--;
 		if (nr_queues)
 			goto retry;
@@ -2441,6 +2453,7 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 	nvme_suspend_io_queues(dev);
 	nvme_suspend_queue(&dev->queues[0]);
 	nvme_pci_disable(dev);
+	nvme_reap_pending_cqes(dev);
 
 	blk_mq_tagset_busy_iter(&dev->tagset, nvme_cancel_request, &dev->ctrl);
 	blk_mq_tagset_busy_iter(&dev->admin_tagset, nvme_cancel_request, &dev->ctrl);
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
