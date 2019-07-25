Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C56B2750AE
	for <lists+linux-nvme@lfdr.de>; Thu, 25 Jul 2019 16:13:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tbbSgL/JXslP8QpIroeR27MTWcwLCEEqa1PsCP62Yik=; b=Nd91QPxUuE7R0T
	FZG02L6U+vtNoy7Q05Jn3dUOUqtkYb+ekOSxh4ey4SUwqTWCKaA/UvqB7aanCdUXE9B7u4E85Z8uZ
	SEBQVQdV1XuNZtHskMoeiMb1lBFE5LV6r+ihI1GSBNXN9D7o2iVQQSkKkA9Rc2xN4XdNP44YcU+C9
	xJ5eWkmqvvyRxvQT8XZAHzQfQ+yRS7/OHbr25riM7zDrtxCjpRyECk58CtMaKXcq8vev4+bCoy7zS
	wYwxQQHW3YlBqz0Ny0fmJ23B9AIiX2bjhTJthQIO+4VWtj8DxuH1LylxFVhec9+p2OeCS/XlOSbma
	DK4lBXazhku+t56avRnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqeUS-0004iV-AS; Thu, 25 Jul 2019 14:13:04 +0000
Received: from p57b3f613.dip0.t-ipconnect.de ([87.179.246.19] helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hqeUF-0004iD-3O; Thu, 25 Jul 2019 14:12:51 +0000
Date: Thu, 25 Jul 2019 16:12:45 +0200
From: Christoph Hellwig <hch@infradead.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme fixes for 5.3
Message-ID: <20190725141245.GA4339@infradead.org>
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


The following changes since commit 77ce56e2bfaa64127ae5e23ef136c0168b818777:

  drbd: dynamically allocate shash descriptor (2019-07-23 07:35:18 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.3

for you to fetch changes up to 8fe34be14ecb5eb0ef8d8d44aa7ab62d9e2911ca:

  Revert "nvme-pci: don't create a read hctx mapping without read queues" (2019-07-23 17:47:02 +0200)

----------------------------------------------------------------
Logan Gunthorpe (1):
      nvme: fix memory leak caused by incorrect subsystem free

Marta Rybczynska (1):
      nvme: fix multipath crash when ANA is deactivated

Misha Nasledov (1):
      nvme: ignore subnqn for ADATA SX6000LNP

yangerkun (1):
      Revert "nvme-pci: don't create a read hctx mapping without read queues"

 drivers/nvme/host/core.c      | 12 +++++-------
 drivers/nvme/host/multipath.c |  8 ++------
 drivers/nvme/host/nvme.h      |  6 +++++-
 drivers/nvme/host/pci.c       |  6 +++---
 4 files changed, 15 insertions(+), 17 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
