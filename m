Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55C3F3E9D
	for <lists+linux-nvme@lfdr.de>; Fri,  8 Nov 2019 04:55:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGeMsLH66yX2Y/Me+NJUuoZe6rMyJ3J3rss8nwLxqd4=; b=LUzdIKFDFHle+H
	4xUc03X6HvXObAu1ecSnHWPpOmdJ7aPBnYjUgm2VnSijlVaVnOk4r6btieLjtEMO8SZZ5xAeUvFqO
	kBtBqCqxGC/xD5sJ6FbhSNvdzQxPGfOqKVCyDNXn1sD5b9L3QRn65TGafohYCgh682Ka2FqI2qBEK
	6hqbIQE0hJqiKnde95JJsGzcfPMaPgF7FWXrGez2jyFEAUTJkXGFAiye6sRmMJ+prM6xvGOWE8L0k
	X+4mTMh0VesaFzfy3filIYQig4rr1ZpeACyO+DWpFN9OjvAc3MuPbI2NsAXA2QImCISo9wMjmda8z
	cHV4C8QigMPg/gLkfbNw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSvNE-0004vA-55; Fri, 08 Nov 2019 03:55:48 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSvMy-0004rD-CS
 for linux-nvme@lists.infradead.org; Fri, 08 Nov 2019 03:55:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573185330;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=rHIgaF1GexNFetRJ7oh/RLrmZQoANfDBMzxz1YAmqXo=;
 b=E9M+drVqMoUq+oNBnNTJ4mseSLnAfPQWHPeACo1YXc3Ko8T+GsM8tZw0vAAP/wSJbqPVHz
 Pvs7cBY5jIA4kPJNr2/D9VmWUj8+OGFxJIcyAx/MEpsySXDz8WRGCw2mhpxJGxYWb2e+nJ
 dIkObc41uSB193A47bNaC7rT6U4O9y8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-332-nqacBFq5NUqeZMFSE7mqBQ-1; Thu, 07 Nov 2019 22:55:27 -0500
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CF753800C72;
 Fri,  8 Nov 2019 03:55:25 +0000 (UTC)
Received: from localhost (ovpn-8-21.pek2.redhat.com [10.72.8.21])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CC235600F0;
 Fri,  8 Nov 2019 03:55:22 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 1/2] nvme-pci: move sq/cq_poll lock initialization into
 nvme_init_queue
Date: Fri,  8 Nov 2019 11:55:07 +0800
Message-Id: <20191108035508.26395-2-ming.lei@redhat.com>
In-Reply-To: <20191108035508.26395-1-ming.lei@redhat.com>
References: <20191108035508.26395-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-MC-Unique: nqacBFq5NUqeZMFSE7mqBQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_195532_491376_9211B6CC 
X-CRM114-Status: GOOD (  11.43  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sagi Grimberg <sagi@grimberg.me>, Long Li <longli@microsoft.com>,
 Ming Lei <ming.lei@redhat.com>, Jens Axboe <axboe@fb.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Prepare for adding new cq lock for improving IO performance in case
of multi-mapping queue, and the new added cq_lock can share space with
cq_poll_lock.

Move sq/cq_poll lock initialization into nvme_init_queue so that
we may initialize the added cq_lock correctly and lockdep warning
can be avoided.

This way is safe because no IO can be started until nvme_init_queue
is returned.

Cc: Keith Busch <kbusch@kernel.org>
Cc: Jens Axboe <axboe@fb.com>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Long Li <longli@microsoft.com>
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 drivers/nvme/host/pci.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/nvme/host/pci.c b/drivers/nvme/host/pci.c
index bb88681f4dc3..5b20ab4d21d3 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1480,8 +1480,6 @@ static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
 		goto free_cqdma;
 
 	nvmeq->dev = dev;
-	spin_lock_init(&nvmeq->sq_lock);
-	spin_lock_init(&nvmeq->cq_poll_lock);
 	nvmeq->cq_head = 0;
 	nvmeq->cq_phase = 1;
 	nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
@@ -1515,6 +1513,9 @@ static void nvme_init_queue(struct nvme_queue *nvmeq, u16 qid)
 {
 	struct nvme_dev *dev = nvmeq->dev;
 
+	spin_lock_init(&nvmeq->sq_lock);
+	spin_lock_init(&nvmeq->cq_poll_lock);
+
 	nvmeq->sq_tail = 0;
 	nvmeq->last_sq_tail = 0;
 	nvmeq->cq_head = 0;
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
