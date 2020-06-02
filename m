Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 724041EBCDA
	for <lists+linux-nvme@lfdr.de>; Tue,  2 Jun 2020 15:16:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ysR8lDGRIAwY7u4EBigbnuZvDmILwBv/uup/2ZEx73U=; b=jVZr1l3Sk6ViDm
	xMDxbY8B2UMmALytIvlsrY/SQh3PPj8Sq8EdCw3E4W3L8fbrvk3Nk+5Zdi0yZjHlWmXp3FiIccylq
	0EGcVxAZ/04X4D2sdXxeoWb6/KJxwCRdj41zzHvMPTcZ4ENBReZw9eHfK2C1OpnzOm1VEjM8IEmA2
	J25Ucbz2LPS2mlIHpmKFOwhNnXMXRHFYxrV++CXZ5YoIKDOk82ys4tNlmSy7EXLjNRFOptiEbQ8YZ
	uch7bwjcv9yPlZyubMp2pQ4CPyP2jcl9S2ao/q7xEuFzXqDqigXakqBgd+uJoZeiZ0lSGxbvkn+br
	sTtJTjNl7RUKIlqYGyiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg6lr-0003Bo-An; Tue, 02 Jun 2020 13:15:59 +0000
Received: from mail-il-dmz.mellanox.com ([193.47.165.129] helo=mellanox.co.il)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg6ll-0003AM-Gm
 for linux-nvme@lists.infradead.org; Tue, 02 Jun 2020 13:15:55 +0000
Received: from Internal Mail-Server by MTLPINE2 (envelope-from
 maxg@mellanox.com)
 with ESMTPS (AES256-SHA encrypted); 2 Jun 2020 16:15:46 +0300
Received: from mtr-vdi-031.wap.labs.mlnx. (mtr-vdi-031.wap.labs.mlnx
 [10.209.102.136])
 by labmailer.mlnx (8.13.8/8.13.8) with ESMTP id 052DFkVg031311;
 Tue, 2 Jun 2020 16:15:46 +0300
From: Max Gurtovoy <maxg@mellanox.com>
To: sagi@grimberg.me, linux-nvme@lists.infradead.org, kbusch@kernel.org,
 hch@lst.de, james.smart@broadcom.com, chaitanya.kulkarni@wdc.com
Subject: [PATCH 0/5] NVMe cleanups for 5.8
Date: Tue,  2 Jun 2020 16:15:41 +0300
Message-Id: <20200602131546.51903-1-maxg@mellanox.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_061554_002293_607415A9 
X-CRM114-Status: UNSURE (   7.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: israelr@mellanox.com, nitzanc@mellanox.com, oren@mellanox.com,
 Max Gurtovoy <maxg@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

This series introduce some cleanups and code/logic duplication for host
and target side. It introduces a new header file nvme-types.h that will
be used by both host and target drivers. For now it will include mainly
mapping structures from types to names, but in the future it can include
more common logic between host/target drivers (as done for specific TCP
and RDMA transports). The series continues with adding a flags member to
nvmet_fabrics_ops structure and removes the need for adding dedicated
member for each feature in this struct.

Max Gurtovoy (5):
  nvme: introduce nvme-types header file
  nvme: use nvme_ana_type_to_name to get state string
  nvme: replace transport name with trtype enum for ops
  nvmet-tcp: remove has_keyed_sgls initialization
  nvmet: introduce flags member in nvmet_fabrics_ops

 drivers/nvme/host/fabrics.c     |  3 +-
 drivers/nvme/host/fabrics.h     |  4 +-
 drivers/nvme/host/fc.c          |  2 +-
 drivers/nvme/host/multipath.c   | 16 ++-----
 drivers/nvme/host/nvme.h        |  1 +
 drivers/nvme/host/rdma.c        |  2 +-
 drivers/nvme/host/tcp.c         |  2 +-
 drivers/nvme/target/admin-cmd.c |  2 +-
 drivers/nvme/target/configfs.c  | 92 ++++++++-------------------------------
 drivers/nvme/target/core.c      |  2 +-
 drivers/nvme/target/discovery.c |  2 +-
 drivers/nvme/target/loop.c      |  2 +-
 drivers/nvme/target/nvmet.h     |  6 ++-
 drivers/nvme/target/rdma.c      |  3 +-
 drivers/nvme/target/tcp.c       |  1 -
 include/linux/nvme-types.h      | 95 +++++++++++++++++++++++++++++++++++++++++
 16 files changed, 132 insertions(+), 103 deletions(-)
 create mode 100644 include/linux/nvme-types.h

-- 
1.8.3.1


_______________________________________________
linux-nvme mailing list
linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
