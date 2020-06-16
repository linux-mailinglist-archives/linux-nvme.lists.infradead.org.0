Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 50B7F1FAC80
	for <lists+linux-nvme@lfdr.de>; Tue, 16 Jun 2020 11:35:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gpx6rsOuij/2h8r437VJIwxDfeIiDT1hDF4E/o2tq1Q=; b=Ql1BEPz7/GW47B
	BPubGeSq41PjVWpmyqhQzFCv+rIGCRv8EKbkCUanXVHoFGRNV9liYetAV8wnk+yRkDbqLvP9voVoH
	On5Jm4//orbz8WGrF850KhDqTlKLksJ5lXZs4IfKukl3RnO6rpuHS29izGnhmk7zKAKSMFxUe7JS2
	aIaZjJed1HfluTaLLlpbZ+RW/HjaUsASINrS+tKqr2JZ1w7d4Qbhp9Hcz8HA+gfLPTt9mjhraX4SC
	0h1ZuEIZe8tMyQRcN0jVsLlDx2Mxq0O5vJUIdaQYkPZjIY1ET3c0XyxX+owYjQWuu/DzOFuDpQeMa
	4juX4/ieiP2Pv2AAW8RQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jl7zW-0006hK-Sl; Tue, 16 Jun 2020 09:34:50 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jl7zG-0006YR-Pj
 for linux-nvme@lists.infradead.org; Tue, 16 Jun 2020 09:34:40 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com) with SMTP; 16 Jun 2020 12:34:26 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 05G9YPqo030330;
 Tue, 16 Jun 2020 12:34:26 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: sagi@grimberg.me, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, james.smart@broadcom.com
Subject: [PATCH 4/5 v2] nvme-tcp: initialize tagset numa value to the value of
 the ctrl
Date: Tue, 16 Jun 2020 12:34:24 +0300
Message-Id: <20200616093425.169309-4-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20200616093425.169309-1-maxg@mellanox.com>
References: <20200616093425.169309-1-maxg@mellanox.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_023435_310880_A5108961 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Max Gurtovoy <maxg@mellanox.com>, israelr@mellanox.com,
 shlomin@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Both admin's and drive's tagsets should be set according the numa
node of the controller.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/host/tcp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/tcp.c b/drivers/nvme/host/tcp.c
index 3345ec7..79ef2b8 100644
--- a/drivers/nvme/host/tcp.c
+++ b/drivers/nvme/host/tcp.c
@@ -1532,7 +1532,7 @@ static struct blk_mq_tag_set *nvme_tcp_alloc_tagset(struct nvme_ctrl *nctrl,
 		set->ops = &nvme_tcp_admin_mq_ops;
 		set->queue_depth = NVME_AQ_MQ_TAG_DEPTH;
 		set->reserved_tags = 2; /* connect + keep-alive */
-		set->numa_node = NUMA_NO_NODE;
+		set->numa_node = nctrl->numa_node;
 		set->flags = BLK_MQ_F_BLOCKING;
 		set->cmd_size = sizeof(struct nvme_tcp_request);
 		set->driver_data = ctrl;
@@ -1544,7 +1544,7 @@ static struct blk_mq_tag_set *nvme_tcp_alloc_tagset(struct nvme_ctrl *nctrl,
 		set->ops = &nvme_tcp_mq_ops;
 		set->queue_depth = nctrl->sqsize + 1;
 		set->reserved_tags = 1; /* fabric connect */
-		set->numa_node = NUMA_NO_NODE;
+		set->numa_node = nctrl->numa_node;
 		set->flags = BLK_MQ_F_SHOULD_MERGE | BLK_MQ_F_BLOCKING;
 		set->cmd_size = sizeof(struct nvme_tcp_request);
 		set->driver_data = ctrl;
-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
