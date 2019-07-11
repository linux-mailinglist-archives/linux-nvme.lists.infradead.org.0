Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2969965514
	for <lists+linux-nvme@lfdr.de>; Thu, 11 Jul 2019 13:21:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L42jEOm4v+qIt96FuyYxsyMMvSzUg8UFjAo4fCE8C3U=; b=pEJqLPEomCidK4
	Yy0Wa+Vr0xhTFhi08fCumRIOsiym4Jm3YHlQee37RqrRob+6tSA0qKrkW8wyYUrmjImlzAHH89fEG
	zFBMd22Kqmw/95jguOZjU0kPJV2aL50aOHRbU2KlLgFTG/i/sbAlRzzktDvgy4kykpy/qx1FmclwV
	LfQv7313zsfj9HRC6X4TAje52jLp8zZYjZDwUj1ynG8h23TiR1zLaHpeNlOAse5623hs2/bLmOYjt
	pdPKIyvRC4MsWRoSD+FvufI5goOKoxqX6FyQWMixZHootQPKctmyOfqQBXu6jAiao+2TEsvWmY9JB
	kyrCypOx+nzJIAFelqdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlX8A-0003mx-KC; Thu, 11 Jul 2019 11:20:54 +0000
Received: from [38.98.37.141] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hlX84-0003kQ-7c; Thu, 11 Jul 2019 11:20:51 +0000
Date: Thu, 11 Jul 2019 13:20:31 +0200
From: Christoph Hellwig <hch@infradead.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme updates for 5.3
Message-ID: <20190711112031.GA5031@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Keith Busch <keith.busch@intel.com>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org


Lof of fixes all over the place, and two very minor features that
were in the nvme tree by the end of the merge window, but hadn't made
it out to Jens yet.


The following changes since commit c9b3007feca018d3f7061f5d5a14cb00766ffe9b:

  blk-iolatency: fix STS_AGAIN handling (2019-07-05 15:14:00 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.3

for you to fetch changes up to 420dc733f980246f2179e0144f9cedab9ad4a91e:

  nvme: fix regression upon hot device removal and insertion (2019-07-10 09:36:16 -0700)

----------------------------------------------------------------
Alan Mikhak (2):
      nvme-pci: don't create a read hctx mapping without read queues
      nvme-pci: check for NULL return from pci_alloc_p2pmem()

Bart Van Assche (3):
      nvmet: export I/O characteristics attributes in Identify
      nvme: add I/O characteristics fields
      nvme: set physical block size and optimal I/O size

Christoph Hellwig (2):
      nvme-pci: don't fall back to a 32-bit DMA mask
      nvme-pci: limit max_hw_sectors based on the DMA max mapping size

Colin Ian King (1):
      nvme-trace: fix spelling mistake "spcecific" -> "specific"

Hannes Reinecke (3):
      nvme-multipath: factor out a nvme_path_is_disabled helper
      nvme-multipath: also check for a disabled path if there is a single sibling
      nvme-multipath: do not select namespaces which are about to be removed

James Smart (3):
      nvme-fcloop: fix inconsistent lock state warnings
      nvme-fcloop: resolve warnings on RCU usage and sleep warnings
      nvme-fc: fix module unloads while lports still pending

Mikhail Skorzhinskii (3):
      nvmet: print a hint while rejecting NSID 0 or 0xffffffff
      nvme-tcp: set the STABLE_WRITES flag when data digests are enabled
      nvme-tcp: don't use sendpage for SLAB pages

Sagi Grimberg (1):
      nvme: fix regression upon hot device removal and insertion

Tom Wu (1):
      nvme-trace: add delete completion and submission queue to admin cmds tracer

YueHaibing (1):
      nvme-pci: make nvme_dev_pm_ops static

 drivers/nvme/host/core.c          | 43 ++++++++++++++++++++++++++++++---
 drivers/nvme/host/fc.c            | 51 ++++++++++++++++++++++++++++++++++++---
 drivers/nvme/host/multipath.c     | 18 ++++++++++----
 drivers/nvme/host/nvme.h          |  1 +
 drivers/nvme/host/pci.c           | 26 ++++++++++++--------
 drivers/nvme/host/tcp.c           |  9 ++++++-
 drivers/nvme/host/trace.c         | 28 ++++++++++++++++++++-
 drivers/nvme/target/admin-cmd.c   |  3 +++
 drivers/nvme/target/configfs.c    |  4 ++-
 drivers/nvme/target/fcloop.c      | 44 ++++++++++++++++-----------------
 drivers/nvme/target/io-cmd-bdev.c | 39 ++++++++++++++++++++++++++++++
 drivers/nvme/target/nvmet.h       |  8 ++++++
 drivers/nvme/target/trace.c       |  2 +-
 include/linux/nvme.h              | 12 ++++++---
 14 files changed, 237 insertions(+), 51 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
