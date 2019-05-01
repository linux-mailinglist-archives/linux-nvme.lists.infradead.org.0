Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1803E10988
	for <lists+linux-nvme@lfdr.de>; Wed,  1 May 2019 16:45:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=NfOT13Ehdadaf4Mvs2HPl5457NF/gcp426VXZT6D7KM=; b=pZT
	Y9oiImKIpBxMEipqnrK9Qq3Iyq2oB8ZhaFLxVy0BrThtzW5EX4iy+KsScmDAH1KgFfKiNKtnlrk4E
	dQGYnqVYX84hrW55HQXpY8Jnx3VguKD/jJGc+dfEjkjW+kIW0FO6MXYcYl9CHDeyymfejjuyvaWSv
	EdJq9mjwLL/QqI/lkH98uytLB/95+8ihXqDhoPp5tEfxezzKdM0BQF0RsOw8PDrLTsi7aOlzW1H24
	rCAQMKD9UJewZPUMvmZZE8nxhb41Ma9xutMtgJWYCx4paXfm3byii8j28/10hbTy6bCfTKKKfXmeo
	Gv8++SLIAV1L1DuxUDDCiwdwn9ECp/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLqUE-0003i2-7g; Wed, 01 May 2019 14:45:30 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLqTk-000252-1K
 for linux-nvme@lists.infradead.org; Wed, 01 May 2019 14:45:05 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 talgi@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 1 May 2019 17:44:50 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (gen-l-vrt-692.mtl.labs.mlnx
 [10.141.69.20])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id x41Eio47019828;
 Wed, 1 May 2019 17:44:50 +0300
Received: from gen-l-vrt-692.mtl.labs.mlnx (localhost [127.0.0.1])
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7) with ESMTP id x41Eioqa036036;
 Wed, 1 May 2019 17:44:50 +0300
Received: (from talgi@localhost)
 by gen-l-vrt-692.mtl.labs.mlnx (8.14.7/8.14.7/Submit) id x41Eig0o036035;
 Wed, 1 May 2019 17:44:42 +0300
From: Tal Gilboa <talgi@mellanox.com>
To: linux-rdma@vger.kernel.org, linux-nvme@lists.infradead.org,
 linux-block@vger.kernel.org
Subject: [PATCH rdma-for-next 0/9] drivers/infiniband: Introduce rdma_dim
Date: Wed,  1 May 2019 17:44:30 +0300
Message-Id: <1556721879-35987-1-git-send-email-talgi@mellanox.com>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190501_074500_635788_58E4F781 
X-CRM114-Status: GOOD (  11.34  )
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
Cc: Yamin Friedman <yaminf@mellanox.com>, Leon Romanovsky <leon@kernel.org>,
 Saeed Mahameed <saeedm@mellanox.com>, Yishai Hadas <yishaih@mellanox.com>,
 Tal Gilboa <talgi@mellanox.com>, Jason Gunthorpe <jgg@ziepe.ca>,
 Doug Ledford <dledford@redhat.com>, Max Gurtovoy <maxg@mellanox.com>,
 Idan Burstein <idanb@mellanox.com>, Tariq Toukan <tariqt@mellanox.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

net_dim.h lib exposes an implementation of the DIM algorithm for dynamically-tuned interrupt
moderation for networking interfaces.

We want a similar functionality for RDMA. The main motivation is to benefit from maximized
completion rate and reduced interrupt overhead that DIM may provide.

Current DIM implementation prioritizes reducing interrupt overhead over latency. Also, in
order to reduce DIM's own overhead, the algorithm might take take some time to identify it
needs to change profiles. For these reasons we got to the understanding that a slightly
modified algorithm is needed. Early tests with current implementation show it doesn't react
fast and sharply enough in order to satisfy the RDMA CQ needs.

I would like to suggest an implementation for RDMA DIM. The idea is to expose the new
functionality without the risk of breaking Net DIM behavior for netdev. Below are main
similarities and differences between the two implementations and general guidelines for the
suggested solution.

Performance improvement (ConnectX-5 100GbE, x86) running FIO benchmark over
NVMf between two equal end-hosts with 56 cores across a Mellanox switch
using null_blk device:

READS without DIM:
blk size | BW       | IOPS | 99th percentile latency  | 99.99th latency
512B     | 3.8GiB/s | 7.7M | 1401  usec               | 2442  usec
4k       | 7.0GiB/s | 1.8M | 4817  usec               | 6587  usec
64k      | 10.7GiB/s| 175k | 9896  usec               | 10028 usec

