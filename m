Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DB14881F2
	for <lists+linux-nvme@lfdr.de>; Fri,  9 Aug 2019 20:04:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=m/k20fweqRc9oair4ihVfjpfxwJnz9qMJ0IlBQFMLOA=; b=Xk7
	i++lrRp+aD8jeftn7wNXjfqdIpgqy5+azSHyshwgMAG5VmrNpP51JhHfa247Jub4/J0/8ylZ36qkh
	WkX9QDO+hljs72Lm3/T0t/pmMxX35+Z9QxikwNuNxMYBfdWWRgJMb01sp/edczb+rlGBc41xk1Zk2
	io5kishUKb6Mw01LQFQHNvUTVuPapUGKF6ReZub0Cba/Rkt6OqYU7Z94vNarcLehCVHmaJOzp/ado
	mET39o0Kq81OQJLyikgTZWY90/Qz+BABF93/fvIfuCxVE1OliWqj2din0w1H69PQ6pkrnYbNlUkq5
	BMVZmzNTGeRseWgNjacW92fAHvz0WZw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw9FW-0006bF-Ev; Fri, 09 Aug 2019 18:04:22 +0000
Received: from 162-195-240-247.lightspeed.sntcca.sbcglobal.net
 ([162.195.240.247] helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hw9FT-0006b6-EA; Fri, 09 Aug 2019 18:04:19 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: Jens Axboe <axboe@kernel.dk>
Subject: [GIT PULL] nvme fixes for the next round of 5.3-rc
Date: Fri,  9 Aug 2019 11:04:12 -0700
Message-Id: <20190809180412.26392-1-sagi@grimberg.me>
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
Cc: linux-block@vger.kernel.org, Keith Busch <keith.busch@intel.com>,
 Christoph Hellwig <hch@lst.de>, linux-nvme@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hey Jens,

Few nvme fixes for the next rc round.
- detect capacity changes on the mpath disk from Anthony
- probe/remove fix from Keith
- various fixes to pass blktests from Logan
- deadlock in reset/scan race fix
- nvme-rdma use-after-free fix
- deadlock fix when passthru commands race mpath disk info update

The following changes since commit 71d6c505b4d9e6f76586350450e785e3d452b346:

  libata: zpodd: Fix small read overflow in zpodd_get_mech_type() (2019-07-29 16:00:14 -0600)

are available in the Git repository at:

  git://git.infradead.org/nvme.git nvme-5.3-rc 

for you to fetch changes up to bd46a90634302bfe791e93ad5496f98f165f7ae0:

  nvme-pci: Fix async probe remove race (2019-07-31 18:03:36 -0700)

----------------------------------------------------------------
Anthony Iliopoulos (1):
      nvme-multipath: revalidate nvme_ns_head gendisk in nvme_validate_ns

Keith Busch (1):
      nvme-pci: Fix async probe remove race

Logan Gunthorpe (4):
      nvmet: Fix use-after-free bug when a port is removed
      nvmet-loop: Flush nvme_delete_wq when removing the port
      nvmet-file: fix nvmet_file_flush() always returning an error
      nvme-core: Fix extra device_put() call on error path

Sagi Grimberg (3):
      nvme: fix a possible deadlock when passthru commands sent to a multipath device
      nvme-rdma: fix possible use-after-free in connect error flow
      nvme: fix controller removal race with scan work

 drivers/nvme/host/core.c       | 15 ++++++++-
 drivers/nvme/host/multipath.c  | 76 ++++++++++++++++++++++++++++++++++++++----
 drivers/nvme/host/nvme.h       | 21 ++++++++++--
 drivers/nvme/host/pci.c        |  3 +-
 drivers/nvme/host/rdma.c       | 16 ++++++---
 drivers/nvme/target/configfs.c |  1 +
 drivers/nvme/target/core.c     | 15 +++++++++
 drivers/nvme/target/loop.c     |  8 +++++
 drivers/nvme/target/nvmet.h    |  3 ++
 9 files changed, 143 insertions(+), 15 deletions(-)

_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
