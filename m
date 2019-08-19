Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE8ED923CD
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 14:50:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=svfGZTksur8GTb2LcV4/atEYZwC6NFiiv9wOh/Bb+Rw=; b=pyCJ/MkgJnsQrw
	6p5vZ053NA+fX3c8VXGTqBkZzH6hYq+SKtU49Qm2BMg/3ewUqGzGRRps8fZVfvGcJhZtwIDTTrkl3
	G+QRfZYjEOq47JdceaxoFDrAUbEYtrpWGa7G9G1o87jldo37PO0HtMugDHFTrxO6BM/oDAU0vp2by
	yWGjOP3OFn0uCl4nl+k5pYn7gb6NQPD/tmQGpU5fPpLzy39vUXqtj9Cn86rYANxVCUzOlJ7tzGDPQ
	NyyhhSrTB797sSeG3NRWs/aOS8Wi7P10kXm0BgyyqSnVFpIYzAlV+qp8Qzl5ZJZaQouI9vnDij3av
	plTlDKKgU7TrBUT7VSBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzh6e-0002Ps-Q0; Mon, 19 Aug 2019 12:49:52 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzh6a-0002P5-LV
 for linux-nvme@lists.infradead.org; Mon, 19 Aug 2019 12:49:50 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id A7C923091D73;
 Mon, 19 Aug 2019 12:49:44 +0000 (UTC)
Received: from localhost (ovpn-8-19.pek2.redhat.com [10.72.8.19])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8BFE1871FB;
 Mon, 19 Aug 2019 12:49:41 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH V6 0/2] genriq/affinity: Make vectors allocation fair
Date: Mon, 19 Aug 2019 20:49:35 +0800
Message-Id: <20190819124937.9948-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.42]); Mon, 19 Aug 2019 12:49:44 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_054948_729102_9797E70B 
X-CRM114-Status: GOOD (  13.07  )
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

Hi Thomas,

The 1st patch makes __irq_build_affinity_masks() more reliable, such as,
all nodes can be covered in the spread.

The 2nd patch spread vectors on node according to the ratio of this node's
CPU number to number of all remaining CPUs, then vectors assignment can
become more fair. Meantime, the warning report from Jon Derrick can be
fixed.

Please consider it for V5.4.

V6:
	- fix build waring reported by zero day, and extra change is only
	done on irq_build_affinity_masks()

V5:
	- remove patch 1 of V4, which is wrong
	- handle vector wrapping because the 'start vector' may begin
	  anywhere, especially for the 2nd stage spread
	- add more comment on the vector allocation algorithm
	- cleanup code a bit
	- run more tests to verify the change, which always get the
	expected result. Covers lots of num_queues, numa topo, CPU
	unpresent setting.

V4:
	- provide proof why number of allocated vectors for each node is <= CPU
	  count of this node

V3:
	- re-order the patchset
	- add helper of irq_spread_vectors_on_node()
	- handle vector spread correctly in case that numvecs is > ncpus
	- return -ENOMEM to API's caller

V2:
	- add patch3
	- start to allocate vectors from node with minimized CPU number,
	  then every node is guaranteed to be allocated at least one vector.
	- avoid cross node spread



Ming Lei (2):
  genirq/affinity: Improve __irq_build_affinity_masks()
  genirq/affinity: Spread vectors on node according to nr_cpu ratio

 kernel/irq/affinity.c | 231 ++++++++++++++++++++++++++++++++++++------
 1 file changed, 201 insertions(+), 30 deletions(-)

Cc: Jens Axboe <axboe@kernel.dk>
Cc: Christoph Hellwig <hch@lst.de>
Cc: Keith Busch <kbusch@kernel.org>
Cc: linux-nvme@lists.infradead.org,
Cc: Jon Derrick <jonathan.derrick@intel.com>
-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
