Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E39A0EE566
	for <lists+linux-nvme@lfdr.de>; Mon,  4 Nov 2019 18:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iUof78B33K65Rcb4KSlBZrHnBlY8ihOuRa2wnlC3yKs=; b=c9khA1ZEEYonu7
	HXK1HPahY4OWtK+1SJb9iAgubukZICSRQqqLPpe7FbnUwdGnKRW7/uugkXUWt85LTKUsWmiJnf8qU
	2Ohu5DSoFfQ9sFcyStIj9Tobb+9oHRldCY5Ussm8R+MM/2jGn+xgVptO5aCpL2X6OscEy3v8QiVCp
	fIv8i8ceyrHwblQbGXWFdfc/j88qxUuSn5PP37EXDbg0TFpuhmolu9yi6XqfGoYjd/yBcJnjDg/Vx
	w3ial6n4RvVvxM6kHneuyfcN9ku9wXpjdtMmpHkjbsKSbztjbTT7Df8CH6fH0Za7LWn3zudRjrf6o
	6sEAkX8DbwXm5Qp22QcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfil-00032e-PL; Mon, 04 Nov 2019 17:00:51 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfie-00031m-Vq
 for linux-nvme@lists.infradead.org; Mon, 04 Nov 2019 17:00:46 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EBC652080F;
 Mon,  4 Nov 2019 17:00:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1572886844;
 bh=H+39RJLVHSwmNu4hwK4sqg0ubBs271vRiv6+KzCChvY=;
 h=Date:From:To:Cc:Subject:From;
 b=VoNdpXQaNVshdxK+wxNsYx9qpVo0R4HIyHG224JV00SqCjtf19pehvfOc6tGm1VcZ
 Ogkxw9bLgoeP5ED8xNnTzS8IOt+NFbsLq+pa7tqzGOxJSERMPSTDUGh3qLd19AmRTC
 Zxp7O1/m8AkWITD+Z6mBSNkq5EANYA8GxZ1wrwX4=
Date: Tue, 5 Nov 2019 02:00:40 +0900
From: Keith Busch <kbusch@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme-5.5
Message-ID: <20191104170040.GE26808@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_090045_068143_8530B320 
X-CRM114-Status: GOOD (  13.88  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org,
 Sagi Grimberg <sagi@grimberg.me>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Jens,

This is our first pull request for the upcoming 5.5 merge window.
Nothing major on new features here: mainly syncing with spec
updates, various code clean ups, and a few minor fixes.

This tree was based on linux-block/for-5.5/block. Please let me know if
you prefer these to be based on the for-5.x/drivers in the future and
I'll be sure to use that as a starting point.

The following changes since commit d2c9be89f8ebe7ebcc97676ac40f8dec1cf9b43a:

  blk-mq: make sure that line break can be printed (2019-11-04 07:14:10 -0700)

are available in the Git repository at:

  git://git.infradead.org/nvme.git for-5.5/nvme

for you to fetch changes up to 16c64b4913a4c1a521cb85c88b25d7015a591451:

  nvme: Fix parsing of ANA log page (2019-11-05 01:17:58 +0900)

----------------------------------------------------------------
Christoph Hellwig (8):
      nvmet: Introduce common execute function for get_log_page and identify
      nvmet: Cleanup discovery execute handlers
      nvmet: Introduce nvmet_dsm_len() helper
      nvmet: Remove the data_len field from the nvmet_req struct
      nvmet: Open code nvmet_req_execute()
      nvmet: clean up command parsing a bit
      nvmet: add plugging for read/write when ns is bdev
      nvmet: stop using bio_set_op_attrs

Damien Le Moal (2):
      nvme: Cleanup and rename nvme_block_nr()
      nvme: Introduce nvme_lba_to_sect()

Geert Uytterhoeven (1):
      nvme-pci: Spelling s/resdicovered/rediscovered/

Israel Rukshin (4):
      nvme: introduce nvme_is_aen_req function
      nvmet: use bio_io_error instead of duplicating it
      nvmet: add unlikely check at nvmet_req_alloc_sgl
      nvmet-rdma: add unlikely check at nvmet_rdma_map_sgl_keyed

James Smart (5):
      nvme-fc: Sync nvme-fc header to FC-NVME-2
      nvme-fc and nvmet-fc: sync with FC-NVME-2 header changes
      nvme-fc: Set new cmd set indicator in nvme-fc cmnd iu
      nvme-fc: clarify error messages
      nvme-fc: ensure association_id is cleared regardless of a Disconnect LS

Logan Gunthorpe (2):
      nvmet-tcp: Don't check data_len in nvmet_tcp_map_data()
      nvmet-tcp: Don't set the request's data_len

Max Gurtovoy (2):
      nvme: introduce "Command Aborted By host" status code
      nvme: move common call to nvme_cleanup_cmd to core layer

Prabhath Sajeepa (1):
      nvme: Fix parsing of ANA log page

Revanth Rajashekar (1):
      nvme: resync include/linux/nvme.h with nvmecli

Sagi Grimberg (1):
      nvmet: fill discovery controller sn, fr and mn correctly

 drivers/nvme/host/core.c          |  24 ++---
 drivers/nvme/host/fc.c            |  49 +++++-----
 drivers/nvme/host/multipath.c     |  13 ++-
 drivers/nvme/host/nvme.h          |  20 ++++-
 drivers/nvme/host/pci.c           |   6 +-
 drivers/nvme/host/rdma.c          |  16 ++--
 drivers/nvme/host/tcp.c           |   4 +-
 drivers/nvme/target/admin-cmd.c   | 133 +++++++++++++++++-----------
 drivers/nvme/target/core.c        |  20 ++---
 drivers/nvme/target/discovery.c   |  70 ++++++++-------
 drivers/nvme/target/fabrics-cmd.c |  15 +++-
 drivers/nvme/target/fc.c          |  31 ++++---
 drivers/nvme/target/io-cmd-bdev.c |  43 +++++----
 drivers/nvme/target/io-cmd-file.c |  20 +++--
 drivers/nvme/target/loop.c        |   7 +-
 drivers/nvme/target/nvmet.h       |  10 ++-
 drivers/nvme/target/rdma.c        |   8 +-
 drivers/nvme/target/tcp.c         |  14 ++-
 include/linux/nvme-fc.h           | 182 ++++++++++++++++++++++++++++----------
 include/linux/nvme.h              |  54 ++++++++++-
 20 files changed, 477 insertions(+), 262 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
