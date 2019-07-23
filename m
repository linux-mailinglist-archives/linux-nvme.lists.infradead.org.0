Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6026770FFE
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 05:18:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=I39uKMH4aATDfAPMmD1/g6j7LJ5YR9D2hJLj2Jij/os=; b=H8CfzGgBqyu0bN
	bwNCAlbLsXInJY0BX81TylGojEB/Teh4s1vCAzg0SjN2+ahyw65Dhp1z0uuwomWZjYkmB0nDfIJZo
	TRj5e27HLIGdbnqZirjT+dvs55ttVKbncSXjOrAnXrDF+N15ettHS8LvU5qcdD94g82niKaKu/hgl
	tCYI4J+qyi7Xb1XfDLgDVgaLd1DRvkSSMJPXuUdWKadRl8W4J6o82djEyiHZLt2HtYQvxACCpH076
	Gpijl8Q1lyTSoVXkRBstYYVOhJGi7sf3w5ChBiyKZYHDbj+jXq/Qvc3K6V+8jXIBkIYJ+6k7Djy64
	WPpYr13GU/tuhJ+Xk5ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hplJN-000768-TY; Tue, 23 Jul 2019 03:17:58 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hplJ8-000752-SL
 for linux-nvme@lists.infradead.org; Tue, 23 Jul 2019 03:17:44 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id BDB69CEBB8EAB33448FB;
 Tue, 23 Jul 2019 11:17:34 +0800 (CST)
Received: from RH5885H-V3.huawei.com (10.90.53.225) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.439.0; Tue, 23 Jul 2019 11:17:24 +0800
From: yangerkun <yangerkun@huawei.com>
To: <alan.mikhak@sifive.com>, <hch@lst.de>, <linux-nvme@lists.infradead.org>
Subject: [PATCH] Revert "nvme-pci: don't create a read hctx mapping without
 read queues"
Date: Tue, 23 Jul 2019 11:23:13 +0800
Message-ID: <1563852193-6895-1-git-send-email-yangerkun@huawei.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.90.53.225]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190722_201743_481023_5FF1A0F1 
X-CRM114-Status: UNSURE (   9.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: yangerkun@huawei.com, yi.zhang@huawei.com, houtao1@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This reverts commit 0298d5435276e7795b0b939d74827f6e775e7009.

With this patch, set 'poll_queues > hard queues' will lead to 'nr_read_queues = 0'
in nvme_calc_irq_sets. Then poll_queues setting can fail since dev->tagset.nr_maps
equals to 2 and nvme_pci_map_queues will not do map for poll queues.

Signed-off-by: yangerkun <yangerkun@huawei.com>
---
 drivers/nvme/host/pci.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bb970ca..77555ad 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2254,9 +2254,7 @@ static int nvme_dev_add(struct nvme_dev *dev)
 	if (!dev->ctrl.tagset) {
 		dev->tagset.ops = &nvme_mq_ops;
 		dev->tagset.nr_hw_queues = dev->online_queues - 1;
-		dev->tagset.nr_maps = 1; /* default */
-		if (dev->io_queues[HCTX_TYPE_READ])
-			dev->tagset.nr_maps++;
+		dev->tagset.nr_maps = 2; /* default + read */
 		if (dev->io_queues[HCTX_TYPE_POLL])
 			dev->tagset.nr_maps++;
 		dev->tagset.timeout = NVME_IO_TIMEOUT;
-- 
2.7.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
