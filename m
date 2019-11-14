Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 70762FBE11
	for <lists+linux-nvme@lfdr.de>; Thu, 14 Nov 2019 04:00:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KX2K9UfYsixYpTKG0kDFRyydiOkQ5V05pi21SGgbB0A=; b=VAzmeHSn8FHSz3
	Xu7cNwcibVvJ3BX/6+shHfIywXsrmUIZJ8msE3u4IpChxBG6wchUs4hLpq8eEvLnDJ8oU3rCl249/
	GqP38jDWXMZMIRTOEvDk9c1nG9NMVeEjd+fT7Pi48gWlJ3Vme7d8pUWHyshkr9XmIS3Rj5jX+89OP
	YB/7gvwN2Scjb1PWQT2aXFYwxBvjEBWSOEMQt+lUIBLY9YcmdfPP1ABvyAoU/ZMfq+k+NN3Q2efwM
	YaeYyEC5u4+AHBTq40D51yp97ZrGTAKeqIYM/+xkw/scFSrMucL1RjU0ooQ2OfBGMwDU5TOz+5BxL
	BAl4+pz/KAY6vmwWZKnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV5MW-0002Z7-9t; Thu, 14 Nov 2019 03:00:00 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV5ME-0002Tn-Sp
 for linux-nvme@lists.infradead.org; Thu, 14 Nov 2019 02:59:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1573700381;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=RYfOKBMxzeCWKuoOKqRC+m2TUfdzQdVOESFsjLvr+v0=;
 b=OncUEQoO3gPQW3TviWbKQAxHTRoxzoXn+/K2Z6sfgYh5g42KSib6L1FA3NrATIpdbF8E77
 sJh7lrbto9na4P+8VMzYgXrT4Hn/9TOtYcid3nuTPPZ/vXLCnDinNvnIUHsPALqiLMai6p
 tesOmjG45vPkdkAVuIE2e3tePm4Pijo=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-67-jZy0kRNRPDaWXz_7YdQlnQ-1; Wed, 13 Nov 2019 21:59:39 -0500
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 02FB418B9FCB;
 Thu, 14 Nov 2019 02:59:38 +0000 (UTC)
Received: from localhost (ovpn-8-18.pek2.redhat.com [10.72.8.18])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 785EB6A505;
 Thu, 14 Nov 2019 02:59:29 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: linux-nvme@lists.infradead.org
Subject: [PATCH V3 1/2] nvme-pci: move sq/cq_poll lock initialization into
 nvme_init_queue
Date: Thu, 14 Nov 2019 10:59:16 +0800
Message-Id: <20191114025917.24634-2-ming.lei@redhat.com>
In-Reply-To: <20191114025917.24634-1-ming.lei@redhat.com>
References: <20191114025917.24634-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-MC-Unique: jZy0kRNRPDaWXz_7YdQlnQ-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_185943_021857_E5953640 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Nadolski Edmund <edmund.nadolski@intel.com>, Keith Busch <kbusch@kernel.org>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Prepare for adding new cq lock for improving IO performance in case
that device applies aggressive interrupt coalescing, and the new added
cq_lock can share space with cq_poll_lock becasue both are mutually
exclusive.

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
index 869f462e6b6e..01728409a7ea 100644
--- a/drivers/nvme/host/pci.c
+++ b/drivers/nvme/host/pci.c
@@ -1481,8 +1481,6 @@ static int nvme_alloc_queue(struct nvme_dev *dev, int qid, int depth)
 		goto free_cqdma;
 
 	nvmeq->dev = dev;
-	spin_lock_init(&nvmeq->sq_lock);
-	spin_lock_init(&nvmeq->cq_poll_lock);
 	nvmeq->cq_head = 0;
 	nvmeq->cq_phase = 1;
 	nvmeq->q_db = &dev->dbs[qid * 2 * dev->db_stride];
@@ -1516,6 +1514,9 @@ static void nvme_init_queue(struct nvme_queue *nvmeq, u16 qid)
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
