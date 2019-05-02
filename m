Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 19FAA12461
	for <lists+linux-nvme@lfdr.de>; Thu,  2 May 2019 23:59:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YqBH5Bhfe6/sjsAVWxmxPokQvUxSzJlg3QElKh30vsk=; b=YAQPtnrbTkwxop
	q8z1pOzhyBTYUjBa/9Dp8R1jvw8gCFa52ZuLSgPn2X5YmPyN/YUpnhO5MmeGtNk8UpKCJlNFWUMtq
	Rv22oogq9QgGbNe5Bni1TuYojPRszpi0Fk3aTlfIFeR7kGYvTi5I+6xmv8v7G3y1P6+yghafKQymK
	/KB+bh/aXBCVZj5Y4V1vR6lf+b7cOHsyPHCrOrfWDUT+27AtGgzFtfkOZGdY4UKElNqnwu1bhvdO3
	c4AkQfNBTEaVv14mxZln4fB+sI6G1v9woVF8xH2lku2Rase7mKKihZYAJXFyyXdpv8jIFAw7l1Gkz
	eIoUd6EYMuXAlwSU92Xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMJjP-0003gE-4J; Thu, 02 May 2019 21:59:07 +0000
Received: from [65.119.211.164] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMJjL-0003fT-C5; Thu, 02 May 2019 21:59:03 +0000
Date: Thu, 2 May 2019 17:58:25 -0400
From: Christoph Hellwig <hch@infradead.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] last round of nvme updates for 5.2
Message-ID: <20190502215825.GA27894@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Keith Busch <keith.busch@intel.com>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

A couple more fixes and small cleanups for this merge window.

The following changes since commit 2d5abb9a1e8e92b25e781f0c3537a5b3b4b2f033:

  bcache: make is_discard_enabled() static (2019-05-01 06:34:09 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.2

for you to fetch changes up to 6f53e73b9ec5b3cd097077c5ffcb76df708ce3f8:

  nvmet: protect discovery change log event list iteration (2019-05-01 09:18:47 -0400)

----------------------------------------------------------------
Christoph Hellwig (2):
      nvme: move command size checks to the core
      nvme: mark nvme_core_init and nvme_core_exit static

Hannes Reinecke (2):
      nvme-multipath: split bios with the ns_head bio_set before submitting
      nvme-multipath: don't print ANA group state by default

Keith Busch (2):
      nvme-pci: shutdown on timeout during deletion
      nvme-pci: unquiesce admin queue on shutdown

Klaus Birkelund Jensen (1):
      nvme-pci: fix psdt field for single segment sgls

Minwoo Im (3):
      nvme-pci: remove an unneeded variable initialization
      nvme-pci: check more command sizes
      nvme-fabrics: check more command sizes

Sagi Grimberg (2):
      nvme-tcp: fix possible null deref on a timed out io queue connect
      nvmet: protect discovery change log event list iteration

 drivers/nvme/host/core.c        | 31 +++++++++++++++++++++++++++++--
 drivers/nvme/host/fabrics.c     |  1 +
 drivers/nvme/host/multipath.c   | 10 +++++++++-
 drivers/nvme/host/nvme.h        |  3 ---
 drivers/nvme/host/pci.c         | 37 +++++++++++++------------------------
 drivers/nvme/host/tcp.c         |  3 ++-
 drivers/nvme/target/discovery.c |  5 +++++
 7 files changed, 59 insertions(+), 31 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
