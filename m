Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08EC379CDD
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Jul 2019 01:32:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bwVaCA35X3UQjSkQl0wCNmxFNNSq5Vdhnw5pNa1lKhc=; b=YyhYIeoK6tW/joPUTfu+9fD/e7
	brQ+I+9rZZmAj54C+9Rs4n0wC4GBYKzOQBfPzFq8mto/uQoXUHQBokMU26C3Q8tlapamgogcDpSDr
	W5G+6UTn9GC5tpQO5uKpEK0krkIWA46AbMzDpscOt4ks5+umZ2Z7Yu+rx5Ouq+5U4f0ZqI9sTi/ut
	jCD7f4379t5TOXLEgWtokrv9hCSNh9s6ACS5o+pb+5jJA1xeOqC/lT3UwVsN+iBopX4i7c+3kzEJ0
	MIHeIY0HjdyGbAwL2pJ5Qg5cL1T1KktV+Sc+MbELX0viakqj7J4RYsekF4yWWJAqLwiG8BjbpYINH
	CPRTXJWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsF85-0003NT-PU; Mon, 29 Jul 2019 23:32:33 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hsF7f-0003BW-TL; Mon, 29 Jul 2019 23:32:07 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: Hannes Reinecke <hare@suse.de>,
	linux-nvme@lists.infradead.org
Subject: [PATCH rfc 2/2] nvme: fix possible use-after-free condition when
 controller reset is racing namespace scanning
Date: Mon, 29 Jul 2019 16:32:01 -0700
Message-Id: <20190729233201.27993-3-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190729233201.27993-1-sagi@grimberg.me>
References: <20190729233201.27993-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

remove ns from ctrl namespaces list before destroying the request queue
as the reset work will unquisce for all the controller namespaces, while
an online scan might remove invalid namespaces resulting from a
concurrent AEN.

While we're at it, move nvme_check_last_path to right after we modify
the multipath reated cleanups.

Reported-by: Hannes Reinecke  <hare@suse.de>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
 drivers/nvme/host/core.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/nvme/host/core.c b/drivers/nvme/host/core.c
index 5f6970e7ba73..9f8f8f5feeae 100644
--- a/drivers/nvme/host/core.c
+++ b/drivers/nvme/host/core.c
@@ -3406,6 +3406,11 @@ static void nvme_ns_remove(struct nvme_ns *ns)
 	synchronize_rcu(); /* guarantee not available in head->list */
 	nvme_mpath_clear_current_path(ns);
 	synchronize_srcu(&ns->head->srcu); /* wait for concurrent submissions */
+	nvme_mpath_check_last_path(ns);
+
+	down_write(&ns->ctrl->namespaces_rwsem);
+	list_del_init(&ns->list);
+	up_write(&ns->ctrl->namespaces_rwsem);
 
 	if (ns->disk && ns->disk->flags & GENHD_FL_UP) {
 		del_gendisk(ns->disk);
@@ -3414,11 +3419,6 @@ static void nvme_ns_remove(struct nvme_ns *ns)
 			blk_integrity_unregister(ns->disk);
 	}
 
-	down_write(&ns->ctrl->namespaces_rwsem);
-	list_del_init(&ns->list);
-	up_write(&ns->ctrl->namespaces_rwsem);
-
-	nvme_mpath_check_last_path(ns);
 	nvme_put_ns(ns);
 }
 
-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
