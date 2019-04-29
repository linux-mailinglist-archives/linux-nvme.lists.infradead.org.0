Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53256ED4B
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 01:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=a/Ipa93EedEU3wKQpA8f4oLdalJ8dq2PgnwuIhPYoNg=; b=FnD
	UJ4qDeS/PBdU7RKE377VLMsuZJJyzP5H/XWJ6uXZOTL4tJ26OpplLTTUjkMuDMK5EhJ9kJLkUFw4k
	yz0duHhk0d91CvnpiWbzI2Eqdw1oZZWmqiIykQAdqadOVFZuqNdIJBkdvh5/ibTvoEYIgmowUJ6zg
	8KhqHQoG7TjLAwGqeo2qOQ0eE21oS6BEKq8kgRvdgOCo75rplUsxmqh64GeyrQdhwmbvg6Izt6zdy
	4E7jNbMClkTiRPU5UpHG2pG+ctwI4xro0Pg4fpebcnFTQev0+yIHYLoGJkZMzwL/gdIaax3n78Wo8
	dr2Sqs+sMZ4m81BaND5ssUrtBU3aoWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLFek-0002Xo-8Z; Mon, 29 Apr 2019 23:25:54 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLFeg-0002XW-MA; Mon, 29 Apr 2019 23:25:50 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH] nvme-tcp: fix possible null deref on a timed out io queue
 connect
Date: Mon, 29 Apr 2019 16:25:48 -0700
Message-Id: <20190429232548.9280-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If I/O queue connect times out, we might have freed the queue socket
already, so check for that on the error path in nvme_tcp_start_queue.

Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/tcp.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 1a5217c85158..e04017f92eaf 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1431,7 +1431,8 @@ static int nvme_tcp_start_queue(struct nvme_ctrl *nctrl, int idx)
 	if (!ret) {
 		set_bit(NVME_TCP_Q_LIVE, &ctrl->queues[idx].flags);
 	} else {
-		__nvme_tcp_stop_queue(&ctrl->queues[idx]);
+		if (test_bit(NVME_TCP_Q_ALLOCATED, &ctrl->queues[idx].flags))
+			__nvme_tcp_stop_queue(&ctrl->queues[idx]);
 		dev_err(nctrl->device,
 			"failed to connect queue: %d ret=%d\n", idx, ret);
 	}
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
