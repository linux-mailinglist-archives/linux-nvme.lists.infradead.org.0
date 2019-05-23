Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CFF11282C4
	for <lists+linux-nvme@lfdr.de>; Thu, 23 May 2019 18:19:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0EvF76sVCqMfxKzQSnfISiGZ/2LYOhR+Jhmh5PBjic8=; b=uw1ePH7TnXpYSn
	U7XIBWNZK1mBgrxvYDlWQfkN1k+l2T9B7mgpS518Fig/ACAGvxhTGGxgK6HJtIhTIW4BuUFvulsAd
	EMyCqASfHtuSISwG9Zd/4rvThwZxwPvkfQSZn1ebC6OW5Ad7wJhyiKk0JxgU3kBt15ZWEiI20tqW3
	X8sbdmLoV8BoRneSlDBpr7QnV+5E4mIhRZD4qt6JEUAgH0FRoqWG0gVJqD4IksSyofoUzOk7P9crT
	1pvUi00zp5xHvzF5m8UuzOEM4wdQkxlKw+sKz78tFny53WMEEfgMAfK9KyPj/0trYfTe5bGfRtn4r
	Iu+gD2TudRDmNLlYmlJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTqRI-0003on-RK; Thu, 23 May 2019 16:19:32 +0000
Received: from mga12.intel.com ([192.55.52.136])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTqRB-0003o8-L3
 for linux-nvme@lists.infradead.org; Thu, 23 May 2019 16:19:27 +0000
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 May 2019 09:19:25 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.localdomain) ([10.232.112.69])
 by orsmga005.jf.intel.com with ESMTP; 23 May 2019 09:19:24 -0700
Date: Thu, 23 May 2019 10:14:23 -0600
From: Keith Busch <kbusch@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme fixes for 5.2-rc2
Message-ID: <20190523161423.GD14943@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.1 (2017-09-22)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_091925_716402_85CDD59E 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -1.3 (-)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [192.55.52.136 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
X-BeenThere: linux-nvme@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-nvme.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-nvme/>
List-Post: <mailto:linux-nvme@lists.infradead.org>
List-Help: <mailto:linux-nvme-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-nvme>,
 <mailto:linux-nvme-request@lists.infradead.org?subject=subscribe>
Cc: keith.busch@intel.com, hch@lst.de, linux-nvme@lists.infradead.org,
 sagi@grimberg.me
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Mostly fixes we'd like included ahead of the next rc.

The only non-fix is an update to the MAINTAINERS file to point to my
kernel.org account. This is preferred to receive communication as most
nvme development/maintenance is on my own time anyway. I will also be
starting extended vacation after tomorrow, but would like to still keep
a finger on the nvme pulse.

The following changes since commit a6a4b66bd8f41922c543f7a820c66ed59c25995e:

  Merge tag 'for-linus-20190516' of git://git.kernel.dk/linux-block (2019-05-16 19:10:37 -0700)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.2-rc2

for you to fetch changes up to cb9e0e5006064a807b5d722c7e3c42f307193792:

  nvme-pci: use blk-mq mapping for unmanaged irqs (2019-05-22 10:11:36 -0600)

----------------------------------------------------------------
Christoph Hellwig (4):
      nvme: fix srcu locking on error return in nvme_get_ns_from_disk
      nvme: remove the ifdef around nvme_nvm_ioctl
      nvme: merge nvme_ns_ioctl into nvme_ioctl
      nvme: release namespace SRCU protection before performing controller ioctls

Keith Busch (7):
      nvme-pci: Fix controller freeze wait disabling
      nvme-pci: Don't disable on timeout in reset state
      nvme-pci: Unblock reset_work on IO failure
      nvme-pci: Sync queues on reset
      nvme: Fix known effects
      nvme: update MAINTAINERS
      nvme-pci: use blk-mq mapping for unmanaged irqs

Laine Walker-Avina (1):
      nvme: copy MTFA field from identify controller

Yufen Yu (1):
      nvme: fix memory leak for power latency tolerance

 MAINTAINERS              |  2 +-
 drivers/nvme/host/core.c | 89 +++++++++++++++++++++++++++++++++---------------
 drivers/nvme/host/nvme.h |  1 +
 drivers/nvme/host/pci.c  | 27 ++++++++-------
 4 files changed, 77 insertions(+), 42 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
