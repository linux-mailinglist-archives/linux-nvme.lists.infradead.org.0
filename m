Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36C60201EA7
	for <lists+linux-nvme@lfdr.de>; Sat, 20 Jun 2020 01:36:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YKwvB45K+vW9Aec0/yqQ4K2nOaKNPq+XcVgWLtLzFgk=; b=cOFwVKkjCircm4
	qtSsoyiegg3FPKmsRYeyP219Akw0nK89uDhiL57G7/dpGyFTVwrFY0u/wXLHz8+jRyifxbirUrLpV
	M1xqeRe0aL/CEIQHRqUW044U5rcuvn4pqRqlBIOiITpT6e+/3BDEIMP+r+cjOSRDJ+zA3I37mSeid
	ZpZ7DW2KKSRZop59mCXHqmHzGPYN2ksyP54rY5r8moeof9cDpBks1Rh3RR1c/nt5lA9m5Eya35mCn
	Lq4yrNp98TFuPkcVxNqw6M3WuYnTJKdSQlTbX6bmIcngzE1TsxkS8mk3QSZSXIymXR0lZ6d9cziIB
	suPMEPKsd0l/h8wuixRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmQXL-0004Rg-FR; Fri, 19 Jun 2020 23:35:07 +0000
Received: from [2601:647:4802:9070:4430:34bd:1e1c:d6bc]
 (helo=localhost.localdomain)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmQXC-0004Qq-AE; Fri, 19 Jun 2020 23:34:58 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Keith Busch <kbusch@kernel.org>
Subject: [PATCH 0/5] address deadlocks in high stress ns scanning and ana
 updates
Date: Fri, 19 Jun 2020 16:34:51 -0700
Message-Id: <20200619233456.379778-1-sagi@grimberg.me>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
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
Cc: Anton Eidelman <anton@lightbitslabs.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey All,

The following patches addresses some deadlocks observed while performing some
stress testing of a connect/disconnect storm in addition to rapid ana path
switches concurrently (paths may transition between live<->inaccessible)
on a large number of namespaces (100+).

The test mainly triggers three main flows:
1. ongoing ns scanning, in the presence of concurrent ANA path state changes
   and controller removals (disconnect).
2. ongoing ns scanning (or ana processing) in the presence of concurrent
   controller removal (disconnect).
3. ongoing ANA processing in the presence of concurrent controller removal
   (disconnect).

What was observed is that basically when we disconnect while scan_work and/or ana_work
are running, we can easily deadlock. The main reason is that scan_work and ana_work
may both register the gendisk, triggering I/O (partition scans). Given that a
controller removal (disconnect) may also be running at the same time, I/O may
block. The issue with blocking the head->disk I/O under the locks taken by
both ana_work and scan_work, it means that no other path may update path states
and by doing so, unblock the blocking I/O.

With this patchset applied, the test is able to pass successfully without any
deadlocks.

The last patch is posted as an RFC, while it solves a real problem, we are
essentially adding state to the controller without it going via the normal
controller state, the reason is that the controller state will also affect
ongoing mpath I/O which is the original cause of the deadlock. We are open
to alternative better suggestions if such exist.

Anton Eidelman (3):
  nvme-multipath: fix deadlock between ana_work and scan_work
  nvme-multipath: fix deadlock due to head->lock
  nvme-core: fix deadlock in disconnect during scan_work and/or ana_work

Sagi Grimberg (2):
  nvme: fix possible deadlock when I/O is blocked
  nvme: don't protect ns mutation with ns->head->lock

 drivers/nvme/host/core.c      | 11 +++++++++-
 drivers/nvme/host/multipath.c | 40 +++++++++++++++++++++++------------
 drivers/nvme/host/nvme.h      |  3 +++
 3 files changed, 39 insertions(+), 15 deletions(-)

-- 
2.25.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
