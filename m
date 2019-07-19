Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F8B76EB49
	for <lists+linux-nvme@lfdr.de>; Fri, 19 Jul 2019 21:46:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=U0Us9zgd5lAidzcEEErqfVE8DACJB5tIPlWOrFG6Mkc=; b=L4g
	qf+ZrHTdBR92VSIDeZKZRVPcHVyYx0kWO8TfR5KrPF4K1DnS9W69vv3ogWQRF0BuRs/JQqzoOysB+
	0WWLweyfnEssuL9mqz3tXCXwVbZgIZJQu5E0YGcBVN9Y2VLZJbS8aUC/LKpWYfdSGbpSIX2U5D0g7
	S8dVZfpo0rJzvo7wpRSR8Xoba12LudQfKGe6qopOKF5UE72XKdjydPICg5Ngy4TokiylrQ+92Dcih
	mn08BlZpUyX4b1I8d9bSfanq9mpllazDg/7YrUrwkiaa8p3PXmBWgRGgsyX39V5cNXvLOAW8aWuhv
	3lgX9w6Oap//MhI6oJQPF/vLJ130u+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hoYpJ-0000YN-KF; Fri, 19 Jul 2019 19:45:57 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hoYp9-0000XJ-6q; Fri, 19 Jul 2019 19:45:47 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH 0/4] small set of nvme cleanups
Date: Fri, 19 Jul 2019 12:45:42 -0700
Message-Id: <20190719194546.24229-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Christoph Hellwig <hch@lst.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Centralizes queue size settings for fabrics and
removes redundant argument to nvme_disable/enable_ctrl.

Sagi Grimberg (4):
  nvme: have nvme_init_identify set ctrl->cap
  nvme: move sqsize setting to the core
  nvme: don't pass cap to nvme_disable_ctrl
  nvme: don't pass cap to nvme_enable_ctrl

 drivers/nvme/host/core.c   | 19 ++++++++++---------
 drivers/nvme/host/fc.c     | 12 +-----------
 drivers/nvme/host/nvme.h   |  4 ++--
 drivers/nvme/host/pci.c    |  7 ++++---
 drivers/nvme/host/rdma.c   | 15 ++-------------
 drivers/nvme/host/tcp.c    | 13 ++-----------
 drivers/nvme/target/loop.c | 12 +-----------
 7 files changed, 22 insertions(+), 60 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
