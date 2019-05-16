Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 241382013E
	for <lists+linux-nvme@lfdr.de>; Thu, 16 May 2019 10:26:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UDGOQ9VxwF+4q0r802hCIbX3ISP9lar1od5uZQ992/E=; b=Myvy1zOGl/1Z9S
	M6liMIBAeQ3lKZPaaQLJh58IZZxgorfZx5WgSgQQUpvLTKn2nwtRcxt5kKRDbbTW6LkP1LF+BPVgH
	9wc6v1qFn77ZEO4SJ5gz22kTrDbkWGxxyxcmsMxa5TjgiVQqA4Zrh1GHvfM2hcrTP0VM9IleBctnL
	VDAj3Q25dpuI+qFv0x36W7rEQbfNkh6BVVTNwqUJFYvPYj3kNwZrx0rwKcUbqiMZIZnWbbUTumz5u
	wUkTQ3jCuN7RfmMy3tsSYsBy24/7Vc62hks3sHLBVZX1RVo1vycPQuch8ei1utj0h17U/ukgIUEew
	w4VzdsQC0z8rVLL4C7aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRBij-00078X-MC; Thu, 16 May 2019 08:26:33 +0000
Received: from 089144210233.atnat0019.highway.a1.net ([89.144.210.233]
 helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRBig-00078N-2V; Thu, 16 May 2019 08:26:30 +0000
Date: Thu, 16 May 2019 10:25:42 +0200
From: Christoph Hellwig <hch@infradead.org>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme fixes for 5.2
Message-ID: <20190516082541.GA19383@infradead.org>
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

The following changes since commit 936b33f7243fa1e54c8f4f2febd3472cc00e66fd:

  brd: add cond_resched to brd_free_pages (2019-05-09 12:51:27 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.2

for you to fetch changes up to 1b1031ca63b2ce1d3b664b35b77ec94e458693e9:

  nvme: validate cntlid during controller initialisation (2019-05-14 17:19:50 +0200)

----------------------------------------------------------------
Chaitanya Kulkarni (1):
      nvme: trace all async notice events

Christoph Hellwig (2):
      nvme: change locking for the per-subsystem controller list
      nvme: validate cntlid during controller initialisation

Gustavo A. R. Silva (1):
      nvme-pci: mark expected switch fall-through

Hannes Reinecke (2):
      nvme-fc: use separate work queue to avoid warning
      nvme-multipath: avoid crash on invalid subsystem cntlid enumeration

Max Gurtovoy (1):
      nvme-rdma: remove redundant reference between ib_device and tagset

Maxim Levitsky (2):
      nvme-pci: init shadow doorbell after each reset
      nvme-pci: add known admin effects to augument admin effects log page

Minwoo Im (2):
      nvme-fabrics: remove unused argument
      nvme: fix typos in nvme status code values

 drivers/nvme/host/core.c      | 79 ++++++++++++++++++++++---------------------
 drivers/nvme/host/fabrics.c   |  4 +--
 drivers/nvme/host/fc.c        | 14 ++++++--
 drivers/nvme/host/multipath.c |  2 +-
 drivers/nvme/host/pci.c       |  4 +--
 drivers/nvme/host/rdma.c      | 34 +++----------------
 drivers/nvme/host/trace.h     |  1 +
 include/linux/nvme.h          |  4 +--
 8 files changed, 64 insertions(+), 78 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
