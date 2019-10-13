Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E612D56ED
	for <lists+linux-nvme@lfdr.de>; Sun, 13 Oct 2019 18:59:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=5C//UYocLV0bnmcv7kXtrv5DLrl/NaG5d0mT1RKq1Ic=; b=Cus
	NSq9Gn5WQ5c//Hns+d4xPNPyAoRIs0rzUi8nJ+JN2L06Ciz3zXddQCzbRpiDystwP4j7scssQWRSC
	Kx+XBIolWjChMOUv5bgH9rqNgwYZB5GszwBF28NsJqqkNrmRTcU2cVzcXYQXz2BGgg/Hnkr61OPB/
	6A66tB7/zIdy3e8u8Iq9PcCfZsPRqVl3diMzfM4RbGtC4/Ey7RU1gV8PH12B/rixzrRQDnpzBYImv
	qU7ioCRpy8ZonjWUMc06yr98+W7Pg22IEaynhtHcW/zCpyDsU2QaTX/SM2/wMt/vdffgIfAXJ4jfC
	N4lBUlod/ifL1zuM0LzxrO1hZmu6A5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJhDJ-00065y-5A; Sun, 13 Oct 2019 16:59:25 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJhBq-0004u1-AE
 for linux-nvme@lists.infradead.org; Sun, 13 Oct 2019 16:57:58 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 13 Oct 2019 18:57:39 +0200
Received: from r-vnc12.mtr.labs.mlnx (r-vnc12.mtr.labs.mlnx [10.208.0.12])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x9DGvdoL005965;
 Sun, 13 Oct 2019 19:57:39 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, hch@lst.de, kbusch@kernel.org,
 sagi@grimberg.me
Subject: [PATCH v2 0/8] small NVMe cleanups/fixes
Date: Sun, 13 Oct 2019 19:57:30 +0300
Message-Id: <1570985858-26805-1-git-send-email-maxg@mellanox.com>
X-Mailer: git-send-email 1.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_095754_749755_5C892CFD 
X-CRM114-Status: UNSURE (   7.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [193.47.165.129 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Max Gurtovoy <maxg@mellanox.com>, israelr@mellanox.com,
 james.smart@broadcom.com, shlomin@mellanox.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hi Sagi/Christoph/Keith,
This series include few fast-path and code readability improvements from
IsraelR and also few memleak fixes and new status code introduction from
myself.

This series applies cleanly on top of nvme-5.4 branch, commit 3a8ecc935efab
("nvme: retain split access workaround for capability reads")

changes from v1:
- removed braces from patch 1/8
- added "Reviewed-by" signature to patches 1, 2, 5, 8
- remove no-op check from patch 6/8

Israel Rukshin (4):
  nvme: introduce nvme_is_aen_req function
  nvmet: use bio_io_error instead of duplicating it
  nvmet: add unlikely check at nvmet_req_alloc_sgl
  nvmet-rdma: add unlikely check at nvmet_rdma_map_sgl_keyed

Max Gurtovoy (4):
  nvme: introduce "Command Aborted By host" status code
  nvme: move common call to nvme_cleanup_cmd to core layer
  nvmet-loop: fix possible leakage during error flow
  nvme-tcp: fix possible leakage during error flow

 drivers/nvme/host/core.c          |  4 +++-
 drivers/nvme/host/fc.c            |  3 +--
 drivers/nvme/host/multipath.c     |  1 +
 drivers/nvme/host/nvme.h          |  5 +++++
 drivers/nvme/host/pci.c           |  4 +---
 drivers/nvme/host/rdma.c          | 16 +++++++---------
 drivers/nvme/host/tcp.c           |  5 +++--
 drivers/nvme/target/core.c        |  2 +-
 drivers/nvme/target/io-cmd-bdev.c |  8 +++-----
 drivers/nvme/target/loop.c        |  9 +++++----
 drivers/nvme/target/rdma.c        |  4 ++--
 include/linux/nvme.h              |  1 +
 12 files changed, 33 insertions(+), 29 deletions(-)

-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
