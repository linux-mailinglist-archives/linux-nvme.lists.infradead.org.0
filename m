Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 776E455E22
	for <lists+linux-nvme@lfdr.de>; Wed, 26 Jun 2019 04:09:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=B217ocnZDGKwmNU1Bb2NhzQhf4I4tP4qJaZXUZtvzkM=; b=AEfwpHFeuORsBg
	DmA0K0QhIGJjQUCMtqey/YqvcZYIjTys298I7pcsK2fQZWGVfGMV1PLpu6DBZoQ+KMbnzbs5CSl32
	tF8b8OlPZcXK98CRcin61i0x2qFo4ppEoDJmuwk4tuHq1XY0/jANFCWlm9iYnje15WUamtfatBbp4
	g29Q21w0XF4/ifzrbmhwzzuFZlxFqmTyPzf0zR+NIUZM8tI9nBBmpz8fLzet6XvPeEdpYeIN3+Bf3
	4K/AEmm9Zv1uGbRyjMe01G7YrW50UpZzp/E7S23MQJjpCrqC3ZIu/C/djN5PKngr2yng5zLcTv57u
	gYs8+l3SjdvmyhMOn7Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfxNO-0003Gt-CP; Wed, 26 Jun 2019 02:09:34 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfxNG-0003GE-ON
 for linux-nvme@lists.infradead.org; Wed, 26 Jun 2019 02:09:28 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id ABF09652E0975C785EF7;
 Wed, 26 Jun 2019 10:09:19 +0800 (CST)
Received: from localhost (10.133.213.239) by DGGEMS403-HUB.china.huawei.com
 (10.3.19.203) with Microsoft SMTP Server id 14.3.439.0; Wed, 26 Jun 2019
 10:09:10 +0800
From: YueHaibing <yuehaibing@huawei.com>
To: <kbusch@kernel.org>, <axboe@fb.com>, <hch@lst.de>, <sagi@grimberg.me>,
 <keith.busch@intel.com>
Subject: [PATCH -next] nvme-pci: Make nvme_dev_pm_ops static
Date: Wed, 26 Jun 2019 10:09:02 +0800
Message-ID: <20190626020902.38240-1-yuehaibing@huawei.com>
X-Mailer: git-send-email 2.10.2.windows.1
MIME-Version: 1.0
X-Originating-IP: [10.133.213.239]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_190927_008956_C0A91CBB 
X-CRM114-Status: UNSURE (   9.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: YueHaibing <yuehaibing@huawei.com>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Fix sparse warning:

drivers/nvme/host/pci.c:2926:25: warning:
 symbol 'nvme_dev_pm_ops' was not declared. Should it be static?

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: YueHaibing <yuehaibing@huawei.com>
---
 drivers/nvme/host/pci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 1893520..f500133 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2923,7 +2923,7 @@ static int nvme_simple_resume(struct device *dev)
 	return 0;
 }
 
-const struct dev_pm_ops nvme_dev_pm_ops = {
+static const struct dev_pm_ops nvme_dev_pm_ops = {
 	.suspend	= nvme_suspend,
 	.resume		= nvme_resume,
 	.freeze		= nvme_simple_suspend,
-- 
2.7.4



_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
