Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 324FF72586
	for <lists+linux-nvme@lfdr.de>; Wed, 24 Jul 2019 05:49:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xki05NVTpqUF5c0ZEDCe6mIqr6nPtzPwgciVJipQy8c=; b=IUdyadCiannagD
	8hYrNIr7c0K1ec5JCHOey4IYoHIyfortKByhOZdQ4ARnkL2PMhnG2T4/2DV0wzcWCj+DO/bNIbKmw
	vub85FFdEhKhwcndyEolCG02HXQdLlOhnOyyYSmcIM2JdpKardaNBfNhSKDZIsALPLGWgop4hvpf6
	eYTqwLP5IB1bduDooPY5pgVTMFNJdOe2kerJGBYv7mTp6hv9+WnkWb3PyuEN6houkG9GyzCKdNflv
	mT1Bn/plweRjya0/qd10sOeXLXIYMfKsEQ03o/56a+m4XI5TTAa2iQJQL6GQloGviOBOa2MaCkJpN
	4QP/xV6/BVVNV6Z+4+Gg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hq8Gy-0007Ip-UA; Wed, 24 Jul 2019 03:49:01 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hq8Gr-0007Hp-Tu
 for linux-nvme@lists.infradead.org; Wed, 24 Jul 2019 03:48:55 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id C65153092652;
 Wed, 24 Jul 2019 03:48:52 +0000 (UTC)
Received: from localhost (ovpn-8-24.pek2.redhat.com [10.72.8.24])
 by smtp.corp.redhat.com (Postfix) with ESMTP id 8E0C85D772;
 Wed, 24 Jul 2019 03:48:49 +0000 (UTC)
From: Ming Lei <ming.lei@redhat.com>
To: Jens Axboe <axboe@kernel.dk>
Subject: [PATCH V2 0/5] blk-mq: wait until completed req's complete fn is run
Date: Wed, 24 Jul 2019 11:48:38 +0800
Message-Id: <20190724034843.10879-1-ming.lei@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.43]); Wed, 24 Jul 2019 03:48:53 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190723_204853_990111_4B94AB17 
X-CRM114-Status: GOOD (  11.22  )
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
Cc: Keith Busch <keith.busch@intel.com>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, Max Gurtovoy <maxg@mellanox.com>,
 Christoph Hellwig <hch@lst.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi,

blk-mq may schedule to call queue's complete function on remote CPU via
IPI, but never provide any way to synchronize the request's complete
fn.

In some driver's EH(such as NVMe), hardware queue's resource may be freed &
re-allocated. If the completed request's complete fn is run finally after the
hardware queue's resource is released, kernel crash will be triggered.

Fixes this issue by waitting until completed req's complete fn is run.

V2:
	- fix one build warning
	- fix commit log
	- apply the wait on nvme-fc code too

Thanks,
Ming

Ming Lei (5):
  blk-mq: introduce blk_mq_request_completed()
  blk-mq: introduce blk_mq_tagset_wait_completed_request()
  nvme: don't abort completed request in nvme_cancel_request
  nvme: wait until all completed request's complete fn is called
  blk-mq: remove blk_mq_complete_request_sync

 block/blk-mq-tag.c         | 32 ++++++++++++++++++++++++++++++++
 block/blk-mq.c             | 13 ++++++-------
 drivers/nvme/host/core.c   |  6 +++++-
 drivers/nvme/host/fc.c     |  2 ++
 drivers/nvme/host/pci.c    |  2 ++
 drivers/nvme/host/rdma.c   |  8 ++++++--
 drivers/nvme/host/tcp.c    |  8 ++++++--
 drivers/nvme/target/loop.c |  2 ++
 include/linux/blk-mq.h     |  3 ++-
 9 files changed, 63 insertions(+), 13 deletions(-)

Cc: Max Gurtovoy <maxg@mellanox.com>
Cc: Sagi Grimberg <sagi@grimberg.me>
Cc: Keith Busch <keith.busch@intel.com>
Cc: Christoph Hellwig <hch@lst.de>

-- 
2.20.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
