Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93152B28ED
	for <lists+linux-nvme@lfdr.de>; Sat, 14 Sep 2019 01:36:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wQT9ttDfHoSWWRhyBYh+NbxiZzzNRayz/wDyicPDV3E=; b=G4ACKnYnqsDpx4
	sINjXRsAR8qM7u6UxamIJBq3UBEhqKdI65154VGn7PR/oZIzd/WqY+nhaG6h6JTAuUu4y5Ga+JV8S
	PMve4lCK99mejrBPVhouzLbyCTaekro99PJY3u6H3RI13dlroaRkWDOtMlPciX/Pv2IzIsVoXASU3
	3tyXMCfFM8BdOQ5y8zUi3k5jvk4n8yeLIlnANbd3v14COokvsA9J2Amiw8VwZQ7BGyj4UnUWr9aCV
	s120JQRRurLX3JSlC204htU7vE1IlmmhGOq1shK1umRQdD04GEqhwZ+goxTvOHB55tFwBdGcNRxfO
	C9g2MTQ9nU4HIAxJFoqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8v7P-00078W-MP; Fri, 13 Sep 2019 23:36:47 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8v7J-00077u-9X
 for linux-nvme@lists.infradead.org; Fri, 13 Sep 2019 23:36:42 +0000
X-IronPort-AV: E=Sophos;i="5.64,501,1559520000"; d="scan'208";a="750670157"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-2b-c7131dcf.us-west-2.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 13 Sep 2019 23:36:38 +0000
Received: from EX13MTAUEA001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-c7131dcf.us-west-2.amazon.com (Postfix) with ESMTPS
 id 96964A1BF1; Fri, 13 Sep 2019 23:36:37 +0000 (UTC)
Received: from EX13D15UEE001.ant.amazon.com (10.43.62.86) by
 EX13MTAUEA001.ant.amazon.com (10.43.61.82) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Sep 2019 23:36:37 +0000
Received: from EX13MTAUEE001.ant.amazon.com (10.43.62.200) by
 EX13D15UEE001.ant.amazon.com (10.43.62.86) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Fri, 13 Sep 2019 23:36:36 +0000
Received: from localhost (172.23.204.141) by mail-relay.amazon.com
 (10.43.62.226) with Microsoft SMTP Server id 15.0.1367.3 via Frontend
 Transport; Fri, 13 Sep 2019 23:36:36 +0000
From: Balbir Singh <sblbir@amzn.com>
To: <linux-nvme@lists.infradead.org>
Subject: [PATCH v2 1/2] nvme/host/pci: Fix a race in controller removal
Date: Fri, 13 Sep 2019 23:36:30 +0000
Message-ID: <20190913233631.15352-1-sblbir@amzn.com>
X-Mailer: git-send-email 2.16.5
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_163641_461247_407DD7E1 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: kbusch@kernel.org, axboe@fb.com, Balbir Singh <sblbir@amzn.com>, hch@lst.de,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This race is hard to hit in general, now that we
have the shutdown_lock in both nvme_reset_work() and
nvme_dev_disable()

The real issue is that after doing all the setup work
in nvme_reset_work(), when get another timeout (nvme_timeout()),
then we proceed to disable the controller. This causes
the reset work to only partially progress and then fail.

Depending on the progress made, we call into
nvme_remove_dead_ctrl(), which does another
nvme_dev_disable() freezing the block-mq queues.

I've noticed a race with udevd with udevd trying to re-read
the partition table, it ends up with the bd_mutex held and
it ends up waiting in blk_queue_enter(), since we froze
the queues in nvme_dev_disable(). nvme_kill_queues() calls
revalidate_disk() and ends up waiting on the bd_mutex
resulting in a deadlock.

Allow the hung tasks a chance by unfreezing the queues after
setting dying bits on the queue, then call revalidate_disk()
to update the disk size.

NOTE: I've seen this race when the controller does not
respond to IOs or abort requests, but responds to other
commands and even signals it's ready after its reset,
but still drops IO. I've tested this by emulating the
behaviour in the driver.

Signed-off-by: Balbir Singh <sblbir@amzn.com>
---

Changelog:
- Rely on blk_set_queue_dying to do the wake_all()

 drivers/nvme/host/core.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index b45f82d58be8..f6ddb58a7013 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -103,10 +103,16 @@ static void nvme_set_queue_dying(struct nvme_ns *ns)
 	 */
 	if (!ns->disk || test_and_set_bit(NVME_NS_DEAD, &ns->flags))
 		return;
-	revalidate_disk(ns->disk);
 	blk_set_queue_dying(ns->queue);
 	/* Forcibly unquiesce queues to avoid blocking dispatch */
 	blk_mq_unquiesce_queue(ns->queue);
+	/*
+	 * revalidate_disk, after all pending IO is cleaned up
+	 * by blk_set_queue_dying, largely any races with blk parittion
+	 * reads that might come in after freezing the queues, otherwise
+	 * we'll end up waiting up on bd_mutex, creating a deadlock.
+	 */
+	revalidate_disk(ns->disk);
 }
 
 static void nvme_queue_scan(struct nvme_ctrl *ctrl)
-- 
2.16.5


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
