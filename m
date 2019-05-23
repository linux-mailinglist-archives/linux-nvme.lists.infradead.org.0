Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B8DB28DAB
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 01:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=beCjACN3MWqcHIGfGKxuLc5KOAisp0UP8WKuG+bvfUA=; b=D1o
	WFLScnQA+k3gh/S+ZMfGshMuUnuIqwGGKyLYF3YY2kU6RpEXQlRzr7Rcn6aMT6CMbBCLYAX1UP9jJ
	qeZVk+IqryxfqTcZ/k57kgYK6YJsjDfGXXhyBen+sZ4P1wHGba8HO4Vr43uq2Mc975JgLA52w5yTQ
	LA15x1OUQe9ik8C+az51FCxD4l6hvPLvqyOvIzzPMsIzpE4oCLAhp/rJo6jh+D4FOsxITZ/0wr9wk
	INscoNVOC8HiVuxg4cgJlTTqXvJk0Q1+u8msGm4/+nY0zt+X2LDAucCdBtIuBqNB89H4n0aunLdbz
	+V2+Gnwz/c4Jb+coXsar6MZykbhNvOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTwuO-0007jf-Ew; Thu, 23 May 2019 23:14:00 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTwuI-0007jI-Sg
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 23:13:56 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 16:13:53 -0700
X-ExtLoop1: 1
Received: from kheitke-ubuntu.lm.intel.com ([10.232.116.89])
 by orsmga006.jf.intel.com with ESMTP; 23 May 2019 16:13:52 -0700
From: Kenneth Heitke <kenneth.heitke@intel.com>
To: kbusch@kernel.org,
	hch@lst.de,
	sagi@grimberg.me,
	axboe@fb.com
Subject: [PATCH] nvme: Ignore timeouts while PCI config access is blocked
Date: Thu, 23 May 2019 17:14:29 -0600
Message-Id: <20190523231429.21235-1-kenneth.heitke@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_161354_939069_157DE28F 
X-CRM114-Status: GOOD (  10.13  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Kenneth Heitke <kenneth.heitke@intel.com>, linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If an admin command timeout occurs while a PCIe reset (FLR) is
pending, the CSTS bits may not be valid which could result in
the controller being removed.

Signed-off-by: Kenneth Heitke <kenneth.heitke@intel.com>
---
 drivers/nvme/host/pci.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 2a8708c9ac18..7cd7e6287d5f 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1258,13 +1258,14 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 	struct request *abort_req;
 	struct nvme_command cmd;
 	bool shutdown = false;
+	struct pci_dev *pdev = to_pci_dev(dev->dev);
 	u32 csts = readl(dev->bar + NVME_REG_CSTS);
 
 	/* If PCI error recovery process is happening, we cannot reset or
 	 * the recovery mechanism will surely fail.
 	 */
 	mb();
-	if (pci_channel_offline(to_pci_dev(dev->dev)))
+	if (pci_channel_offline(to_pci_dev(dev->dev)) || pdev->block_cfg_access)
 		return BLK_EH_RESET_TIMER;
 
 	/*
@@ -2786,7 +2787,7 @@ static void nvme_reset_prepare(struct pci_dev *pdev)
 static void nvme_reset_done(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
-	nvme_reset_ctrl_sync(&dev->ctrl);
+	nvme_reset_ctrl(&dev->ctrl);
 }
 
 static void nvme_shutdown(struct pci_dev *pdev)
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
