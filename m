Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B832F6E099
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 07:31:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nrVdPieOgvtaAUR5rud3xsryfb4aE7Gf4ZUdEYbkXxs=; b=WufYz3o6u9IXsM
	P07EAkBxu1TMYYCKcdqo64jo8P3u5wZH2iWS3DidRFy8/+ldHm2fTFaRIoJWppuikg7FFPWQgGLmS
	rdFsLKblC9xGSdf/biFfoW4/Yjo5qv/YCIghp7QM2NyQzi8r/Qv3zBa+C++jqhLzPddlGZyYAo5Cn
	FpVVjnIIH+1cbCwoCCvH0tyo+yfJA1Y3LfBTJVOKTZMe6WVWMwFWDs1LZOjCtY/KlDSldHvTFJgTr
	XsANvFsLabzWxsUMOXM7bF4zol7ZgQ9DQwuF0Rpg3r9oNbRIcFEupxKMgW6ljU1LjQT0+Aw6q8aG8
	7oo5MzCDDJgfpjFR0ucA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoLUH-00008C-2P; Fri, 19 Jul 2019 05:31:21 +0000
Received: from gate.crashing.org ([63.228.1.57])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hoLU9-00007t-2I
 for linux-nvme@lists.infradead.org; Fri, 19 Jul 2019 05:31:14 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by gate.crashing.org (8.14.1/8.14.1) with ESMTP id x6J5V2e4001121;
 Fri, 19 Jul 2019 00:31:03 -0500
Message-ID: <b1f9bdf0294b8d87d292de3c7462c8e99551b02d.camel@kernel.crashing.org>
Subject: [PATCH v3] nvme-pci: Support shared tags across queues for Apple
 2018 controllers
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: linux-nvme@lists.infradead.org
Date: Fri, 19 Jul 2019 15:31:02 +1000
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190718_223113_258691_08FC856B 
X-CRM114-Status: GOOD (  12.75  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [63.228.1.57 listed in list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Cc: Damien Le Moal <Damien.LeMoal@wdc.com>, linux-kernel@vger.kernel.org,
 Paul Pawlowski <paul@mrarm.io>, Jens Axboe <axboe@fb.com>,
 Minwoo Im <minwoo.im.dev@gmail.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From 8dcba2ef5b1466b023b88b4eca463b30de78d9eb Mon Sep 17 00:00:00 2001
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Date: Fri, 19 Jul 2019 15:03:06 +1000
Subject: 

Another issue with the Apple T2 based 2018 controllers seem to be
that they blow up (and shut the machine down) if there's a tag
collision between the IO queue and the Admin queue.

My suspicion is that they use our tags for their internal tracking
and don't mix them with the queue id. They also seem to not like
when tags go beyond the IO queue depth, ie 128 tags.

This adds a quirk that marks tags 0..31 of the IO queue reserved

Signed-off-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---

Thanks Damien, reserved tags work and make this a lot simpler !

 drivers/nvme/host/nvme.h |  5 +++++
 drivers/nvme/host/pci.c  | 19 ++++++++++++++++++-
 2 files changed, 23 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/nvme.h b/drivers/nvme/host/nvme.h
index ced0e0a7e039..8732da6df555 100644
--- a/drivers/nvme/host/nvme.h
+++ b/drivers/nvme/host/nvme.h
@@ -102,6 +102,11 @@ enum nvme_quirks {
 	 * Use non-standard 128 bytes SQEs.
 	 */
 	NVME_QUIRK_128_BYTES_SQES		= (1 << 11),
+
+	/*
+	 * Prevent tag overlap between queues
+	 */
+	NVME_QUIRK_SHARED_TAGS                  = (1 << 12),
 };
 
 /*
diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 7088971d4c42..fc74395a028b 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2106,6 +2106,14 @@ static int nvme_setup_io_queues(struct nvme_dev *dev)
 	unsigned long size;
 
 	nr_io_queues = max_io_queues();
+
+	/*
+	 * If tags are shared with admin queue (Apple bug), then
+	 * make sure we only use one IO queue.
+	 */
+	if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS)
+		nr_io_queues = 1;
+
 	result = nvme_set_queue_count(&dev->ctrl, &nr_io_queues);
 	if (result < 0)
 		return result;
@@ -2278,6 +2286,14 @@ static int nvme_dev_add(struct nvme_dev *dev)
 		dev->tagset.flags = BLK_MQ_F_SHOULD_MERGE;
 		dev->tagset.driver_data = dev;
 
+		/*
+		 * Some Apple controllers requires tags to be unique
+		 * across admin and IO queue, so reserve the first 32
+		 * tags of the IO queue.
+		 */
+		if (dev->ctrl.quirks & NVME_QUIRK_SHARED_TAGS)
+			dev->tagset.reserved_tags = NVME_AQ_DEPTH;
+
 		ret = blk_mq_alloc_tag_set(&dev->tagset);
 		if (ret) {
 			dev_warn(dev->ctrl.device,
@@ -3057,7 +3073,8 @@ static const struct pci_device_id nvme_id_table[] = {
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2003) },
 	{ PCI_DEVICE(PCI_VENDOR_ID_APPLE, 0x2005),
 		.driver_data = NVME_QUIRK_SINGLE_VECTOR |
-				NVME_QUIRK_128_BYTES_SQES },
+				NVME_QUIRK_128_BYTES_SQES |
+				NVME_QUIRK_SHARED_TAGS },
 	{ 0, }
 };
 MODULE_DEVICE_TABLE(pci, nvme_id_table);



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
