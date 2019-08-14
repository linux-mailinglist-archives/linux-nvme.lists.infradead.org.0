Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D4D8CEB0
	for <lists+linux-nvme@lfdr.de>; Wed, 14 Aug 2019 10:42:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oKLWQ+hQAmelRXH2pLl+pZTZWK9vONCfOnigW3isLDw=; b=H0KAiGrN2040u1
	BaKy5EPr7DHF+uhoTuw8JdGmxqkeK92+F41zgr8mozBHNEpx9JYkA+kTKA4Bx4MRgG9TlNXa7Xx9+
	BrNwNfr4GVwPZaladqIcy7LsOjL6MVK5864F1XJqXJwNPc+rKZxEHR9LiUdOqeB+R4T2G7Ix/4YZ/
	H1zTfupIOZUR1bZ/GUEDzUubeGYK+IarMpBmzBCYVd9q8TVqizp+yJh11tHXTnZHXsHxz1nYKZDMD
	FhuCAuhfcaj4DZU1YGCynusswd10ohyUCbj2+IWjYmw8RGMAabRFfqZM4P2j8rY8ZY3/eT6KN8Vvb
	11s4I9woRkaoIatEx1QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxorO-0001ii-Tt; Wed, 14 Aug 2019 08:42:23 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxoqi-0001P1-G2
 for linux-nvme@lists.infradead.org; Wed, 14 Aug 2019 08:41:42 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 2107083F3E;
 Wed, 14 Aug 2019 08:41:40 +0000 (UTC)
Received: from localhost (ovpn-8-16.pek2.redhat.com [10.72.8.16])
 by smtp.corp.redhat.com (Postfix) with ESMTP id CA3C28D657;
 Wed, 14 Aug 2019 08:41:36 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH V4 1/3] genirq/affinity: Enhance warning check
Date: Wed, 14 Aug 2019 16:40:42 +0800
Message-Id: <20190814084044.21699-2-ming.lei@redhat.com>
In-Reply-To: <20190814084044.21699-1-ming.lei@redhat.com>
References: <20190814084044.21699-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.27]); Wed, 14 Aug 2019 08:41:40 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_014140_763524_D8D8B4C7 
X-CRM114-Status: GOOD (  15.35  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 Keith Busch <kbusch@kernel.org>, Christoph Hellwig <hch@lst.de>,
 Jon Derrick <jonathan.derrick@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The two-stage spread is done on same irq vectors, and we just need that
either one stage covers all vector, not two stage work together to cover
all vectors.

So enhance the warning check to make sure all vectors are spread.

Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: linux-nvme@lists.infradead.org,
Cc: Jon Derrick <jonathan.derrick@intel.com>
Cc: Jens Axboe <axboe@kernel.dk>
Fixes: 6da4b3ab9a6 ("genirq/affinity: Add support for allocating interrupt sets")
Signed-off-by: Ming Lei <ming.lei@redhat.com>
---
 kernel/irq/affinity.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/kernel/irq/affinity.c b/kernel/irq/affinity.c
index 6fef48033f96..265b3076f16b 100644
--- a/kernel/irq/affinity.c
+++ b/kernel/irq/affinity.c
@@ -215,8 +215,7 @@ static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
 					       npresmsk, nmsk, masks);
 	put_online_cpus();
 
-	if (nr_present < numvecs)
-		WARN_ON(nr_present + nr_others < numvecs);
+	WARN_ON(max(nr_present, nr_others) < numvecs);
 
 	free_node_to_cpumask(node_to_cpumask);
 
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
