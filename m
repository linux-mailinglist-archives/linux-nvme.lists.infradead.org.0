Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE341E91DB
	for <lists+linux-nvme@lfdr.de>; Sat, 30 May 2020 15:53:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gaQ8YNLSYOdBpRLMG0f4auxRHTG70AQdBbrNuws4TKw=; b=n30VwXcX2sYAE2
	pYHA+dqlflIN1+xu8ljbokBMogTtEPpAyu86x1v2V0IZw8lg8xbScg7zx5KlCEgk0fRZeCRKY+6CU
	C5mmjzYY7Ox/6AG5J3MdjbkbY/WENAvsIBwPy5Q3RlXaLrTpQaMj+G1LNAlfKzVuV+RusJxm6NuHp
	h++Rgj1nm4lCInTpp9aYyOSMboJ0RyWGRXLKRLnY7BJwFAU/PQ1HFTAp73vlWxPjcC0RaQAAXeG+R
	77kRGNaLNmp+Q95rxQ95jGgdN1ygFFSpIFAfq8DfjZtEAuAEkpPYCdaKrxO8imMljxo0aciF9SuWY
	jSyMn4LgbPFb/u+Eh5Ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jf1vK-0006T2-Sc; Sat, 30 May 2020 13:53:19 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jf1uv-0006Ie-Jj
 for linux-nvme@lists.infradead.org; Sat, 30 May 2020 13:52:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1590846772;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RZFNt1hadCoJ/rVa7DrlrAla/TA2GyNDp9Z67ysi2po=;
 b=NhVixCgtTaejxkvlaEzfxKTz4mlO9BN+v6IS+xPHGFDSrLf/reKYa7QS/NMdn5YQ7iudMx
 PeehGxdb3CZQxxxdhLhlODaySbAju2YxdzoySb8EcJw62YqA0GNVIcSgysF6g4dUaHNOCu
 unWCSZOhIEr4Cdjy35oByATFFt0Akxc=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-335-SWXZSZYCNpaanBJ931uwgA-1; Sat, 30 May 2020 09:52:38 -0400
X-MC-Unique: SWXZSZYCNpaanBJ931uwgA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id B2ACE1005512;
 Sat, 30 May 2020 13:52:36 +0000 (UTC)
Received: from localhost (ovpn-12-60.pek2.redhat.com [10.72.12.60])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 0671A7B914;
 Sat, 30 May 2020 13:52:32 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>
Subject: [PATCH V2 1/3] blk-mq: add API of blk_mq_queue_frozen
Date: Sat, 30 May 2020 21:52:19 +0800
Message-Id: <20200530135221.1152749-2-ming.lei@redhat.com>
In-Reply-To: <20200530135221.1152749-1-ming.lei@redhat.com>
References: <20200530135221.1152749-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200530_065253_732934_CD0CC173 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [207.211.31.120 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Dongli Zhang <dongli.zhang@oracle.com>,
 Ming Lei <ming.lei@redhat.com>, Alan Adamson <alan.adamson@oracle.com>,
 Keith Busch <kbusch@kernel.org>, Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

blk_mq_freeze_queue_wait() isn't very flexible for some case, such as
error recovery: when blk_mq_freeze_queue_wait is called in error
recovery handler, new problem may be triggered on this controller, so
in-flight IO may not complete when blk_mq_freeze_queue_wait() is called.

And error recovery is often run in single context, so dead lock may be
triggered, because error recover handler can't move on.

Add one new API of blk_mq_queue_frozen(), error recovery handler may
use this helper to query if the queue has been frozen completely.
Meantime, the error recovery handler can check if there is hardware
failure happened. If yes, error recovery handler can break from current
handling, and run a fresh new recovery, so deadlock can be avoided.

This API will be used to improve error handling of nvme-pci's timeout
handler.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Keith Busch <kbusch@kernel.org>
Cc: Max Gurtovoy <maxg@mellanox.com>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 block/blk-mq.c         | 6 ++++++
 include/linux/blk-mq.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/block/blk-mq.c b/block/blk-mq.c
index a5ff8140e52c..dc4e73d7ad02 100644
--- a/block/blk-mq.c
+++ b/block/blk-mq.c
@@ -148,6 +148,12 @@ void blk_mq_freeze_queue_wait(struct request_queue *q)
 }
 EXPORT_SYMBOL_GPL(blk_mq_freeze_queue_wait);
 
+bool blk_mq_queue_frozen(struct request_queue *q)
+{
+	return percpu_ref_is_zero(&q->q_usage_counter);
+}
+EXPORT_SYMBOL_GPL(blk_mq_queue_frozen);
+
 int blk_mq_freeze_queue_wait_timeout(struct request_queue *q,
 				     unsigned long timeout)
 {
diff --git a/include/linux/blk-mq.h b/include/linux/blk-mq.h
index 43e38d21ca4a..1f867ad02c5c 100644
--- a/include/linux/blk-mq.h
+++ b/include/linux/blk-mq.h
@@ -518,6 +518,7 @@ void blk_freeze_queue_start(struct request_queue *q);
 void blk_mq_freeze_queue_wait(struct request_queue *q);
 int blk_mq_freeze_queue_wait_timeout(struct request_queue *q,
 				     unsigned long timeout);
+bool blk_mq_queue_frozen(struct request_queue *q);
 
 int blk_mq_map_queues(struct blk_mq_queue_map *qmap);
 void blk_mq_update_nr_hw_queues(struct blk_mq_tag_set *set, int nr_hw_queues);
-- 
2.25.2


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
