Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B64831CB383
	for <lists+linux-nvme@lfdr.de>; Fri,  8 May 2020 17:40:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+hLq4KdBP5NQAz94cg7u5jczKiQ5pvfcYb/tCaNMoRE=; b=kW2C1vC5ztq4qU
	R3TF2mHOSoho03jX2Fc9YGVM6zbC57VLQhK9te3lrXTpe22HQNSdDSNhZTRBcXczH/PFsGuqiDLJL
	O28nx2N2olNo6pH5RdSyOQwWXggSZp3qmHpJZs7sThxyTtFGQpozNeyMRvW3UDPXZ5u9qtGBejZyJ
	zjaGf9ZQxtcKo5WXjI4o7HWZov5esdES82bieGO5D16yFAD+QxCX8MqoONLT/TP83oTOKx3ROywCN
	dyBeT52y5iSC2JwHjl6pJaVF72eypgw6UnsD+MSmwYLNt1jDK/MMHeSbaL1ud+J7xdWXp4uNMwEDu
	yWnC38jsQVJNL4L74KSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jX56T-0004qO-SZ; Fri, 08 May 2020 15:39:57 +0000
Received: from [2001:4bb8:180:9d3f:90d7:9df8:7cd:3504] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jX56P-0004qA-FU; Fri, 08 May 2020 15:39:53 +0000
Date: Fri, 8 May 2020 17:39:51 +0200
From: Christoph Hellwig <hch@infradead.org>
To: Jens Axboe <axboe@fb.com>
Subject: [GIT PULL] nvme fixes for 5.7
Message-ID: <20200508153951.GA250474@infradead.org>
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

The following changes since commit 860a93ff87acd001eea827b70f4a7a64c0854b81:

  bdi: add a ->dev_name field to struct backing_dev_info (2020-05-07 08:45:47 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.7

for you to fetch changes up to 8874d040ff34285e8b8458a75f9434e19ed06174:

  nvme: fix possible hang when ns scanning fails during error recovery (2020-05-08 17:04:15 +0200)

----------------------------------------------------------------
Alexey Dobriyan (1):
      nvme-pci: fix "slimmer CQ head update"

Sagi Grimberg (1):
      nvme: fix possible hang when ns scanning fails during error recovery

 drivers/nvme/host/core.c | 2 +-
 drivers/nvme/host/pci.c  | 6 +++++-
 2 files changed, 6 insertions(+), 2 deletions(-)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