IO WRITES without DIM:
blk size | BW       | IOPS | 99th percentile latency  | 99.99th latency
512B     | 3.6GiB/s | 7.5M | 1434  usec               | 2474  usec
4k       | 6.3GiB/s | 1.6M | 938   usec               | 1221  usec
64k      | 10.7GiB/s| 175k | 8979  usec               | 12780 usec

IO READS with DIM:
blk size | BW       | IOPS | 99th percentile latency  | 99.99th latency
512B     | 4GiB/s   | 8.2M | 816    usec              | 889   usec
4k       | 10.1GiB/s| 2.65M| 3359   usec              | 5080  usec
64k      | 10.7GiB/s| 175k | 9896   usec              | 10028 usec

IO WRITES with DIM:
blk size | BW       | IOPS  | 99th percentile latency | 99.99th latency
512B     | 3.9GiB/s | 8.1M  | 799   usec              | 922   usec
4k       | 9.6GiB/s | 2.5M  | 717   usec              | 1004  usec
64k      | 10.7GiB/s| 176k  | 8586  usec              | 12256 usec

Common logic, main DIM procedure:
- Calculate current stats from a given sample
- Compare current stats vs. previous iteration stats
- Make a decision -> choose a new profile

Differences:
- Different parameters for moving between profiles
- Different moderation values and number of profiles
- Different sampled data

Suggested solution:
- Common logic will be declared in include/linux/dim.h and implemented in lib/dim/dim.c
- Net DIM (existing) logic will be declared in include/linux/net_dim.h and implemented in
  lib/dim/net_dim.c, which will use the common logic from dim.h
- RDMA DIM logic will be declared in /include/linux/rdma_dim.h and implemented in
  lib/dim/rdma_dim.c.
  This new implementation will expose modified versions of profiles, dim_step() and dim_decision()

Pros for this solution are:
- Zero impact on existing net_dim implementation and usage
- Relatively more code reuse (compared to two separate solutions)
- Readiness for future implementations
 
Tal Gilboa (6):
  linux/dim: Move logic to dim.h
  linux/dim: Remove "net" prefix from internal DIM members
  linux/dim: Rename externally exposed macros
  linux/dim: Rename net_dim_sample() to net_dim_create_sample()
  linux/dim: Rename externally used net_dim members
  linux/dim: Move implementation to .c files

Yamin Friedman (3):
  linux/dim: Add completions count to dim_sample
  linux/dim: Implement rdma_dim
  drivers/infiniband: Use rdma_dim in infiniband driver

 MAINTAINERS                                        |   3 +
 drivers/infiniband/core/cq.c                       |  79 ++++-
 drivers/infiniband/hw/mlx4/qp.c                    |   2 +-
 drivers/infiniband/hw/mlx5/qp.c                    |   2 +-
 drivers/net/ethernet/broadcom/bcmsysport.c         |  20 +-
 drivers/net/ethernet/broadcom/bcmsysport.h         |   2 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.c          |  13 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt.h          |   2 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt_debugfs.c  |   4 +-
 drivers/net/ethernet/broadcom/bnxt/bnxt_dim.c      |   7 +-
 drivers/net/ethernet/broadcom/genet/bcmgenet.c     |  18 +-
 drivers/net/ethernet/broadcom/genet/bcmgenet.h     |   2 +-
 drivers/net/ethernet/mellanox/mlx5/core/en.h       |   8 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_dim.c   |  12 +-
 .../net/ethernet/mellanox/mlx5/core/en_ethtool.c   |   4 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_main.c  |  22 +-
 drivers/net/ethernet/mellanox/mlx5/core/en_txrx.c  |  12 +-
 include/linux/dim.h                                | 126 ++++++++
 include/linux/irq_poll.h                           |   5 +
 include/linux/net_dim.h                            | 338 +--------------------
 include/linux/rdma_dim.h                           |  57 ++++
 include/rdma/ib_verbs.h                            |  54 +++-
 lib/Kconfig                                        |   7 +
 lib/Makefile                                       |   1 +
 lib/dim/Makefile                                   |  14 +
 lib/dim/dim.c                                      |  94 ++++++
 lib/dim/net_dim.c                                  | 191 ++++++++++++
 lib/dim/rdma_dim.c                                 | 161 ++++++++++
 lib/irq_poll.c                                     |  15 +-
 29 files changed, 872 insertions(+), 403 deletions(-)
 create mode 100644 include/linux/dim.h
 create mode 100644 include/linux/rdma_dim.h
 create mode 100644 lib/dim/Makefile
 create mode 100644 lib/dim/dim.c
 create mode 100644 lib/dim/net_dim.c
 create mode 100644 lib/dim/rdma_dim.c

-- 
1.8.3.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
