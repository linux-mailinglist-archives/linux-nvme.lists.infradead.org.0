Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 69C671186C
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 13:49:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ItoUyJstzx1oaShohWH1sQCq4hdLejMjtcBP5rTR5Tw=; b=lVim7xUlHsLhi7Zc/+D39LnBc+
	l2KBVBFf5M4KbJeW5Bpk5z1n2dWgqk6FaST0zt+ctdpNtHmxRjxkQ9BIp4ptyFyFMuaW2fZQwFi0C
	eZnSsFy2eKNQmj3J3J7Q3UkC9WH7UH5bM8e09N7MTAiHVCHmRdEWrphK1iRhx8pBvEFiAPBFyz0Tz
	MYk60qltyDlssZ5zhrS2ad9nIZ2V0I7FwWlpvxYji86s4P6RQX4OlW/U4RGSQr0WQBW1yMP4Bk/G+
	IfjaL9VVD5dyNxekrw9uzXpqjm95gVaKTNByejBEPKEEEQwhIGoVqFFmYlG5mUCVhAGt7gDQs4uU8
	N5OAMsag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMADK-0000vM-KM; Thu, 02 May 2019 11:49:22 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMACv-0000TS-79
 for linux-nvme@lists.infradead.org; Thu, 02 May 2019 11:49:17 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C60D73082E8E;
 Thu,  2 May 2019 11:48:56 +0000 (UTC)
Received: from maximlenovopc.usersys.redhat.com (unknown [10.35.206.58])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 13D2417DDF;
 Thu,  2 May 2019 11:48:51 +0000 (UTC)
From: Maxim Levitsky <mlevitsk@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 05/10] nvme/pci: use the NVME_CTRL_SUSPENDED state
Date: Thu,  2 May 2019 14:47:56 +0300
Message-Id: <20190502114801.23116-6-mlevitsk@redhat.com>
In-Reply-To: <20190502114801.23116-1-mlevitsk@redhat.com>
References: <20190502114801.23116-1-mlevitsk@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Thu, 02 May 2019 11:48:57 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_044857_586125_E89DB9ED 
X-CRM114-Status: GOOD (  16.02  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Fam Zheng <fam@euphon.net>, Keith Busch <keith.busch@intel.com>,
 Sagi Grimberg <sagi@grimberg.me>, kvm@vger.kernel.org,
 "David S . Miller" <davem@davemloft.net>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Liang Cunming <cunming.liang@intel.com>, Wolfram Sang <wsa@the-dreams.de>,
 linux-kernel@vger.kernel.org, Kirti Wankhede <kwankhede@nvidia.com>,
 Maxim Levitsky <mlevitsk@redhat.com>, Jens Axboe <axboe@fb.com>,
 Alex Williamson <alex.williamson@redhat.com>, John Ferlan <jferlan@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Paolo Bonzini <pbonzini@redhat.com>, Liu Changpeng <changpeng.liu@intel.com>,
 "Paul E . McKenney " <paulmck@linux.ibm.com>, Amnon Ilan <ailan@redhat.com>,
 Christoph Hellwig <hch@lst.de>, Nicolas Ferre <nicolas.ferre@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

When enteriing low power state, the nvme
driver will now inform the core with the NVME_CTRL_SUSPENDED state
which will allow mdev driver to act on this information

Signed-off-by: Maxim Levitsky <mlevitsk@redhat.com>
---
 drivers/nvme/host/pci.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index 1c844c66ecaa..282f28c851c1 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -2406,7 +2406,8 @@ static void nvme_dev_disable(struct nvme_dev *dev, bool shutdown)
 		u32 csts = readl(dev->bar + NVME_REG_CSTS);
 
 		if (dev->ctrl.state == NVME_CTRL_LIVE ||
-		    dev->ctrl.state == NVME_CTRL_RESETTING)
+		    dev->ctrl.state == NVME_CTRL_RESETTING ||
+		    dev->ctrl.state == NVME_CTRL_SUSPENDED)
 			nvme_start_freeze(&dev->ctrl);
 		dead = !!((csts & NVME_CSTS_CFS) || !(csts & NVME_CSTS_RDY) ||
 			pdev->error_state  != pci_channel_io_normal);
@@ -2852,6 +2853,9 @@ static int nvme_suspend(struct device *dev)
 	struct pci_dev *pdev = to_pci_dev(dev);
 	struct nvme_dev *ndev = pci_get_drvdata(pdev);
 
+	if (!nvme_change_ctrl_state(&ndev->ctrl, NVME_CTRL_SUSPENDED))
+		WARN_ON(1);
+
 	nvme_dev_disable(ndev, true);
 	return 0;
 }
-- 
2.17.2


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
