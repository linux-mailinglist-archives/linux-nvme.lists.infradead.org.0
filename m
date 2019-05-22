Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56EC325B35
	for <lists+linux-nvme@lfdr.de>; Wed, 22 May 2019 02:37:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ewizR9rU8DUBh76pKyWrzT5SDTUGRcrMtna9k3R9wTQ=; b=ae/
	5TYaQ/S4uNAsvpsx2lRvIzhfKkBozisw10tm4G+4bL++/hoZC52bgL5K/I2QqkN5iFxwYFZeWO/K0
	fUpjOkiUdtlM1yxB7yjBR2PFd9wv4nAZUoLNJYijUNYMYlFCPOhnQVkBMSJV6oPGUSHoJgGdjybW1
	9N2jEbxebQgkCmuci9TJ+YpIwEw8mezUy5jmDUh4pXT5vc23vQA4mrU9mvWgNu3N19rg1GJKGMYOz
	HKGMG6MyUh6rtzqcTIGZlVivV+zOrxr5G+fhgHR+QB58JARfCjXPABy3JsR6kKzrxw6eS6rwVvKM8
	w2fyfZTpYUwivfreqfx03kbzNUhuO2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTFFn-0001aT-61; Wed, 22 May 2019 00:37:11 +0000
Received: from mga17.intel.com ([192.55.52.151])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTFFh-0001a4-JI
 for linux-nvme@lists.infradead.org; Wed, 22 May 2019 00:37:06 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 21 May 2019 17:37:03 -0700
X-ExtLoop1: 1
Received: from kheitke-ubuntu.lm.intel.com ([10.232.116.89])
 by fmsmga008.fm.intel.com with ESMTP; 21 May 2019 17:37:03 -0700
From: Kenneth Heitke <kenneth.heitke@intel.com>
To: kbusch@kernel.org,
	hch@lst.de,
	sagi@grimberg.me,
	axboe@fb.com
Subject: [RFC PATCH] nvme: Ignore timeouts while a PCIe reset is pending
Date: Tue, 21 May 2019 18:37:41 -0600
Message-Id: <20190522003741.26755-1-kenneth.heitke@intel.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_173705_650474_8A303243 
X-CRM114-Status: GOOD (  10.37  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.151 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

[372337.996566] nvme nvme0: I/O 0 QID 0 timeout, reset controller
[372339.984662] nvme 0000:1c:00.0: enabling device (0000 -> 0002)
[372339.984951] nvme nvme0: Removing after probe failure status: -19

Signed-off-by: Kenneth Heitke <kenneth.heitke@intel.com>
---
 drivers/nvme/host/pci.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 2a8708c9ac18..aa9ea64a8b53 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -118,6 +118,8 @@ struct nvme_dev {
 	struct nvme_ctrl ctrl;
 
 	mempool_t *iod_mempool;
+	unsigned long flags;
+#define NVME_CTRL_PCI_RESET_PENDING	0
 
 	/* shadow doorbell buffer support: */
 	u32 *dbbuf_dbs;
@@ -1250,6 +1252,11 @@ static void nvme_warn_reset(struct nvme_dev *dev, u32 csts)
 			 csts, result);
 }
 
+static bool nvme_pci_reset_pending(const struct nvme_dev *dev)
+{
+	return !!test_bit(NVME_CTRL_PCI_RESET_PENDING, &dev->flags);
+}
+
 static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 {
 	struct nvme_iod *iod = blk_mq_rq_to_pdu(req);
@@ -1267,6 +1274,10 @@ static enum blk_eh_timer_return nvme_timeout(struct request *req, bool reserved)
 	if (pci_channel_offline(to_pci_dev(dev->dev)))
 		return BLK_EH_RESET_TIMER;
 
+	/* If a PCIe reset (FLR) is pending, wait for it to complete */
+	if (nvme_pci_reset_pending(dev))
+		return BLK_EH_RESET_TIMER;
+
 	/*
 	 * Reset immediately if the controller is failed
 	 */
@@ -2780,12 +2791,14 @@ static int nvme_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 static void nvme_reset_prepare(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
+	set_bit(NVME_CTRL_PCI_RESET_PENDING, &dev->flags);
 	nvme_dev_disable(dev, false);
 }
 
 static void nvme_reset_done(struct pci_dev *pdev)
 {
 	struct nvme_dev *dev = pci_get_drvdata(pdev);
+	clear_bit(NVME_CTRL_PCI_RESET_PENDING, &dev->flags);
 	nvme_reset_ctrl_sync(&dev->ctrl);
 }
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
