Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 397771E806A
	for <lists+linux-nvme@lfdr.de>; Fri, 29 May 2020 16:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ObjDmoLepmBqmMd1iC+kzzI8cwx/zCTcwDSD6QWtf4=; b=iVc8ClADIOPDCW
	vh9+2hfYsBOdQaRrBNuX8RaOzEkBZclUHVAL6na4Z5o11FpmIixPee+4XjG8Wqg1rU5NH/GNKloPT
	DPgv6P6lv9bde2uwjQEvY/CXc+6B9HOYaBMUQEaxUlYV+KPD1Nw4XxGCcprw+9QaAaRLaEuSn60wE
	ftel+RB6uKqWKFyrwn+xnlvV1Mx0Rj2cYhJdI0hP6fRNga3EYadYaZYeBl9GBlvS+tkGriXcbsHc9
	Wo91/BRn6hyM20/dFYci4ceDtIVtYYw7LDcpJVD+/ayQt4U8U8Q5m3l6/cFo2q0FecMqTIe9lCs3y
	OOCHl1nazFZzvEQvmNSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeg8z-0003g1-Fn; Fri, 29 May 2020 14:37:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeg8p-0003cK-Gs
 for linux-nvme@lists.infradead.org; Fri, 29 May 2020 14:37:48 +0000
Received: from dhcp-10-100-145-180.wdl.wdc.com (unknown [199.255.45.60])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B37DD207F5;
 Fri, 29 May 2020 14:37:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590763067;
 bh=yFae7GK++44DPO0iGMNh4qB+ZauE/dwLiY42V7OOLR4=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=geZeQQD3wQB9FMM67fSf3fvXf8m3d2ZQVLjShWauY/Re2MO3LizGgN+hD7AyQkK1u
 qieD+WF1jfC3Bo/c3En4pYzukI2Wtxpru+H8q3sVcjrMFsj493eur84L8sMdqUj+x2
 yy+LAJvwE6fmfBw2Aetg6OHs0BnbUWoDDO913yGI=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, hch@lst.de, sagi@grimberg.me,
 linux-block@vger.kernel.org, axboe@kernel.dk
Subject: [PATCHv3 1/2] blk-mq: export blk_mq_force_complete_rq
Date: Fri, 29 May 2020 07:37:43 -0700
Message-Id: <20200529143744.3545429-2-kbusch@kernel.org>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20200529143744.3545429-1-kbusch@kernel.org>
References: <20200529143744.3545429-1-kbusch@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200529_073747_587474_699C8853 
X-CRM114-Status: GOOD (  11.15  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Keith Busch <kbusch@kernel.org>, alan.adamson@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

For when drivers have a need to bypass error injection.

Signed-off-by: Keith Busch <kbusch@kernel.org>
---
 block/blk-mq.c         | 15 +++++++++++++--
 include/linux/blk-mq.h |  1 +
 2 files changed, 14 insertions(+), 2 deletions(-)

diff --git a/block/blk-mq.c b/block/blk-mq.c
index cac11945f602..560a114a82f8 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -556,7 +556,17 @@ static void __blk_mq_complete_request_remote(void *data)
 	q->mq_ops->complete(rq);
 }
 
-static void __blk_mq_complete_request(struct request *rq)
+/**
+ * blk_mq_force_complete_rq() - Force complete the request, bypassing any error
+ * 				injection that could drop the completion.
+ * @rq: Request to be force completed
+ *
+ * Drivers should use blk_mq_complete_request() to complete requests in their
+ * normal IO path. For timeout error recovery, drivers may call this forced
+ * completion routine after they've reclaimed timed out requests to bypass
+ * potentially subsequent fake timeouts.
+ */
+void blk_mq_force_complete_rq(struct request *rq)
 {
 	struct blk_mq_ctx *ctx = rq->mq_ctx;
 	struct request_queue *q = rq->q;
@@ -602,6 +612,7 @@ static void __blk_mq_complete_request(struct request *rq)
 	}
 	put_cpu();
 }
+EXPORT_SYMBOL_GPL(blk_mq_force_complete_rq);
 
 static void hctx_unlock(struct blk_mq_hw_ctx *hctx, int srcu_idx)
 	__releases(hctx->srcu)
@@ -635,7 +646,7 @@ bool blk_mq_complete_request(struct request *rq)
 {
 	if (unlikely(blk_should_fake_timeout(rq->q)))
 		return false;
-	__blk_mq_complete_request(rq);
+	blk_mq_force_complete_rq(rq);
 	return true;
 }
 EXPORT_SYMBOL(blk_mq_complete_request);
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index d7307795439a..856bb10993cf 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -494,6 +494,7 @@ void blk_mq_requeue_request(struct request *rq, bool kick_requeue_list);
 void blk_mq_kick_requeue_list(struct request_queue *q);
 void blk_mq_delay_kick_requeue_list(struct request_queue *q, unsigned long msecs);
 bool blk_mq_complete_request(struct request *rq);
+void blk_mq_force_complete_rq(struct request *rq);
 bool blk_mq_bio_list_merge(struct request_queue *q, struct list_head *list,
 			   struct bio *bio, unsigned int nr_segs);
 bool blk_mq_queue_stopped(struct request_queue *q);
-- 
2.24.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
