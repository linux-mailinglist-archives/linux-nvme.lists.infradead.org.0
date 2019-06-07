Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7B5939640
	for <lists+linux-nvme@lfdr.de>; Fri,  7 Jun 2019 21:55:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+PY4BlEN4dR5048Chkg53+bbr0pcCUk+cqn2tbZ73/s=; b=YDj
	u5JOe3/KpQJ8yo5qqQYY02IDJ0mdhhtgVvlzFB9r47mj/DMAqr1+cXbc9w+I89gQDO3pKOVB9P7ZO
	zyI2V6+8DpP5pkeHVurPd6werszifoJYIeW1KsnM2pjWHh1yeKyx6uQTAg14MiaMNCTiF1Ul1psz/
	99i8a8EJGCzmIVWU/ezoRm/00PnNs45lgGZMsHNBcr3ZSscyWXPCxGHKzY17HUFfpdQZpg8G2Vm2y
	19Sm0RLuIXNtFymMUi5R4J0xmbPYPom8GlwGwl6Jk1QMXc6ut0c7ykjHc6N5Wf16cCSsJ9IR9AM7n
	bWAczlqS8Vmv/jVrT2W+MRSrZok6kTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZKxC-0004LN-Pa; Fri, 07 Jun 2019 19:55:10 +0000
Received: from [2601:647:4800:973f:d85c:2df7:72d9:ea63]
 (helo=bombadil.infradead.org)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hZKx2-0004Ff-D0; Fri, 07 Jun 2019 19:55:00 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme fixes for 5.2-rc
Date: Fri,  7 Jun 2019 12:54:58 -0700
Message-Id: <20190607195458.12866-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.17.1
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>,
 linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey Jens,

Couple of nvme fixes for the next rc round.
- nvmet write zeros fix from Minwoo
- nvme-rdma use-after-free fix from Max
- nvme-core u32 overflow fix from Jaesoo
- tcp,rdma fixes for limited number of queues from me

The following changes since commit cb9e0e5006064a807b5d722c7e3c42f307193792:

  nvme-pci: use blk-mq mapping for unmanaged irqs (2019-05-22 10:11:36 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.2-rc-next

for you to fetch changes up to 62f99b62e5e3b88d23b6ced4380199e8386965af:

  nvme-rdma: use dynamic dma mapping per command (2019-06-06 09:53:19 -0700)

----------------------------------------------------------------
Jaesoo Lee (1):
      nvme: Fix u32 overflow in the number of namespace list calculation

Max Gurtovoy (1):
      nvme-rdma: use dynamic dma mapping per command

Minwoo Im (1):
      nvmet: fix data_len to 0 for bdev-backed write_zeroes

Sagi Grimberg (2):
      nvme-rdma: fix queue mapping when queue count is limited
      nvme-tcp: fix queue mapping when queue count is limited

 drivers/nvme/host/core.c          |   3 +-
 drivers/nvme/host/rdma.c          | 152 ++++++++++++++++++++++++--------------
 drivers/nvme/host/tcp.c           |  57 ++++++++++++--
 drivers/nvme/target/io-cmd-bdev.c |   1 +
 4 files changed, 150 insertions(+), 63 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
