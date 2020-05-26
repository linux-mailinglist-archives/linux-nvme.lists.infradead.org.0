Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297251A1BDE
	for <lists+linux-nvme@lfdr.de>; Wed,  8 Apr 2020 08:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Y4pcWFhwoUyFJ5npMDurSE4F78Thw7aIzDqjmRo8X80=; b=mrVysXkkbqCEuQ
	xT6KIIlD1M9bsjUoxQ8A9wcTqPiTdocAWvU/QgsohSUxwk5YfsODGH9yhPdpLXvoGShWmPCYZKoA8
	bWAqNhlQXLraGVNxc/8z32NBX9SQWsiXPu29y6IPoTCNJF/PDXcfAAAhPe/BrA2qZyRUKEELDQ38E
	+d4dHdeSh+c/j2O/scnhGGqPpzQ8mKUz1rHdbM1+2vRbss07IKPxISHBTjrZrsCOydxkDYW/aMR67
	R22rfHl2m77aDnwd8eobe7JUUo3a/xxcqk52lYwihtr9vqXl1fIGa1Wl510ZMQHpF4iC3rdpookMP
	6S4wdQdmBnBcU/NCSb7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jM45h-00080G-2G; Wed, 08 Apr 2020 06:21:37 +0000
Received: from [2001:4bb8:180:5765:65b6:f11e:f109:b151] (helo=localhost)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jM45d-0007zu-PY; Wed, 08 Apr 2020 06:21:34 +0000
Date: Wed, 8 Apr 2020 08:21:31 +0200
From: Christoph Hellwig <hch@infradead.org>
To: axboe@kernel.dk
Subject: [GIT PULL] nvme fixes for 5.7
Message-ID: <20200408062131.GA212017@infradead.org>
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
Cc: kbusch@kernel.org, linux-block@vger.kernel.org, sagi@grimberg.me,
 linux-nvme@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The following changes since commit 458ef2a25e0cbdc216012aa2b9cf549d64133b08:

  Merge tag 'x86-timers-2020-03-30' of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip (2020-03-30 19:55:39 -0700)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.7

for you to fetch changes up to 21f9024355e58772ec5d7fc3534aa5e29d72a8b6:

  nvmet-rdma: fix double free of rdma queue (2020-04-07 18:33:45 +0200)

----------------------------------------------------------------
Israel Rukshin (2):
      nvme-rdma: Replace comma with a semicolon
      nvmet-rdma: fix double free of rdma queue

James Smart (3):
      nvme-fcloop: fix deallocation of working context
      nvmet-fc: fix typo in comment
      nvme-fc: Revert "add module to ops template to allow module references"

Nick Bowler (1):
      nvme: fix compat address handling in several ioctls

Sagi Grimberg (7):
      nvme-tcp: fix possible crash in write_zeroes processing
      nvme-tcp: don't poll a non-live queue
      nvme-tcp: fix possible crash in recv error flow
      nvme: inherit stable pages constraint in the mpath stack device
      nvmet: fix NULL dereference when removing a referral
      nvmet-rdma: fix bonding failover possible NULL deref
      nvme: fix deadlock caused by ANA update wrong locking

 drivers/nvme/host/core.c        |  34 +++++--
 drivers/nvme/host/fc.c          |  14 +--
 drivers/nvme/host/multipath.c   |   4 +-
 drivers/nvme/host/rdma.c        |   2 +-
 drivers/nvme/host/tcp.c         |  18 ++--
 drivers/nvme/target/configfs.c  |  10 +-
 drivers/nvme/target/fc.c        |   2 +-
 drivers/nvme/target/fcloop.c    |  77 ++++++++++-----
 drivers/nvme/target/rdma.c      | 205 +++++++++++++++++++++++++++-------------
 drivers/scsi/lpfc/lpfc_nvme.c   |   2 -
 drivers/scsi/qla2xxx/qla_nvme.c |   1 -
 include/linux/nvme-fc-driver.h  |   4 -
 12 files changed, 242 insertions(+), 131 deletions(-)

_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
