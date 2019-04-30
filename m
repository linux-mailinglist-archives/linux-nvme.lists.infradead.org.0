Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D02E6FE39
	for <lists+linux-nvme@lfdr.de>; Tue, 30 Apr 2019 18:57:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IrXdmbvKM7apZAYdAStD8D18LjHPUFVmWm0FOHqH47w=; b=hEC
	SzRwdwipACG8uLq325ApYSpHsvNH5VhG+bxCQ/HC3YegSKgDhMUBuBral9eAMHEfRL6PR6xFTd/9I
	vCWGIB1Tfc1rc6CYUypa2g3tNhbNVfM4upciDdVBa093mR+sGSVbbyA8uouVZq2m1yDolweSvvTU8
	aFrer0blI1exNRH5LYI1plsRK+KCrkiVBmkNPS94o1FMDCrchsceNiPqvCgrCJGZV/envHOeZTQDB
	oABq+Xpx4ULU0HE5ZX30H6NqnOh7MdR9FuFSgBniKpggAa8GOEc3cNzvLvrWcl5HQ4jwRrkY3rr8S
	FM9MYkw0SGqGI9JvL5yJ0dYjxk2S85Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLW4H-0000DF-4j; Tue, 30 Apr 2019 16:57:21 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLW4B-0000Cr-Vy
 for linux-nvme@lists.infradead.org; Tue, 30 Apr 2019 16:57:17 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id A73E3AE78;
 Tue, 30 Apr 2019 16:57:14 +0000 (UTC)
From: Hannes Reinecke <hare@suse.de>
To: Christoph Hellwig <hch@lst.de>
Subject: [PATCHv3] nvme-multipath: split bios with the ns_head bio_set before
 submitting
Date: Tue, 30 Apr 2019 18:57:09 +0200
Message-Id: <20190430165709.106013-1-hare@suse.de>
X-Mailer: git-send-email 2.16.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_095716_175382_9EEFC101 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Hannes Reinecke <hare@suse.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <keith.busch@intel.com>, Hannes Reinecke <hare@suse.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

If the bio is moved to a different queue via blk_steal_bios() and
the original queue is destroyed in nvme_remove_ns() we'll be ending
with a crash in bio_endio() as the mempool for the split bio bvecs
had already been destroyed.
So split the bio using the original queue (which will remain during the
lifetime of the bio) before sending it down to the underlying device.

Signed-off-by: Hannes Reinecke <hare@suse.com>
---
 drivers/nvme/host/multipath.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/nvme/host/multipath.c b/drivers/nvme/host/multipath.c
index f0716f6ce41f..e6ddc83223df 100644
--- a/drivers/nvme/host/multipath.c
+++ b/drivers/nvme/host/multipath.c
@@ -232,6 +232,14 @@ static blk_qc_t nvme_ns_head_make_request(struct request_queue *q,
 	blk_qc_t ret = BLK_QC_T_NONE;
 	int srcu_idx;
 
+	/*
+	 * The namespace might be going away and the bio might
+	 * be moved to a different queue via blk_steal_bios(),
+	 * so we need to use the bio_split pool from the original
+	 * queue to allocate the bvecs from.
+	 */
+	blk_queue_split(q, &bio);
+
 	srcu_idx = srcu_read_lock(&head->srcu);
 	ns = nvme_find_path(head);
 	if (likely(ns)) {
-- 
2.16.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
