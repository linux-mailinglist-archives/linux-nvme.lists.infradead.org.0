Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7D1AA0CD5
	for <lists+linux-nvme@lfdr.de>; Wed, 28 Aug 2019 23:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:MIME-Version:References:
	In-Reply-To:Message-Id:Date:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Gqc8jJbQ+2oOwU2rguAPQ4JHX5qeM+dTQgmgcMY8iE=; b=S1WNFHzh5UaoCy
	PptUqZXKJY8sMAGCjpYVn5tkEv6tmA2pw76R5ejHgmxjSG2wVJFsL46CgI6ZIHO6Kww8HLi0ClkOF
	xL1iDvbw+BNCEKcsY4OEzHz6sF4JgzBVdeFUvKW+vJBU6PY/dcBpptS0rkMOqbMkGcHOFXK6hVm99
	54qZTj8unAi6zBsJIiFE6Gl3o3qAABQKfDj+mEfnWVaO771nguG5o5F6vOOFeqoRXHhPnKfEvMv7j
	qhNx6szuGcokpCZsdr1mct1ouiU6lr4SICmoxo2Uk2/PacvswP405ZF3nkwskU3j1vKuliwZ99le/
	FlixW1h33Zp9cjtT49pw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i35ty-00031z-B7; Wed, 28 Aug 2019 21:54:50 +0000
Received: from ale.deltatee.com ([207.54.116.67])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i35tl-00030S-6Q
 for linux-nvme@lists.infradead.org; Wed, 28 Aug 2019 21:54:38 +0000
Received: from cgy1-donard.priv.deltatee.com ([172.16.1.31])
 by ale.deltatee.com with esmtps (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <gunthorp@deltatee.com>)
 id 1i35tj-00071o-NI; Wed, 28 Aug 2019 15:54:36 -0600
Received: from gunthorp by cgy1-donard.priv.deltatee.com with local (Exim 4.92)
 (envelope-from <gunthorp@deltatee.com>)
 id 1i35tj-0001DJ-Bh; Wed, 28 Aug 2019 15:54:35 -0600
From: Logan Gunthorpe <logang@deltatee.com>
To: linux-kernel@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org, linux-fsdevel@vger.kernel.org
Date: Wed, 28 Aug 2019 15:54:29 -0600
Message-Id: <20190828215429.4572-14-logang@deltatee.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190828215429.4572-1-logang@deltatee.com>
References: <20190828215429.4572-1-logang@deltatee.com>
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
Subject: [PATCH v8 13/13] nvmet-passthru: support block accounting
X-SA-Exim-Version: 4.2.1 (built Tue, 02 Aug 2016 21:08:31 +0000)
X-SA-Exim-Scanned: Yes (on ale.deltatee.com)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_145437_296917_E93F6E93 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.54.116.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

Support block disk accounting by setting the RQF_IO_STAT flag
and gendisk in the request.

After this change, IO counts will be reflected correctly in
/proc/diskstats for drives being used by passthru.

Signed-off-by: Logan Gunthorpe <logang@deltatee.com>
---
 drivers/nvme/target/io-cmd-passthru.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/nvme/target/io-cmd-passthru.c b/drivers/nvme/target/io-cmd-passthru.c
index 7557927a3451..63f12750a80d 100644
--- a/drivers/nvme/target/io-cmd-passthru.c
+++ b/drivers/nvme/target/io-cmd-passthru.c
@@ -410,6 +410,9 @@ static struct request *nvmet_passthru_blk_make_request(struct nvmet_req *req,
 	if (unlikely(IS_ERR(rq)))
 		return rq;
 
+	if (blk_queue_io_stat(q) && cmd->common.opcode != nvme_cmd_flush)
+		rq->rq_flags |= RQF_IO_STAT;
+
 	if (req->sg_cnt) {
 		ret = nvmet_passthru_map_sg(req, rq);
 		if (unlikely(ret)) {
@@ -474,7 +477,7 @@ static void nvmet_passthru_execute_cmd(struct nvmet_req *req)
 
 	rq->end_io_data = req;
 	if (req->sq->qid != 0) {
-		blk_execute_rq_nowait(rq->q, NULL, rq, 0,
+		blk_execute_rq_nowait(rq->q, ns->disk, rq, 0,
 				      nvmet_passthru_req_done);
 	} else {
 		req->p.rq = rq;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
