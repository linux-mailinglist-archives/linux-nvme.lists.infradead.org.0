Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7C441C0054
	for <lists+linux-nvme@lfdr.de>; Thu, 30 Apr 2020 17:31:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vDQBw9BuTKRouxWwEa1UwvCsgBU6Od+bdbgk1Mpu7XM=; b=O97cLtHYPhneKX
	WT9qotDtv++ZzbZQKxZ3CtEvxiBrKllsjQlKswp1gd3JjXwM/iWK6IsOddLjPaNL9PcKRY3HL90zG
	Lg6vSganaV+upqlzdwU6yBu03h78iNOynD/l/PiiKd5k/y0lFOxg5zO3nAqYy3ky1en27yd1IonWw
	RVn/i8Mow4w/+lwBtXk4GTA7kMMi8baA7acotr9v05epju+SlFcgucOlT3ji7Onf+HbccFiamsUMr
	EtSK3Xv+gBl3M91O1Z9q4ymirq8AozO9wM+F+lVSHGc3dnFuo9ir0g4Z/QRQeIYc/nqeODg7tOPP4
	B4YcZNzZyJiOdbhuajOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUB9H-0000us-PA; Thu, 30 Apr 2020 15:30:51 +0000
Received: from 089144205116.atnat0014.highway.webapn.at ([89.144.205.116]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUB9C-0000se-O1; Thu, 30 Apr 2020 15:30:47 +0000
Date: Thu, 30 Apr 2020 17:28:32 +0200
From: Christoph Hellwig <hch@infradead.org>
To: Jens Axboe <axboe@fb.com>
Subject: [GIT PULL] nvme fix for 5.7
Message-ID: <20200430152832.GA2579034@infradead.org>
MIME-Version: 1.0
Content-Disposition: inline
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
Cc: Keith Busch <kbusch@kernel.org>, linux-block@vger.kernel.org,
 Sagi Grimberg <sagi@grimberg.me>, linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The following changes since commit d205bde78fa53e1ce256b1f7f65ede9696d73ee5:

  null_blk: Cleanup zoned device initialization (2020-04-23 09:35:09 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.7

for you to fetch changes up to 132be62387c7a72a38872676c18b0dfae264adb8:

  nvme: prevent double free in nvme_alloc_ns() error handling (2020-04-27 17:08:06 +0200)

----------------------------------------------------------------
Niklas Cassel (1):
      nvme: prevent double free in nvme_alloc_ns() error handling

 drivers/nvme/host/core.c | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
