Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCF71A59FF
	for <lists+linux-nvme@lfdr.de>; Mon,  2 Sep 2019 17:01:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=CsCPyWHoY/5DUOKIYXmKJiAR5kv/9W+KDWYBivtz3z4=; b=hMgVRRs95mXzY5q6ybuoG/Ho6Z
	fvGPx9P6qaB3RBVhFC2iJbjl+IUVv2qd4CAjkO4PwS16aHce6f5ft40fFcuFjri41Ma8fP0xBKEwQ
	R2x9BFK7tqyW4fE6niKS/feDR4bKf//Ffd4iifPB46ubh+qfOE9rajPtrwz3a+ErOxmlGbLisN349
	ibsBK2V1tSTrlqh6G2vatTU+95Q/7LxmYzUse5QtaaCo3XrCTyz+r644xcQJPfKcLKoE6ZjBb5M2r
	3A3B/UsCbjN8cvRTwKxkcpRMxitWZJYD7lt3KRKGeoynvtISztCtvEORJc/8tb2rjTUb6YQnpIQAb
	U55OgzRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4npe-000521-FZ; Mon, 02 Sep 2019 15:01:26 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i4npO-00050U-RI
 for linux-nvme@lists.infradead.org; Mon, 02 Sep 2019 15:01:12 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 2 Sep 2019 18:01:03 +0300
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x82F13o0012407;
 Mon, 2 Sep 2019 18:01:03 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, keith.busch@intel.com, hch@lst.de,
 james.smart@broadcom.com, sagi@grimberg.me
Subject: [PATCH 2/3] nvmet-loop: use nvme_finish_cmd during complete callback
Date: Mon,  2 Sep 2019 18:01:01 +0300
Message-Id: <1567436462-23218-2-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
In-Reply-To: <1567436462-23218-1-git-send-email-maxg@mellanox.com>
References: <1567436462-23218-1-git-send-email-maxg@mellanox.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190902_080111_313337_70E7FF51 
X-CRM114-Status: UNSURE (   7.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: israelr@mellanox.com, Max Gurtovoy <maxg@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Also fix possible leakage during error flow in nvme_loop_queue_rq callback.

Signed-off-by: Max Gurtovoy <maxg@mellanox.com>
---
 drivers/nvme/target/loop.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/target/loop.c b/drivers/nvme/target/loop.c
index 0940c50..33bc6c3 100644
--- a/drivers/nvme/target/loop.c
+++ b/drivers/nvme/target/loop.c
@@ -76,7 +76,7 @@ static void nvme_loop_complete_rq(struct request *req)
 {
 	struct nvme_loop_iod *iod = blk_mq_rq_to_pdu(req);
 
-	nvme_cleanup_cmd(req);
+	nvme_finish_cmd(req);
 	sg_free_table_chained(&iod->sg_table, SG_CHUNK_SIZE);
 	nvme_complete_rq(req);
 }
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
