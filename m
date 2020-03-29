Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CB02196C65
	for <lists+linux-nvme@lfdr.de>; Sun, 29 Mar 2020 12:22:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vG1k7vDHwW+5q9YrtbZAdqiVlYxjXLDgiVmk5oYi9Wc=; b=uLf
	gphBOpv4mdt7T4Ni7h0EaZiWWywatrGaq591KlCEISkGgo831926c0Ng68/1+aZzo5W87P1Spq4OC
	krqZtHM7HZZxLJJ0i4MLSj2PtA3HLc0ukGoPExrDqthxTt3E/cYvbbggWhHi8mt8GytewyiR8OJ3d
	Ha5i0mpN3eT4p03N39UpP3huYyCiJhs4vYUtRiPiYGfhEQnIm27w9H3hHLgPnohcw84nehj52JUju
	K54guHgaZKjoZoNcgFGkMAatbXfPM1iRLWovJsHzLSvJfw9kWjHbhlFRevDv0SaPIv7AD5cbeL233
	MftAwiit2UiIkFwwTy31JI1HojBVPRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIV4v-0004V3-A0; Sun, 29 Mar 2020 10:22:05 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIV4p-0004UX-RG
 for linux-nvme@lists.infradead.org; Sun, 29 Mar 2020 10:22:02 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 israelr@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 29 Mar 2020 13:21:47 +0300
Received: from rsws48.mtr.labs.mlnx (rsws48.mtr.labs.mlnx [10.209.40.48])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 02TALlI8014511;
 Sun, 29 Mar 2020 13:21:47 +0300
From: Israel Rukshin <israelr@mellanox.com>
To: Linux-nvme <linux-nvme@lists.infradead.org>,
 Sagi Grimberg <sagi@grimberg.me>, Christoph Hellwig <hch@lst.de>
Subject: [PATCH] nvmet-rdma: Fix double free of rdma queue
Date: Sun, 29 Mar 2020 10:21:42 +0000
Message-Id: <1585477302-4307-1-git-send-email-israelr@mellanox.com>
X-Mailer: git-send-email 1.8.4.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200329_032200_283087_C37BF33D 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Shlomi Nimrodi <shlomin@mellanox.com>,
 Israel Rukshin <israelr@mellanox.com>, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

In case rdma accept fails at nvmet_rdma_queue_connect() release work is
scheduled. Later on, a new RDMA CM event may arrive since we didn't
destroy the cm-id and call nvmet_rdma_queue_connect_fail(), which schedule
another release work. This will cause calling nvmet_rdma_free_queue twice.
To fix this don't schedule the work from nvmet_rdma_queue_connect_fail()
when queue_list is empty (the queue is inserted to a list only after
successful rdma accept).

Signed-off-by: Israel Rukshin <israelr@mellanox.com>
Reviewed-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/rdma.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/nvme/target/rdma.c b/drivers/nvme/target/rdma.c
index 37d262a..59209e3 100644
--- a/drivers/nvme/target/rdma.c
+++ b/drivers/nvme/target/rdma.c
@@ -1380,13 +1380,14 @@ static void nvmet_rdma_queue_connect_fail(struct rdma_cm_id *cm_id,
 {
 	WARN_ON_ONCE(queue->state != NVMET_RDMA_Q_CONNECTING);
 
+	pr_err("failed to connect queue %d\n", queue->idx);
+
 	mutex_lock(&nvmet_rdma_queue_mutex);
-	if (!list_empty(&queue->queue_list))
+	if (!list_empty(&queue->queue_list)) {
 		list_del_init(&queue->queue_list);
+		schedule_work(&queue->release_work);
+	}
 	mutex_unlock(&nvmet_rdma_queue_mutex);
-
-	pr_err("failed to connect queue %d\n", queue->idx);
-	schedule_work(&queue->release_work);
 }
 
 /**
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
