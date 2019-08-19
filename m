Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EC32A9505C
	for <lists+linux-nvme@lfdr.de>; Mon, 19 Aug 2019 23:59:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Ueq/d6Oo5MGm2rTv9Vv+ME3hrTaA/mVHnM+xy1M1sZI=; b=ACD
	iSfbRIuEpOnwAGTXYj0wpnqrDAq7eGi7ZT7tU9KZYKwqVJ/ukDNVV7OKdXaGo9/lLHGkAGJ87d8mM
	evorndwXSiFQoh6G8676MyALPos5ZDTutnX1sEiNOJFl2uInN1SzWPWwZVsr1eBudVnERgz/R5e2G
	lONwWr1N+rbRCsv/O2YS8sRSagG05AOJXcf4JEPtzcAWytX7BK8nPd2urvOM7Wmdu/lhumecLWVzJ
	eBMk/RCBoA+/pDfeC5j10JFRihZliri4XJdZ7vj4246YU9oBbeo+krKtx9Zvf0MF6ocCZkFZ9lPeH
	2CZ5UUSFpggTkqxrkPcml6J/SF/i74Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzpgU-0001xD-1h; Mon, 19 Aug 2019 21:59:26 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hzpgH-0001wz-MC; Mon, 19 Aug 2019 21:59:13 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] some more nvme fixes for the next round of 5.3-rc
Date: Mon, 19 Aug 2019 14:59:11 -0700
Message-Id: <20190819215911.28552-1-sagi@grimberg.me>
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
Cc: linux-block@vger.kernel.org, linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey Jens,

Few important late fixes for nvme:
- multipath fix that prevent possible I/O hangs in path failover from Anton
- cntlid verification caused regression in pci controllers from Guilherme
- suspend/resume quirk that fixes a regression on the LiteON device from Mario

The following changes since commit 2fc7323f1c4b94f8301058805a5da7d202e27bfc:

  io_uring: fix potential hang with polled IO (2019-08-19 12:15:59 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.3-rc 

for you to fetch changes up to 1b538f48fdb0522cc44c920f606fac45d5dd8b00:

  nvme: Add quirk for LiteON CL1 devices running FW 22301111 (2019-08-19 12:08:17 -0700)

----------------------------------------------------------------
Anton Eidelman (1):
      nvme-multipath: fix possible I/O hang when paths are updated

Guilherme G. Piccoli (1):
      nvme: Fix cntlid validation when not using NVMEoF

Mario Limonciello (1):
      nvme: Add quirk for LiteON CL1 devices running FW 22301111

 drivers/nvme/host/core.c      | 14 +++++++++++++-
 drivers/nvme/host/multipath.c |  1 +
 drivers/nvme/host/nvme.h      |  5 +++++
 drivers/nvme/host/pci.c       |  3 ++-
 4 files changed, 21 insertions(+), 2 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
