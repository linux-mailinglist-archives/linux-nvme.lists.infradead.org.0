Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1513D2F13
	for <lists+linux-nvme@lfdr.de>; Thu, 10 Oct 2019 18:57:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bF+FSsfSkhvvORs7axCtgsJDIOpiCFjn+CWKLHUPtx4=; b=Dh+66MjdSnjI0Q
	Od4gO8tB1hqzwuXZ3sHPbeyq+RXS8y71sOfCkeOUYouKKSwQnaE97Q15Xi9zs4xV/1zzmBl6JmQ6G
	+aZK5L4agQnfGzmHFtznzedq4Zeg4Ht1ggRN5FfpC22rLL2ZgtQ5dlxoQmBlWX1uX8JzL8t+R2y1L
	X2oGhlanw8kArK9EdsP7S8Mo7IkClyWn5ILidLFXIfnTPYMqRprhkmUdbwznzroT2O601tyPwNq2G
	sikkYbEPxsx8IgC4RnV9z/Bhoks6266DNprXLbONWTJ+UFKFyQfLykem3zqF9+e+Fetau+AsA9gdh
	h6eom7aKMK+xrXdZrosQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIbl4-00088s-Uo; Thu, 10 Oct 2019 16:57:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIbkz-000886-AA
 for linux-nvme@lists.infradead.org; Thu, 10 Oct 2019 16:57:42 +0000
Received: from washi1.fujisawa.hgst.com (unknown [199.255.47.10])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D3D2D214E0;
 Thu, 10 Oct 2019 16:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570726661;
 bh=FOLeSDInVB2iWCrSggbmTin2JnmJqfo8Bpswy7kncQ8=;
 h=From:To:Cc:Subject:Date:From;
 b=gUBxlcKbHQ/n5S6LMlxG4P+FCIcL5DhrLgswCyKL7kEjLdgEb78dqfp8S/ioOa0lu
 gk/ZYFqtNzn9b/48HNdKpEsDuFoAp6GVm8ejWA0Xo4nyPD/vcwxtO5xaTrPvXqGYXU
 d8y4itPISmCmtv8q106CF6/ljQ7G4Yb+A06T2r30=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org, Christoph Hellwig <hch@lst.de>,
 Sagi Grimberg <sagi@grimberg.me>
Subject: [PATCHv4 0/5] nvme: double reset prevention
Date: Fri, 11 Oct 2019 01:57:31 +0900
Message-Id: <20191010165736.12081-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_095741_370945_CD31554C 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Keith Busch <kbusch@kernel.org>, Judy Brock <judy.brock@samsung.com>,
 Edmund Nadolski <edmund.nadolski@intel.com>,
 James Smart <james.smart@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The main objective of this series is to prevent double resets. This sort
of thing is known to have happened if a timeout occurs at roughly the
same time as a user intiated reset, like through through PCIe's FLR.

The double reset could happen because the controller disabling had been
occuring outside of the RESETTING state when we can't schedule the
reset_work, which is to occur later. When another reset schedules in
between these events, the controller ends up in the wrong state.

The end result of this series is simply to block subsequent resets by
initializing the controller state to RESETTING without actually scheduling
the reset_work.

v3 -> v4:

  Renamed nvme_reset_schedule() to nvme_try_sched_reset_work() and
  documented when it may fail (hot remove). I'm open to suggestions for
  a better name.

Keith Busch (5):
  nvme-pci: Free tagset if no IO queues
  nvme: Remove ADMIN_ONLY state
  nvme: Restart request timers in resetting state
  nvme: Prevent resets during paused controller state
  nvme: Wait for reset state when required

 drivers/nvme/host/core.c    | 91 +++++++++++++++++++++++++++----------
 drivers/nvme/host/fabrics.h |  3 +-
 drivers/nvme/host/nvme.h    |  5 +-
 drivers/nvme/host/pci.c     | 78 ++++++++++++++++++-------------
 drivers/nvme/host/rdma.c    |  8 ++++
 drivers/nvme/host/tcp.c     |  8 ++++
 6 files changed, 134 insertions(+), 59 deletions(-)

-- 
2.21.0


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
