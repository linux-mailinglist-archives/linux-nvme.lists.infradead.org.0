Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48EA115ADB5
	for <lists+linux-nvme@lfdr.de>; Wed, 12 Feb 2020 17:52:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U7qEeA0It3ZM3EpPcozmykwihhWeY733n6yHuipRtPQ=; b=Yjrs0oQGHTZLOB
	JJsKdblRhu4m4X4zrS/jOc9j80ax8F9IRhBGbuqHMzqmYXCMTFIMXIkW5X2+DK5LZO7Tm+Uofxr1j
	z87K5DoLKue1QOPj9N2biapmLePypCUw8wagaC8KCRyNhgbZWdoMQ1OZIE/N+UA5G1KlN5+r2Ttci
	5ouLYP1gl3w55DbO0zygKyPXWQH9KujxDC0DuhygdmhOBA4k3+Z7TwV4kG5eW8yTIoSj0z5xebNnm
	g2MMe8zTp6AVM9ZPpHPbtE7WnI6mvf6EddlO6txEJjcQ3qIPky5BEXPAsI6T97giVgmRMIwDzRNKy
	w5KeZXegoLEiViqZI/iw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1vFp-0001Iz-Pz; Wed, 12 Feb 2020 16:52:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1vFk-0001I9-7z
 for linux-nvme@lists.infradead.org; Wed, 12 Feb 2020 16:52:45 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 9E84620658;
 Wed, 12 Feb 2020 16:52:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581526362;
 bh=QRyap70jxqY3Vr7uAcMNzUcMgYmqUn8GbwyWNIDXFVk=;
 h=From:To:Cc:Subject:Date:From;
 b=mgP53Hb3Mp/t5meKVFukXsViIbjMJmPF9aFhXAijWBHk+RAmvx0+HkMLYqTvatqhu
 swrDt17mBxHaCuqUO0nJ9/QkuVXxodj0w+vwSCuZTZYECkDFytnk/r3eq0/foxh7Nw
 Dh1rfE+3Zy82F1SBohyYNzoaJ02g3O2QfKIn2Jzk=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, hch@lst.de, sagi@grimberg.me,
 chaitanya.kulkarni@wdc.com
Subject: [PATCH] nvme/pci: move cqe check after device shutdown
Date: Thu, 13 Feb 2020 01:52:32 +0900
Message-Id: <20200212165232.23015-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_085244_308219_71DF06A0 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Many users have reported nvme triggered irq_startup() warnings during
shutdown. The driver uses the nvme queue's irq to synchronize scanning
for completions, and enabling an interrupt affined to only offline CPUs
triggers the alarming warning.

Move the final CQE check to after disabling the device and all
registered interrupts have been torn down so that we do not have any
IRQ to synchronize.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=206509
Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 drivers/nvme/host/pci.c | 23 ++++++++++++++++++-----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index da392b50f73e..9c80f9f08149 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1401,6 +1401,23 @@ static void nvme_disable_admin_queue(struct nvme_dev *dev, bool shutdown)
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
@@ -2235,11 +2252,6 @@ static bool __nvme_disable_io_queues(struct nvme_dev *dev, u8 opcode)
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
@@ -2428,6 +2440,7 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 	nvme_suspend_io_queues(dev);
 	nvme_suspend_queue(&dev->queues[0]);
 	nvme_pci_disable(dev);
+	nvme_reap_pending_cqes(dev);
 
 	blk_mq_tagset_busy_iter(&dev->tagset, nvme_cancel_request, &dev->ctrl);
 	blk_mq_tagset_busy_iter(&dev->admin_tagset, nvme_cancel_request, &dev->ctrl);
-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
