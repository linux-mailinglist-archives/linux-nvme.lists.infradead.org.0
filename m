Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F482F027E
	for <lists+linux-nvme@lfdr.de>; Tue,  5 Nov 2019 17:21:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=3+UWHk1p7vIvSTEehPdr0H1YtwE9uuNY1qGbh42LOIs=; b=GsAbzem5pQyreg
	nBfmdC0Q5sphKtVhTUgKMSQ61g8R30PiLyRd2bschmmupUjDXvMkn6vIBlrgd+4sua80mwLBL56aO
	uKk6tiv2CvVoKfsllqOTxToeHlYDToFWcNIuQHX9kPFk1NZIz7/tqaI4d04Fb9Uv1cwJSN0wHaByH
	0NckDRHOSIUGin2XUqmKX8s7+aVhUSJdZz1qFXX9HA9s2ETIIGe40JANNX1C7nQ+uphmP3WXPrkDL
	BWy7LAAlGCaHve1MDmgc2koOB+8Y5vySi3ptNVIKFR7j4wfUCd5pocXV5ij2AQ/DJ+6IIGGz2fIEO
	eHGVhleC1pd5qWc4mrUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iS1Zp-0003pU-8R; Tue, 05 Nov 2019 16:21:05 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iS1ZO-0003SH-Sg
 for linux-nvme@lists.infradead.org; Tue, 05 Nov 2019 16:20:41 +0000
Received: from Internal Mail-Server by MTLPINE1 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 5 Nov 2019 18:20:27 +0200
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id xA5GKQlu013132;
 Tue, 5 Nov 2019 18:20:27 +0200
From: Max Gurtovoy <maxg@mellanox.com>
To: linux-nvme@lists.infradead.org, kbusch@kernel.org, hch@lst.de,
 sagi@grimberg.me
Subject: [PATCH 00/15] nvme-rdma/nvmet-rdma: Add metadata/T10-PI support
Date: Tue,  5 Nov 2019 18:20:10 +0200
Message-Id: <20191105162026.183901-1-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_082039_336225_9A88941C 
X-CRM114-Status: UNSURE (   8.92  )
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
Cc: vladimirk@mellanox.com, idanb@mellanox.com, israelr@mellanox.com,
 shlomin@mellanox.com, oren@mellanox.com, maxg@mellanox.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Hello Sagi, Christoph, Keith, Jason and Co

This patchset adds metadata (T10-PI) support for NVMeoF/RDMA host side and
target side, using signature verbs API. This set starts with a few preparation
commits to the NVMe host core layer. It continues with NVMeoF/RDMA host
implementation + new bip flag patch + few preparation commits to the NVMe
target core layer. The patchset ends with NVMeoF/RDMA target implementation.

Configuration:
Host:
 - nvme connect --pi_enable --transport=rdma --traddr=10.0.1.1 --nqn=test-nvme

Target:
 - modprobe nvmet-rdma pi_enable=Y
 - echo 1 > /config/nvmet/subsystems/${NAME}/attr_pi_enable

The code was tested using Mellanox's ConnectX-4/ConnectX-5 HCA.
This series applies on top of nvme_5.5 branch cleanly.

Israel Rukshin (11):
  nvme-fabrics: allow user enabling metadata/T10-PI support
  block: Introduce BIP_NOMAP_INTEGRITY bip_flag
  nvmet: Prepare metadata request
  nvmet: Add metadata characteristics for a namespace
  nvmet: Rename nvmet_rw_len to nvmet_rw_data_len
  nvmet: Rename nvmet_check_data_len to nvmet_check_transfer_len
  nvmet: Introduce nvmet_rw_prot_len and nvmet_ns_has_pi
  nvme: Add Metadata Capabilities enumerations
  nvmet: Add metadata/T10-PI support
  nvmet: Add metadata support for block devices
  nvmet-rdma: Add metadata/T10-PI support

Max Gurtovoy (4):
  nvme: Fail __nvme_revalidate_disk in case of a spec violation
  nvme: Introduce max_integrity_segments ctrl attribute
  nvme: Inline nvme_ns_has_pi function
  nvme-rdma: Add metadata/T10-PI support

 block/t10-pi.c                    |   7 +
 drivers/nvme/host/core.c          |  55 +++---
 drivers/nvme/host/fabrics.c       |   5 +
 drivers/nvme/host/fabrics.h       |   3 +
 drivers/nvme/host/nvme.h          |   7 +
 drivers/nvme/host/pci.c           |   7 +
 drivers/nvme/host/rdma.c          | 346 ++++++++++++++++++++++++++++++++------
 drivers/nvme/target/admin-cmd.c   |  37 ++--
 drivers/nvme/target/configfs.c    |  24 +++
 drivers/nvme/target/core.c        |  54 ++++--
 drivers/nvme/target/discovery.c   |   8 +-
 drivers/nvme/target/fabrics-cmd.c |  19 ++-
 drivers/nvme/target/io-cmd-bdev.c | 105 +++++++++++-
 drivers/nvme/target/io-cmd-file.c |   8 +-
 drivers/nvme/target/nvmet.h       |  27 ++-
 drivers/nvme/target/rdma.c        | 221 ++++++++++++++++++++++--
 include/linux/bio.h               |   1 +
 include/linux/nvme.h              |   2 +
 18 files changed, 811 insertions(+), 125 deletions(-)

-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
