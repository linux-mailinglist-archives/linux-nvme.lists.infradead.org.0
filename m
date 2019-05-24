Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BE929FCF
	for <lists+linux-nvme@lfdr.de>; Fri, 24 May 2019 22:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=OsePfFt0vBg4+lFbqpKW5sC8TU8qOclPkbdySmK238s=; b=jXM
	WDjiLyCaJMxXM3Eo4c1c8BIEvxXnRGJqzsq6aYVuNFKNSFawWKsqos1X667/wG9MIky5pSjM8OwR+
	xSf07nU8DpQOSyjM1WXN6Wy4KqMVi303i+H4A+K1p0qcsbVtshRoE5WreunowVgetWR/YrVC2pMqH
	kR4k7nFlxNFxRd6dPvrw5EUyVZC3QJPzHOJ+dLu5JE4shzmc8WmykIzsR4/mtZ/SzGxNx8xzWiP20
	GzTlK43HWUfBwqHZWilK/xZcBEIdNYS9CGmA0Uq9wNBUnqk93Bejb79BqIfXOp/xoJRb90VQB/2bR
	U4RCgEddQUYQsrYEz3Sz3i8yXAMwoGQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUGlH-0006Ar-De; Fri, 24 May 2019 20:25:55 +0000
Received: from mga11.intel.com ([192.55.52.93])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUGl6-00067G-Uo
 for linux-nvme@lists.infradead.org; Fri, 24 May 2019 20:25:46 +0000
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 24 May 2019 13:25:43 -0700
X-ExtLoop1: 1
Received: from unknown (HELO localhost.lm.intel.com) ([10.232.112.69])
 by orsmga007.jf.intel.com with ESMTP; 24 May 2019 13:25:42 -0700
From: Keith Busch <keith.busch@intel.com>
To: Christoph Hellwig <hch@lst.de>, Sagi Grimberg <sagi@grimberg.me>,
 linux-nvme@lists.infradead.org
Subject: [PATCH 0/3] nvme: Improve processing paused support
Date: Fri, 24 May 2019 14:20:33 -0600
Message-Id: <20190524202036.17265-1-keith.busch@intel.com>
X-Mailer: git-send-email 2.13.6
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_132545_002659_71155F02 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.55.52.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Keith Busch <kbusch@kernel.org>, Bart Van Assche <bvanassche@acm.org>,
 Ming Lei <ming.lei@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

From: Keith Busch <kbusch@kernel.org>

Improve firmware activation over what we're currently doing. The main
thing is that we do not want to esacalate recovery while the current
status has CSTS.PP set as the recovery attempt may interfere with a
critical controller operation.

There still exists a race where the controller may clear CSTS Processing
Paused at the same time a stalled request times out. We would normally
want to reset the timer for that, but this is at least a state that can
handle error recovery without interrupting background operations, so
the only harm caused from encountering this unlikely event is a longer
latency back to ready.

My previous patch to address this used help from the block layer, but
had some issues. This series only involves the nvme driver and just
addresses the main concern without addressing the corner cases.

Keith Busch (3):
  nvme-pci: reset timeout when processing is paused
  nvme: rearm fw notification in admin only state
  nvme: quiesce admin queue for fw activation

 drivers/nvme/host/core.c | 9 ++++++++-
 drivers/nvme/host/pci.c  | 2 +-
 2 files changed, 9 insertions(+), 2 deletions(-)

-- 
2.14.4


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
