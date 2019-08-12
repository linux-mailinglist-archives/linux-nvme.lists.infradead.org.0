Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 929EE89AAC
	for <lists+linux-nvme@lfdr.de>; Mon, 12 Aug 2019 11:58:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fwnUE5HOvG4YWI48NgnY4ybggmKOil221m+yMARj7zw=; b=niStCmj/7rp9n6
	OnEGTXSR/iYFyiXaRwmsCJ3b+IIhldW5pHf+J6bfeYCVrwY2EkjAvOTotbbfkb87l84/eUAxyKtnf
	8XDODVztf0cvLo134u0DfyTj7o2xy1QL4BX5enLq6Wyk8Q7JYNQZOdNul5M643ZWWB57EKhNgTECH
	fYWj2q5gW06HxHnlH2jYUXaJZsZAibHaaFYc14bEZ0HHv1twTQ+Z1Y5RTAHZxuG0/ZV8MYGuZmG/j
	JepES3LwdqKOcPKitlnOwClzMFnNxOOhGbwpaUS/zRjCgRE1rMxjvjbwlzRpA2U2efI2awgoxS+o3
	DNTpwggB2FuwS9NM6KtA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx75V-0001hX-0Y; Mon, 12 Aug 2019 09:58:01 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hx755-0001Sa-Vb
 for linux-nvme@lists.infradead.org; Mon, 12 Aug 2019 09:57:38 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 73A573B551;
 Mon, 12 Aug 2019 09:57:35 +0000 (UTC)
Received: from localhost (ovpn-8-23.pek2.redhat.com [10.72.8.23])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 2FBD1646CA;
 Mon, 12 Aug 2019 09:57:32 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH V2 3/3] genirq/affinity: Enhance warning check
Date: Mon, 12 Aug 2019 17:57:09 +0800
Message-Id: <20190812095709.25623-4-ming.lei@redhat.com>
In-Reply-To: <20190812095709.25623-1-ming.lei@redhat.com>
References: <20190812095709.25623-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.30]); Mon, 12 Aug 2019 09:57:35 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_025736_058375_D1C842BA 
X-CRM114-Status: GOOD (  15.90  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
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
index 927dcbe80482..178dc7eb7b35 100644
--- a/kernel/irq/affinity.c
+++ b/kernel/irq/affinity.c
@@ -318,8 +318,7 @@ static int irq_build_affinity_masks(unsigned int startvec, unsigned int numvecs,
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
