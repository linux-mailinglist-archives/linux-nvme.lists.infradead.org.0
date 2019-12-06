Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CAE1111563B
	for <lists+linux-nvme@lfdr.de>; Fri,  6 Dec 2019 18:13:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=LcSO0SDsXPRbPxyWZvkFFSXplmvKeMGQdpcNOJEtINk=; b=g6MJ+IMSjkmRYl
	AVVu9sX14s+u+uGISCgpysXZ28RDDDGjF+8CzRj9MdnpV6Fd9ULX1hpGqPxfMn6SAzQIlWrxU4v4V
	YIIP3du7RyT8NPSMKbXlNBK8XV7G/b763kSsLbZWX6WJ7CdBwcmhdWDc7R6uYeaB3d5s5CutndtKQ
	2RNvoCHCLQSoXWX8xe/pIk4UI2PSkxw0t8OBxdOceu8tlo8DNSFsNUFMjwnOYEkDD1EjvXttWecTW
	N0d292GroXwzbDETc7kvNJjnhLhoYu3E5aWIjqlUZgjJPiDBt7dnbhQAG/VwvYuWy0h9c1vdPfL1N
	DnOs9vytVjo/4JSLiMcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idHAZ-0008Sy-LS; Fri, 06 Dec 2019 17:13:31 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idHAU-0008Rt-If
 for linux-nvme@lists.infradead.org; Fri, 06 Dec 2019 17:13:27 +0000
Received: from redsun51.ssa.fujisawa.hgst.com (unknown [199.255.47.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0A83C20706;
 Fri,  6 Dec 2019 17:13:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575652405;
 bh=LS8692dyMcFC14aUDCwdfONk+ftw/TAOYHImQ7KfaTQ=;
 h=From:To:Cc:Subject:Date:From;
 b=dnZ4Px8pqJxPspJY1958q9d+WkmHz8A84enaECHRFWJHXWBrt+bNOckYEfDHDFRmu
 XYpmnYh4wFqHUUbP4N/LhBl5TRAm7sbLgiXzq+eZY2dDPsEysuQb6PQKP8deWAbisM
 cSBA5YIQ2iXEGNuntA4Z/xkd/gZLYyxk53NSlI2o=
From: Keith Busch <kbusch@kernel.org>
To: linux-nvme@lists.infradead.org,
	hch@lst.de,
	sagi@grimberg.me
Subject: [PATCH 0/3] nvme specialized queue fixes
Date: Sat,  7 Dec 2019 02:13:13 +0900
Message-Id: <20191206171316.2421-1-kbusch@kernel.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_091326_634548_361448C8 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Keith Busch <kbusch@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

The nvme pci module had been allowing bad values to the specialized
polled and write queues that could have caused the driver to allocate
queues incorrectly or unoptimally.

For example, on a system with 16 CPUs, if I have module parameter
nvme.write_queues=17, we would get only 1 read queue no matter how many
the drive supported:

  # dmesg | grep nvme | grep "poll queues"
  nvme nvme2: 16/1/2 default/read/poll queues
  nvme nvme1: 16/1/2 default/read/poll queues
  nvme nvme0: 16/1/2 default/read/poll queues
  nvme nvme3: 16/1/2 default/read/poll queues

But after fixing:

  # dmesg | grep nvme | grep "poll queues"
  nvme nvme1: 16/16/2 default/read/poll queues
  nvme nvme2: 16/13/2 default/read/poll queues
  nvme nvme0: 16/16/2 default/read/poll queues
  nvme nvme3: 16/13/2 default/read/poll queues

We just need to fix the calculation so that we don't throttle the total
number of possible desired queues incorrectly. The first two patches
ensure the module parameters are withing reasonable boundaries to
simplify counting the number of interrupts we want to allocate.

Keith Busch (3):
  nvme/pci: Fix write and poll queue types
  nvme/pci Limit write queue sizes to possible cpus
  nvme/pci: Fix read queue count

 drivers/nvme/host/pci.c | 17 ++++++++---------
 1 file changed, 8 insertions(+), 9 deletions(-)

-- 
2.21.0


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
