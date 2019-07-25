Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5248C755B5
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 19:27:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pTQKBKdTa4eos9ZH/KL+CttqnZe8MTJU/nioWMuqwts=; b=KL+Q5gv8P8bz8k
	8TZNOA8CyjNaMopkMVlltmMk+klkndFV2FqJygHiPRAYF1v0G9RhmZvPJQZTRXbOTR2V0eF9MNum7
	PIZ6t75XTqQ0TD0G1sN6PqqvBVLKtqBCqjFXSUnPjZWKzxHQIcyN62ka23CSSE3FzccrQZ7kpskp1
	57MwOqZOs8/DXK8TT5fTfcGoRQBsXSx4kYvReO73Y6Nllw6ciY43VCHwm0A3sFQHZf5GovcLmsR0q
	uMIeDub3OWEZ5zloc8WEn3FHt3gBeKOS76gI9pAOA8GqYMTvkXr3qt9qTJyH95YqN/g3fJV/FHEa5
	xp7+rrZJz5zID/hJePTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqhWn-0006d2-0h; Thu, 25 Jul 2019 17:27:41 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqhT7-0000G5-2r
 for linux-nvme@lists.infradead.org; Thu, 25 Jul 2019 17:23:59 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSw-0001Jh-Ff; Thu, 25 Jul 2019 11:23:51 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.89)
 (envelope-from <gunthorp@deltatee.com>)
 id 1hqhSw-0001ni-An; Thu, 25 Jul 2019 11:23:42 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Thu, 25 Jul 2019 11:23:33 -0600
Message-Id: <20190725172335.6825-15-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725172335.6825-1-logang@deltatee.com>
References: <20190725172335.6825-1-logang@deltatee.com>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 172.16.1.31
X-SA-Exim-Rcpt-To: linux-nvme@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org, hch@lst.de,
 sagi@grimberg.me, kbusch@kernel.org, axboe@fb.com, Chaitanya.Kulkarni@wdc.com,
 maxg@mellanox.com, sbates@raithlin.com, logang@deltatee.com
X-SA-Exim-Mail-From: gunthorp@deltatee.com
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on ale.deltatee.com
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=5.0 tests=ALL_TRUSTED,BAYES_00,
 GREYLIST_ISWHITE,MYRULES_NO_TEXT autolearn=ham autolearn_force=no
 version=3.4.2
Subject: [PATCH v6 14/16] block: don't check blk_rq_is_passthrough() in
 blk_do_io_stat()
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_102353_589594_E040F7AE 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
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
Cc: Sagi Grimberg <sagi@grimberg.me>,
 Chaitanya Kulkarni <Chaitanya.Kulkarni@wdc.com>,
 Stephen Bates <sbates@raithlin.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>,
 Logan Gunthorpe <logang@deltatee.com>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Instead of checking blk_rq_is_passthruough() for every call to
blk_do_io_stat(), don't set RQF_IO_STAT for passthrough requests.
This should be equivalent, and opens the possibility of passthrough
requests specifically requesting statistics tracking.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 block/blk-mq.c | 2 +-
 block/blk.h    | 5 ++---
 2 files changed, 3 insertions(+), 4 deletions(-)

diff --git a/block/blk-mq.c b/block/blk-mq.c
index b038ec680e84..b8d41d6824f6 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -318,7 +318,7 @@ static struct request *blk_mq_rq_ctx_init(struct blk_mq_alloc_data *data,
 	rq->cmd_flags = op;
 	if (data->flags & BLK_MQ_REQ_PREEMPT)
 		rq->rq_flags |= RQF_PREEMPT;
-	if (blk_queue_io_stat(data->q))
+	if (blk_queue_io_stat(data->q) && !blk_rq_is_passthrough(rq))
 		rq->rq_flags |= RQF_IO_STAT;
 	INIT_LIST_HEAD(&rq->queuelist);
 	INIT_HLIST_NODE(&rq->hash);
diff --git a/block/blk.h b/block/blk.h
index de6b2e146d6e..554efa769bfe 100644
--- a/block/blk.h
+++ b/block/blk.h
@@ -234,13 +234,12 @@ int blk_dev_init(void);
  *
  *	a) it's attached to a gendisk, and
  *	b) the queue had IO stats enabled when this request was started, and
- *	c) it's a file system request
+ *	c) it's a file system request (RQF_IO_STAT will not be set otherwise)
  */
 static inline bool blk_do_io_stat(struct request *rq)
 {
 	return rq->rq_disk &&
-	       (rq->rq_flags & RQF_IO_STAT) &&
-		!blk_rq_is_passthrough(rq);
+	       (rq->rq_flags & RQF_IO_STAT);
 }
 
 static inline void req_set_nomerge(struct request_queue *q, struct request *req)
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
