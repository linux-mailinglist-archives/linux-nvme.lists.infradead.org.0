Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D98CC0AAE
	for <lists+linux-nvme@lfdr.de>; Fri, 27 Sep 2019 19:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=37RhOukYF5FGBgyn2zk+7xP2/SUPDkgHkqQBHk7h2ao=; b=SBD
	LnVKsgdnm2OpDUUEW+pE7jN5aXJLlylNyLB26HutKZ1YcbBdbhgaMeQXXt9F14p+bgPtpsXGNhZ/C
	SSCYkYS0oFKKlA+7WQD6agdcSzkxYMO+9enHfE7FNeZR2P7W/p2tbaGjZfTpmqpLGoOLigudNMEcr
	qpGgTrkrPyGy+rH58feyX/6AKDCJxUYj1KLOeDdubafO/ZhqtwB2TfDOSg/IvLg+ApWVUDrOJHgYy
	jR7MoU2Q4Y4B5HPlWIiqjV7JsWyge/crK3y9UEtg3AhoWmnhOaiAWqtKmxy4BvB+eODMYxLjw71X/
	VV9p7cocuvubSC6TW2HZThKmDASkofw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDuVL-0005uc-4p; Fri, 27 Sep 2019 17:58:07 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDuVG-0005uQ-EQ; Fri, 27 Sep 2019 17:58:02 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme fixes for kernel 5.4-rc1
Date: Fri, 27 Sep 2019 10:58:01 -0700
Message-Id: <20190927175801.12900-1-sagi@grimberg.me>
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
Cc: linux-block@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey Jens,

This set consists of various fixes and clenaups:
- controller removal race fix from Balbir
- quirk additions from Gabriel and Jian-Hong
- nvme-pci power state save fix from Mario
- Add 64bit user commands (for 64bit registers) from Marta
- nvme-rdma/nvme-tcp fixes from Max, Mark and Me
- Minor cleanups and nits from James, Dan and John

The following changes since commit d46fe2cb2dce7f5038473b5859e03f5e16b7428e:

  block: drop device references in bsg_queue_rq() (2019-09-23 11:17:24 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.4 

for you to fetch changes up to 67b483dd03c4cd9e90e4c3943132dce514ea4e88:

  nvme-rdma: fix possible use-after-free in connect timeout (2019-09-27 10:24:53 -0700)

----------------------------------------------------------------
Balbir Singh (1):
      nvme-pci: Fix a race in controller removal

Dan Carpenter (1):
      nvme: fix an error code in nvme_init_subsystem()

Gabriel Craciunescu (1):
      Added QUIRKs for ADATA XPG SX8200 Pro 512GB

James Smart (1):
      nvme: Add ctrl attributes for queue_count and sqsize

Jian-Hong Pan (1):
      nvme: Add quirk for Kingston NVME SSD running FW E8FK11.T

John Pittman (1):
      nvmet: change ppl to lpp

Keith Busch (1):
      nvme: Move ctrl sqsize to generic space

Mario Limonciello (1):
      nvme-pci: Save PCI state before putting drive into deepest state

Marta Rybczynska (1):
      nvme: allow 64-bit results in passthru commands

Max Gurtovoy (1):
      nvme-rdma: Fix max_hw_sectors calculation

Sagi Grimberg (2):
      nvmet-tcp: remove superflous check on request sgl
      nvme-rdma: fix possible use-after-free in connect timeout

Wunderlich, Mark (1):
      nvme-tcp: fix wrong stop condition in io_work

 drivers/nvme/host/core.c          | 132 ++++++++++++++++++++++++++++++++------
 drivers/nvme/host/nvme.h          |   2 +-
 drivers/nvme/host/pci.c           |  20 ++++--
 drivers/nvme/host/rdma.c          |  19 ++++--
 drivers/nvme/host/tcp.c           |   4 +-
 drivers/nvme/target/io-cmd-bdev.c |  16 ++---
 drivers/nvme/target/tcp.c         |  12 ++--
 include/uapi/linux/nvme_ioctl.h   |  23 +++++++
 8 files changed, 177 insertions(+), 51 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
