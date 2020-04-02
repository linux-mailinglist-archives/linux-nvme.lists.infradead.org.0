Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2142019C729
	for <lists+linux-nvme@lfdr.de>; Thu,  2 Apr 2020 18:35:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ubftXDugJzbgY7CqOOjT3uWli19bXG9DmtGdHAZSbck=; b=i9910PoYuvWS1O
	x9YFeva7+C3yQdrSrBTgrDCAJR0cVMruWVbh8zEwPYGP52nQgojDhfMgcQfptzkUSmxcJikgw0kc3
	VKK4O/WlbBPbR8zENKrn0PpINJ/NePhm/bKham06ufUsHvn0NWkPD63gXokYz4Tq0o1CljeXlnZ6N
	GbuicU2Ornwc/0X+Nc35kTdyqKBWlGyfbZOehHtBQxKufyvBOgEDzBrUyKnWDYo099PBxp11Jhv9S
	6L0hrweeW9ck2ryS+0d+RFyse31fb9DuK9jbdtvuEG1Ejm79yzTtN8R8L/tat4viDnTvEuxmf+Ukn
	Vw8LJJPsRnAqHQJ0EJfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jK2o1-0004mb-3g; Thu, 02 Apr 2020 16:35:01 +0000
Received: from [2601:647:4802:9070:a836:db4c:a7ac:3d7c]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jK2nx-0004mS-Jb; Thu, 02 Apr 2020 16:34:57 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Subject: [PATCH v2] nvme: fix deadlock caused by ana update wrong locking
Date: Thu,  2 Apr 2020 09:34:54 -0700
Message-Id: <20200402163454.18314-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
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
Cc: Hannes Reinecke <hare@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The deadlock combines 4 flows in parallel:
- ns scanning (triggered from reconnect)
- request timeout
- ANA update (triggered from reconnect)
- I/O coming into the mpath device

(1) ns scanning triggers disk revalidation -> update disk info ->
    freeze queue -> but blocked, due to (2)

(2) timeout handler reference the g_usage_counter - > but blocks in
    the transport .timeout() handler, due to (3)

(3) the transport timeout handler (indirectly) calls nvme_stop_queue() ->
    which takes the (down_read) namespaces_rwsem - > but blocks, due to (4)

(4) ANA update takes the (down_write) namespaces_rwsem -> calls
    nvme_mpath_set_live() -> which synchronize the ns_head srcu
    (see commit 504db087aacc) -> but blocks, due to (5)

(5) I/O came into nvme_mpath_make_request -> took srcu_read_lock ->
    direct_make_request > blk_queue_enter -> but blocked, due to (1)

==> the request queue is under freeze -> deadlock.

The fix is making ANA update take a read lock as the namespaces list
is not manipulated, it is just the ns and ns->head that are being
updated (which is protected with the ns->head lock).

Fixes: 0d0b660f214dc ("nvme: add ANA support")
Reviewed-by: Keith Busch <kbusch@kernel.org>
Signed-off-by: Sagi Grimberg <sagi@grimberg.me>
---
Changes from v1:
- added a fixes tag for stable to pick up

 drivers/nvme/host/multipath.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index 61bf87592570..54603bd3e02d 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -510,7 +510,7 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
 	if (!nr_nsids)
 		return 0;
 
-	down_write(&ctrl->namespaces_rwsem);
+	down_read(&ctrl->namespaces_rwsem);
 	list_for_each_entry(ns, &ctrl->namespaces, list) {
 		unsigned nsid = le32_to_cpu(desc->nsids[n]);
 
@@ -521,7 +521,7 @@ static int nvme_update_ana_state(struct nvme_ctrl *ctrl,
 		if (++n == nr_nsids)
 			break;
 	}
-	up_write(&ctrl->namespaces_rwsem);
+	up_read(&ctrl->namespaces_rwsem);
 	return 0;
 }
 
-- 
2.20.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
