Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B51A6CB0
	for <lists+linux-nvme@lfdr.de>; Tue,  3 Sep 2019 17:15:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PIWgfg3Tn0sk94yMmZOqtF9NwFDxVUztQLB/kiOEYQ0=; b=KVH+7RmuSH/kF8BfmmSEyFCuht
	Zixwv6vruD0gULI9d2lOVa13H1tIyjFF5RdL9ZG4Tt8uz2mObZEzvKwLaJreCa0mhEXIO5rbMdxIB
	bU14zZPShQ+C+tO6UDp6E8cAJe6pIh2Zu2MUbcUwcekFtabry3vrTmG2Xad34agQ9ihBkvyZb0szT
	EwoHe65akl4MR6GaoOlqZbhAR2XJNfYz2FQDYdG9OsmMIixGpnR579U/+66Ytf3UW5SPfw2s/GYSU
	FU6BrT0pkJ3rKfJJEi+OEAUURUJ2IUl4B2De4U+a4PMd3dnO+fhe6QcxXvE/ZftG9Vxo6XC+j/ZOD
	iC0v1AQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5AWm-0002Bn-UK; Tue, 03 Sep 2019 15:15:28 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5AVi-0000PW-LC
 for linux-nvme@lists.infradead.org; Tue, 03 Sep 2019 15:14:27 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 3 Sep 2019 18:14:15 +0300
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x83FEFl4016624;
 Tue, 3 Sep 2019 18:14:15 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-block@vger.kernel.org, axboe@kernel.dk, martin.petersen@oracle.com, 
 linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH 4/4] nvmet-loop: fix possible leakage during error flow
Date: Tue,  3 Sep 2019 18:14:15 +0300
Message-Id: <1567523655-23989-4-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1567523655-23989-1-git-send-email-maxg@mellanox.com>
References: <1567523655-23989-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190903_081423_129898_6AF04F4E 
X-CRM114-Status: UNSURE (   6.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Max Gurtovoy <maxg@mellanox.com>, shlomin@mellanox.com,
 israelr@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

During nvme_loop_queue_rq error flow, one must call nvme_cleanup_cmd since
it's symmetric to nvme_setup_cmd.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/loop.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index 0940c50..7b857c3 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -157,8 +157,10 @@ static blk_status_t nvme_loop_queue_rq(struct blk_mq_hw_ctx *hctx,
 		iod->sg_table.sgl = iod->first_sgl;
 		if (sg_alloc_table_chained(&iod->sg_table,
 				blk_rq_nr_phys_segments(req),
-				iod->sg_table.sgl, SG_CHUNK_SIZE))
+				iod->sg_table.sgl, SG_CHUNK_SIZE)) {
+			nvme_cleanup_cmd(req);
 			return BLK_STS_RESOURCE;
+		}
 
 		iod->req.sg = iod->sg_table.sgl;
 		iod->req.sg_cnt = blk_rq_map_sg(req->q, req, iod->sg_table.sgl);
-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
