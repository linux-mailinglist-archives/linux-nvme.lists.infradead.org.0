Return-Path: <linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-nvme@lfdr.de
Delivered-To: lists+linux-nvme@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF10B70DE6
	for <lists+linux-nvme@lfdr.de>; Tue, 23 Jul 2019 02:08:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ZOPSXy97LSNv6B3887SxIodeqqiEcg5yUzu8BvZjqtg=; b=B/c
	DaSB+IkYKRQDvInnf4Vued9uqAXjrL01iYr360i4T/+tVbz57pwbwxnaDqKeRMMtIXb403mC7JUgh
	ghY78GKHQmJNlwoNDOurRCHSKl7CGKLL1FVcksZWE/XWZsCGobSEltdj+RaFgOl3e6ZP6YMVSITe4
	aAIzvqtO1jO0ebC8SuACtMA7LDFr7dxZvxlN0tj46I1jFCP10oIki+QKDkqgbgk23M8r3By5jlPua
	aIIErQ2znM1UVDTNxO1US+ZVGsuAn+lNuji2D/gIkiG++rWXu0J9r4VNsOPYFuB1/708eMDOK8vs+
	S87p8ma8G9f46/xkYU8x5K8zyt3TX/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hpiLQ-0004JG-QQ; Tue, 23 Jul 2019 00:07:52 +0000
Received: from [2600:1700:65a0:78e0:514:7862:1503:8e4d]
 (helo=sagi-Latitude-E7470.lbits)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hpiKW-0003yb-6w; Tue, 23 Jul 2019 00:06:56 +0000
From: Sagi Grimberg <sagi@grimberg.me>
To: linux-nvme@lists.infradead.org
Subject: [PATCH v2 0/3] small set of nvme cleanups
Date: Mon, 22 Jul 2019 17:06:51 -0700
Message-Id: <20190723000654.6448-1-sagi@grimberg.me>
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
Cc: Keith Busch <keith.busch@intel.com>, Minwoo Im <minwoo.im.dev@gmail.com>,
 Christoph Hellwig <hch@lst.de>, James Smart <james.smart@broadcom.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-nvme" <linux-nvme-bounces@lists.infradead.org>
Errors-To: linux-nvme-bounces+lists+linux-nvme=lfdr.de@lists.infradead.org

Centralizes queue size settings for fabrics and
removes redundant argument to nvme_disable/enable_ctrl.

Changes from v1:
- read cap register in nvme_enable_ctrl as it is referenced
  there first.

Sagi Grimberg (3):
  nvme: have nvme_init_identify set ctrl->cap
  nvme: move sqsize setting to the core
  nvme: don't pass cap to nvme_disable_ctrl

 drivers/nvme/host/core.c   | 29 +++++++++++++++--------------
 drivers/nvme/host/fc.c     | 12 +-----------
 drivers/nvme/host/nvme.h   |  4 ++--
 drivers/nvme/host/pci.c    |  7 ++++---
 drivers/nvme/host/rdma.c   | 15 ++-------------
 drivers/nvme/host/tcp.c    | 13 ++-----------
 drivers/nvme/target/loop.c | 12 +-----------
 7 files changed, 27 insertions(+), 65 deletions(-)

-- 
2.17.1


_______________________________________________
Linux-nvme mailing list
Linux-nvme@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-nvme
