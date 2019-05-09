Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 621AB19113
	for <lists+linux-nvme@lfdr.de>; Thu,  9 May 2019 20:52:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3jaA5FpHSGMIiv0OeDw5885uiXJcXnN8YGQUEQ0ev3k=; b=Onb0u9kHfxG6Ic
	eAEenIeWhUjV5YgGdfAjEyx7f9JpRJj/RdXhZ2WjSTka/fp7UbRZrL5/tPcT40NdEnYPfFjAt7CaN
	siCMevCnXmd9nToG6WyCwS7q+v1LUwR8q/x+UPwGqsByBnoWJgqPESMdHp3n+ziMTtWlO2qFmIXcE
	OTYeviQLFWcCjpgUb4D5CprlfZMdT9mx6XW4Cm0SD4OjjEk8bd9hs3Ja/xrmiKNLw0cUOUcpfRUOg
	hThHObHNhs/T0go6232WWYdDVNwdU+xMefh9kUyzayEyWe6WuRcrOERThda31O2smfyOUhVCtygrq
	w13XhoJfWLZx0tky+k0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOo9o-0007CM-Sf; Thu, 09 May 2019 18:52:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOo9i-0007BW-AQ
 for linux-nvme@lists.infradead.org; Thu, 09 May 2019 18:52:35 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4FF0A2177E;
 Thu,  9 May 2019 18:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1557427953;
 bh=QzCzpG7nqtzDp/K2VGk2Dc3YCAeq6d3p0u/YucM0gio=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=iX3G8Lt6BxkS0x7YyRtPwp5i7SVWpfqUSP3ClzNMkMeSk3v8GQYQodOSrVzPdoWfK
 6q62MEVbAxMiOpzrtzq9eARqSgmNO3IwC7ruP45dJjvn3l02pna7fI3/jrCWDXG3Mu
 HJ3F05moBAQ9HafEoSV78HyiZ8R69cgtzU8nediE=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5.0 65/95] blk-mq: introduce blk_mq_complete_request_sync()
Date: Thu,  9 May 2019 20:42:22 +0200
Message-Id: <20190509181314.017487714@linuxfoundation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190509181309.180685671@linuxfoundation.org>
References: <20190509181309.180685671@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_115234_380245_60ECA935 
X-CRM114-Status: GOOD (  11.16  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>,
 Sagi Grimberg <sagi@grimberg.me>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 James Smart <james.smart@broadcom.com>, linux-nvme@lists.infradead.org,
 Ming Lei <ming.lei@redhat.com>, Keith Busch <keith.busch@intel.com>,
 stable@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 Bart Van Assche <bvanassche@acm.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

[ Upstream commit 1b8f21b74c3c9c82fce5a751d7aefb7cc0b8d33d ]

In NVMe's error handler, follows the typical steps of tearing down
hardware for recovering controller:

1) stop blk_mq hw queues
2) stop the real hw queues
3) cancel in-flight requests via
	blk_mq_tagset_busy_iter(tags, cancel_request, ...)
cancel_request():
	mark the request as abort
	blk_mq_complete_request(req);
4) destroy real hw queues

However, there may be race between #3 and #4, because blk_mq_complete_request()
may run q->mq_ops->complete(rq) remotelly and asynchronously, and
->complete(rq) may be run after #4.

This patch introduces blk_mq_complete_request_sync() for fixing the
above race.

Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Bart Van Assche <bvanassche@acm.org>
Cc: James Smart <james.smart@broadcom.com>
Cc: linux-nvme@lists.infradead.org
Reviewed-by: Keith Busch <keith.busch@intel.com>
Reviewed-by: Christoph Hellwig <hch@lst.de>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
Signed-off-by: Jens Axboe <axboe@kernel.dk>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 block/blk-mq.c         | 7 +++++++
 include/linux/blk-mq.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/block/blk-mq.c b/block/blk-mq.c
index 5a2585d69c817..6930c82ab75fc 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -657,6 +657,13 @@ bool blk_mq_complete_request(struct request *rq)
 }
 EXPORT_SYMBOL(blk_mq_complete_request);
 
+void blk_mq_complete_request_sync(struct request *rq)
+{
+	WRITE_ONCE(rq->state, MQ_RQ_COMPLETE);
+	rq->q->mq_ops->complete(rq);
+}
+EXPORT_SYMBOL_GPL(blk_mq_complete_request_sync);
+
 int blk_mq_request_started(struct request *rq)
 {
 	return blk_mq_rq_state(rq) != MQ_RQ_IDLE;
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index 0e030f5f76b66..7e092bdac27f6 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -306,6 +306,7 @@ void blk_mq_add_to_requeue_list(struct request *rq, bool at_head,
 void blk_mq_kick_requeue_list(struct request_queue *q);
 void blk_mq_delay_kick_requeue_list(struct request_queue *q, unsigned long msecs);
 bool blk_mq_complete_request(struct request *rq);
+void blk_mq_complete_request_sync(struct request *rq);
 bool blk_mq_bio_list_merge(struct request_queue *q, struct list_head *list,
 			   struct bio *bio);
 bool blk_mq_queue_stopped(struct request_queue *q);
-- 
2.20.1




_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
