Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E8ADC77D
	for <lists+linux-nvme@lfdr.de>; Fri, 18 Oct 2019 16:37:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NNX7pB1O71AE96HXjN1B7W3Y1dREz3pra8wzyJquRHM=; b=Q4uDEZS0TXvF2j
	TJel26kVBw0zCmCIWuDchKxZLmC9sV7DUw6de2+ZUeGg/u1QbcoWuFV4Ltnzdy+HQqK80MpwJH1kN
	7/8R/LhTGjff7QYAZL7ev6YZKmX7985IkSdSB+xPur3AmHUR0h4yRSC+2RV0ihAnM1mECEZku7ML0
	5TgG4Lce3wUdT0HCZUeJMY+gtOTe8iPX81pAzE5Knid93RmnG22GlYtQfv0ehMMGTXH2UoRGPgEc4
	zkWOgj5gQbWydV6vwPdWGWQG5QHWcAQtE18fRW7P1FbF0GQNt2RzdlDTmGPPkzhcQsH+kNor+2Ktb
	ToKC6ydgjyMKm0wqiW3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLTNX-0006e5-Tr; Fri, 18 Oct 2019 14:37:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLTNM-0006Uz-Ep
 for linux-nvme@lists.infradead.org; Fri, 18 Oct 2019 14:37:10 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A6CB8222BD;
 Fri, 18 Oct 2019 14:37:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571409427;
 bh=YWp9MsoSqPw6Pf08bSv4okKF7mf1EzX+PcyDy/jDrn8=;
 h=Date:From:To:Cc:Subject:From;
 b=K+sr6Red/GL0srCCppesqzMjciaCDhYAmy6xIKxBmniDKnm0xU+ELlrB1zJfKn69f
 a/RZmMwPg6V8HNHzxoP61JvqIQKouCE7Z6aW/1gLxAgrFqIGIkR539cP7eXzHqU/C1
 iAPsRvQq73UZmHKMZQ5x61aQkK21Qy7OiW0J11oI=
Date: Fri, 18 Oct 2019 23:37:00 +0900
From: Keith Busch <kbusch@kernel.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme fixes for 5.4
Message-ID: <20191018143700.GB7124@redsun51.ssa.fujisawa.hgst.com>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_073708_596953_4748CA84 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: sagi@grimberg.me, linux-nvme@lists.infradead.org, hch@lst.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Jens,

This is a collection of bug fixes committed since the previous pull
request that address deadlocks, double resets, memory leaks, and other
regression.

The following changes since commit a9eb49c964884654dd6394cb6abe7ceb021c9c96:

  block: sed-opal: fix sparse warning: convert __be64 data (2019-10-03 14:21:32 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.4

for you to fetch changes up to a4f40484e7f1dff56bb9f286cc59ffa36e0259eb:

  nvme-pci: Set the prp2 correctly when using more than 4k page (2019-10-18 23:09:41 +0900)

----------------------------------------------------------------
Ard Biesheuvel (1):
      nvme: retain split access workaround for capability reads

Keith Busch (5):
      nvme-pci: Free tagset if no IO queues
      nvme: Remove ADMIN_ONLY state
      nvme: Restart request timers in resetting state
      nvme: Prevent resets during paused controller state
      nvme: Wait for reset state when required

Kevin Hao (1):
      nvme-pci: Set the prp2 correctly when using more than 4k page

Max Gurtovoy (2):
      nvmet-loop: fix possible leakage during error flow
      nvme-tcp: fix possible leakage during error flow

Sagi Grimberg (1):
      nvme: fix possible deadlock when nvme_update_formats fails

Sebastian Andrzej Siewior (1):
      nvme-tcp: Initialize sk->sk_ll_usec only with NET_RX_BUSY_POLL

 drivers/nvme/host/core.c    | 94 ++++++++++++++++++++++++++++++++-------------
 drivers/nvme/host/fabrics.h |  3 +-
 drivers/nvme/host/nvme.h    |  5 ++-
 drivers/nvme/host/pci.c     | 83 +++++++++++++++++++++++----------------
 drivers/nvme/host/rdma.c    |  8 ++++
 drivers/nvme/host/tcp.c     | 11 ++++++
 drivers/nvme/target/loop.c  |  4 +-
 7 files changed, 144 insertions(+), 64 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
